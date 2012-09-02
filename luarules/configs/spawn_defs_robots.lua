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
bonusTurret          = "armrl" -- Turret that gets spawned when a burrow dies
angerBonus           = 20
expStep              = 0.0625
lobberEMPTime        = 4
damageMod            = 1
waves                = {}

local mRandom        = math.random

bonusTurret5a = "armflak"
bonusTurret5b = "arm_big_bertha"
bonusTurret7a = "tlldb"
bonusTurret7b = "armbrtha1"

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
  corcrash      =  true,
  armflea       =  true,
  armflash      =  true,
  armflash1     =  true,
  armsam        =  true,
  armsam1       =  true,
  cormist       =  true,
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
  corgol        =  true,
  cslicer       =  true,
  armraven1     =  true, --piece count 16
  armshock1     =  true,
  commando      =  true,
  armsnipe      =  true,
  taipan        =  true,
  armmerl       =  true,
  tankanotor    =  true,
  airwolf3g     =  true,
  armcybr       =  true,
  corpyro       =  true, --piece count 17
  krogtaar      =  true, --piece count 13
  coremech      =  true, --piece count 21
  corprot       =  true, --piece count 26
  cortotal      =  true, --piece count 6
  armraven      =  true, --piece count 16
  tllsham       =  true,
  corkrog       =  true, --piece count 21
  arm_furie     =  true, --piece count 18
  corkarg       =  true, --piece count 33
  corkarg1      =  true, --piece count 33
  corgala       =  true, --piece count 20
  armcrabe      =  true, --piece count 10
  trem          =  true,
  clb           =  true,
  armzeus       =  true,
  tllbug        =  true,
  armhdpw       =  true,
  armbull       =  true,
  cordem        =  true, --piece count 23
  tllgrim       =  true, --piece count 24
  aexxec        =  true, --piece count 8
  armaak        =  true,
  corsumo       =  true, --piece count 16
  corsumo1      =  true, --piece count 16
  corhrk        =  true, --piece count 9
  armfboy       =  true, --piece count 10
  cormort       =  true,
  corcrw        =  true,
  armcyclone    =  true,
  armfast       =  true,
  gorg          =  true, --piece count 23
  armtigre2     =  true, --piece count 18
  armlaspd      =  true,
  armsonic      =  true,
  cormonsta     =  true, --piece count 12
  armpraet      =  true, --piece count 17
  armjag        =  true, --piece count 27
  cordrag1      =  true, --piece count 48
  corspec       =  true,
  armspid       =  true,
  anvil         =  true, --piece count 4
  hyperion      =  true, --piece count 28
  armorion      =  true, --piece count 3
  corrag        =  true,
  armmart       =  true,
  --new
  armbanth      =  true, --piece count 21
  marauder      =  true, --piece count 15
  heavyimpact   =  true, --piece count 17
  tllblind      =  true, --piece count 13
  tllhtml       =  true, --piece count 22
  tllvaliant    =  true, --piece count 22
  abroadside    =  true, --piece count 25
  tlllongshot   =  true, --piece count 5

}

local defenders = { 
  chickend1 = true,
}


if (mRandom(0,1) == 1) then addWave(1,{"1 armflea", "1 armflea"}) else addWave(1,{"2 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(1,{"2 armflea", "2 armsam", "2 armsam"}) else addWave(1,{"2 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 armflea", "2 corthud", "2 cormist"}) else addWave(1,{"2 armsam", "2 armflash"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 armrectr", "2 armsam", "2 corthud"}) else addWave(1,{"2 corthud", "2 armsam", "1 cormist"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 corspec", "2 cormist", "2 armsam"}) else addWave(1,{"2 armflash", "2 corcrash"}) end
if (mRandom(0,1) == 1) then addWave(1,{"4 armflea", "1 armsam"}) else addWave(1,{"4 armflea", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 aexxec", "4 armflea", "2 cormist"}) else addWave(1,{"2 armsam", "1 aexxec", "1 cormist"}) end
if (mRandom(0,1) == 1) then addWave(1,{"4 armflash", "4 armflash", "2 cormist"}) else addWave(1,{"1 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 armflash1", "2 armflash", "1 armflash",}) else addWave(1,{"2 armflash1", "2 corthud"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 armflash1", "2 corthud", "2 armsam"}) else addWave(1,{"2 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 armflash1", "1 aexxec", "2 cormist"}) else addWave(1,{"2 armsam", "2 cormist", "1 aexxec"}) end
if (mRandom(0,1) == 1) then addWave(1,{"2 corcrash", "2 corthud", "2 armsam"}) else addWave(1,{"2 corthud", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(1,{"2 corcrash", "1 armthund", "1 cormist"}) else addWave(1,{"2 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(1,{"2 corcrash", "1 aexxec", "2 armsam"}) else addWave(1,{"2 corthud", "1 aexxec"}) end


if (mRandom(0,1) == 1) then addWave(2,{"2 aexxec", "1 cormist1"}) else addWave(2,{"2 armjanus1", "2 armjanus1"}) end
if (mRandom(0,1) == 1) then addWave(2,{"2 armflash"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(2,{"3 armflash"}) else addWave(2,{"2 armflash", "2 armjanus1"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 aexxec"}) else addWave(2,{"2 armjanus1", "2 corcrash"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 cormist1"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 aexxec", "2 armsam1", "2 corthud1"}) else addWave(2,{"2 armflash", "2 corcrash"}) end
if (mRandom(0,1) == 1) then addWave(2,{"2 aexxec", "2 armflash1", "1 armflash1", "3 armflash1"}) else addWave(2,{"3 armflash1", "3 armjanus1", "3 armflash1", "3 armjanus1"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 armbull","2 tllsham", "1 armstump"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 corgol", "1 armsonic","1 armsonic"}) else addWave(2,{"2 aexxec", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 armsonic"}) else addWave(2,{"2 armflash", "2 corcrash"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 armsonic"}) else addWave(2,{"2 aexxec", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 armbull", "2 armsonic","2 armsonic" }) else addWave(2,{"2 aexxec", "2 armsam1", "2 corthud1"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 aexxec", "2 aexxec", "1 aexxec"}) else addWave(2,{"2 armflash", "2 corcrash"}) end
if (mRandom(0,1) == 1) then addWave(2,{"3 armflash1", "3 armflash1", "2 aexxec", "3 armflash1"}) else addWave(2,{"2 aexxec", "2 corcrash"}) end


addWave(3,{"3 armrectr", "2 armjanus1", "3 corcrash", "3 aexxec"})
addWave(3,{"3 armsonic", "3 armsonic", "3 armsonic", "2 corgol", "3 armsonic"})
addWave(3,{"1 armspid", "3 armspid", "1 armspid", "2 armspid", "2 corgol"})
if (mRandom(0,1) == 1) then addWave(3,{"8 armflash1", "3 aexxec"}) else addWave(3,{"8 armlaspd", "5 corcrash"}) end
addWave(3,{"4 cormort", "4 armfboy", "3 corcrash"})
addWave(3,{"2 armstump1", "2 tankanotor","2 tllsham", "5 armbull"})
addWave(3,{"5 armflash1", "5 armflash1", "5 corcrash", "3 aexxec"})
addWave(3,{"5 armspid", "5 armflash1", "3 corcrash"})
if (mRandom(0,1) == 1) then addWave(3,{"5 armflash1", "3 aexxec"}) else addWave(3,{"4 armsonic"}) end
addWave(3,{"5 armbull", "3 corcrash", "2 corgol"})
addWave(3,{"2 armmart", "2 armmart", "2 armmart", "2 armmart"})
addWave(3,{"5 corthud1", "3 corcrash" , "1 corgol"})
addWave(3,{"6 armblz", "6 armblz", "7 armrectr"})
addWave(3,{"4 armstump", "1 armjanus1", "3 aexxec"})



addWave(4,{"1 armjanus1", "1 armjanus1", "1 armaak"})
addWave(4,{"1 armrectr", "3 aexxec"})
addWave(4,{"15 armlaspd", "3 aexxec"})
addWave(4,{"1 corsumo", "4 armaak", "4 armfboy"})
addWave(4,{"12 aexxec", "2 corgol"})
addWave(4,{"10 corhrk", "5 corhrk", "4 armfboy"})
addWave(4,{"12 armspid", "20 tllbug", "5 corspec", "8 armlaspd"})
addWave(4,{"1 armshock1", "1 armraven1"})
addWave(4,{"4 armlaspd", "4 armaak", "3 aexxec"})
addWave(4,{"6 armlaspd", "1 trem", "2 corgol", "4 armfboy"})
addWave(4,{"5 corhrk", "2 corgol"})
addWave(4,{"6 cormonsta", "4 armaak", "3 aexxec", "4 armfboy"})
addWave(4,{"10 tllprob", "2 airwolf3g", "2 armblz", "25 armblz"})
addWave(4,{"3 armsnipe", "3 tllsham","2 armmerl"})


addWave(5,{"10 tllprob", "5 armblz", "5 armblz"})
addWave(5,{"2 airwolf3g", "4 armaak"})
addWave(5,{"10 corpyro", "2 trem", "3 aexxec"})
addWave(5,{"10 armrectr", "4 armaak"})
if (mRandom(0,1) == 1) then addWave(5,{"20 corpyro"}) else addWave(5,{"25 armfast"}) end
addWave(5,{"10 corpyro", "10 cslicer", "10 corgfbt"})
addWave(5,{"5 corgfbt", "10 armzeus", "3 aexxec"})
addWave(5,{"2 armraven1", "10 armzeus"})
addWave(5,{"1 armshock1", "2 trem"})
if (mRandom(0,1) == 1) then addWave(5,{"1 armraven1"}) else addWave(5,{"3 cormonsta"}) end
addWave(5,{"10 armaak", "2 trem"})
addWave(5,{"3 corsumo1", "2 trem", "3 aexxec"})
addWave(5,{"1 armsnipe", "2 armmerl", "1 tankanotor"})
addWave(5,{"5 armzeus", "1 heavyimpact", "4 tllsham"})


addWave(6,{"12 taipan", "4 armsnipe"})
addWave(6,{"20 tllprob", "3 airwolf3g", "3 aexxec"})
addWave(6,{"3 airwolf3g", "12 corhrk", "12 corhrk", "12 corhrk"})
addWave(6,{"30 armblz", "2 trem", "4 tllblind"})
addWave(6,{"10 armblz", "3 aexxec"})
addWave(6,{"15 armaak", "2 trem"})
addWave(6,{"15 corpyro", "20 corpyro", "3 tlllongshot"})
addWave(6,{"2 airwolf3g", "2 heavyimpact", "4 corspec"})
addWave(6,{"1 heavyimpact", "4 tllblind"})
addWave(6,{"1 heavyimpact", "4 trem", "4 tllblind"})
if (mRandom(0,1) == 1) then addWave(6,{"3 tllgrim"}) else addWave(6,{"6 armtigre2"}) end
addWave(6,{"6 tllgrim"})
addWave(6,{"15 armaak", "20 corpyro", "2 corsumo1"})
addWave(6,{"5 tankanotor", "10 armhdpw", "4 tllblind"})


addWave(7,{"20 corawac", "25 airwolf3g", "20 corhurc"})
addWave(7,{"15 armcybr"})
addWave(7,{"1 armcrabe", "2 tlllongshot"})
addWave(7,{"2 anvil", "4 trem", "4 tllblind"})
addWave(7,{"1 armcrabe", "4 corspec", "2 tlllongshot"})
addWave(7,{"2 gorg", "16 armaak"})
addWave(7,{"2 cortotal", "2 clb", "4 trem"})
if (mRandom(0,1) == 1) then addWave(7,{"5 armsnipe", "4 trem"}) else addWave(6,{"10 armtigre2", "4 trem"}) end
addWave(7,{"5 armsnipe", "4 tllsham"})
if (mRandom(0,1) == 1) then addWave(7,{"4 krogtaar"}) else addWave(6,{"1 hyperion"}) end
addWave(7,{"1 armpraet"})
addWave(7,{"4 tlllongshot", "4 tlllongshot", "4 tlllongshot"})
addWave(7,{"10 corprot", "10 corprot"})


addWave(8,{"1 corkrog", "1 arm_furie"})
if (mRandom(0,1) == 1) then addWave(8,{"4 armtigre2", "4 armtigre2", "4 armtigre2", "3 armtigre2"})  else addWave(8,{"4 tlllongshot", "4 tlllongshot", "4 tlllongshot"}) end
addWave(8,{"15 cormonsta", "4 corspec"})
addWave(8,{"10 cortotal"})
addWave(8,{"35 airwolf3g"})
addWave(8,{"25 corawac", "4 armorion", "10 armcybr", "6 heavyimpact"})
addWave(8,{"3 heavyimpact", "1 corkrog"})
addWave(8,{"1 tllvaliant"})
addWave(8,{"2 armpraet"})
addWave(8,{"1 armpraet", "2 armpraet", "2 armpraet"})
addWave(8,{"7 cortotal"})
if (mRandom(0,1) == 1) then addWave(8,{"8 heavyimpact", "10 corpyro"}) else addWave(8,{"3 gorg", "10 armfast"}) end
addWave(8,{"6 cortotal", "6 cortotal","6 cortotal"})
addWave(8,{"3 corprot", "3 corprot", "3 corprot", "3 corprot"})
addWave(8,{"1 arm_furie", "1 arm_furie"})
addWave(8,{"1 corkarg1", "1 arm_furie"})
addWave(8,{"1 cordem", "1 cordem", "1 cordem"})
addWave(8,{"1 arm_furie", "1 arm_furie", "2 arm_furie"})



addWave(9,{"1 corkrog1", "1 corgala"})
addWave(9,{"5 corcrw"})
addWave(9,{"5 corcrw"})
addWave(9,{"2 tllvaliant"})
addWave(9,{"1 arm_furie", "1 arm_furie", "1 arm_furie"})
if (mRandom(0,1) == 1) then addWave(7,{"6 anvil"}) else addWave(6,{"2 hyperion"}) end
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
    chickenSpawnRate  = 30,
    burrowSpawnRate   = 28,
    queenSpawnMult    = 4,
    angerBonus        = 45,
    expStep           = 0.6,
    lobberEMPTime     = 11,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 24,
    spawnChance       = 0.8,
    damageMod         = 1.5,
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
