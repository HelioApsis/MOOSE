--- **Wrapper** - DCS net functions.
--
-- Encapsules **multiplayer server** environment scripting functions from [net](https://wiki.hoggitworld.com/view/DCS_singleton_net)
--
-- ===
--
-- ### Author: **applevangelist**
--
-- ===
--
-- @module Wrapper.Net
-- @image Utils_Profiler.jpg

do
--- The NET class
-- @type NET
-- @field #string ClassName
-- @field #string Version
-- @field #string lid
-- @field #number BlockTime
-- @field #table BlockedPilots
-- @field #table KnownPilots
-- @field #string BlockMessage
-- @field #string UnblockMessage
-- @field #table BlockedUCIDs
-- @extends Core.Fsm#FSM

--- Encapsules multiplayer environment scripting functions from [net](https://wiki.hoggitworld.com/view/DCS_singleton_net)
-- with some added FSM functions and options to block/unblock players in MP environments.
-- 
-- @field #NET
NET = {
  ClassName = "NET",
  Version = "0.0.6",
  BlockTime = 600,
  BlockedPilots = {},
  BlockedUCIDs = {},
  KnownPilots = {},
  BlockMessage = nil,
  UnblockMessage = nil,
  lid = nil,
}

--- Instantiate a new NET object.
-- @param #NET self
-- @return #NET self
function NET:New()
  -- Inherit base.
  local self = BASE:Inherit(self, FSM:New()) -- #NET
  
  self.BlockTime = 600
  self.BlockedPilots = {}
  self.KnownPilots = {}
  self:SetBlockMessage()
  self:SetUnblockMessage()
  
  self:HandleEvent(EVENTS.PlayerEnterUnit,self._EventHandler)
  self:HandleEvent(EVENTS.PlayerEnterAircraft,self._EventHandler)
  self:HandleEvent(EVENTS.PlayerLeaveUnit,self._EventHandler)
  self:HandleEvent(EVENTS.PilotDead,self._EventHandler)
  self:HandleEvent(EVENTS.Ejection,self._EventHandler)
  self:HandleEvent(EVENTS.Crash,self._EventHandler)
  self:HandleEvent(EVENTS.SelfKillPilot,self._EventHandler)
  
    -- Start State.
  self:SetStartState("Running")

  -- Add FSM transitions.
  -- From State  -->   Event  -->  To State
  self:AddTransition("*",       "Run",                "Running")     -- Start FSM.
  self:AddTransition("*",       "PlayerJoined",       "*")
  self:AddTransition("*",       "PlayerLeft",         "*")
  self:AddTransition("*",       "PlayerDied",         "*")
  self:AddTransition("*",       "PlayerEjected",      "*")
  self:AddTransition("*",       "PlayerBlocked",      "*")
  self:AddTransition("*",       "PlayerUnblocked",    "*")
  
  self.lid = string.format("NET %s | ",self.Version)
  
  --- FSM Function OnAfterPlayerJoined.
  -- @function [parent=#NET] OnAfterPlayerJoined
  -- @param #NET self
  -- @param #string From State.
  -- @param #string Event Trigger.
  -- @param #string To State.
  -- @param Wrapper.Unit#UNIT Client Unit Object.
  -- @param #string Name Name of joining Pilot.
  -- @return #NET self
  
  --- FSM Function OnAfterPlayerLeft.
  -- @function [parent=#NET] OnAfterPlayerLeft
  -- @param #NET self
  -- @param #string From State.
  -- @param #string Event Trigger.
  -- @param #string To State.
  -- @param Wrapper.Unit#UNIT Client Unit Object, might be nil.
  -- @param #string Name Name of leaving Pilot.
  -- @return #NET self
  
  --- FSM Function OnAfterPlayerEjected.
  -- @function [parent=#NET] OnAfterPlayerEjected
  -- @param #NET self
  -- @param #string From State.
  -- @param #string Event Trigger.
  -- @param #string To State.
  -- @param Wrapper.Unit#UNIT Client Unit Object, might be nil.
  -- @param #string Name Name of leaving Pilot.
  -- @return #NET self
  
  --- FSM Function OnAfterPlayerDied.
  -- @function [parent=#NET] OnAfterPlayerDied
  -- @param #NET self
  -- @param #string From State.
  -- @param #string Event Trigger.
  -- @param #string To State.
  -- @param Wrapper.Unit#UNIT Client Unit Object, might be nil.
  -- @param #string Name Name of dead Pilot.
  -- @return #NET self
  
  --- FSM Function OnAfterPlayerBlocked.
  -- @function [parent=#NET] OnAfterPlayerBlocked
  -- @param #NET self
  -- @param #string From State.
  -- @param #string Event Trigger.
  -- @param #string To State.
  -- @param Wrapper.Client#CLIENT Client Client Object, might be nil.
  -- @param #string Name Name of blocked Pilot.
  -- @param #number Seconds Blocked for this number of seconds
  -- @return #NET self
  
  --- FSM Function OnAfterPlayerUnblocked.
  -- @function [parent=#NET] OnAfterPlayerUnblocked
  -- @param #NET self
  -- @param #string From State.
  -- @param #string Event Trigger.
  -- @param #string To State.
  -- @param Wrapper.Client#CLIENT Client Client Object, might be nil.
  -- @param #string Name Name of unblocked Pilot.
  -- @return #NET self
  
  return self
end

--- [Internal] Event Handler
-- @param #NET self
-- @param Core.Event#EVENTDATA EventData
-- @return #NET self
function NET:_EventHandler(EventData)
  self:T(self.lid .. " _EventHandler")
  self:T2({Event = EventData.id})
  local data = EventData -- Core.Event#EVENTDATA EventData
  if data.id and data.IniUnit and (data.IniPlayerName or data.IniUnit:GetPlayerName()) then
    -- Get PlayerName
    local name = data.IniPlayerName and data.IniPlayerName or data.IniUnit:GetPlayerName()
    local ucid = self:GetPlayerUCID(nil,name)
    local PlayerID = self:GetPlayerIDByName(name) or "none"
    local TNow = timer.getTime()
    self:I(self.lid.."Event for: "..name.." | UCID: "..ucid)
    if self.BlockedPilots[name] then
      self:I(self.lid.."Pilot "..name.." ID "..PlayerID.." Blocked for another "..self.BlockedPilots[name]-timer.getTime().." seconds!")
    end
    if self.BlockedUCIDs[ucid] then
      self:I(self.lid.."Pilot "..name.." ID "..PlayerID.." Blocked for another "..self.BlockedUCIDs[ucid]-timer.getTime().." seconds!")
    end
    -- Joining
    if data.id == EVENTS.PlayerEnterUnit or data.id == EVENTS.PlayerEnterAircraft then
      self:I(self.lid.."Pilot Joining: "..name.." | UCID: "..ucid)
      -- Check for known pilots  
      if self.BlockedPilots[name] and TNow < self.BlockedPilots[name] then
        -- block pilot by name       
        if PlayerID and tonumber(PlayerID) ~= 1 then
          local outcome = net.force_player_slot(tonumber(PlayerID), 0, '' )
        end
      elseif self.BlockedUCIDs[ucid] and TNow < self.BlockedUCIDs[ucid] then
        -- block pilot by ucid
        if PlayerID and tonumber(PlayerID) ~= 1 then
          local outcome = net.force_player_slot(tonumber(PlayerID), 0, '' )
        end
      else
        self.KnownPilots[name] = true
        if (self.BlockedUCIDs[ucid] and TNow >= self.BlockedUCIDs[ucid]) or (self.BlockedPilots[name] and TNow >= self.BlockedPilots[name]) then
          self.BlockedPilots[name] = nil
          self.BlockedUCIDs[ucid] = nil
        end
        self:__PlayerJoined(1,data.IniUnit,name)
        return self
      end
    end
    -- Leaving
    if data.id == EVENTS.PlayerLeaveUnit and self.KnownPilots[name] then
     self:I(self.lid.."Pilot Leaving: "..name.." | UCID: "..ucid)
     self:__PlayerLeft(1,data.IniUnit,name)
     self.KnownPilots[name] = false
     return self
    end
    -- Ejected
    if data.id == EVENTS.Ejection and self.KnownPilots[name] then
     self:I(self.lid.."Pilot Ejecting: "..name.." | UCID: "..ucid)
     self:__PlayerEjected(1,data.IniUnit,name)
     self.KnownPilots[name] = false
     return self
    end
    -- Dead, Crash, Suicide
    if (data.id == EVENTS.PilotDead or data.id == EVENTS.SelfKillPilot or data.id == EVENTS.Crash) and self.KnownPilots[name] then
     self:I(self.lid.."Pilot Dead: "..name.." | UCID: "..ucid)
     self:__PlayerDied(1,data.IniUnit,name)
     self.KnownPilots[name] = false
     return self
    end
  end
  return self
end

--- Block a player.
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client CLIENT object.
-- @param #string PlayerName (optional) Name of the player.
-- @param #number Seconds (optional) Number of seconds the player has to wait before rejoining.
-- @param #string Message (optional) Message to be sent via chat.
-- @return #NET self
function NET:BlockPlayer(Client,PlayerName,Seconds,Message)
  self:I({PlayerName,Seconds,Message})
  local name = PlayerName
  if Client and (not PlayerName) then
    name = Client:GetPlayerName()
  elseif PlayerName then
    name = PlayerName
  else
    self:F(self.lid.."Block: No Client or PlayerName given or nothing found!")
    return self
  end
  local ucid = self:GetPlayerUCID(Client,name)
  local addon = Seconds or self.BlockTime
  self.BlockedPilots[name] = timer.getTime()+addon
  self.BlockedUCIDs[ucid] = timer.getTime()+addon
  local message = Message or self.BlockMessage
  if name then
    self:SendChatToPlayer(message,name)
  else
    self:SendChat(name..": "..message)
  end
  self:__PlayerBlocked(1,Client,name,Seconds)
  local PlayerID = self:GetPlayerIDByName(name)
  if PlayerID and tonumber(PlayerID) ~= 1 then
    local outcome = net.force_player_slot(tonumber(PlayerID), 0, '' )
  end
  return self
end

--- Unblock a player.
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client CLIENT object
-- @param #string PlayerName (optional) Name of the player.
-- @param #string Message (optional) Message to be sent via chat.
-- @return #NET self
function NET:UnblockPlayer(Client,PlayerName,Message)
  local name = PlayerName
  if Client then
    name = Client:GetPlayerName()
  elseif PlayerName then
    name = PlayerName
  else
    self:F(self.lid.."Unblock: No PlayerName given or not found!")
    return self
  end
  local ucid = self:GetPlayerUCID(Client,name)
  self.BlockedPilots[name] = nil
  self.BlockedUCIDs[ucid] = nil
  local message = Message or self.UnblockMessage
  if name then
    self:SendChatToPlayer(message,name)
  else
    self:SendChat(name..": "..message)
  end
  self:__PlayerUnblocked(1,Client,name)
  return self
end

--- Set block chat message.
-- @param #NET self
-- @param #string Text The message
-- @return #NET self
function NET:SetBlockMessage(Text)
  self.BlockMessage = Text or "You are blocked from joining. Wait time is: "..self.BlockTime.." seconds!"
  return self
end

--- Set block time in seconds.
-- @param #NET self
-- @param #number Seconds Numnber of seconds this block will last. Defaults to 600.
-- @return #NET self
function NET:SetBlockTime(Seconds)
  self.BlockTime = Seconds or 600
  return self
end

--- Set unblock chat message.
-- @param #NET self
-- @param #string Text The message
-- @return #NET self
function NET:SetUnblockMessage(Text)
  self.UnblockMessage = Text or "You are unblocked now and can join again."
  return self
end

--- Send chat message.
-- @param #NET self
-- @param #string Message Message to send
-- @param #boolean ToAll (Optional)
-- @return #NET self
function NET:SendChat(Message,ToAll)
  if Message then
    net.send_chat(Message, ToAll)
  end
  return self
end

--- Find the PlayerID by name
-- @param #NET self
-- @param #string Name The player name whose ID to find
-- @return #number PlayerID or nil
function NET:GetPlayerIDByName(Name)
  if not Name then return nil end
  local playerList = self:GetPlayerList()
  self:I({playerList})
  for i=1,#playerList do
    local playerName = net.get_name(i)
      self:I({playerName})
      if playerName == Name then
        return playerList[i]
      end
  end
  return nil
end

--- Find the PlayerID from a CLIENT object.
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client The client
-- @return #number PlayerID or nil
function NET:GetPlayerIDFromClient(Client)
  if Client then
    local name = Client:GetPlayerName()
    local id = self:GetPlayerIDByName(name)
    return id
  else
    return nil
  end
end

--- Send chat message to a specific player using the CLIENT object.
-- @param #NET self
-- @param #string Message The text message
-- @param Wrapper.Client#CLIENT ToClient Client receiving the message
-- @param Wrapper.Client#CLIENT FromClient (Optional) Client sending the message
-- @return #NET self
function NET:SendChatToClient(Message, ToClient, FromClient)
  local PlayerId = self:GetPlayerIDFromClient(ToClient)
  local FromId = self:GetPlayerIDFromClient(FromClient)
  if Message and PlayerId and FromId then
    net.send_chat_to(Message, tonumber(PlayerId) , tonumber(FromId))
  elseif Message and PlayerId then
    net.send_chat_to(Message, tonumber(PlayerId))
  end
  return self
end

--- Send chat message to a specific player using the player name
-- @param #NET self
-- @param #string Message The text message
-- @param #string ToPlayer Player receiving the message
-- @param #string  FromPlayer(Optional) Player sending the message
-- @return #NET self
function NET:SendChatToPlayer(Message, ToPlayer, FromPlayer)
  local PlayerId = self:GetPlayerIDByName(ToPlayer)
  local FromId = self:GetPlayerIDByName(FromPlayer)
  if Message and PlayerId and FromId then
    net.send_chat_to(Message, tonumber(PlayerId) , tonumber(FromId))
  elseif Message and PlayerId then
    net.send_chat_to(Message, tonumber(PlayerId))
  end
  return self
end

--- Load a specific mission.
-- @param #NET self
-- @param #string Path and Mission
-- @return #boolean success
-- @usage
--        mynet:LoadMission(lfs.writeDir() .. 'Missions\\' .. 'MyTotallyAwesomeMission.miz')
function NET:LoadMission(Path)
  local outcome = false
  if Path then
    outcome = net.load_mission(Path)
  end
  return outcome
end

--- Load next mission. Returns false if at the end of list. 
-- @param #NET self
-- @return #boolean success
function NET:LoadNextMission()
  local outcome = false
  outcome = net.load_next_mission()
  return outcome
end

--- Return a table of players currently connected to the server.  
-- @param #NET self
-- @return #table PlayerList
function NET:GetPlayerList()
  local plist = nil
  plist = net.get_player_list()
  return plist
end

--- Returns the playerID of the local player. Always returns 1 for server.
-- @param #NET self
-- @return #number ID
function NET:GetMyPlayerID()
  return net.get_my_player_id()
end

--- Returns the playerID of the server. Currently always returns 1. 
-- @param #NET self
-- @return #number ID
function NET:GetServerID()
  return net.get_server_id()
end

--- Return a table of attributes for a given client. If optional attribute is present, only that value is returned. 
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client The client.
-- @param #string Attribute (Optional) The attribute to obtain. List see below.
-- @return #table PlayerInfo or nil if it cannot be found
-- @usage
-- Table holds these attributes:
--
--          'id'    : playerID
--          'name'  : player name
--          'side'  : 0 - spectators, 1 - red, 2 - blue
--          'slot'  : slotID of the player or 
--          'ping'  : ping of the player in ms
--          'ipaddr': IP address of the player, SERVER ONLY
--          'ucid'  : Unique Client Identifier, SERVER ONLY
-- 
function NET:GetPlayerInfo(Client,Attribute)
  local PlayerID = self:GetPlayerIDFromClient(Client)
  if PlayerID then
    return net.get_player_info(tonumber(PlayerID), Attribute)
  else
    return nil
  end
end


--- Get player UCID from player CLIENT object or player name. Provide either one.  
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client The client object to be used.
-- @param #string Name Player name to be used.
-- @return #boolean success
function NET:GetPlayerUCID(Client,Name)
  local PlayerID = nil
  if Client then
    PlayerID = self:GetPlayerIDFromClient(Client)
  elseif Name then
    PlayerID = self:GetPlayerIDByName(Name)
  else
    self:E(self.lid.."Neither client nor name provided!")
  end
  local ucid = net.get_player_info(tonumber(PlayerID), 'ucid')
  return ucid
end

--- Kicks a player from the server. Can display a message to the user.  
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client The client
-- @param #string Message (Optional) The message to send.
-- @return #boolean success
function NET:Kick(Client,Message)
  local PlayerID = self:GetPlayerIDFromClient(Client)
  if PlayerID and tonumber(PlayerID) ~= 1 then
    return net.kick(tonumber(PlayerID), Message)
  else
    return false
  end
end

--- Return a statistic for a given client.  
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client The client
-- @param #number StatisticID The statistic to obtain
-- @return #number Statistic or nil
-- @usage
-- StatisticIDs are:
--
-- net.PS_PING  (0) - ping (in ms)
-- net.PS_CRASH (1) - number of crashes
-- net.PS_CAR   (2) - number of destroyed vehicles
-- net.PS_PLANE (3) - ... planes/helicopters
-- net.PS_SHIP  (4) - ... ships
-- net.PS_SCORE (5) - total score
-- net.PS_LAND  (6) - number of landings
-- net.PS_EJECT (7) - of ejects
-- 
--          mynet:GetPlayerStatistic(Client,7) -- return number of ejects
function NET:GetPlayerStatistic(Client,StatisticID)
  local PlayerID = self:GetPlayerIDFromClient(Client)
  local stats = StatisticID or 0
  if stats > 7 or stats < 0 then stats = 0 end
  if PlayerID then
    return net.get_stat(tonumber(PlayerID),stats)
  else
    return nil
  end
end

--- Return the name of a given client. Same a CLIENT:GetPlayerName().
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client The client
-- @return #string Name or nil if not obtainable
function NET:GetName(Client)
  local PlayerID = self:GetPlayerIDFromClient(Client)
  if PlayerID then
    return net.get_name(tonumber(PlayerID))
  else
    return nil
  end
end

--- Returns the SideId and SlotId of a given client. 
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client The client
-- @return #number SideID i.e. 0 : spectators, 1 : Red, 2 : Blue
-- @return #number SlotID
function NET:GetSlot(Client)
  local PlayerID = self:GetPlayerIDFromClient(Client)
  if PlayerID then
    local side,slot = net.get_slot(tonumber(PlayerID))
    return side,slot
  else
    return nil,nil
  end
end

--- Force the slot for a specific client.
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client The client
-- @param #number SideID i.e. 0 : spectators, 1 : Red, 2 : Blue
-- @param #number SlotID Slot number
-- @return #boolean Success
function NET:ForceSlot(Client,SideID,SlotID)
  local PlayerID = self:GetPlayerIDFromClient(Client)
  if PlayerID and tonumber(PlayerID) ~= 1 then
    return net.force_player_slot(tonumber(PlayerID), SideID, SlotID or '' )
  else
    return false
  end
end

--- Force a client back to spectators.
-- @param #NET self
-- @param Wrapper.Client#CLIENT Client The client
-- @return #boolean Succes
function NET:ReturnToSpectators(Client)
  local outcome = self:ForceSlot(Client,0)
  return outcome 
end

--- Converts a lua value to a JSON string.
-- @param #string Lua Anything lua
-- @return #table Json
function NET.Lua2Json(Lua)
  return net.lua2json(Lua)
end

--- Converts a JSON string to a lua value. 
-- @param #string Json Anything JSON
-- @return #table Lua
function NET.Lua2Json(Json)
  return net.json2lua(Json)
end

--- Executes a lua string in a given lua environment in the game. 
-- @param #NET self
-- @param #string State The state in which to execute - see below.
-- @param #string DoString The lua string to be executed.
-- @return #string Output
-- @usage
-- States are:
-- 'config': the state in which $INSTALL_DIR/Config/main.cfg is executed, as well as $WRITE_DIR/Config/autoexec.cfg  - used for configuration settings
-- 'mission': holds current mission
-- 'export': runs $WRITE_DIR/Scripts/Export.lua and the relevant export API
function NET:DoStringIn(State,DoString)
  return net.dostring_in(State,DoString)
end

---  Write an "INFO" entry to the DCS log file, with the message Message.
-- @param #NET self
-- @param #string Message The message to be logged.
-- @return #NET self
function NET:Log(Message)
  net.log(Message) 
  return self
end

-------------------------------------------------------------------------------
-- End of NET
-------------------------------------------------------------------------------
end
