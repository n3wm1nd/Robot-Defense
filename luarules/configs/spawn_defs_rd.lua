--------------------------------------------------------------------------------
--Robot Defense Config
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
queenName            = Spring.GetModOptions().mo_queendifficulty.."r"  or "n_chickenqr" 
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
bonusTurret          = "armcir" -- Turret that gets spawned when a burrow dies
angerBonus           = 20
expStep              = 0.0625
lobberEMPTime        = 4
damageMod            = 1
waves                = {}
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





   
local chickenTypes = {
  ve_chickenqr  =  true,
  e_chickenqr   =  true,
  n_chickenqr   =  true,
  h_chickenqr   =  true,
  vh_chickenqr  =  true,
  fh_chickenqr  =  true,
  armflea       =  true,
  armflash      =  true,
  armflash1     =  true,
  armsam1       =  true,
  cormist1      =  true,
  armrock       =  true,
  corthud       =  true,
  corthud1      =  true,
  armrectr      =  true,
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
  corkarg       =  true,
  corkarg1      =  true,
  corgala       =  true,
  armcrabe      =  true,
  clb           =  true,
  armzeus       =  true,
  tllbug        =  true,
  armhdpw       =  true,
  armbull       =  true,
  cordem        =  true,
  tllgrim       =  true,
  aexxec        =  true,
  armaak        =  true,
  corsumo       =  true,
  corsumo1      =  true,
  corhrk        =  true,
  armfboy       =  true,
  cormort       =  true,
  corcrw        =  true,
  armcyclone    =  true,
  armfast       =  true,
  gorg          =  true,
  armtigre2     =  true,
  armlaspd      =  true,
  armsonic      =  true,
  cormonsta     =  true,
  armpraet      =  true,
  armjag        =  true,
  cordrag1      =  true,
  corspec       =  true,
  armspid       =  true,
  anvil         =  true,
  hyperion      =  true,
  armorion      =  true,
  corrag        =  true,
}

local defenders = { 
  chickend1 = true,
}


if (math.random(0,1) == 1) then addWave(1,{"1 armflea", "1 armflea"}) else addWave(1,{"2 armflash", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(1,{"2 armflea", "2 armsam1", "2 armsam1"}) else addWave(1,{"2 armflash", "2 armsam1"}) end
if (math.random(0,1) == 1) then addWave(1,{"1 armflea", "2 corthud1", "2 cormist1"}) else addWave(1,{"2 armsam1", "2 armflash"}) end
if (math.random(0,1) == 1) then addWave(1,{"1 armrectr", "2 armsam1", "2 corthud1"}) else addWave(1,{"2 corthud1", "2 armsam1", "1 cormist1"}) end
if (math.random(0,1) == 1) then addWave(1,{"1 corspec", "2 cormist1", "2 armsam1"}) else addWave(1,{"2 armflash", "2 cormist1"}) end
if (math.random(0,1) == 1) then addWave(1,{"4 armflea", "1 armsam1", "1 armbull"}) else addWave(1,{"4 armflea", "2 armsam1"}) end
if (math.random(0,1) == 1) then addWave(1,{"4 armflea", "4 armflea", "2 cormist1"}) else addWave(1,{"2 armsam1", "2 corthud1", "1 cormist1"}) end
if (math.random(0,1) == 1) then addWave(1,{"4 armflash", "4 armflash", "2 cormist"}) else addWave(1,{"2 armflash", "2 armsam1"}) end
if (math.random(0,1) == 1) then addWave(1,{"2 armflash1", "2 armflash", "1 armflash",}) else addWave(1,{"2 armflash1", "2 corthud1"}) end
if (math.random(0,1) == 1) then addWave(1,{"2 armflash1", "2 corthud1", "2 armsam1"}) else addWave(1,{"2 armflash", "2 armsam1", "1 armbull"}) end
if (math.random(0,1) == 1) then addWave(1,{"2 armflash1", "2 armsam1", "2 cormist1"}) else addWave(1,{"2 armsam1", "2 cormist1", "1 cormist1"}) end
if (math.random(0,1) == 1) then addWave(1,{"2 armrock", "2 corthud1", "2 armsam1"}) else addWave(1,{"2 corthud1", "2 armsam1"}) end
if (math.random(0,1) == 1) then addWave(1,{"2 armrock", "1 armthund", "1 cormist1"}) else addWave(1,{"2 armflash", "2 armsam1"}) end
if (math.random(0,1) == 1) then addWave(1,{"2 armrock", "1 cormist1", "2 armsam1"}) else addWave(1,{"2 corthud1", "2 cormist1"}) end


if (math.random(0,1) == 1) then addWave(2,{"2 armflash1", "1 cormist1"}) else addWave(2,{"2 armjanus1", "2 armjanus1"}) end
if (math.random(0,1) == 1) then addWave(2,{"2 armflash1"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(2,{"3 armflash1"}) else addWave(2,{"2 armflash", "2 armjanus1"}) end
if (math.random(0,1) == 1) then addWave(2,{"1 armthund1"}) else addWave(2,{"2 armjanus1", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(2,{"1 cormist1"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(2,{"2 corhrk", "2 armsam1", "2 corthud1"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(2,{"3 armflash1", "2 armflash1", "1 armflash1", "3 armflash1"}) else addWave(2,{"3 armflash1", "3 armjanus1", "3 armflash1", "3 armjanus1"}) end
if (math.random(0,1) == 1) then addWave(2,{"1 armbull","2 tllsham", "1 armstump"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(2,{"1 armbull", "1 armsonic","1 armsonic"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(2,{"1 corgfbt"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(2,{"1 armfboy"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(2,{"1 armbull", "2 armsonic","2 armsonic" }) else addWave(2,{"2 corhrk", "2 armsam1", "2 corthud1"}) end
if (math.random(0,1) == 1) then addWave(2,{"1 corhrk", "2 corhrk", "1 corhrk"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (math.random(0,1) == 1) then addWave(2,{"3 armflash1", "3 armflash1", "3 armflash1", "3 armflash1"}) else addWave(2,{"2 armflash", "2 armsam"}) end


addWave(3,{"3 armrectr", "2 armjanus1"})
addWave(3,{"3 armsonic", "3 armsonic", "3 armsonic", "3 armsonic"})
addWave(3,{"1 armspid", "3 armspid", "1 armspid", "2 armspid"})
if (math.random(0,1) == 1) then addWave(3,{"8 armflash1"}) else addWave(3,{"8 armlaspd"}) end
addWave(3,{"4 cormort", "4 armfboy"})
addWave(3,{"2 armstump1", "2 tankanotor","2 tllsham", "5 armbull"})
addWave(3,{"5 armflash1", "5 armflash1"})
addWave(3,{"5 armspid", "5 armflash1"})
if (math.random(0,1) == 1) then addWave(3,{"5 armflash1"}) else addWave(3,{"4 armsonic"}) end
addWave(3,{"7 armbull"})
addWave(3,{"3 corhrk", "3 corhrk", "3 corhrk", "3 corhrk"})
addWave(3,{"5 corthud1"})
addWave(3,{"6 armblz", "6 armblz", "7 armrectr"})
addWave(3,{"4 armstump", "1 armjanus1"})



addWave(4,{"1 armjanus1", "1 armjanus1"})
addWave(4,{"1 armrectr"})
addWave(4,{"15 armlaspd"})
addWave(4,{"1 corsumo"})
addWave(4,{"12 aexxec"})
addWave(4,{"10 corhrk", "5 corhrk"})
addWave(4,{"12 armspid", "20 tllbug", "5 corspec", "8 armlaspd"})
addWave(4,{"1 armshock1", "1 armraven1"})
addWave(4,{"4 armlaspd"})
addWave(4,{"6 armlaspd"})
addWave(4,{"5 corhrk"})
addWave(4,{"6 cormonsta"})
addWave(4,{"10 tllprob", "2 airwolf3g", "2 armblz", "25 armblz"})
addWave(4,{"3 armsnipe", "3 tllsham","2 armmerl"})


addWave(5,{"10 tllprob", "5 armblz", "5 armblz"})
addWave(5,{"2 airwolf3g"})
addWave(5,{"10 corpyro"})
addWave(5,{"10 armrectr"})
if (math.random(0,1) == 1) then addWave(5,{"20 corpyro"}) else addWave(5,{"25 armfast"}) end
addWave(5,{"10 corpyro", "10 cslicer", "10 corgfbt"})
addWave(5,{"5 corgfbt", "10 armzeus"})
addWave(5,{"2 armraven1", "10 armzeus"})
addWave(5,{"1 armshock1"})
if (math.random(0,1) == 1) then addWave(5,{"1 armraven1"}) else addWave(5,{"3 cormonsta"}) end
addWave(5,{"10 armaak"})
addWave(5,{"10 corsumo1"})
addWave(5,{"1 armsnipe", "2 armmerl", "1 tankanotor"})
addWave(5,{"5 armzeus", "1 cordem", "4 tllsham"})


addWave(6,{"12 taipan", "4 armsnipe"})
addWave(6,{"20 tllprob", "3 airwolf3g"})
addWave(6,{"3 airwolf3g", "12 corhrk", "12 corhrk", "12 corhrk"})
addWave(6,{"30 armblz"})
addWave(6,{"10 armblz"})
addWave(6,{"15 armaak"})
addWave(6,{"15 corpyro", "30 corpyro"})
addWave(6,{"2 airwolf3g", "2 cordem", "4 corspec"})
addWave(6,{"1 cordem"})
addWave(6,{"1 cordem"})
if (math.random(0,1) == 1) then addWave(6,{"3 tllgrim"}) else addWave(6,{"6 armtigre2"}) end
addWave(6,{"6 tllgrim"})
addWave(6,{"15 armaak", "30 corpyro", "10 corsumo"})
addWave(6,{"5 tankanotor", "20 armhdpw"})


addWave(7,{"20 corawac", "25 airwolf3g", "20 corhurc"})
addWave(7,{"15 armcybr"})
addWave(7,{"1 armcrabe"})
addWave(7,{"2 anvil"})
addWave(7,{"1 armcrabe", "4 corspec"})
addWave(7,{"2 gorg", "16 armaak"})
addWave(7,{"2 cortotal", "2 clb"})
if (math.random(0,1) == 1) then addWave(7,{"5 armsnipe"}) else addWave(6,{"10 armtigre2"}) end
addWave(7,{"5 armsnipe", "4 tllsham"})
if (math.random(0,1) == 1) then addWave(7,{"4 krogtaar"}) else addWave(6,{"1 hyperion"}) end
addWave(7,{"1 armpraet"})
addWave(7,{"5 coremech", "5 coremech", "5 coremech"})
addWave(7,{"10 corprot", "10 corprot"})


addWave(8,{"1 corkrog", "1 arm_furie"})
addWave(8,{"4 armtigre2", "4 armtigre2", "4 armtigre2", "3 armtigre2"})
addWave(8,{"15 cormonsta", "4 corspec"})
addWave(8,{"10 cortotal"})
addWave(8,{"35 airwolf3g"})
addWave(8,{"25 corawac", "4 armorion", "10 armcybr", "6 cordem"})
addWave(8,{"3 cordem", "1 corkrog"})
addWave(8,{"1 corkarg1", "1 corkarg1"})
addWave(8,{"2 armpraet"})
addWave(8,{"1 armjag", "2 armjag", "2 armjag"})
addWave(8,{"7 cortotal"})
if (math.random(0,1) == 1) then addWave(8,{"8 cordem", "10 corpyro"}) else addWave(8,{"3 gorg", "10 armfast"}) end
addWave(8,{"6 cortotal", "6 cortotal","6 cortotal"})
addWave(8,{"3 corproto", "3 corproto", "3 corproto", "3 corproto")
addWave(8,{"1 arm_furie", "1 corgala"})
addWave(8,{"1 corkarg1", "1 corgala"})
addWave(8,{"2 cordem", "2 cordem", "2 cordem", "2 cordem"})
addWave(8,{"1 arm_furie", "1 arm_furie", "2 arm_furie"})



addWave(9,{"1 corkrog", "1 armcrabe"})
addWave(9,{"5 corcrw"})
addWave(9,{"5 corcrw"})
addWave(9,{"5 cordrag1"})
addWave(9,{"1 arm_furie", "1 arm_furie", "1 arm_furie"})
if (math.random(0,1) == 1) then addWave(7,{"6 anvil"}) else addWave(6,{"2 hyperion"}) end
addWave(9,{"5 corrag", "5 corrag", "4 armorion", "4 armorion","7 armcyclone"})
addWave(9,{"5 corrag", "5 corrag", "5 corrag"})
addWave(9,{"10 armcybr"})
addWave(9,{"10 corcrw", "20 corcrw"})

VERYEASY = "Chicken: Very Easy"
EASY = "Chicken: Easy"
NORMAL = "Chicken: Normal"
HARD = "Chicken: Hard"
VERYHARD = "Chicken: Very Hard"
INSANE = "Chicken: Insane"
CUSTOM = "Chicken: Custom"
SURVIVAL = "Chicken: Survival"

difficulties = {
  [VERYEASY] = {
    chickenSpawnRate  = 100, 
    burrowSpawnRate   = 120,
    queenSpawnMult    = 0,
    angerBonus        = 20,
    expStep           = 0,
    lobberEMPTime     = 0,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 5,
    spawnChance       = 0.25,
    damageMod         = 0.6,
  },
  [EASY] = {
    chickenSpawnRate  = 100, 
    burrowSpawnRate   = 120,
    queenSpawnMult    = 0,
    angerBonus        = 20,
    expStep           = 0.09375,
    lobberEMPTime     = 2.5,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 7,
    spawnChance       = 0.33,
    damageMod         = 0.75,
  },

  [NORMAL] = {
    chickenSpawnRate  = 80,
    burrowSpawnRate   = 105,
    queenSpawnMult    = 1,
    angerBonus        = 25,
    expStep           = 0.125,
    lobberEMPTime     = 4,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 9,
    spawnChance       = 0.4,
    damageMod         = 1,
  },

  [HARD] = {
    chickenSpawnRate  = 70,
    burrowSpawnRate   = 60,
    queenSpawnMult    = 1,
    angerBonus        = 30,
    expStep           = 0.25,
    lobberEMPTime     = 5,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 14,
    spawnChance       = 0.5,
    damageMod         = 1.1,
  },


  [VERYHARD] = {
    chickenSpawnRate  = 45,
    burrowSpawnRate   = 40,
    queenSpawnMult    = 3,
    angerBonus        = 30,
    expStep           = 0.4,
    lobberEMPTime     = 7.5,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 18,
    spawnChance       = 0.6,
    damageMod         = 1.25,
  },
  
  [INSANE] = {
    chickenSpawnRate  = 80,
    burrowSpawnRate   = 105,
    queenSpawnMult    = 1,
    angerBonus        = 25,
    expStep           = 0.125,
    lobberEMPTime     = 4,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 9,
    spawnChance       = 0.4,
    damageMod         = 1,
  },
  
  
  [CUSTOM] = {
    chickenSpawnRate  = tonumber(Spring.GetModOptions().mo_custom_chickenspawn),
    burrowSpawnRate   = tonumber(Spring.GetModOptions().mo_custom_burrowspawn),
    queenSpawnMult    = tonumber(Spring.GetModOptions().mo_custom_queenspawnmult),
    angerBonus        = tonumber(Spring.GetModOptions().mo_custom_angerbonus),
    expStep           = (tonumber(Spring.GetModOptions().mo_custom_expstep) or 0.6) * -1,
    lobberEMPTime     = tonumber(Spring.GetModOptions().mo_custom_lobberemp),
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = tonumber(Spring.GetModOptions().mo_custom_minchicken),
    spawnChance       = (tonumber(Spring.GetModOptions().mo_custom_spawnchance) or 50) / 100,
    damageMod         = (tonumber(Spring.GetModOptions().mo_custom_damagemod) or 100) / 100,
  },

  [SURVIVAL] = {
    chickenSpawnRate    = 80,
    burrowSpawnRate     = 105,
    queenSpawnMult      = 1,
    angerBonus          = 25,
    expStep             = 0.125,
    lobberEMPTime       = 4,
    chickenTypes        = Copy(chickenTypes),
    defenders           = Copy(defenders),
    chickensPerPlayer   = 9,
    spawnChance         = 0.4,
    damageMod           = 1,
  },
}



defaultDifficulty = 'Chicken: Custom'

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
