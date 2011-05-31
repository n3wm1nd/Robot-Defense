--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
  return {
    name      = "ScoutSpawner",
    desc      = "Spawns scouts for vanguards", -- TEST GADGET, NOT IN USE
    author    = "TheFatConroller",
    date      = "01.08.2009",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = false  --  loaded by default?
  }
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- SYNCED CODE
if (not gadgetHandler:IsSyncedCode()) then
  return
end

--Speed-ups

local GetUnitBasePosition   = Spring.GetUnitBasePosition
local CreateUnit        = Spring.CreateUnit
local GetUnitTeam     = Spring.GetUnitTeam
local GiveOrderToUnit   = Spring.GiveOrderToUnit
local ValidUnitID = Spring.ValidUnitID
local GetUnitIsDead = Spring.GetUnitIsDead
local SetUnitBlocking = Spring.SetUnitBlocking
local GetGameFrame = Spring.GetGameFrame

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local SHOCKER = UnitDefNames['armshock'].id
local SHOCKER_GUN = WeaponDefNames['armshock_shocker'].id
local scoutList = {}
local noBlockingList = {}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:Initialize()
  Script.SetWatchWeapon(SHOCKER_GUN, true)
end

function gadget:Explosion(weaponID, px, py, pz, ownerID)
  if (weaponID == SHOCKER_GUN) and ValidUnitID(ownerID) and (not GetUnitIsDead(ownerID)) then
    for sid,uid in pairs(scoutList) do
      if (uid == ownerID) then
        if ValidUnitID(sid) and (not GetUnitIsDead(sid)) then
          local x, y, z = GetUnitBasePosition(sid)
          local angle = math.atan2((x-px),(z-pz))
          GiveOrderToUnit(sid, CMD.MOVE, {px + (math.sin(angle)*180), py, pz + (math.cos(angle)*180)}, {"shift"})
          return false
        else
          scoutList[sid] = nil
        end
      end
    end
    local x, y, z = GetUnitBasePosition(ownerID)
    Spring.SpawnCEG("SPAWN_GLOW", x, y, z, 0, 1.0, 0,0,0)
    local newScout = CreateUnit("armflea",x,y,z,1,GetUnitTeam(ownerID))
    local angle = math.atan2((x-px),(z-pz))
    SetUnitBlocking(newScout, false, false)
    noBlockingList[newScout] = (GetGameFrame() + 20)
    scoutList[newScout] = ownerID
    GiveOrderToUnit(newScout, CMD.MOVE, {px + (math.sin(angle)*180), py, pz + (math.cos(angle)*180)}, {""})
  end
end

function gadget:GameFrame(n)
  for unitID,t in pairs(noBlockingList) do
    if (t < n) then
      if ValidUnitID(unitID) and (not GetUnitIsDead(unitID)) then
        SetUnitBlocking(unitID, true, true)
      end
      noBlockingList[unitID] = nil
    end
  end
end

function gadget:UnitTaken(unitID, unitDefID, unitTeam, newTeam) 
  scoutList[unitID] = nil
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam)
  scoutList[unitID] = nil
  if (unitDefId == SHOCKER) then
    for _,uid in pairs(scoutList) do
      if (uid == unitID) then
        scoutList[unitID] = nil
        break
      end
    end
  end
end
  
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
