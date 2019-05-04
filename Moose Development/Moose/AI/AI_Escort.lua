--- **Functional** -- Taking the lead of AI escorting your flight or of other AI.
-- 
-- ===
-- 
-- ## Features:
-- 
--   * Escort navigation commands.
--   * Escort hold at position commands.
--   * Escorts reporting detected targets.
--   * Escorts scanning targets in advance.
--   * Escorts attacking specific targets.
--   * Request assistance from other groups for attack.
--   * Manage rule of engagement of escorts.
--   * Manage the allowed evasion techniques of escorts.
--   * Make escort to execute a defined mission or path.
--   * Escort tactical situation reporting.
-- 
-- ===
-- 
-- ## Missions:
-- 
-- [ESC - Escorting](https://github.com/FlightControl-Master/MOOSE_MISSIONS/tree/master/ESC%20-%20Escorting)
-- 
-- ===
-- 
-- Allows you to interact with escorting AI on your flight and take the lead.
-- 
-- Each escorting group can be commanded with a complete set of radio commands (radio menu in your flight, and then F10).
--
-- The radio commands will vary according the category of the group. The richest set of commands are with helicopters and airPlanes.
-- Ships and Ground troops will have a more limited set, but they can provide support through the bombing of targets designated by the other escorts.
-- 
-- Escorts detect targets using a built-in detection mechanism. The detected targets are reported at a specified time interval.
-- Once targets are reported, each escort has these targets as menu options to command the attack of these targets.
-- Targets are by default grouped per area of 5000 meters, but the kind of detection and the grouping range can be altered.
-- 
-- Different formations can be selected in the Flight menu: Trail, Stack, Left Line, Right Line, Left Wing, Right Wing, Central Wing and Boxed formations are available.
-- The Flight menu also allows for a mass attack, where all of the escorts are commanded to attack a target.
-- 
-- Escorts can emit flares to reports their location. They can be commanded to hold at a location, which can be their current or the leader location.
-- In this way, you can spread out the escorts over the battle field before a coordinated attack.
-- 
-- But basically, the escort class provides 4 modes of operation, and depending on the mode, you are either leading the flight, or following the flight.
-- 
-- ## Leading the flight
-- 
-- When leading the flight, you are expected to guide the escorts towards the target areas, 
-- and carefully coordinate the attack based on the threat levels reported, and the available weapons
-- carried by the escorts. Ground ships or ground troops can execute A-assisted attacks, when they have long-range ground precision weapons for attack.
-- 
-- ## Following the flight
-- 
-- Escorts can be commanded to execute a specific mission path. In this mode, the escorts are in the lead.
-- You as a player, are following the escorts, and are commanding them to progress the mission while
-- ensuring that the escorts survive. You are joining the escorts in the battlefield. They will detect and report targets
-- and you will ensure that the attacks are well coordinated, assigning the correct escort type for the detected target
-- type. Once the attack is finished, the escort will resume the mission it was assigned.
-- In other words, you can use the escorts for reconnaissance, and for guiding the attack.
-- Imagine you as a mi-8 pilot, assigned to pickup cargo. Two ka-50s are guiding the way, and you are
-- following. You are in control. The ka-50s detect targets, report them, and you command how the attack
-- will commence and from where. You can control where the escorts are holding position and which targets
-- are attacked first. You are in control how the ka-50s will follow their mission path.
-- 
-- Escorts can act as part of a AI A2G dispatcher offensive. In this way, You was a player are in control.
-- The mission is defined by the A2G dispatcher, and you are responsible to join the flight and ensure that the
-- attack is well coordinated.
-- 
-- It is with great proud that I present you this class, and I hope you will enjoy the functionality and the dynamism
-- it brings in your DCS world simulations.
-- 
-- # RADIO MENUs that can be created:
-- 
-- Find a summary below of the current available commands:
--
-- ## Navigation ...:
-- 
-- Escort group navigation functions:
--
--   * **"Join-Up":** The escort group fill follow you in the assigned formation.
--   * **"Flare":** Provides menu commands to let the escort group shoot a flare in the air in a color.
--   * **"Smoke":** Provides menu commands to let the escort group smoke the air in a color. Note that smoking is only available for ground and naval troops.
--
-- ## Hold position ...:
-- 
-- Escort group navigation functions:
--
--   * **"At current location":** The escort group will hover above the ground at the position they were. The altitude can be specified as a parameter.
--   * **"At my location":** The escort group will hover or orbit at the position where you are. The escort will fly to your location and hold position. The altitude can be specified as a parameter.
--
-- ## Report targets ...:
-- 
-- Report targets will make the escort group to report any target that it identifies within detection range. Any detected target can be attacked using the "Attack Targets" menu function. (see below).
--
--   * **"Report now":** Will report the current detected targets.
--   * **"Report targets on":** Will make the escorts to report the detected targets and will fill the "Attack Targets" menu list.
--   * **"Report targets off":** Will stop detecting targets.
--
-- ## Attack targets ...:
-- 
-- This menu item will list all detected targets within a 15km range. Depending on the level of detection (known/unknown) and visuality, the targets type will also be listed.
-- This menu will be available in Flight menu or in each Escort menu.
--
-- ## Scan targets ...:
-- 
-- Menu items to pop-up the escort group for target scanning. After scanning, the escort group will resume with the mission or rejoin formation.
--
--   * **"Scan targets 30 seconds":** Scan 30 seconds for targets.
--   * **"Scan targets 60 seconds":** Scan 60 seconds for targets.
--
-- ## Request assistance from ...:
-- 
-- This menu item will list all detected targets within a 15km range, similar as with the menu item **Attack Targets**.
-- This menu item allows to request attack support from other ground based escorts supporting the current escort.
-- eg. the function allows a player to request support from the Ship escort to attack a target identified by the Plane escort with its Tomahawk missiles.
-- eg. the function allows a player to request support from other Planes escorting to bomb the unit with illumination missiles or bombs, so that the main plane escort can attack the area.
--
-- ## ROE ...:
-- 
-- Sets the Rules of Engagement (ROE) of the escort group when in flight.
--
--   * **"Hold Fire":** The escort group will hold fire.
--   * **"Return Fire":** The escort group will return fire.
--   * **"Open Fire":** The escort group will open fire on designated targets.
--   * **"Weapon Free":** The escort group will engage with any target.
--
-- ## Evasion ...:
-- 
-- Will define the evasion techniques that the escort group will perform during flight or combat.
--
--   * **"Fight until death":** The escort group will have no reaction to threats.
--   * **"Use flares, chaff and jammers":** The escort group will use passive defense using flares and jammers. No evasive manoeuvres are executed.
--   * **"Evade enemy fire":** The rescort group will evade enemy fire before firing.
--   * **"Go below radar and evade fire":** The escort group will perform evasive vertical manoeuvres.
--
-- ## Resume Mission ...:
-- 
-- Escort groups can have their own mission. This menu item will allow the escort group to resume their Mission from a given waypoint.
-- Note that this is really fantastic, as you now have the dynamic of taking control of the escort groups, and allowing them to resume their path or mission.
--
-- ===
-- 
-- ### Authors: **FlightControl** 
-- 
-- ===
--
-- @module AI.AI_Escort
-- @image Escorting.JPG



--- @type AI_ESCORT
-- @extends AI.AI_Formation#AI_FORMATION

--- AI_ESCORT class
-- 
-- # AI_ESCORT construction methods.
-- 
-- Create a new AI_ESCORT object with the @{#AI_ESCORT.New} method:
--
--  * @{#AI_ESCORT.New}: Creates a new AI_ESCORT object from a @{Wrapper.Group#GROUP} for a @{Wrapper.Client#CLIENT}, with an optional briefing text.
--
-- @usage
-- -- Declare a new EscortPlanes object as follows:
-- 
-- -- First find the GROUP object and the CLIENT object.
-- local EscortUnit = CLIENT:FindByName( "Unit Name" ) -- The Unit Name is the name of the unit flagged with the skill Client in the mission editor.
-- local EscortGroup = GROUP:FindByName( "Group Name" ) -- The Group Name is the name of the group that will escort the Escort Client.
-- 
-- -- Now use these 2 objects to construct the new EscortPlanes object.
-- EscortPlanes = AI_ESCORT:New( EscortUnit, EscortGroup, "Desert", "Welcome to the mission. You are escorted by a plane with code name 'Desert', which can be instructed through the F10 radio menu." )
--
-- @field #AI_ESCORT
AI_ESCORT = {
  ClassName = "AI_ESCORT",
  EscortName = nil, -- The Escort Name
  EscortUnit = nil,
  EscortGroup = nil,
  EscortMode = 1,
  MODE = {
    FOLLOW = 1,
    MISSION = 2,
  },
  Targets = {}, -- The identified targets
  FollowScheduler = nil,
  ReportTargets = true,
  OptionROE = AI.Option.Air.val.ROE.OPEN_FIRE,
  OptionReactionOnThreat = AI.Option.Air.val.REACTION_ON_THREAT.ALLOW_ABORT_MISSION,
  SmokeDirectionVector = false,
  TaskPoints = {}
}

--- @field Functional.Detection#DETECTION_AREAS
AI_ESCORT.Detection = nil

--- AI_ESCORT.Mode class
-- @type AI_ESCORT.MODE
-- @field #number FOLLOW
-- @field #number MISSION

--- MENUPARAM type
-- @type MENUPARAM
-- @field #AI_ESCORT ParamSelf
-- @field #Distance ParamDistance
-- @field #function ParamFunction
-- @field #string ParamMessage

--- AI_ESCORT class constructor for an AI group
-- @param #AI_ESCORT self
-- @param Wrapper.Client#CLIENT EscortUnit The client escorted by the EscortGroup.
-- @param Core.Set#SET_GROUP EscortGroupSet The set of group AI escorting the EscortUnit.
-- @param #string EscortName Name of the escort.
-- @param #string EscortBriefing A text showing the AI_ESCORT briefing to the player. Note that if no EscortBriefing is provided, the default briefing will be shown.
-- @return #AI_ESCORT self
-- @usage
-- -- Declare a new EscortPlanes object as follows:
-- 
-- -- First find the GROUP object and the CLIENT object.
-- local EscortUnit = CLIENT:FindByName( "Unit Name" ) -- The Unit Name is the name of the unit flagged with the skill Client in the mission editor.
-- local EscortGroup = GROUP:FindByName( "Group Name" ) -- The Group Name is the name of the group that will escort the Escort Client.
-- 
-- -- Now use these 2 objects to construct the new EscortPlanes object.
-- EscortPlanes = AI_ESCORT:New( EscortUnit, EscortGroup, "Desert", "Welcome to the mission. You are escorted by a plane with code name 'Desert', which can be instructed through the F10 radio menu." )
function AI_ESCORT:New( EscortUnit, EscortGroupSet, EscortName, EscortBriefing )
  
  local self = BASE:Inherit( self, AI_FORMATION:New( EscortUnit, EscortGroupSet, EscortName, EscortBriefing ) ) -- #AI_ESCORT
  self:F( { EscortUnit, EscortGroupSet } )

  self.EscortUnit = self.FollowUnit -- Wrapper.Unit#UNIT
  self.EscortGroupSet = EscortGroupSet
  
  self.EscortGroupSet:SetSomeIteratorLimit( 5 )
  
  self.EscortBriefing = EscortBriefing
 
  
--  if not EscortBriefing then
--    EscortGroup:MessageToClient( EscortGroup:GetCategoryName() .. " '" .. EscortName .. "' (" .. EscortGroup:GetCallsign() .. ") reporting! " ..
--      "We're escorting your flight. " ..
--      "Use the Radio Menu and F10 and use the options under + " .. EscortName .. "\n",
--      60, EscortUnit
--    )
--  else
--    EscortGroup:MessageToClient( EscortGroup:GetCategoryName() .. " '" .. EscortName .. "' (" .. EscortGroup:GetCallsign() .. ") " .. EscortBriefing,
--      60, EscortUnit
--    )
--  end

  self.FollowDistance = 100
  self.CT1 = 0
  self.GT1 = 0


  self.FlightMenu = MENU_GROUP:New( self.EscortUnit:GetGroup(), EscortName )

  EscortGroupSet:ForEachGroup(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      -- Set EscortGroup known at EscortUnit.
      if not self.EscortUnit._EscortGroups then
        self.EscortUnit._EscortGroups = {}
      end
    
      if not self.EscortUnit._EscortGroups[EscortGroup:GetName()] then
        self.EscortUnit._EscortGroups[EscortGroup:GetName()] = {}
        self.EscortUnit._EscortGroups[EscortGroup:GetName()].EscortGroup = EscortGroup
        self.EscortUnit._EscortGroups[EscortGroup:GetName()].EscortName = self.EscortName
        self.EscortUnit._EscortGroups[EscortGroup:GetName()].Detection = self.Detection
      end  
  
    EscortGroup.EscortMode = AI_ESCORT.MODE.FOLLOW
    end
  )
   
  return self
end

--- @param #AI_ESCORT self
-- @param Core.Set#SET_GROUP EscortGroupSet
function AI_ESCORT:onafterStart( EscortGroupSet )

  EscortGroupSet:ForEachGroup(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      EscortGroup.EscortMenu = MENU_GROUP:New( self.EscortUnit:GetGroup(), EscortGroup:GetName(), self.MainMenu )
      EscortGroup:WayPointInitialize( 1 )
    
      EscortGroup:OptionROTVertical()
      EscortGroup:OptionROEOpenFire()
    end
  )
  
  local LeaderEscort = EscortGroupSet:GetFirst() -- Wrapper.Group#GROUP
  
  local Report = REPORT:New( "Escort reporting:" )
  Report:Add( "Current coordinate: " .. LeaderEscort:GetCoordinate():ToString( self.EscortUnit ) )
  Report:Add( "Configuration: " .. EscortGroupSet:GetUnitTypeNames():Text( ", " ) )
  Report:Add( "Joining Up ..." )
  
  LeaderEscort:MessageTypeToGroup( Report:Text(),  MESSAGE.Type.Information, self.EscortUnit )

  self.Detection = DETECTION_AREAS:New( EscortGroupSet, 5000 )

  self.Detection:__Start( 30 )
    
end

--- Set a Detection method for the EscortUnit to be reported upon.
-- Detection methods are based on the derived classes from DETECTION_BASE.
-- @param #AI_ESCORT self
-- @param Functional.Detection#DETECTION_AREAS Detection
function AI_ESCORT:SetDetection( Detection )

  self.Detection = Detection
  self.EscortGroup.Detection = self.Detection
  self.EscortUnit._EscortGroups[self.EscortGroup:GetName()].Detection = self.EscortGroup.Detection
  
  Detection:__Start( 1 )
  
end

--- This function is for test, it will put on the frequency of the FollowScheduler a red smoke at the direction vector calculated for the escort to fly to.
-- This allows to visualize where the escort is flying to.
-- @param #AI_ESCORT self
-- @param #boolean SmokeDirection If true, then the direction vector will be smoked.
function AI_ESCORT:TestSmokeDirectionVector( SmokeDirection )
  self.SmokeDirectionVector = ( SmokeDirection == true ) and true or false
end


--- Defines the default menus
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @param #number YSpace The space between groups on the Y-axis in meters for each sequent group.
-- @param #nubmer ZStart The start position on the Z-axis in meters for the first group.
-- @param #number ZSpace The space between groups on the Z-axis in meters for each sequent group.
-- @param #number ZLevels The amount of levels on the Z-axis.
-- @return #AI_ESCORT
function AI_ESCORT:Menus( XStart, XSpace, YStart, YSpace, ZStart, ZSpace, ZLevels )
  self:F()

--  self:MenuScanForTargets( 100, 60 )

  self.XStart = XStart or self.XStart
  self.XSpace = XSpace or self.XSpace
  self.YStart = YStart or self.YStart
  self.YSpace = YSpace or self.YSpace
  self.ZStart = ZStart or self.ZStart
  self.ZSpace = ZSpace or self.ZSpace
  self.ZLevels = ZLevels or self.ZLevels

  self:MenuJoinUp()
  self:MenuFormationTrail(self.XStart,self.XSpace,self.YStart)
  self:MenuFormationStack(self.XStart,self.XSpace,self.YStart,self.YSpace)
  self:MenuFormationLeftLine(self.XStart,self.YStart,self.ZStart,self.ZSpace)
  self:MenuFormationRightLine(self.XStart,self.YStart,self.ZStart,self.ZSpace)
  self:MenuFormationLeftWing(self.XStart,self.XSpace,self.YStart,self.ZStart,self.ZSpace)
  self:MenuFormationRightWing(self.XStart,self.XSpace,self.YStart,self.ZStart,self.ZSpace)
  self:MenuFormationVic(self.XStart,self.XSpace,self.YStart,self.YSpace,self.ZStart,self.ZSpace)
  self:MenuFormationBox(self.XStart,self.XSpace,self.YStart,self.YSpace,self.ZStart,self.ZSpace,self.ZLevels)
  
  self:MenuHoldAtEscortPosition( 1000, 500 )
  self:MenuHoldAtLeaderPosition( 1000, 500 )
  
  self:MenuFlare()
  self:MenuSmoke()

  self:MenuReportTargets( 60 )
  self:MenuAssistedAttack()
  self:MenuROE()
  self:MenuROT()

--  self:MenuResumeMission()


  return self
end



function AI_ESCORT:MenuFormation( Formation, ... )

  if not self.FlightMenuFormation then
    self.FlightMenuFormation = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Formation", self.MainMenu )
  end

  if not self["FlightMenuFormation"..Formation] then
    self["FlightMenuFormation"..Formation]  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), Formation, self.FlightMenuFormation, 
      function ( self, Formation, ... )
        self.EscortGroupSet:ForSomeGroupAlive(
          --- @param Core.Group#GROUP EscortGroup
          function( EscortGroup, self, Formation, ... )
            if EscortGroup:IsAir() then
              self:E({Formation=Formation})
              self["Formation"..Formation]( self, ... )
            end
          end, self, Formation, ...
        )
      end, self, Formation, ... 
    )
  end

end


--- Defines --- Defines a menu slot to let the escort to join formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @return #AI_ESCORT
function AI_ESCORT:MenuJoinUp()

  if not self.FlightMenuReportNavigation then
    self.FlightMenuReportNavigation = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Navigation", self.FlightMenu )
  end

  if not self.FlightMenuJoinUp then
    self.FlightMenuJoinUp  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Join Up",  self.FlightMenuReportNavigation, AI_ESCORT._FlightJoinUp, self )
  end
  
  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then
        EscortGroup.EscortMenu = MENU_GROUP:New( self.EscortUnit:GetGroup(), EscortGroup:GetName(), self.MainMenu )
        if not EscortGroup.EscortMenuReportNavigation then
          EscortGroup.EscortMenuReportNavigation = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Navigation", EscortGroup.EscortMenu )
        end
    
        if not EscortGroup.EscortMenuJoinUpAndFollow then
          EscortGroup.EscortMenuJoinUpAndFollow = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Join-Up", EscortGroup.EscortMenuReportNavigation, ESCORT._JoinUp, self, EscortGroup )
        end
    
      end
    end
  )

  return self
end


--- Defines a menu slot to let the escort to join in a trail formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFormationTrail( XStart, XSpace, YStart )

  self:MenuFormation( "Trail", XStart, XSpace, YStart )

  return self
end

--- Defines a menu slot to let the escort to join in a stacked formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @param #number YSpace The space between groups on the Y-axis in meters for each sequent group.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFormationStack( XStart, XSpace, YStart, YSpace )

  self:MenuFormation( "Stack", XStart, XSpace, YStart, YSpace )

  return self
end


--- Defines a menu slot to let the escort to join in a leFt wing formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @param #nubmer ZStart The start position on the Z-axis in meters for the first group.
-- @param #number ZSpace The space between groups on the Z-axis in meters for each sequent group.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFormationLeftLine( XStart, YStart, ZStart, ZSpace )

  self:MenuFormation( "LeftLine", XStart, YStart, ZStart, ZSpace )

  return self
end


--- Defines a menu slot to let the escort to join in a right line formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @param #nubmer ZStart The start position on the Z-axis in meters for the first group.
-- @param #number ZSpace The space between groups on the Z-axis in meters for each sequent group.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFormationRightLine( XStart, YStart, ZStart, ZSpace )

  self:MenuFormation( "RightLine", XStart, YStart, ZStart, ZSpace )

  return self
end


--- Defines a menu slot to let the escort to join in a left wing formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @param #nubmer ZStart The start position on the Z-axis in meters for the first group.
-- @param #number ZSpace The space between groups on the Z-axis in meters for each sequent group.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFormationLeftWing( XStart, XSpace, YStart, ZStart, ZSpace )

  self:MenuFormation( "LeftWing", XStart, XSpace, YStart, ZStart, ZSpace )

  return self
end


--- Defines a menu slot to let the escort to join in a right wing formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @param #nubmer ZStart The start position on the Z-axis in meters for the first group.
-- @param #number ZSpace The space between groups on the Z-axis in meters for each sequent group.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFormationRightWing( XStart, XSpace, YStart, ZStart, ZSpace )

  self:MenuFormation( "RightWing", XStart, XSpace, YStart, ZStart, ZSpace )

  return self
end


--- Defines a menu slot to let the escort to join in a center wing formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @param #number YSpace The space between groups on the Y-axis in meters for each sequent group.
-- @param #nubmer ZStart The start position on the Z-axis in meters for the first group.
-- @param #number ZSpace The space between groups on the Z-axis in meters for each sequent group.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFormationCenterWing( XStart, XSpace, YStart, YSpace, ZStart, ZSpace )

  self:MenuFormation( "CenterWing", XStart, XSpace, YStart, YSpace, ZStart, ZSpace )

  return self
end


--- Defines a menu slot to let the escort to join in a vic formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @param #number YSpace The space between groups on the Y-axis in meters for each sequent group.
-- @param #nubmer ZStart The start position on the Z-axis in meters for the first group.
-- @param #number ZSpace The space between groups on the Z-axis in meters for each sequent group.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFormationVic( XStart, XSpace, YStart, YSpace, ZStart, ZSpace )

  self:MenuFormation( "Vic", XStart, XSpace, YStart, YSpace, ZStart, ZSpace )

  return self
end


--- Defines a menu slot to let the escort to join in a box formation.
-- This menu will appear under **Formation**.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @param #number YSpace The space between groups on the Y-axis in meters for each sequent group.
-- @param #nubmer ZStart The start position on the Z-axis in meters for the first group.
-- @param #number ZSpace The space between groups on the Z-axis in meters for each sequent group.
-- @param #number ZLevels The amount of levels on the Z-axis.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFormationBox( XStart, XSpace, YStart, YSpace, ZStart, ZSpace, ZLevels )

  self:MenuFormation( "Box", XStart, XSpace, YStart, YSpace, ZStart, ZSpace, ZLevels )

  return self
end


--- Defines a menu slot to let the escort hold at their current position and stay low with a specified height during a specified time in seconds.
-- This menu will appear under **Hold position**.
-- @param #AI_ESCORT self
-- @param DCS#Distance Height Optional parameter that sets the height in meters to let the escort orbit at the current location. The default value is 30 meters.
-- @param DCS#Time Speed Optional parameter that lets the escort orbit with a specified speed. The default value is a speed that is average for the type of airplane or helicopter.
-- @param #string MenuTextFormat Optional parameter that shows the menu option text. The text string is formatted, and should contain two %d tokens in the string. The first for the Height, the second for the Time (if given). If no text is given, the default text will be displayed.
-- @return #AI_ESCORT
function AI_ESCORT:MenuHoldAtEscortPosition( Height, Speed, MenuTextFormat )
  self:F( { Height, Speed, MenuTextFormat } )

  if not Height then
    Height = 30
  end

  if not Speed then
    Speed = 0
  end

  local MenuText = ""
  if not MenuTextFormat then
    if Speed == 0 then
      MenuText = string.format( "Hold at %d meter", Height )
    else
      MenuText = string.format( "Hold at %d meter at %d", Height, Speed )
    end
  else
    if Speed == 0 then
      MenuText = string.format( MenuTextFormat, Height )
    else
      MenuText = string.format( MenuTextFormat, Height, Speed )
    end
  end

  self.FlightMenuHold = self.FlightMenuHold or {}
  
  if not self.FlightMenuHold[MenuText] then
    self.FlightMenuHold[MenuText] = MENU_GROUP:New( self.EscortUnit:GetGroup(), MenuText, self.FlightMenu )
  end

  self.FlightMenuHoldPosition = self.FlightMenuHoldPosition or {}
  self.FlightMenuHoldPosition[MenuText] = MENU_GROUP_COMMAND
    :New(
      self.EscortUnit:GetGroup(),
      "Flight",
      self.FlightMenuHold[MenuText],
      AI_ESCORT._FlightHoldPosition,
      self,
      nil,
      Height,
      Speed
    )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then
      
        local EscortGroupName = EscortGroup:GetName()
    
        EscortGroup.EscortMenuHoldPosition = EscortGroup.EscortMenuHoldPosition or {}
        EscortGroup.EscortMenuHoldPosition[MenuText] = MENU_GROUP_COMMAND
          :New(
            self.EscortUnit:GetGroup(),
            EscortGroupName,
            self.FlightMenuHold[MenuText],
            AI_ESCORT._HoldPosition,
            self,
            EscortGroup,
            EscortGroup,
            Height,
            Speed
          )
      end
    end
  )
  
  return self
end


--- Defines a menu slot to let the escort hold at the client position and stay low with a specified height during a specified time in seconds.
-- This menu will appear under **Navigation**.
-- @param #AI_ESCORT self
-- @param DCS#Distance Height Optional parameter that sets the height in meters to let the escort orbit at the current location. The default value is 30 meters.
-- @param DCS#Time Speed Optional parameter that lets the escort orbit at the current position for a specified time. (not implemented yet). The default value is 0 seconds, meaning, that the escort will orbit forever until a sequent command is given.
-- @param #string MenuTextFormat Optional parameter that shows the menu option text. The text string is formatted, and should contain one or two %d tokens in the string. The first for the Height, the second for the Time (if given). If no text is given, the default text will be displayed.
-- @return #AI_ESCORT
function AI_ESCORT:MenuHoldAtLeaderPosition( Height, Speed, MenuTextFormat )
  self:F( { Height, Speed, MenuTextFormat } )

  if not Height then
    Height = 30
  end

  if not Speed then
    Speed = 0
  end

  local MenuText = ""
  if not MenuTextFormat then
    if Speed == 0 then
      MenuText = string.format( "Rejoin and hold at %d meter", Height )
    else
      MenuText = string.format( "Rejoin and hold at %d meter at %d", Height, Speed )
    end
  else
    if Speed == 0 then
      MenuText = string.format( MenuTextFormat, Height )
    else
      MenuText = string.format( MenuTextFormat, Height, Speed )
    end
  end

  self.FlightMenuHold = self.FlightMenuHold or {}
  
  if not self.FlightMenuHold[MenuText] then
    self.FlightMenuHold[MenuText] = MENU_GROUP:New( self.EscortUnit:GetGroup(), MenuText, self.FlightMenu )
  end

  self.FlightMenuHoldAtLeaderPosition = self.FlightMenuHoldAtLeaderPosition or {}
  self.FlightMenuHoldAtLeaderPosition[MenuText] = MENU_GROUP_COMMAND
    :New(
      self.EscortUnit:GetGroup(),
      MenuText,
      self.FlightMenuHold[MenuText],
      AI_ESCORT._FlightHoldPosition,
      self,
      self.EscortUnit:GetGroup(),
      Height,
      Speed
    )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then
        
        local EscortGroupName = EscortGroup:GetName()

        EscortGroup.EscortMenuHoldAtLeaderPosition = EscortGroup.EscortMenuHoldAtLeaderPosition or {}
        EscortGroup.EscortMenuHoldAtLeaderPosition[MenuText] = MENU_GROUP_COMMAND
          :New(
            self.EscortUnit:GetGroup(),
            EscortGroupName,
            self.FlightMenuHold[MenuText],
            AI_ESCORT._HoldPosition,
            self,
            self.EscortUnit:GetGroup(),
            EscortGroup,
            Height,
            Speed
          )
      end
    end
  )

  return self
end

--- Defines a menu slot to let the escort scan for targets at a certain height for a certain time in seconds.
-- This menu will appear under **Scan targets**.
-- @param #AI_ESCORT self
-- @param DCS#Distance Height Optional parameter that sets the height in meters to let the escort orbit at the current location. The default value is 30 meters.
-- @param DCS#Time Seconds Optional parameter that lets the escort orbit at the current position for a specified time. (not implemented yet). The default value is 0 seconds, meaning, that the escort will orbit forever until a sequent command is given.
-- @param #string MenuTextFormat Optional parameter that shows the menu option text. The text string is formatted, and should contain one or two %d tokens in the string. The first for the Height, the second for the Time (if given). If no text is given, the default text will be displayed.
-- @return #AI_ESCORT
function AI_ESCORT:MenuScanForTargets( Height, Seconds, MenuTextFormat )
  self:F( { Height, Seconds, MenuTextFormat } )

  if self.EscortGroup:IsAir() then
    if not self.EscortMenuScan then
      self.EscortMenuScan = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Scan for targets", self.EscortMenu )
    end

    if not Height then
      Height = 100
    end

    if not Seconds then
      Seconds = 30
    end

    local MenuText = ""
    if not MenuTextFormat then
      if Seconds == 0 then
        MenuText = string.format( "At %d meter", Height )
      else
        MenuText = string.format( "At %d meter for %d seconds", Height, Seconds )
      end
    else
      if Seconds == 0 then
        MenuText = string.format( MenuTextFormat, Height )
      else
        MenuText = string.format( MenuTextFormat, Height, Seconds )
      end
    end

    if not self.EscortMenuScanForTargets then
      self.EscortMenuScanForTargets = {}
    end

    self.EscortMenuScanForTargets[#self.EscortMenuScanForTargets+1] = MENU_GROUP_COMMAND
      :New(
        self.EscortUnit:GetGroup(),
        MenuText,
        self.EscortMenuScan,
        AI_ESCORT._ScanTargets,
        self,
        30
      )
  end

  return self
end



--- Defines a menu slot to let the escort disperse a flare in a certain color.
-- This menu will appear under **Navigation**.
-- The flare will be fired from the first unit in the group.
-- @param #AI_ESCORT self
-- @param #string MenuTextFormat Optional parameter that shows the menu option text. If no text is given, the default text will be displayed.
-- @return #AI_ESCORT
function AI_ESCORT:MenuFlare( MenuTextFormat )
  self:F()

  if not self.FlightMenuReportNavigation then
    self.FlightMenuReportNavigation = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Navigation", self.FlightMenu )
  end

  local MenuText = ""
  if not MenuTextFormat then
    MenuText = "Flare"
  else
    MenuText = MenuTextFormat
  end

  if not self.FlightMenuFlare then

    self.FlightMenuFlare = MENU_GROUP:New( self.EscortUnit:GetGroup(), MenuText, self.FlightMenuReportNavigation )

    self.FlightMenuFlareGreen  = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Release green flare",  self.FlightMenuFlare )
    self.FlightMenuFlareRed    = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Release red flare",    self.FlightMenuFlare )
    self.FlightMenuFlareWhite  = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Release white flare",  self.FlightMenuFlare )
    self.FlightMenuFlareYellow = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Release yellow flare", self.FlightMenuFlare )

    self.FlightMenuFlareGreenFlight  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight",  self.FlightMenuFlareGreen, AI_ESCORT._FlightFlare, self, FLARECOLOR.Green,  "Released a green flare!"   )
    self.FlightMenuFlareRedFlight    = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight",    self.FlightMenuFlareRed, AI_ESCORT._FlightFlare, self, FLARECOLOR.Red,    "Released a red flare!"     )
    self.FlightMenuFlareWhiteFlight  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight",  self.FlightMenuFlareWhite, AI_ESCORT._FlightFlare, self, FLARECOLOR.White,  "Released a white flare!"   )
    self.FlightMenuFlareYellowFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight", self.FlightMenuFlareYellow, AI_ESCORT._FlightFlare, self, FLARECOLOR.Yellow, "Released a yellow flare!"  )
  end

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )

      local EscortGroupName = EscortGroup:GetCallsign()
  
      local MenuText = ""
      if not MenuTextFormat then
        MenuText = "Flare"
      else
        MenuText = MenuTextFormat
      end
    
      EscortGroup.EscortMenuFlareGreen  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuFlareGreen, AI_ESCORT._Flare, self, EscortGroup, FLARECOLOR.Green,  "Released a green flare!"   )
      EscortGroup.EscortMenuFlareRed    = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuFlareRed, AI_ESCORT._Flare, self, EscortGroup, FLARECOLOR.Red,    "Released a red flare!"     )
      EscortGroup.EscortMenuFlareWhite  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuFlareWhite, AI_ESCORT._Flare, self, EscortGroup, FLARECOLOR.White,  "Released a white flare!"   )
      EscortGroup.EscortMenuFlareYellow = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuFlareYellow, AI_ESCORT._Flare, self, EscortGroup, FLARECOLOR.Yellow, "Released a yellow flare!"  )
    end
  )

  return self
end

--- Defines a menu slot to let the escort disperse a smoke in a certain color.
-- This menu will appear under **Navigation**.
-- Note that smoke menu options will only be displayed for ships and ground units. Not for air units.
-- The smoke will be fired from the first unit in the group.
-- @param #AI_ESCORT self
-- @param #string MenuTextFormat Optional parameter that shows the menu option text. If no text is given, the default text will be displayed.
-- @return #AI_ESCORT
function AI_ESCORT:MenuSmoke( MenuTextFormat )
  self:F()

  if not self.FlightMenuReportNavigation then
    self.FlightMenuReportNavigation = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Navigation", self.FlightMenu )
  end

  local MenuText = ""
  if not MenuTextFormat then
    MenuText = "Smoke"
  else
    MenuText = MenuTextFormat
  end

  if not self.FlightMenuSmoke then

    self.FlightMenuSmoke = MENU_GROUP:New( self.EscortUnit:GetGroup(), MenuText, self.FlightMenuReportNavigation )

    self.FlightMenuSmokeGreen  = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Release green smoke",  self.FlightMenuSmoke )
    self.FlightMenuSmokeRed    = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Release red smoke",    self.FlightMenuSmoke )
    self.FlightMenuSmokeWhite  = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Release white smoke",  self.FlightMenuSmoke )
    self.FlightMenuSmokeOrange = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Release orange smoke", self.FlightMenuSmoke )
    self.FlightMenuSmokeBlue   = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Release blue smoke",   self.FlightMenuSmoke )

    self.FlightMenuSmokeGreenFlight  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight",  self.FlightMenuSmokeGreen, AI_ESCORT._FlightSmoke, self, SMOKECOLOR.Green,  "Releasing green smoke!"   )
    self.FlightMenuSmokeRedFlight    = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight",    self.FlightMenuSmokeRed, AI_ESCORT._FlightSmoke, self, SMOKECOLOR.Red,    "Releasing red smoke!"     )
    self.FlightMenuSmokeWhiteFlight  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight",  self.FlightMenuSmokeWhite, AI_ESCORT._FlightSmoke, self, SMOKECOLOR.White,  "Releasing white smoke!"   )
    self.FlightMenuSmokeOrangeFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight", self.FlightMenuSmokeOrange, AI_ESCORT._FlightSmoke, self, SMOKECOLOR.Orange, "Releasing orange smoke!"  )
    self.FlightMenuSmokeBlueFlight   = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight",   self.FlightMenuSmokeBlue, AI_ESCORT._FlightSmoke, self, SMOKECOLOR.Blue,   "Releasing blue smoke!"    )
  end

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if not EscortGroup:IsAir() then

        local EscortGroupName = EscortGroup:GetCallsign()
    
        local MenuText = ""
        if not MenuTextFormat then
          MenuText = "Smoke"
        else
          MenuText = MenuTextFormat
        end
    
        EscortGroup.EscortMenuSmokeGreen  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName,  self.FlightMenuSmokeGreen, AI_ESCORT._Smoke, self, EscortGroup, SMOKECOLOR.Green,  "Releasing green smoke!"   )
        EscortGroup.EscortMenuSmokeRed    = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName,    self.FlightMenuSmokeRed, AI_ESCORT._Smoke, self, EscortGroup, SMOKECOLOR.Red,    "Releasing red smoke!"     )
        EscortGroup.EscortMenuSmokeWhite  = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName,  self.FlightMenuSmokeWhite, AI_ESCORT._Smoke, self, EscortGroup, SMOKECOLOR.White,  "Releasing white smoke!"   )
        EscortGroup.EscortMenuSmokeOrange = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuSmokeOrange, AI_ESCORT._Smoke, self, EscortGroup, SMOKECOLOR.Orange, "Releasing orange smoke!"  )
        EscortGroup.EscortMenuSmokeBlue   = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName,   self.FlightMenuSmokeBlue, AI_ESCORT._Smoke, self, EscortGroup, SMOKECOLOR.Blue,   "Releasing blue smoke!"    )
      end
    end
  )

  return self
end

--- Defines a menu slot to let the escort report their current detected targets with a specified time interval in seconds.
-- This menu will appear under **Report targets**.
-- Note that if a report targets menu is not specified, no targets will be detected by the escort, and the attack and assisted attack menus will not be displayed.
-- @param #AI_ESCORT self
-- @param DCS#Time Seconds Optional parameter that lets the escort report their current detected targets after specified time interval in seconds. The default time is 30 seconds.
-- @return #AI_ESCORT
function AI_ESCORT:MenuReportTargets( Seconds )
  self:F( { Seconds } )

  if not self.FlightMenuReportNearbyTargets then
    self.FlightMenuReportNearbyTargets = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Report targets", self.FlightMenu )
  end

  if not Seconds then
    Seconds = 30
  end

  self.FlightMenuReportTargetsInterval = Seconds
  
  local timer = 1

  -- Report Targets
  self.FlightMenuReportNearbyTargetsNow = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Report targets now!", self.FlightMenuReportNearbyTargets, AI_ESCORT._FlightReportNearbyTargetsNow, self )
  self.FlightMenuReportNearbyTargetsOn = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Report targets on", self.FlightMenuReportNearbyTargets, AI_ESCORT._FlightSwitchReportNearbyTargets, self, true )
  self.FlightMenuReportNearbyTargetsOff = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Report targets off", self.FlightMenuReportNearbyTargets, AI_ESCORT._FlightSwitchReportNearbyTargets, self, false )

  -- Attack Targets
  self.FlightMenuAttackNearbyTargets = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Attack targets", self.FlightMenu )

  self.FlightReportTargetsScheduler = SCHEDULER:New( self, self._FlightReportTargetsScheduler, {}, 5, Seconds )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then

        --EscortGroup.EscortMenuAttackNearbyTargets = MENU_GROUP:New( self.EscortUnit:GetGroup(), EscortGroup:GetName() )
        
        --if not EscortGroup.EscortMenuReportNearbyTargets then
        --  EscortGroup.EscortMenuReportNearbyTargets = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Report targets", EscortGroup.EscortMenu )
        --end
      
        -- Report Targets
        --EscortGroup.EscortMenuReportNearbyTargetsNow = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Report targets now!", EscortGroup.EscortMenuReportNearbyTargets, AI_ESCORT._ReportNearbyTargetsNow, self, EscortGroup, true )
        --EscortGroup.EscortMenuReportNearbyTargetsOn = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Report targets on", EscortGroup.EscortMenuReportNearbyTargets, AI_ESCORT._SwitchReportNearbyTargets, self, EscortGroup, true )
        --EscortGroup.EscortMenuReportNearbyTargetsOff = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Report targets off", EscortGroup.EscortMenuReportNearbyTargets, AI_ESCORT._SwitchReportNearbyTargets, self, EscortGroup, false )
      
        -- Attack Targets
        EscortGroup.EscortMenuAttackNearbyTargets = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Attack targets", EscortGroup.EscortMenu )
      
        --EscortGroup.ReportTargetsScheduler = SCHEDULER:New( self, self._ReportTargetsScheduler, { EscortGroup }, timer, Seconds )
        timer=timer+1
      end
    end
  )

  return self
end

--- Defines a menu slot to let the escort attack its detected targets using assisted attack from another escort joined also with the client.
-- This menu will appear under **Request assistance from**.
-- Note that this method needs to be preceded with the method MenuReportTargets.
-- @param #AI_ESCORT self
-- @return #AI_ESCORT
function AI_ESCORT:MenuAssistedAttack()
  self:F()

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if not EscortGroup:IsAir() then
        -- Request assistance from other escorts.
        -- This is very useful to let f.e. an escorting ship attack a target detected by an escorting plane...
        self.EscortMenuTargetAssistance = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Request assistance from", EscortGroup.EscortMenu )
      end
    end
  )

  return self
end

--- Defines a menu to let the escort set its rules of engagement.
-- All rules of engagement will appear under the menu **ROE**.
-- @param #AI_ESCORT self
-- @return #AI_ESCORT
function AI_ESCORT:MenuROE( MenuTextFormat )
  self:F( MenuTextFormat )

  if not self.FlightMenuROE then
    self.FlightMenuROE = MENU_GROUP:New( self.EscortUnit:GetGroup(), "ROE", self.FlightMenu )
  end

  if not self.FlightMenuROEHoldFire then
    self.FlightMenuROEHoldFire = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Hold fire", self.FlightMenuROE )
    self.FlightMenuROEHoldFireFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight", self.FlightMenuROEHoldFire, AI_ESCORT._ROE, self,  GROUP.OptionROEHoldFire, "Holding weapons!" )
  end
  if not self.FlightMenuROEReturnFire then
    self.FlightMenuROEReturnFire = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Return fire", self.FlightMenuROE )
    self.FlightMenuROEReturnFireFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight", self.FlightMenuROEReturnFire, AI_ESCORT._ROE, self,  GROUP.OptionROEReturnFire, "Returning fire!" )
  end
  if not self.FlightMenuROEOpenFire then
    self.FlightMenuROEOpenFire = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Open fire", self.FlightMenuROE )
    self.FlightMenuROEOpenFireFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight", self.FlightMenuROEOpenFire, AI_ESCORT._ROE, self,  GROUP.OptionROEOpenFire, "Open fire at designated targets!" )
  end
  if not self.FlightMenuROEWeaponFree then
    self.FlightMenuROEWeaponFree = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Engage all targets", self.FlightMenuROE )
    self.FlightMenuROEWeaponFreeFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight", self.FlightMenuROEWeaponFree, AI_ESCORT._ROE, self,  GROUP.OptionROEWeaponFree, "Engaging all targets!" )
  end

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if not EscortGroup.EscortMenuROE then
        -- Rules of Engagement
        
        local EscortGroupName = EscortGroup:GetName()
        
        if EscortGroup:OptionROEHoldFirePossible() then
          EscortGroup.EscortMenuROEHoldFire = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuROEHoldFire, AI_ESCORT._ROE, self, EscortGroup, GROUP.OptionROEHoldFire, "Holding weapons!" )
        end
        if EscortGroup:OptionROEReturnFirePossible() then
          EscortGroup.EscortMenuROEReturnFire = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuROEReturnFire, AI_ESCORT._ROE, self, EscortGroup, GROUP.OptionROEReturnFire, "Returning fire!" )
        end
        if EscortGroup:OptionROEOpenFirePossible() then
          EscortGroup.EscortMenuROEOpenFire = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuROEOpenFire, AI_ESCORT._ROE, self, EscortGroup, GROUP.OptionROEOpenFire, "Opening fire on designated targets!!" )
        end
        if EscortGroup:OptionROEWeaponFreePossible() then
          EscortGroup.EscortMenuROEWeaponFree = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuROEWeaponFree, AI_ESCORT._ROE, self, EscortGroup, GROUP.OptionROEWeaponFree, "Opening fire on targets of opportunity!" )
        end
      end
    end
  )
  
  return self
end


--- Defines a menu to let the escort set its evasion when under threat.
-- All rules of engagement will appear under the menu **Evasion**.
-- @param #AI_ESCORT self
-- @return #AI_ESCORT
function AI_ESCORT:MenuROT( MenuTextFormat )
  self:F( MenuTextFormat )

  if not self.FlightMenuROT then
    self.FlightMenuROT = MENU_GROUP:New( self.EscortUnit:GetGroup(), "ROT", self.FlightMenu )
  end

  if not self.FlightMenuROTNoReaction then
    self.FlightMenuROTNoReaction = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Fight until death", self.FlightMenuROT )
    self.FlightMenuROTNoReactionFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight", self.FlightMenuROTNoReaction, AI_ESCORT._ROT, self,  GROUP.OptionROTNoReaction, "Fighting until death!" )
  end
  if not self.FlightMenuROTPassiveDefense then
    self.FlightMenuROTPassiveDefense = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Use flares, chaff and jammers", self.FlightMenuROT )
    self.FlightMenuROTPassiveDefenseFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight", self.FlightMenuROTPassiveDefense, AI_ESCORT._ROT, self,  GROUP.OptionROTPassiveDefense, "Defending using jammers, chaff and flares!" )
  end
  if not self.FlightMenuROTEvadeFire then
    self.FlightMenuROTEvadeFire = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Open fire", self.FlightMenuROT )
    self.FlightMenuROTEvadeFireFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Evade enemy fire", self.FlightMenuROTEvadeFire, AI_ESCORT._ROT, self,  GROUP.OptionROTEvadeFire, "Evading on enemy fire!" )
  end
  if not self.FlightMenuROTVertical then
    self.FlightMenuROTVertical = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Avoid radar and evade fire", self.FlightMenuROT )
    self.FlightMenuROTVerticalFlight = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), "Flight", self.FlightMenuROTVertical, AI_ESCORT._ROT, self,  GROUP.OptionROTVertical, "Evading on enemy fire with vertical manoeuvres!" )
  end

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then

        local EscortGroupName = EscortGroup:GetName()

        if not EscortGroup.EscortMenuEvasion then
          -- Reaction to Threats
          if EscortGroup:OptionROTNoReactionPossible() then
            EscortGroup.EscortMenuEvasionNoReaction = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuROTNoReaction, AI_ESCORT._ROT, self, EscortGroup, GROUP.OptionROTNoReaction, "Fighting until death!" )
          end
          if EscortGroup:OptionROTPassiveDefensePossible() then
            EscortGroup.EscortMenuEvasionPassiveDefense = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuROTPassiveDefense, AI_ESCORT._ROT, self, EscortGroup, GROUP.OptionROTPassiveDefense, "Defending using jammers, chaff and flares!" )
          end
          if EscortGroup:OptionROTEvadeFirePossible() then
            EscortGroup.EscortMenuEvasionEvadeFire = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuROTEvadeFire, AI_ESCORT._ROT, self, EscortGroup, GROUP.OptionROTEvadeFire, "Evading on enemy fire!" )
          end
          if EscortGroup:OptionROTVerticalPossible() then
            EscortGroup.EscortMenuOptionEvasionVertical = MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(), EscortGroupName, self.FlightMenuROTVertical, AI_ESCORT._ROT, self, EscortGroup, GROUP.OptionROTVertical, "Evading on enemy fire with vertical manoeuvres!" )
          end
        end
      end
    end
  )

  return self
end

--- Defines a menu to let the escort resume its mission from a waypoint on its route.
-- All rules of engagement will appear under the menu **Resume mission from**.
-- @param #AI_ESCORT self
-- @return #AI_ESCORT
function AI_ESCORT:MenuResumeMission()
  self:F()

  if not self.EscortMenuResumeMission then
    -- Mission Resume Menu Root
    self.EscortMenuResumeMission = MENU_GROUP:New( self.EscortUnit:GetGroup(), "Resume mission from", self.EscortMenu )
  end

  return self
end


--- @param #AI_ESCORT self
-- @param Wrapper.Group#GROUP OrbitGroup
-- @param Wrapper.Group#GROUP EscortGroup
-- @param #number OrbitHeight
-- @param #number OrbitSeconds
function AI_ESCORT:_HoldPosition( OrbitGroup, EscortGroup, OrbitHeight, OrbitSeconds )

  local EscortUnit = self.EscortUnit

  local OrbitUnit = OrbitGroup:GetUnit(1) -- Wrapper.Unit#UNIT
  
  self:ReleaseFormation( EscortGroup )

  local PointFrom = {}
  local GroupVec3 = EscortGroup:GetUnit(1):GetVec3()
  PointFrom = {}
  PointFrom.x = GroupVec3.x
  PointFrom.y = GroupVec3.z
  PointFrom.speed = 250
  PointFrom.type = AI.Task.WaypointType.TURNING_POINT
  PointFrom.alt = GroupVec3.y
  PointFrom.alt_type = AI.Task.AltitudeType.BARO

  local OrbitPoint = OrbitUnit:GetVec2()
  local PointTo = {}
  PointTo.x = OrbitPoint.x
  PointTo.y = OrbitPoint.y
  PointTo.speed = 250
  PointTo.type = AI.Task.WaypointType.TURNING_POINT
  PointTo.alt = OrbitHeight
  PointTo.alt_type = AI.Task.AltitudeType.BARO
  PointTo.task = EscortGroup:TaskOrbitCircleAtVec2( OrbitPoint, OrbitHeight, 0 )

  local Points = { PointFrom, PointTo }

  EscortGroup:OptionROEHoldFire()
  EscortGroup:OptionROTPassiveDefense()

  EscortGroup:SetTask( EscortGroup:TaskRoute( Points ), 1 )
  EscortGroup:MessageTypeToGroup( "Orbiting at current location.", MESSAGE.Type.Information, EscortUnit:GetGroup() )

end


--- @param #AI_ESCORT self
-- @param Wrapper.Group#GROUP OrbitGroup
-- @param #number OrbitHeight
-- @param #number OrbitSeconds
function AI_ESCORT:_FlightHoldPosition( OrbitGroup, OrbitHeight, OrbitSeconds )

  local EscortUnit = self.EscortUnit

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup, OrbitGroup )
      if EscortGroup:IsAir() then
        if OrbitGroup == nil then
          OrbitGroup = EscortGroup
        end
        self:_HoldPosition( OrbitGroup, EscortGroup, OrbitHeight, OrbitSeconds )
      end
    end, OrbitGroup
  )

end  



function AI_ESCORT:_JoinUp( EscortGroup )

  local EscortUnit = self.EscortUnit

  self:JoinFormation( EscortGroup )
  EscortGroup.EscortMode = AI_ESCORT.MODE.FOLLOW
end


function AI_ESCORT:_FlightJoinUp( EscortGroup )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then
        self:_JoinUp( EscortGroup )
      end
    end
  )

end


--- Lets the escort to join in a trail formation.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #nubmer YStart The start position on the Y-axis in meters for the first group.
-- @return #AI_ESCORT
function AI_ESCORT:_EscortFormationTrail( EscortGroup, XStart, XSpace, YStart )

  self:FormationTrail( XStart, XSpace, YStart )

end


function AI_ESCORT:_FlightFormationTrail( XStart, XSpace, YStart )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then
        self:_EscortFormationTrail( EscortGroup, XStart, XSpace, YStart )
      end
    end
  )

end

--- Lets the escort to join in a stacked formation.
-- @param #AI_ESCORT self
-- @param #number XStart The start position on the X-axis in meters for the first group.
-- @param #number XSpace The space between groups on the X-axis in meters for each sequent group.
-- @param #number YStart The start position on the Y-axis in meters for the first group.
-- @param #number YSpace The space between groups on the Y-axis in meters for each sequent group.
-- @return #AI_ESCORT
function AI_ESCORT:_EscortFormationStack( EscortGroup, XStart, XSpace, YStart, YSpace )

  self:FormationStack( XStart, XSpace, YStart, YSpace )

end


function AI_ESCORT:_FlightFormationStack( XStart, XSpace, YStart, YSpace )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then
        self:_EscortFormationStack( EscortGroup, XStart, XSpace, YStart, YSpace )
      end
    end
  )

end


function AI_ESCORT:_Flare( EscortGroup, Color, Message )

  local EscortUnit = self.EscortUnit

  EscortGroup:GetUnit(1):Flare( Color )
  EscortGroup:MessageTypeToGroup( Message, MESSAGE.Type.Information, EscortUnit:GetGroup() )
end


function AI_ESCORT:_FlightFlare( Color, Message )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then
        self:_Flare( EscortGroup, Color, Message )
      end
    end
  )
  
end



function AI_ESCORT:_Smoke( EscortGroup, Color, Message )

  local EscortUnit = self.EscortUnit

  EscortGroup:GetUnit(1):Smoke( Color )
  EscortGroup:MessageTypeToGroup( Message, MESSAGE.Type.Information, EscortUnit:GetGroup() )
end

function AI_ESCORT:_FlightSmoke( Color, Message )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then
        self:_Smoke( EscortGroup, Color, Message )
      end
    end
  )

end


function AI_ESCORT:_ReportNearbyTargetsNow( EscortGroup )

  local EscortUnit = self.EscortUnit

  self:_ReportTargetsScheduler( EscortGroup )

end


function AI_ESCORT:_FlightReportNearbyTargetsNow()

  self:_FlightReportTargetsScheduler()
  
end


function AI_ESCORT:_SwitchReportNearbyTargets( EscortGroup, ReportTargets )

  local EscortUnit = self.EscortUnit

  self.ReportTargets = ReportTargets

  if self.ReportTargets then
    if not EscortGroup.ReportTargetsScheduler then
      EscortGroup.ReportTargetsScheduler:Schedule( self, self._ReportTargetsScheduler, {}, 1, 30 )
    end
  else
    routines.removeFunction( EscortGroup.ReportTargetsScheduler )
    EscortGroup.ReportTargetsScheduler = nil
  end
end


function AI_ESCORT:_FlightSwitchReportNearbyTargets( ReportTargets )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup )
      if EscortGroup:IsAir() then
        self:_SwitchReportNearbyTargets( EscortGroup, ReportTargets )
      end
    end
  )

end


function AI_ESCORT:_ScanTargets( ScanDuration )

  local EscortGroup = self.EscortGroup -- Wrapper.Group#GROUP
  local EscortUnit = self.EscortUnit

  self.FollowScheduler:Stop( self.FollowSchedule )

  if EscortGroup:IsHelicopter() then
    EscortGroup:PushTask(
      EscortGroup:TaskControlled(
        EscortGroup:TaskOrbitCircle( 200, 20 ),
        EscortGroup:TaskCondition( nil, nil, nil, nil, ScanDuration, nil )
      ), 1 )
  elseif EscortGroup:IsAirPlane() then
    EscortGroup:PushTask(
      EscortGroup:TaskControlled(
        EscortGroup:TaskOrbitCircle( 1000, 500 ),
        EscortGroup:TaskCondition( nil, nil, nil, nil, ScanDuration, nil )
      ), 1 )
  end

  EscortGroup:MessageToClient( "Scanning targets for " .. ScanDuration .. " seconds.", ScanDuration, EscortUnit )

  if self.EscortMode == AI_ESCORT.MODE.FOLLOW then
    self.FollowScheduler:Start( self.FollowSchedule )
  end

end

--- @param #AI_ESCORT self
-- @param Wrapper.Group#GROUP EscortGroup
function AI_ESCORT.___Resume( EscortGroup, self )

  local PlayerGroup = self.EscortUnit:GetGroup()
  
  if EscortGroup.EscortMode == AI_ESCORT.MODE.FOLLOW then
    self:JoinFormation( EscortGroup )
    EscortGroup:MessageTypeToClient( "Destroyed all targets. Rejoining.", MESSAGE.Type.Information, PlayerGroup )
  end

end


--- @param #AI_ESCORT self
-- @param Wrapper.Group#GROUP EscortGroup The escort group that will attack the detected item.
-- @param Functional.Detection#DETECTION_BASE.DetectedItem DetectedItem
function AI_ESCORT:_AttackTarget( EscortGroup, DetectedItem )

  self:F( EscortGroup )
  
  local EscortUnit = self.EscortUnit
  
  self:ReleaseFormation( EscortGroup )

  if EscortGroup:IsAir() then
    EscortGroup:OptionROEOpenFire()
    EscortGroup:OptionROTPassiveDefense()
    EscortGroup:SetState( EscortGroup, "Escort", self )

    local DetectedSet = self.Detection:GetDetectedItemSet( DetectedItem )
    
    local Tasks = {}
    local AttackUnitTasks = {}

    DetectedSet:ForEachUnit(
      --- @param Wrapper.Unit#UNIT DetectedUnit
      function( DetectedUnit, Tasks )
        if DetectedUnit:IsAlive() then
          AttackUnitTasks[#AttackUnitTasks+1] = EscortGroup:TaskAttackUnit( DetectedUnit )
        end
      end, Tasks
    )    

    Tasks[#Tasks+1] = EscortGroup:TaskCombo( AttackUnitTasks )
    Tasks[#Tasks+1] = EscortGroup:TaskFunction( "AI_ESCORT.___Resume", self, EscortGroup )
    
    EscortGroup:SetTask( 
      EscortGroup:TaskCombo(
        Tasks
      ), 1
    )
    
  else
  
    local DetectedSet = self.Detection:GetDetectedItemSet( DetectedItem )
    
    local Tasks = {}

    DetectedSet:ForEachUnit(
      --- @param Wrapper.Unit#UNIT DetectedUnit
      function( DetectedUnit, Tasks )
        if DetectedUnit:IsAlive() then
          Tasks[#Tasks+1] = EscortGroup:TaskFireAtPoint( DetectedUnit:GetVec2(), 50 )
        end
      end, Tasks
    )    

    EscortGroup:SetTask( 
      EscortGroup:TaskCombo(
        Tasks
      ), 1
    )

  end
  
  EscortGroup:MessageTypeToGroup( "Engaging!", MESSAGE.Type.Information, EscortUnit )

end


function AI_ESCORT:_FlightAttackTarget( DetectedItem )

  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Core.Group#GROUP EscortGroup
    function( EscortGroup, DetectedItem )
      if EscortGroup:IsAir() then
        self:_AttackTarget( EscortGroup, DetectedItem )
      end
    end, DetectedItem
  )

end


--- 
--- @param #AI_ESCORT self
-- @param Wrapper.Group#GROUP EscortGroup The escort group that will attack the detected item.
-- @param Functional.Detection#DETECTION_BASE.DetectedItem DetectedItem
function AI_ESCORT:_AssistTarget( EscortGroup, DetectedItem )

  local EscortUnit = self.EscortUnit

  local DetectedSet = self.Detection:GetDetectedItemSet( DetectedItem )
  
  local Tasks = {}

  DetectedSet:ForEachUnit(
    --- @param Wrapper.Unit#UNIT DetectedUnit
    function( DetectedUnit, Tasks )
      if DetectedUnit:IsAlive() then
        Tasks[#Tasks+1] = EscortGroup:TaskFireAtPoint( DetectedUnit:GetVec2(), 50 )
      end
    end, Tasks
  )    

  EscortGroup:SetTask( 
    EscortGroup:TaskCombo(
      Tasks
    ), 1
  )


  EscortGroup:MessageTypeToGroup( "Assisting attack!", MESSAGE.Type.Information, EscortUnit:GetGroup() )

end

function AI_ESCORT:_ROE( EscortGroup, EscortROEFunction, EscortROEMessage )
    pcall( function() EscortROEFunction() end )
    EscortGroup:MessageTypeToGroup( EscortROEMessage, MESSAGE.Type.Information, self.EscortUnit:GetGroup() )
end

function AI_ESCORT:_FlightROE( EscortROEFunction, EscortROEMessage )
  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Wrapper.Group#GROUP EscortGroup
    function( EscortGroup )
      self:_ROE( EscortGroup, EscortROEFunction, EscortROEMessage )
    end
  )
end


function AI_ESCORT:_ROT( EscortGroup, EscortROTFunction, EscortROTMessage )
  pcall( function() EscortROTFunction() end )
  EscortGroup:MessageTypeToGroup( EscortROTMessage, MESSAGE.Type.Information, self.EscortUnit:GetGroup() )
end


function AI_ESCORT:_FlightROT( EscortROTFunction, EscortROTMessage )
  self.EscortGroupSet:ForSomeGroupAlive(
    --- @param Wrapper.Group#GROUP EscortGroup
    function( EscortGroup )
      self:_ROT( EscortGroup, EscortROTFunction, EscortROTMessage )
    end
  )
end



function AI_ESCORT:_ResumeMission( WayPoint )

  local EscortGroup = self.EscortGroup
  local EscortUnit = self.EscortUnit

  self.FollowScheduler:Stop( self.FollowSchedule )

  local WayPoints = EscortGroup:GetTaskRoute()
  self:T( WayPoint, WayPoints )

  for WayPointIgnore = 1, WayPoint do
    table.remove( WayPoints, 1 )
  end

  SCHEDULER:New( EscortGroup, EscortGroup.SetTask, { EscortGroup:TaskRoute( WayPoints ) }, 1 )

  EscortGroup:MessageToClient( "Resuming mission from waypoint " .. WayPoint .. ".", 10, EscortUnit )
end


--- Registers the waypoints
-- @param #AI_ESCORT self
-- @return #table
function AI_ESCORT:RegisterRoute()
  self:F()

  local EscortGroup = self.EscortGroup -- Wrapper.Group#GROUP

  local TaskPoints = EscortGroup:GetTaskRoute()

  self:T( TaskPoints )

  return TaskPoints
end



--- Report Targets Scheduler.
-- @param #AI_ESCORT self
-- @param Wrapper.Group#GROUP EscortGroup
function AI_ESCORT:_ReportTargetsScheduler( EscortGroup )
  self:F( EscortGroup:GetName() )

  if EscortGroup:IsAlive() and self.EscortUnit:IsAlive() then

    if true then

      local EscortGroupName = EscortGroup:GetName() 
    

      if EscortGroup.EscortMenuTargetAssistance then
        EscortGroup.EscortMenuTargetAssistance:RemoveSubMenus()
      end

      local DetectedItems = self.Detection:GetDetectedItems()

      local ClientEscortTargets = self.Detection

      local TimeUpdate = timer.getTime()
      
      for DetectedItemIndex, DetectedItem in pairs( DetectedItems ) do

        local DetectedItemReportSummary = self.Detection:DetectedItemReportMenu( DetectedItem, EscortGroup, _DATABASE:GetPlayerSettings( self.EscortUnit:GetPlayerName() ) )

        local DetectedMenu = DetectedItemReportSummary:Text("\n")

        if EscortGroup:IsAir() then
          MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(),
            DetectedMenu,
            EscortGroup.EscortMenuAttackNearbyTargets,
            AI_ESCORT._AttackTarget,
            self,
            EscortGroup,
            DetectedItem
          ):SetTag( "Escort" ):SetTime( TimeUpdate )
        else
          if self.EscortMenuTargetAssistance then
            local MenuTargetAssistance = MENU_GROUP:New( self.EscortUnit:GetGroup(), EscortGroupName, EscortGroup.EscortMenuTargetAssistance )
            MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(),
              DetectedMenu,
              MenuTargetAssistance,
              AI_ESCORT._AssistTarget,
              self,
              EscortGroup,
              DetectedItem
            )
          end
          
        end

      end

      EscortGroup.EscortMenuAttackNearbyTargets:RemoveSubMenus( TimeUpdate, "Esort" )

      return true
    else
    end
  end
  
  return false
end

--- Report Targets Scheduler for the flight. The report is generated from the perspective of the player plane, and is reported by the first plane in the formation set.
-- @param #AI_ESCORT self
-- @param Wrapper.Group#GROUP EscortGroup
function AI_ESCORT:_FlightReportTargetsScheduler()

  self:F("FlightReportTargetScheduler")
  
  local EscortGroup = self.EscortGroupSet:GetFirst() -- Wrapper.Group#GROUP
  
  local DetectedTargetsReport = REPORT:New( "Reporting detected targets:\n" ) -- A new report to display the detected targets as a message to the player.

  if self.EscortUnit:IsAlive() and EscortGroup:IsAlive() then

    local ClientGroup = self.EscortUnit:GetGroup()

    local TimeUpdate = timer.getTime()


    local DetectedItems = self.Detection:GetDetectedItems()

    local DetectedTargets = false

    local ClientEscortTargets = self.Detection

    for DetectedItemIndex, DetectedItem in pairs( DetectedItems ) do
    
      self:F("FlightReportTargetScheduler Targets")
    

      DetectedTargets = true -- There are detected targets, when the content of the for loop is executed. We use it to display a message.
      
      local DetectedItemReportMenu = self.Detection:DetectedItemReportMenu( DetectedItem, ClientGroup, _DATABASE:GetPlayerSettings( self.EscortUnit:GetPlayerName() ) )
      local ReportMenuText = DetectedItemReportMenu:Text(", ")
      
      MENU_GROUP_COMMAND:New( self.EscortUnit:GetGroup(),
        ReportMenuText,
        self.FlightMenuAttackNearbyTargets,
        AI_ESCORT._FlightAttackTarget,
        self,
        DetectedItem
      ):SetTag( "Flight" ):SetTime( TimeUpdate )

      local DetectedItemReportSummary = self.Detection:DetectedItemReportSummary( DetectedItem, ClientGroup, _DATABASE:GetPlayerSettings( self.EscortUnit:GetPlayerName() ) )
      local ReportSummary = DetectedItemReportSummary:Text(", ")
      DetectedTargetsReport:AddIndent( ReportSummary, "-" )
    end

    self.FlightMenuAttackNearbyTargets:RemoveSubMenus( TimeUpdate, "Flight" )

    if DetectedTargets then
      EscortGroup:MessageTypeToGroup( DetectedTargetsReport:Text( "\n" ), MESSAGE.Type.Information, self.EscortUnit:GetGroup() )
--    else
--      EscortGroup:MessageTypeToGroup( "No targets detected.", MESSAGE.Type.Information, self.EscortUnit:GetGroup() )
    end

    return true
  end
  
  return false
end
