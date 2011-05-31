-- UNITDEF -- TLLCK --
--------------------------------------------------------------------------------

local unitName = "tllck"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.12,
  bmcode             = 1,
  brakeRate          = 0.24,
  buildCostEnergy    = 2610,
  buildCostMetal     = 140,
  buildDistance      = 130,
  builder            = true,
  buildTime          = 5977,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canreclamate       = 1,
  canstop            = 1,
  category           = [[TLL LEVEL1 NOWEAPON NOTAIR NOTSUB NOTSTRUCTURE CONSTR ]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Tech Level 1]],
  designation        = [[]],
  energyMake         = 10,
  energyStorage      = 50,
  energyUse          = 0.1,
  explodeAs          = [[BIG_UNITEX]],
  footprintX         = 2,
  footprintZ         = 2,
  frenchdescription  = [[Niveau Tech 1]],
  frenchname         = [[Kbot de construction  ]],
  germandescription  = [[Tech Level 1]],
  germanname         = [[Konstruktions-Kbot]],
  italiandescription = [[Tecnologia Livello 1]],
  italianname        = [[Kbot Costruttore]],
  maneuverleashlength = 640,
  maxDamage          = 780,
  maxSlope           = 20,
  maxVelocity        = 1.4,
  maxWaterDepth      = 25,
  metalMake          = 0.3,
  metalStorage       = 50,
  mobilestandorders  = 1,
  movementClass      = [[KBOT2]],
  name               = [[Construction KBot]],
  noAutoFire         = false,
  objectName         = [[TLLCK]],
  selfDestructAs     = [[BIG_UNIT]],
  shootme            = 1,
  side               = [[TLL]],
  sightDistance      = 255,
  spanishdescription = [[Nivel Tecn. 1]],
  spanishname        = [[Kbot de Constr. ]],
  standingmoveorder  = 1,
  steeringmode       = 1,
  TEDClass           = [[KBOT]],
  threed             = 1,
  turnRate           = 1020,
  unitname           = [[tllck]],
  unitnumber         = 812,
  upright            = true,
  version            = 1,
  workerTime         = 185,
  zbuffer            = 1,
  buildoptions = {
    [[tllsolar]],
    [[tlladvsolar]],
    [[tllwindtrap]],
    [[tllgeo]],
    [[tllmstor]],
    [[tllestor]],
    [[tllmex]],
    [[tllmm]],
    [[tllnanotc]],
    [[tllalab]],
    [[tlllab]],
    [[tllvp]],
    [[tllap]],
    [[tllsy]],
    [[tllhp]],
    [[tllradar]],
    [[tlltower]],
    [[tlldt]],
    [[tlllft]],
    [[tllweb]],
    [[tllstuner]],
    [[tllhlt]],
    [[tlllbt]],
    [[tlllmt]],
    [[tllsam]],
    [[tlldcsta]],
    [[tlljam]],
    [[tllshoretorp]],
  },
  sounds = {
    build              = [[nanlath1]],
    canceldestruct     = [[cancel2]],
    capture            = [[capture1]],
    repair             = [[repair1]],
    underattack        = [[warning1]],
    working            = [[reclaim1]],
    cant = {
      [[cantdo4]],
    },
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    ok = {
      [[kbarmmov]],
    },
    select = {
      [[kbarmsel]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[tll_corpses]],
    damage             = 650,
    description        = [[Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 20,
    hitdensity         = 100,
    metal              = 90,
    object             = [[tllck_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 510,
    description        = [[Wreckage]],
    featurereclamate   = [[smudge01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = 35,
    object             = [[2x2a]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------