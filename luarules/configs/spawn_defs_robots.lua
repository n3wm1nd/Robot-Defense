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
burrowName           = "rroost"   -- burrow unit name
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
angerBonus           = 0.25
expStep              = 0.0625
lobberEMPTime        = 4
damageMod            = 1
waves                = {}
newWaveSquad         = {}

local mRandom        = math.random

bonusTurret5a = "armflak"
bonusTurret5b = "arm_big_bertha"
bonusTurret7a = "tlldb"

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
  corthud       =  true,
  corthud1      =  true,
  armrectr      =  true,
  armstump      =  true,
  armthund      =  true,
  armblz        =  true,
  tllprob       =  true,
  corhurc       =  true,
  armjanus1     =  true,
  corgol        =  true,
  armraven1     =  true, --piece count 16
  armshock1     =  true,
  armsnipe      =  true,
  taipan        =  true,
  armmerl       =  true,
  tankanotor    =  true,
  airwolf3g     =  true,
  armcybr       =  true,
  corpyro       =  true, --piece count 17
  krogtaar      =  true, --piece count 13
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
  armzeus1      =  true,
  
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
  corspec       =  true,
  armspid       =  true,
  anvil         =  true, --piece count 4
  hyperion      =  true, --piece count 28
  armorion      =  true, --piece count 3
  corrag        =  true,
  armmart       =  true,
  --new
  marauder      =  true, --piece count 15
  heavyimpact   =  true, --piece count 17
  tllblind      =  true, --piece count 13
  tllvaliant    =  true, --piece count 22
  abroadside    =  true, --piece count 25
  tlllongshot   =  true, --piece count 5
  tllcrawlb     =  true,
  airwolf3g     =  true,
  
  --added only for insane king spawn
  abroadside    =  true, 
  cdevastator   =  true, 
  monkeylord    =  true,
  irritator     =  true,
}

local defenders = { 
  armrl = true,
  armflak = true,
  arm_big_bertha = true,
  tlldb = true,
}

--t1 only
if (mRandom(0,1) == 1) then addWave(1,{"1 armflea", "1 armflea"}) else addWave(1,{"2 armflash", "2 corthud"}) end
if (mRandom(0,1) == 1) then addWave(1,{"2 armflea", "2 armflash", "2 corthud"}) else addWave(1,{"2 armflash", "2 corthud"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 armflea", "2 corthud", "1 armstump"}) else addWave(1,{"2 corthud", "2 armflash"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 armrectr", "2 armstump", "2 corthud"}) else addWave(1,{"2 corthud", "2 armstump", "1 armstump"}) end
if (mRandom(0,1) == 1) then addWave(1,{"1 corspec", "2 cormist", "2 armsam"}) else addWave(1,{"2 armflash", "2 corcrash"}) end
if (mRandom(0,1) == 1) then addWave(1,{"3 armflash", "1 armsam"}) else addWave(1,{"4 armflea", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(1,{"3 armflash", "2 cormist"}) else addWave(1,{"2 armsam", "1 cormist"}) end
if (mRandom(0,1) == 1) then addWave(1,{"2 armflash", "2 armflash", "2 cormist"}) else addWave(1,{"1 armflash", "2 armsam"}) end

--t1/t1.5
newWaveSquad[2] = {"2 cormist", "6 armflash"}
if (mRandom(0,1) == 1) then addWave(2,{"1 armflash", "2 armflash", "1 armflash",}) else addWave(2,{"2 armflash1", "2 corthud"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 armflash", "2 corthud", "2 armsam"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(2,{"2 corcrash", "2 corthud", "2 armsam"}) else addWave(2,{"2 armthund", "1 armthund"}) end
if (mRandom(0,1) == 1) then addWave(2,{"1 armflash", "1 aexxec", "2 cormist"}) else addWave(2,{"2 armsam", "2 cormist", "1 aexxec"}) end
if (mRandom(0,1) == 1) then addWave(2,{"2 corcrash", "1 armthund", "1 cormist"}) else addWave(2,{"2 armflash", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(2,{"2 corcrash", "1 aexxec", "1 cormist1"}) else addWave(2,{"2 armthund", "3 armthund"}) end
if (mRandom(0,1) == 1) then addWave(2,{"2 aexxec", "1 cormist1"}) else addWave(2,{"2 armjanus1", "2 armjanus1"}) end
if (mRandom(0,1) == 1) then addWave(2,{"2 armflash"}) else addWave(2,{"2 armflash", "2 armsam"}) end

--t1.5 
newWaveSquad[3] = {"2 armjanus1", "2 aexxec", "6 armflash1"}
if (mRandom(0,1) == 1) then addWave(3,{"3 armflash1"}) else addWave(3,{"2 armflash1", "2 armjanus1"}) end
if (mRandom(0,1) == 1) then addWave(3,{"1 aexxec"}) else addWave(3,{"2 armjanus1", "2 corcrash"}) end
if (mRandom(0,1) == 1) then addWave(3,{"1 cormist1"}) else addWave(3,{"2 armflash1", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(3,{"1 aexxec", "2 armsam1", "2 corthud1"}) else addWave(3,{"2 armflash1", "2 corcrash"}) end
addWave(3,{"1 armlaspd", "1 armlaspd", "1 armlaspd", "1 armlaspd"})
if (mRandom(0,1) == 1) then addWave(3,{"2 aexxec", "2 armflash1", "1 armflash1", "3 armflash1"}) else addWave(3,{"3 armflash1", "3 armjanus1", "3 armflash1", "3 armjanus1"}) end
if (mRandom(0,1) == 1) then addWave(3,{"2 tllsham", "1 armstump"}) else addWave(3,{"2 armflash1", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(3,{"1 corgol", "1 armsonic","1 armsonic"}) else addWave(3,{"2 aexxec", "2 armsam"}) end

--t1.5/t2
newWaveSquad[4] = {"2 armbull", "2 armsonic"}
if (mRandom(0,1) == 1) then addWave(4,{"1 armbull", "1 armsonic"}) else addWave(4,{"2 armflash", "2 corcrash"}) end
if (mRandom(0,1) == 1) then addWave(4,{"1 armsonic"}) else addWave(4,{"2 aexxec", "2 armsam"}) end
if (mRandom(0,1) == 1) then addWave(4,{"1 armbull", "2 armsonic","2 armsonic"}) else addWave(4,{"2 aexxec", "2 armsam1", "2 corthud1"}) end
if (mRandom(0,1) == 1) then addWave(4,{"1 aexxec", "2 aexxec", "1 aexxec"}) else addWave(4,{"2 armflash", "2 corcrash"}) end
addWave(4,{"3 armlaspd", "3 armlaspd", "3 armlaspd", "3 armlaspd", "3 aexxec"})
if (mRandom(0,1) == 1) then addWave(4,{"3 armflash1", "3 armflash1", "2 aexxec", "3 armflash1"}) else addWave(4,{"2 aexxec", "2 corcrash"}) end
addWave(4,{"1 armspid", "3 armspid", "1 armspid", "2 armspid"})


--t2 --wip beyond
newWaveSquad[5] = {"2 armsonic", "6 armflash1"}
addWave(5,{"3 armrectr", "2 armjanus1", "3 corcrash", "3 aexxec"})
addWave(5,{"3 armsonic", "3 armsonic", "3 armsonic", "2 corgol", "3 armsonic"})
addWave(5,{"1 armspid", "3 armspid", "1 armspid", "2 armspid", "2 corgol"})
if (mRandom(0,1) == 1) then addWave(5,{"3 armflash1", "3 armflash1", "2 aexxec", "3 aexxec"}) else addWave(5,{"3 armlaspd", "3 armlaspd", "3 armlaspd", "3 armlaspd", "5 corcrash"}) end
addWave(5,{"4 cormort", "4 armfboy", "3 corcrash"})
addWave(5,{"2 armstump1", "2 tllsham", "5 armbull"})
addWave(5,{"2 armflash1", "2 armflash1","3 armflash1", "3 armflash1", "2 aexxec", "5 corcrash", "3 aexxec"})
addWave(5,{"5 armspid", "3 armflash1", "3 armflash1", "2 aexxec", "3 corcrash"})
if (mRandom(0,1) == 1) then addWave(5,{"3 armflash1", "3 armflash1", "3 aexxec"}) else addWave(5,{"2 armsonic","2 armsonic"}) end
addWave(5,{"5 armbull", "3 corcrash", "2 corgol"})
addWave(5,{"2 armmart", "2 armmart", "2 armmart", "2 armmart"})
addWave(5,{"5 corthud1", "3 corcrash" , "1 corgol", "1 tllcrawlb"})
addWave(5,{"6 armblz", "6 armblz", "7 armrectr"})
addWave(5,{"4 armstump", "1 armjanus1", "3 aexxec"})


newWaveSquad[6] = {"2 tankanotor", "2 armsonic", "6 armflash1"}
addWave(6,{"1 armjanus1", "1 armjanus1", "1 armaak"})
addWave(6,{"1 armrectr", "2 aexxec",  "2 aexxec", "1 tllcrawlb"})
addWave(6,{"3 armlaspd", "3 armlaspd", "3 armlaspd", "3 armlaspd", "3 aexxec"})
addWave(6,{"1 corsumo", "4 armaak", "4 armfboy", "1 tllcrawlb"})
addWave(6,{"2 aexxec",  "2 aexxec", "2 corgol", "2 aexxec",  "2 aexxec"})
addWave(6,{"10 corhrk", "5 corhrk", "4 armfboy"})
addWave(6,{"3 armspid", "3 armspid", "3 armspid", "3 armspid", "5 corspec", "3 armlaspd", "3 armlaspd"})
addWave(6,{"1 armshock1", "1 armraven1"})
addWave(6,{"3 armlaspd", "3 armlaspd", "4 armaak", "3 aexxec"})
addWave(6,{"3 armlaspd", "3 armlaspd", "1 trem", "2 corgol", "4 armfboy"})
addWave(6,{"5 corhrk", "2 corgol", "1 tllcrawlb" , "2 tllcrawlb" , "2 tllcrawlb"})
addWave(6,{"6 cormonsta", "4 armaak", "2 aexxec",  "2 aexxec", "4 armfboy"})
addWave(6,{"10 tllprob", "2 airwolf3g", "2 armblz", "5 armblz", "5 armblz", "5 armblz", "5 armblz"})
addWave(6,{"3 armsnipe", "3 tllsham","2 armmerl"})

newWaveSquad[7] = {"2 armsnipe", "6 armblz"}
addWave(7,{"10 tllprob", "5 armblz", "5 armblz"})
addWave(7,{"2 airwolf3g", "4 armaak"})
addWave(7,{"3 corpyro", "2 corpyro", "3 corpyro", "2 corpyro", "2 trem", "3 aexxec"})
addWave(7,{"10 armrectr", "4 armaak"})
if (mRandom(0,1) == 1) then addWave(7,{"3 corpyro", "2 corpyro", "3 corpyro", "2 corpyro"}) else addWave(7,{"3 armfast", "2 armfast", "3 armfast", "2 armfast"}) end
addWave(7,{"3 corpyro", "2 corpyro", "3 corpyro", "2 corpyro", "1 tllcrawlb" , "2 tllcrawlb" , "2 tllcrawlb"})
addWave(7,{"1 tllcrawlb" , "2 tllcrawlb", "2 tllcrawlb", "2 armzeus", "3 armzeus", "1 armzeus", "2 armzeus", "3 aexxec"})
addWave(7,{"2 armraven1", "2 armzeus", "3 armzeus", "1 armzeus", "2 armzeus"})
addWave(7,{"1 armshock1", "2 trem", "1 tllcrawlb" , "2 tllcrawlb" , "2 tllcrawlb"})
if (mRandom(0,1) == 1) then addWave(7,{"1 armraven1"}) else addWave(7,{"3 cormonsta"}) end
addWave(7,{"2 armaak", "3 armaak", "3 armaak", "2 trem"})
addWave(7,{"3 corsumo1", "2 trem", "3 aexxec"})
addWave(7,{"1 armsnipe", "2 armmerl", "1 tankanotor"})
addWave(7,{"2 armzeus1", "3 armzeus", "1 armzeus", "2 armzeus1", "1 heavyimpact", "4 tllsham"})

newWaveSquad[8] = {"2 armraven", "6 heavyimpact"}
addWave(8,{"2 taipan", "2 taipan", "2 taipan", "2 armsnipe", "2 armsnipe"})
addWave(8,{"3 airwolf3g", "3 corhrk", "3 corhrk", "3 corhrk", "3 corhrk", "3 corhrk", "3 corhrk"})
addWave(8,{"20 tllprob", "3 airwolf3g", "3 aexxec"})
addWave(8,{"7 armblz", "7 armblz", "7 armblz", "7 armblz", "2 trem", "4 tllblind"})
addWave(8,{"4 armblz", "4 armblz", "4 armblz", "3 aexxec"})
addWave(8,{"2 armaak", "3 armaak", "3 armaak", "3 armaak", "3 armaak", "2 trem"})
addWave(8,{"3 corpyro", "2 corpyro", "3 corpyro", "2 corpyro", "3 tlllongshot"})
addWave(8,{"2 airwolf3g", "2 heavyimpact", "4 corspec"})
addWave(8,{"1 heavyimpact", "4 tllblind"})
addWave(8,{"1 heavyimpact", "2 trem", "2 trem", "4 tllblind"})
if (mRandom(0,1) == 1) then addWave(8,{"2 tllgrim"}) else addWave(8,{"2 armtigre2", "2 armtigre2", "2 armtigre2"}) end
addWave(8,{"2 tllgrim"})
addWave(8,{"2 armaak", "3 armaak", "3 armaak", "3 armaak", "3 armaak", "20 corpyro", "2 corsumo1"})
addWave(8,{"5 tankanotor", "10 armhdpw", "4 tllblind"})

newWaveSquad[9] = {"2 anvil", "6 heavyimpact"}
addWave(9,{"3 corcrw", "3 corcrw", "3 corcrw", "3 airwolf3g", "3 airwolf3g", "3 airwolf3g", "3 airwolf3g", "3 airwolf3g", "6 corhurc", "6 corhurc", "6 corhurc"})
addWave(9,{"3 armcybr", "3 armcybr", "3 armcybr", "3 armcybr", "3 armcybr", "3 armcybr", "3 armcybr", "3 armcybr"})
addWave(9,{"1 armcrabe", "2 tlllongshot"})
addWave(9,{"2 anvil",  "2 trem", "2 trem", "1 trem", "4 tllblind"})
addWave(9,{"1 armcrabe", "4 corspec", "2 tlllongshot"})
addWave(9,{"1 gorg", "1 gorg", "2 armaak", "3 armaak", "3 armaak", "3 armaak", "3 armaak"})
addWave(9,{"2 cortotal", "2 clb", "2 trem", "2 trem", "1 trem"})
if (mRandom(0,1) == 1) then addWave(9,{"5 armsnipe",  "2 trem", "2 trem", "1 trem"}) else addWave(9,{"2 armtigre2", "2 armtigre2", "2 armtigre2", "1 armtigre2",  "2 trem", "2 trem", "1 trem"}) end
addWave(9,{"2 armsnipe", "2 armsnipe", "4 tllsham"})
if (mRandom(0,1) == 1) then addWave(9,{"4 krogtaar"}) else addWave(9,{"1 hyperion"}) end
addWave(9,{"1 armpraet"})
addWave(9,{"4 tlllongshot", "4 tlllongshot", "4 tlllongshot"})
addWave(9,{"2 tllblind", "4 heavyimpact", "2 tllblind", "4 heavyimpact",})

newWaveSquad[10] = {"2 arm_furie", "6 heavyimpact"}
addWave(10,{"1 corkrog", "1 arm_furie"})
if (mRandom(0,1) == 1) then addWave(10,{"2 armtigre2", "2 armtigre2", "2 armtigre2", "1 armtigre2"})  else addWave(10,{"2 tlllongshot", "2 tlllongshot", "2 tlllongshot"}) end
addWave(10,{"3 cormonsta", "2 armtigre2", "2 armtigre2"})
addWave(10,{"3 airwolf3g", "3 airwolf3g", "3 airwolf3g", "3 airwolf3g", "3 airwolf3g", "3 airwolf3g", "3 airwolf3g"})
addWave(10,{"3 corcrw", "3 corcrw", "3 corcrw", "4 armorion", "3 armcybr", "2 heavyimpact", "3 armcybr", "3 armcybr"})
addWave(10,{"3 heavyimpact", "1 corkrog"})
addWave(10,{"1 tllvaliant", "2 armcybr"})
addWave(10,{"2 armpraet", "1 armcybr"})
addWave(10,{"1 armpraet", "2 armpraet", "2 armpraet"})
if (mRandom(0,1) == 1) then addWave(10,{"2 heavyimpact", "1 tllblind", "1 tllblind", "1 tllblind", "1 tllblind"}) else addWave(10,{"1 gorg", "1 gorg", "1 gorg"}) end
addWave(10,{"2 cortotal", "2 cortotal","2 cortotal"})
addWave(10,{"1 corprot", "1 corprot", "2 tllblind", "4 heavyimpact"})
addWave(10,{"1 arm_furie", "1 arm_furie"})
addWave(10,{"1 corkarg1", "1 arm_furie"})
addWave(10,{"1 cordem", "1 cordem", "1 cordem"})
addWave(10,{"1 arm_furie", "1 arm_furie", "2 arm_furie"})

newWaveSquad[11] = {"3 corkrog", "6 heavyimpact"}
addWave(11,{"1 corkrog1", "1 corgala"})
addWave(11,{"2 corcrw", "2 corcrw", "2 corcrw", "2 corcrw"})
addWave(11,{"2 corcrw", "2 corcrw", "2 corcrw", "2 corcrw"})
if (queenName == "fh_chickenqr") then addWave(11,{"1 cdevastator" ,"1 abroadside"}) end
addWave(11,{"1 tllvaliant", "1 tllvaliant"})
addWave(11,{"1 arm_furie", "1 arm_furie", "1 arm_furie"})
if (mRandom(0,1) == 1) then addWave(7,{"6 anvil"}) else addWave(11,{"2 hyperion"}) end
addWave(11,{"5 corrag", "5 corrag", "4 armorion", "4 armorion","7 armcyclone"})
addWave(11,{"5 corrag", "5 corrag", "5 corrag"})
addWave(11,{"3 armcybr", "3 armcybr", "3 armcybr", "3 armcybr"})
addWave(11,{"3 corcrw", "3 corcrw", "3 corcrw", "3 corcrw"})

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
    angerBonus        = 0.05,
    expStep           = 0,
    lobberEMPTime     = 0,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 3,
    spawnChance       = 0.25,
    damageMod         = 0.6,
  },
  [EASY] = {
    chickenSpawnRate  = 100, 
    burrowSpawnRate   = 120,
    queenSpawnMult    = 0,
    angerBonus        = 0.075,
    expStep           = 0.09375,
    lobberEMPTime     = 2.5,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 5,
    spawnChance       = 0.33,
    damageMod         = 0.75,
  },

  [NORMAL] = {
    chickenSpawnRate  = 80,
    burrowSpawnRate   = 105,
    queenSpawnMult    = 1,
    angerBonus        = 0.10,
    expStep           = 0.125,
    lobberEMPTime     = 4,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 7,
    spawnChance       = 0.4,
    damageMod         = 1,
  },

  [HARD] = {
    chickenSpawnRate  = 70,
    burrowSpawnRate   = 60,
    queenSpawnMult    = 1,
    angerBonus        = 0.125,
    expStep           = 0.25,
    lobberEMPTime     = 5,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 12,
    spawnChance       = 0.5,
    damageMod         = 1.1,
  },


  [VERYHARD] = {
    chickenSpawnRate  = 45,
    burrowSpawnRate   = 40,
    queenSpawnMult    = 3,
    angerBonus        = 0.15,
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
    angerBonus        = 0.20,
    expStep           = 0.6,
    lobberEMPTime     = 11,
    chickenTypes      = Copy(chickenTypes),
    defenders         = Copy(defenders),
    chickensPerPlayer = 26,
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
