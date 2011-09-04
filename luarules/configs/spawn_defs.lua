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
maxAge               = 300      -- chicken die at this age, seconds
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
--Robot Defense Config
--------------------------------------------------------------------------------

local cenabled = tonumber(Spring.GetModOptions().mo_norobot) or 0

if (cenabled == 0) then 
   
local chickenTypes = {
  armflea       =  true,
  armsam        =  true,
  cormist1      =  true,
  armrock       =  true,
  corthud       =  true,
  armrectr      =  true,
  chickena2     =  true,
  armstump      =  true,
  armthund      =  true,
  armblz        =  true,
  tllprob       =  true,
  corawac       =  true,
  corhurc       =  true,
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
  armraven      =  true,
  tllsham       =  true,
  corkrog       =  true,
  arm_furie     =  true,
  corkarg1      =  true,
  corgala       =  true,
  armcrabe      =  true,
  clb           =  true,
  corpyro       =  true,
  armzeus       =  true,
}

local defenders = { 
  chickend1 = true,
}

addWave(1,{"1 armrectr", "1 armsam"})
addWave(1,{"2 armflea"})
addWave(1,{"2 armflea"})
addWave(1,{"1 armrectr"})
addWave(1,{"4 armflea"})
addWave(1,{"4 armflea", "1 armsam","1 tllsham", "1 chickena2"})
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
addWave(2,{"1 chickena2","2 tllsham", "1 armstump"})
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
addWave(3,{"2 armstump", "2 armstump","2 tllsham", "1 chickena2"})
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
addWave(4,{"10 tllprob", "2 airwolf3g", "2 armblz", "40 armblz"})
addWave(4,{"1 armsnipe", "3 tllsham","1 armmerl"})


addWave(5,{"10 tllprob", "5 armblz", "5 armblz"})
addWave(5,{"2 airwolf3g"})
addWave(5,{"10 armflea"})
addWave(5,{"10 armrectr"})
addWave(5,{"20 corpyro"})
addWave(5,{"10 corpyro", "10 cslicer", "10 corgfbt"})
addWave(5,{"5 corgfbt", "10 armzeus"})
addWave(5,{"2 armraven", "10 armzeus"})
addWave(5,{"1 armshock1"})
addWave(5,{"1 armraven1"})
addWave(5,{"10 armflea"})
addWave(5,{"10 armflea"})
addWave(5,{"1 armsnipe", "2 armmerl", "1 tankanotor"})
addWave(5,{"5 armzeus", "3 chickena2", "4 tllsham"})


addWave(6,{"12 taipan", " 4 armsnipe"})
addWave(6,{"20 tllprob", "3 airwolf3g"})
addWave(6,{"3 airwolf3g"})
addWave(6,{"30 armblz"})
addWave(6,{"10 armblz"})
addWave(6,{"35 armflea", "40 armflea", "40 armflea"})
addWave(6,{"15 corpyro", "30 corpyro"})
addWave(6,{"2 airwolf3g", "2 chickena2", "4 tllsham"})
addWave(6,{"1 chickena2"})
addWave(6,{"1 chickena2"})
addWave(6,{"12 armjanus1"})
addWave(6,{"10 armjanus1"})
addWave(6,{"15 armflea", "30 cormist1", "30 armsam"})
addWave(6,{"5 tankanotor", "20 snowman"})


addWave(7,{"20 corawac", "25 airwolf3g", "20 corhurc"})
addWave(7,{"15 armcybr"})
addWave(7,{"1 armcrabe"})
addWave(7,{"1 armcrabe"})
addWave(7,{"1 armcrabe"})
addWave(7,{"20 armflea", "20 armflea", "20 armflea"})
addWave(7,{"2 tankanotor", "3 cortotal"})
addWave(7,{"2 cortotal", "2 clb"})
addWave(7,{"5 armsnipe"})
addWave(7,{"5 armsnipe", "4 tllsham"})
addWave(7,{"2 krogtaar"})
addWave(7,{"1 krogtaar"})
addWave(7,{"5 coremech", "5 coremech", "5 coremech"})
addWave(7,{"10 corprot", "10 corprot"})


addWave(8,{"1 corkrog", "1 arm_furie"})
addWave(8,{"10 corpyro"})
addWave(8,{"10 corpyro"})
addWave(8,{"10 corpyro"})
addWave(8,{"35 airwolf3g"})
addWave(8,{"25 corawac", "5 armcybr", "10 armcybr", "15 chickena2"})
addWave(8,{"3 chickena2", "1 corkrog"})
addWave(8,{"1 corkarg1", " 1 corkarg1"})
addWave(8,{"4 clb"})
addWave(8,{"4 clb"})
addWave(8,{"4 clb"})
addWave(8,{"35 chickena2", "10 tllsham"})
addWave(8,{"35 armrectr", "50 armflea", "75 armflea"})
addWave(8,{"1 arm_furie", "1 corgala"})


addWave(9,{"1 corkrog", "1 armcrabe"})
addWave(9,{"10 chickena2", "16 tllsham"})
addWave(9,{"1 armcrabe"})
addWave(9,{"3 armcrabe"})
addWave(9,{"1 arm_furie", "1 arm_furie", "2 arm_furie"})
addWave(9,{"3 corprot", "3 armsnipe"})
addWave(9,{"30 corawac", "10 airwolf3g", "7 b52g"})
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
    queenSpawnMult   = 0,
    angerBonus       = 20,
    expStep 		 = 0.09375,
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
    expStep 		 = 0.125,
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
    queenSpawnMult   = 1,
    angerBonus       = 30,
    expStep 		 = 0.25,
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
    expStep 		 = 0.4,
    lobberEMPTime    = 7.5,
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = 18,
    spawnChance      = 0.6,
    damageMod        = 1.25,
  },

   ['Chicken: Insane'] = {
    chickenSpawnRate = 30,
    burrowSpawnRate  = 25,
    queenSpawnMult   = 4,
    angerBonus       = 30,
    expStep 		 = 0.5,
    lobberEMPTime    = 8.5,
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = 23,
    spawnChance      = 0.8,
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

    else
--------------------------------------------------------------------------------
--Chicken Defense Config
--------------------------------------------------------------------------------
      
      local chickenTypes = {
  chicken1      =  true,
  chicken1b      =  true,
  chicken1c     =  true,
  chicken1d      =  true,
  chicken2      =  true,
  chickena1     =  true,
  chickena2     =  true,
  chickens1     =  true,
  chickens2     =  true,
  chicken_dodo1 =  true,
  chicken_dodo2 =  true,
  chickenf1     =  true,
  chickenc1     =  true,
  chickenr1     =  true,
  chickenr2     =  true,
  chickenr3     =  true,
  chickenh1     =  true,
  chickenh2     =  true,
  chickenh3     =  true,
  chickenh4     =  true,
  chickenw1     =  true,
  chickenp1     =  true,
}

local defenders = { 
  chickend1 = true,
}

addWave(1,{"1 chicken1", "1 chicken1b", "1 chicken1c", "1 chickenh1"})
addWave(1,{"1 chicken1", "1 chicken1b", "1 chicken1c", "1 chicken1d"})
addWave(1,{"1 chicken1", "1 chicken1b", "1 chicken1c", "1 chickenh1"})
addWave(1,{"1 chicken1", "1 chicken1b", "1 chicken1c", "1 chicken1d"})
addWave(1,{"3 chicken1"})
addWave(1,{"2 chicken1b", "1 chickenh1"})
addWave(1,{"2 chicken1c", "1 chickena1"})

addWave(2,{"6 chicken1"})
addWave(2,{"5 chicken1b"})
addWave(2,{"6 chicken1c"})
addWave(2,{"3 chicken1", "1 chickena1", "1 chickenh1"})
addWave(2,{"2 chickena1"})
addWave(2,{"2 chickena1", "1 chickenw1"})
addWave(2,{"4 chicken1d", "1 chickens1"})
addWave(2,{"4 chicken1", "1 chickena1"})
addWave(2,{"3 chicken1", "2 chickenh1"})

addWave(3,{"2 chickena1", "1 chickens1"})
addWave(3,{"2 chickena1", "2 chickenh1"})
addWave(3,{"3 chickena1"})
addWave(3,{"3 chickena1", "1 chickens1"})
addWave(3,{"6 chicken1"})
addWave(3,{"3 chicken1b", "2 chickena1", "1 chickenh1"})
addWave(3,{"3 chicken1c", "1 chickens1", "1 chickenh1"})
addWave(3,{"4 chicken1d", "1 chickenw1"})
addWave(3,{"2 chickena1", "1 chickenw1"})
addWave(3,{"4 chicken1", "2 chickenh1"})

addWave(4,{"6 chicken1", "2 chickens1", "1 chicken_dodo1"})
addWave(4,{"4 chickens1", "1 chickenw1"})
addWave(4,{"3 chickens1", "1 chickena1"})
addWave(4,{"3 chickens1", "1 chickena1"})
addWave(4,{"3 chickens1", "1 chickena1"})
addWave(4,{"3 chickens1", "2 chickenh1"})
addWave(4,{"4 chickena1", "1 chickenw1"})
addWave(4,{"5 chicken1", "1 chicken_dodo1", "3 chickenh1"})
addWave(4,{"6 chicken1", "2 chickenw1"})
addWave(4,{"3 chickens1", "1 chickenp1"})
addWave(4,{"2 chickenp1", "1 chicken_dodo1", "1 chickenh1"})

addWave(5,{"1 chicken_dodo1", "3 chickenp1"})
addWave(5,{"1 chicken_dodo1", "3 chickenp1"})
addWave(5,{"1 chicken_dodo1", "3 chickenp1"})
addWave(5,{"1 chicken_dodo1", "2 chickenp1", "2 chickenh1"})
addWave(5,{"1 chicken_dodo1", "2 chickenp1", "2 chickenw1"})
addWave(5,{"2 chicken_dodo1", "1 chickenp1", "2 chickenc1"})
addWave(5,{"2 chicken_dodo1", "5 chickena1", "1 chickenw1"})
addWave(5,{"2 chicken_dodo1", "5 chickens1", "1 chickenw1"})
addWave(5,{"2 chicken_dodo1", "3 chicken1d", "1 chickenf1", "3 chicken2"})
addWave(5,{"2 chicken_dodo1", "1 chickenp1", "1 chickenc1", "1 chickens1", "1 chickena1", "1 chickenh1"})
addWave(5,{"3 chicken_dodo1", "5 chickenh1"})
addWave(5,{"4 chicken_dodo1", "1 chickenf1"})

addWave(6,{"7 chickenw1", "1 chickenc1", "1 chicken2"})
addWave(6,{"3 chickenw1", "1 chickena2", "1 chicken_dodo1", "1 chicken2"})
addWave(6,{"4 chickenw1", "2 chickena1", "1 chicken_dodo1", "1 chickenh1"})
addWave(6,{"4 chickenw1", "3 chickens1"})
addWave(6,{"4 chickenw1", "2 chickenp1", "1 chickenh1"})
addWave(6,{"4 chickenw1", "3 chickenp1", "1 chickens2"})
addWave(6,{"5 chickenw1", "1 chickenc1", "4 chicken2"})
addWave(6,{"1 chickenf1", "3 chicken_dodo1", "2 chickenw1", "1 chicken2"})
addWave(6,{"1 chickenf1", "2 chickena1", "3 chickenh1", "1 chicken2"})
addWave(6,{"1 chickenf1", "1 chickenc1", "2 chickena1", "1 chicken2"})
addWave(6,{"2 chickenf1", "4 chicken_dodo1"})

addWave(7,{"2 chickenc1", "4 chickenw1"})
addWave(7,{"2 chickenc1", "1 chickenr1", "3 chicken_dodo1"})
addWave(7,{"2 chickenc1", "2 chickenf1"})
addWave(7,{"2 chickenc1", "1 chickenf1", "2 chickenw1"})
addWave(7,{"3 chickenc1", "4 chickenh1"})
addWave(7,{"3 chickenc1", "4 chickena1", "1 chicken_dodo1"})
addWave(7,{"3 chickenc1", "4 chicken_dodo1"})
addWave(7,{"3 chickenc1", "1 chickens1", "1 chickens2","2 chickenp1", "2 chickenh1"})
addWave(7,{"4 chickenc1", "1 chickenf1", "1 chicken_dodo1"})
addWave(7,{"4 chickenc1", "3 chicken_dodo1"})
addWave(7,{"4 chickena1", "1 chickena2", "1 chickenr1"})
addWave(7,{"3 chickens1", "2 chickens2", "1 chickenr1"})
addWave(7,{"5 chickenp1", "4 chickenh1"})
addWave(7,{"9 chicken2", "1 chicken_dodo2"})

addWave(8,{"3 chickenf1", "1 chicken_dodo1", "1 chickena2", "1 chickenh1", "1 chickenw1", "1 chicken2"})
addWave(8,{"1 chickenr1", "2 chickenf1", "2 chicken_dodo1", "1 chickenh1", "1 chicken2"})
addWave(8,{"2 chickenf1", "3 chicken_dodo1", "1 chickena2", "1 chickenh1", "1 chicken2"})
addWave(8,{"1 chickenr1", "3 chickenc1", "1 chickenh1", "1 chicken2"})
addWave(8,{"3 chickenc1", "1 chicken_dodo2", "1 chickens2", "1 chickenh1", "1 chickenw1", "1 chicken2"})
addWave(8,{"2 chickenr1", "3 chickenc1", "1 chickenh1", "1 chicken2"})
addWave(8,{"6 chickenw1", "2 chicken_dodo1", "1 chickens2", "1 chickenh1", "1 chicken2"})
addWave(8,{"1 chickenr1", "6 chickenp1", "4 chickenh1", "1 chicken2"})
addWave(8,{"5 chickena1", "4 chickenh1", "1 chickenh1", "1 chickenw1", "1 chicken2"})
addWave(8,{"1 chickenr1", "1 chickens2", "4 chickenh1", "1 chicken2"})
addWave(8,{"6 chicken2", "2 chickenh1", "1 chickenh1", "1 chickenw1"})

addWave(9,{"1 chickenh2", "6 chickenh1", "2 chicken_dodo1", "1 chickens2"})
addWave(9,{"2 chickenh2", "2 chickenh1", "6 chicken_dodo1"})
addWave(9,{"1 chickenh2", "3 chickenh1", "2 chicken_dodo1", "3 chickenc1"})
addWave(9,{"2 chickenh2", "3 chickenh1", "2 chicken_dodo1", "3 chickenc1"})
addWave(9,{"1 chickenh2", "3 chickenh1", "2 chicken_dodo1", "3 chickenc1"})
addWave(9,{"2 chickenh2", "3 chickenh1", "2 chicken_dodo1", "10 chickenw1", "2 chickenf1"})
addWave(9,{"1 chickenh2", "3 chickenh1", "2 chicken_dodo1", "3 chickenp1"})
addWave(9,{"2 chickenh2", "3 chickenh1", "2 chicken_dodo1", "2 chickena2"})
addWave(9,{"1 chickenh2", "3 chickenh1", "2 chicken_dodo1", "3 chickens2"})
addWave(9,{"2 chickenh2", "3 chickenh1", "2 chicken_dodo1", "2 chickenr1"})
addWave(9,{"1 chickenh2", "12 chicken2", "2 chickenh1"})


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
    queenSpawnMult   = 0,
    angerBonus       = 20,
    expStep 		 = 0.09375,
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
    expStep 		 = 0.125,
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
    queenSpawnMult   = 1,
    angerBonus       = 30,
    expStep 		 = 0.25,
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
    expStep 		 = 0.4,
    lobberEMPTime    = 7.5,
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = 18,
    spawnChance      = 0.6,
    damageMod        = 1.25,
  },

  
  ['Chicken: Insane'] = {
    chickenSpawnRate = 30,
    burrowSpawnRate  = 25,
    queenSpawnMult   = 4,
    angerBonus       = 30,
    expStep 		 = 0.5,
    lobberEMPTime    = 8.5,
    chickenTypes     = Copy(chickenTypes),
    defenders        = Copy(defenders),
    chickensPerPlayer = 23,
    spawnChance      = 0.8,
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
    end
    
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

