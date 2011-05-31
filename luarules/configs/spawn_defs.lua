--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
maxChicken           = tonumber(Spring.GetModOptions().mo_maxchicken) or 400
maxBurrows           = 20
gracePeriod          = tonumber(Spring.GetModOptions().mo_graceperiod) or 160  -- no chicken spawn in this period, seconds
queenTime            = (Spring.GetModOptions().mo_queentime or 40) * 60 -- time at which the queen appears, seconds
addQueenAnger        = tonumber(Spring.GetModOptions().mo_queenanger) or 1
burrowSpawnType      = Spring.GetModOptions().mo_chickenstart or "avoid"
spawnSquare          = 90       -- size of the chicken spawn square centered on the burrow
spawnSquareIncrement = 2         -- square size increase for each unit spawned
burrowName           = "roost"   -- burrow unit name
maxAge               = 600      -- chicken die at this age, seconds
queenName 		     = Spring.GetModOptions().mo_queendifficulty or "n_chickenq"
burrowDef            = UnitDefNames[burrowName].id
defenderChance       = 0.5       -- probability of spawning a single turret
maxTurrets           = 3   		 -- Max Turrets per burrow
queenSpawnMult       = 1         -- how many times bigger is a queen hatch than a normal burrow hatch
burrowSpawnRate      = 60
chickenSpawnRate     = 59
minBaseDistance      = 600      
maxBaseDistance      = 7200
chickensPerPlayer    = 8
spawnChance          = 0.5
bonusTurret          = "chickend1" -- Turret that gets spawned when a burrow dies
angerBonus           = 20
expStep 			 = 0.0625
lobberEMPTime        = 4
damageMod			 = 1
waves         = {}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local function Copy(original)
  local copy = {} 
  for k, v in pairs(original) do
    if (type(v) == "table") then
      copy[k] = Copy(v)
    else
      copy[k] = v
    end
  end
  return copy
end

local function addWave(wave, unitList)
 if not waves[wave] then waves[wave] = {} end
 table.insert(waves[wave], unitList)
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local chickenTypes = {
  armflea       =  true,
  armsam        =  true,
  cormist1      =  true,
  armrock       =  true,
  corthud       =  true,
  armrectr      =  true,
  tllhtml     =  true,
  armstump      =  true,
  armthund      =  true,
  armjanus1     =  true,
  corgfbt       =  true,
  cslicer       =  true,
  armraven1     =  true,
  armshock1     =  true,
  commando      =  true,
  armsnipe      =  true,
  taipan        =  true,
  snowman       =  true,
  armmerl       =  true,
  tankanotor    =  true,
  airwolf3g     =  true,
  armcybr       =  true,
  corpyro       =  true,
  krogtaar      =  true,
  coremech      =  true,
  corprot       =  true,
  cortotal      =  true,
  requ1         =  true,
  corkrog       =  true,
  arm_furie     =  true,
  corkarg1      =  true,
  corgala       =  true,
  armcrabe      =  true,
  clb           =  true,
}

local defenders = { 
  chickend1 = true,
}

addWave(1,{"1 armrectr", "1 armsam"})
addWave(1,{"2 armflea"})
addWave(1,{"2 armflea"})
addWave(1,{"1 armrectr"})
addWave(1,{"4 armflea"})
addWave(1,{"4 armflea", "1 armsam", "1 tllhtml"})
addWave(1,{"4 armflea", "12 armflea"})
addWave(1,{"8 armflea", "2 armrectr"})
addWave(1,{"2 armflea"})
addWave(1,{"2 armflea"})
addWave(1,{"2 armflea"})
addWave(1,{"2 armrock"})
addWave(1,{"2 armrock", "1 armthund", "1 cormist1"})
addWave(1,{"2 armrock", "1 cormist1"})


addWave(2,{"2 armflea", "1 cormist1"})
addWave(2,{"2 armflea"})
addWave(2,{"3 armflea"})
addWave(2,{"1 armthund"})
addWave(2,{"1 cormist1"})
addWave(2,{"5 armrock", "6 armsam", "7 corthud"})
addWave(2,{"15 armflea", "25 armflea"})
addWave(2,{"1 tllhtml", "1 armstump"})
addWave(2,{"1 armstump"})
addWave(2,{"1 corgfbt"})
addWave(2,{"1 armflea"})
addWave(2,{"1 airwolf3g"})
addWave(2,{"1 armthund", "1 airwolf3g", "1 armthund"})
addWave(2,{"10 armflea", "1 armjanus1"})


addWave(3,{"3 armrectr", "2 armjanus1"})
addWave(3,{"6 armflea"})
addWave(3,{"7 armflea"})
addWave(3,{"8 armflea"})
addWave(3,{"9 armflea"})
addWave(3,{"2 armstump", "2 armstump", "1 tllhtml"})
addWave(3,{"5 armflea", "5 armflea"})
addWave(3,{"5 armflea", "5 armflea"})
addWave(3,{"5 armflea"})
addWave(3,{"7 armflea"})
addWave(3,{"2 armstump"})
addWave(3,{"5 corthud"})
addWave(3,{"4 corthud", "4 corthud", "7 armrectr"})
addWave(3,{"4 armstump", "1 armjanus1"})


addWave(4,{"1 armjanus1", " 1 armjanus1"})
addWave(4,{"1 armrectr"})
addWave(4,{"1 armstump"})
addWave(4,{"1 armstump"})
addWave(4,{"30 armflea"})
addWave(4,{"30 armflea", "30 armflea", "30 corthud"})
addWave(4,{"10 armrock", "5 armrock"})
addWave(4,{"1 armshock1", "1 armraven1"})
addWave(4,{"1 cslicer"})
addWave(4,{"1 cslicer"})
addWave(4,{"5 cslicer"})
addWave(4,{"3 cslicer"})
addWave(4,{"2 airwolf3g", "2 armthund", "40 armthund"})
addWave(4,{"1 armsnipe", "1 armmerl"})


addWave(5,{"5 armthund", "5 armthund"})
addWave(5,{"2 airwolf3g"})
addWave(5,{"10 armflea"})
addWave(5,{"10 armrectr"})
addWave(5,{"20 corpyro"})
addWave(5,{"10 corpyro", "10 cslicer", "10 corgfbt"})
addWave(5,{"5 corgfbt", "5 commando"})
addWave(5,{"2 requ1", "5 commando"})
addWave(5,{"1 armshock1"})
addWave(5,{"1 armraven1"})
addWave(5,{"10 armflea"})
addWave(5,{"10 armflea"})
addWave(5,{"1 armsnipe", "2 armmerl", "1 tankanotor"})
addWave(5,{"5 armstump", "3 tllhtml"})


addWave(6,{"12 taipan", " 4 armsnipe"})
addWave(6,{"3 airwolf3g"})
addWave(6,{"3 airwolf3g"})
addWave(6,{"30 armthund"})
addWave(6,{"10 armthund"})
addWave(6,{"35 armflea", "40 armflea", "40 armflea"})
addWave(6,{"12 armstump", "25 armstump"})
addWave(6,{"2 airwolf3g", "2 tllhtml"})
addWave(6,{"1 tllhtml"})
addWave(6,{"1 tllhtml"})
addWave(6,{"12 armjanus1"})
addWave(6,{"10 armjanus1"})
addWave(6,{"15 armflea", "30 cormist1", "30 armsam"})
addWave(6,{"5 tankanotor", "20 snowman"})


addWave(7,{"25 airwolf3g", "15 armcybr"})
addWave(7,{"15 armcybr"})
addWave(7,{"1 armcrabe"})
addWave(7,{"1 armcrabe"})
addWave(7,{"1 armcrabe"})
addWave(7,{"20 armflea", "20 armflea", "20 armflea"})
addWave(7,{"2 tankanotor", "3 cortotal"})
addWave(7,{"2 cortotal", "2 clb"})
addWave(7,{"5 armsnipe"})
addWave(7,{"5 armsnipe"})
addWave(7,{"2 krogtaar"})
addWave(7,{"1 krogtaar"})
addWave(7,{"5 coremech", "5 coremech", "5 coremech"})
addWave(7,{"10 corprot", "10 corprot"})


addWave(8,{"1 corkrog", "1 arm_furie"})
addWave(8,{"10 corpyro"})
addWave(8,{"10 corpyro"})
addWave(8,{"10 corpyro"})
addWave(8,{"35 airwolf3g"})
addWave(8,{"5 armcybr", "10 armcybr", "15 tllhtml"})
addWave(8,{"3 tllhtml", "1 corkrog"})
addWave(8,{"1 corkarg1", " 1 corkarg1"})
addWave(8,{"4 clb"})
addWave(8,{"4 clb"})
addWave(8,{"4 clb"})
addWave(8,{"35 tllhtml"})
addWave(8,{"35 armrectr", "50 armflea", "75 armflea"})
addWave(8,{"1 arm_furie", "1 corgala"})


addWave(9,{"1 corkrog", "1 armcrabe"})
addWave(9,{"10 tllhtml"})
addWave(9,{"1 armcrabe"})
addWave(9,{"3 armcrabe"})
addWave(9,{"1 arm_furie", "1 arm_furie", "2 arm_furie"})
addWave(9,{"3 corprot", "3 armsnipe"})
addWave(9,{"10 airwolf3g"})
addWave(9,{"10 airwolf3g"})
addWave(9,{"10 armcybr"})
addWave(9,{"2 corkrog", "2 arm_furie", "20 clb"})
addWave(9,{"3 corkarg1", "3 corgala"})



difficulties = {
  ['Chicken: Very Easy'] = {
    chickenSpawnRate = 100, 
    burrowSpawnRate  = 120,
    queenSpawnMult   = 0,
    angerBonus       = 20,
    expStep 		 = 0,
    lobberEMPTime    = 0,
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = 5,
    spawnChance      = 0.25,
    damageMod		 = 0.6,
  },
  ['Chicken: Easy'] = {
    chickenSpawnRate = 100, 
    burrowSpawnRate  = 120,
    queenSpawnMult   = 1,
    angerBonus       = 20,
    expStep 		 = 0.39375,
    lobberEMPTime    = 2.5,
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = 7,
    spawnChance      = 0.33,
    damageMod		 = 0.75,
  },

  ['Chicken: Normal'] = {
    chickenSpawnRate = 80,
    burrowSpawnRate  = 105,
    queenSpawnMult   = 1,
    angerBonus       = 25,
    expStep 		 = 0.625,
    lobberEMPTime    = 4,
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = 9,
    spawnChance      = 0.4,
    damageMod        = 1,
  },

  ['Chicken: Hard'] = {
    chickenSpawnRate = 70,
    burrowSpawnRate  = 60,
    queenSpawnMult   = 2,
    angerBonus       = 30,
    expStep 		 = 1.25,
    lobberEMPTime    = 5,
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = 14,
    spawnChance      = 0.5,
    damageMod        = 1.1,
  },


  ['Chicken: Very Hard'] = {
    chickenSpawnRate = 45,
    burrowSpawnRate  = 40,
    queenSpawnMult   = 3,
    angerBonus       = 30,
    expStep 		 = 1.6,
    lobberEMPTime    = 7.5,
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = 18,
    spawnChance      = 0.6,
    damageMod        = 1.25,
  },

  ['Chicken: Custom'] = {
    chickenSpawnRate = tonumber(Spring.GetModOptions().mo_custom_chickenspawn),
    burrowSpawnRate  = tonumber(Spring.GetModOptions().mo_custom_burrowspawn),
    queenSpawnMult   = tonumber(Spring.GetModOptions().mo_custom_queenspawnmult),
    angerBonus       = tonumber(Spring.GetModOptions().mo_custom_angerbonus),
    expStep 		 = (tonumber(Spring.GetModOptions().mo_custom_expstep) or 0.6) * -1,
    lobberEMPTime    = tonumber(Spring.GetModOptions().mo_custom_lobberemp),
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = tonumber(Spring.GetModOptions().mo_custom_minchicken),
    spawnChance      = (tonumber(Spring.GetModOptions().mo_custom_spawnchance) or 50) / 100,
    damageMod        = (tonumber(Spring.GetModOptions().mo_custom_damagemod) or 100) / 100,
  },
}

defaultDifficulty = 'Chicken: Custom'

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
