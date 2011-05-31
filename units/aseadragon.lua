-- UNITDEF -- ASEADRAGON --
--------------------------------------------------------------------------------

local unitName = "aseadragon"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.028,
  activateWhenBuilt  = true,
  bmcode             = 1,
  brakeRate          = 0.021,
  buildAngle         = 16384,
  buildCostEnergy    = 238406,
  buildCostMetal     = 32122,
  buildPic           = [[ASEADRAGON.DDS]],
  buildTime          = 299523,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL WEAPON NOTSUB SHIP NOTAIR]],
  corpse             = [[DEAD]],
  damageModifier     = 1,
  defaultmissiontype = [[Standby]],
  description        = [[Flagship]],
  energyMake         = 150,
  energyStorage      = 1000,
  energyUse          = 150,
  explodeAs          = [[ATOMIC_BLAST]],
  firestandorders    = 1,
  floater            = true,
  footprintX         = 8,
  footprintZ         = 8,
  iconType           = [[sea]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  immunetoparalyzer  = 1,
  maneuverleashlength = 640,
  maxDamage          = 71250,
  maxVelocity        = 2.3,
  metalStorage       = 100,
  minWaterDepth      = 15,
  mobilestandorders  = 1,
  movementClass      = [[HDBOAT8]],
  name               = [[Epoch]],
  noAutoFire         = false,
  objectName         = [[ASEADRAGON]],
  radarDistance      = 1530,
  scale              = 10,
  seismicSignature   = 0,
  selfDestructAs     = [[ATOMIC_BLAST]],
  side               = [[ARM]],
  sightDistance      = 689,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  TEDClass           = [[SHIP]],
  turnRate           = 272,
  unitname           = [[aseadragon]],
  waterline          = 8,
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
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
      [[sharmmov]],
    },
    select = {
      [[sharmsel]],
    },
  },
  weapons = {
    [1]  = {
      def                = [[SEADRAGPRIME]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [2]  = {
      def                = [[ARM_BATSAFTX]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 320,
      onlyTargetCategory = [[NOTAIR]],
    },
    [3]  = {
      def                = [[SEADRAGPRIME]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 240,
      onlyTargetCategory = [[NOTAIR]],
    },
    [4]  = {
      def                = [[ARM_BATSAFTX]],
      mainDir            = [[-4 0 1]],
      maxAngleDif        = 180,
      onlyTargetCategory = [[NOTAIR]],
    },
    [5]  = {
      def                = [[ARM_BATSAFTX]],
      mainDir            = [[4 0 1]],
      maxAngleDif        = 180,
      onlyTargetCategory = [[NOTAIR]],
    },
    [6]  = {
      def                = [[SEADRAGONFLAK]],
      mainDir            = [[1 0 0]],
      maxAngleDif        = 200,
    },
    [7]  = {
      def                = [[SEADRAGONFLAK]],
      mainDir            = [[-1 0 0]],
      maxAngleDif        = 200,
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARM_BATSAFTX = {
    accuracy           = 350,
    areaOfEffect       = 96,
    ballistic          = true,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASHSMALLUNIT]],
    gravityaffected    = [[true]],
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    minbarrelangle     = -25,
    name               = [[BattleShipCannon]],
    noSelfDamage       = true,
    range              = 1300,
    reloadtime         = 1.2,
    renderType         = 4,
    soundHit           = [[xplomed2]],
    soundStart         = [[cannhvy1]],
    startsmoke         = 1,
    tolerance          = 5000,
    turret             = true,
    weaponType         = [[Cannon]],
    weaponVelocity     = 470,
    damage = {
      default            = 300,
      gunships           = 65,
      hgunships          = 65,
      l1bombers          = 65,
      l1fighters         = 65,
      l1subs             = 5,
      l2bombers          = 65,
      l2fighters         = 65,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 65,
      vtol               = 65,
      vtrans             = 65,
    },
  },
  SEADRAGONFLAK = {
    accuracy           = 1000,
    areaOfEffect       = 128,
    ballistic          = true,
    burnblow           = true,
    canattackground    = false,
    color              = 1,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0.85,
    explosionGenerator = [[custom:FLASHSMALLBUILDINGEX]],
    gravityaffected    = [[true]],
    impulseBoost       = 0,
    impulseFactor      = 0,
    minbarrelangle     = -24,
    name               = [[FlakCannon]],
    noSelfDamage       = true,
    range              = 775,
    reloadtime         = 0.55,
    renderType         = 4,
    soundHit           = [[flakhit]],
    soundStart         = [[flakfire]],
    startsmoke         = 1,
    toAirWeapon        = true,
    turret             = true,
    unitsonly          = 1,
    weaponTimer        = 1,
    weaponType         = [[Cannon]],
    weaponVelocity     = 1550,
    damage = {
      amphibious         = 10,
      anniddm            = 10,
      antibomber         = 10,
      antifighter        = 10,
      antiraider         = 10,
      atl                = 10,
      blackhydra         = 10,
      commanders         = 10,
      crawlingbombs      = 10,
      default            = 1000,
      dl                 = 10,
      ["else"]           = 10,
      flakboats          = 10,
      flaks              = 10,
      flamethrowers      = 10,
      gunships           = 200,
      heavyunits         = 10,
      hgunships          = 100,
      jammerboats        = 10,
      krogoth            = 10,
      l1bombers          = 200,
      l1fighters         = 170,
      l1subs             = 5,
      l2bombers          = 200,
      l2fighters         = 150,
      l2subs             = 5,
      l3subs             = 5,
      mechs              = 10,
      mines              = 10,
      nanos              = 10,
      otherboats         = 10,
      plasmaguns         = 10,
      radar              = 10,
      seadragon          = 10,
      spies              = 10,
      tl                 = 10,
      vradar             = 200,
      vtol               = 200,
      vtrans             = 200,
    },
  },
  SEADRAGPRIME = {
    accuracy           = 350,
    areaOfEffect       = 64,
    ballistic          = true,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH4]],
    gravityaffected    = [[true]],
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    name               = [[BattleshipCannon]],
    noSelfDamage       = true,
    range              = 2450,
    reloadtime         = 0.53,
    renderType         = 4,
    soundHit           = [[xplomed2]],
    soundStart         = [[cannhvy1]],
    startsmoke         = 1,
    turret             = true,
    weaponType         = [[Cannon]],
    weaponVelocity     = 600,
    damage = {
      anniddm            = 140,
      blackhydra         = 350,
      default            = 250,
      gunships           = 65,
      hgunships          = 65,
      l1bombers          = 65,
      l1fighters         = 65,
      l1subs             = 5,
      l2bombers          = 65,
      l2fighters         = 65,
      l2subs             = 5,
      l3subs             = 5,
      seadragon          = 350,
      vradar             = 65,
      vtol               = 65,
      vtrans             = 65,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = false,
    category           = [[corpses]],
    damage             = 42750,
    description        = [[Epoch Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 6,
    footprintZ         = 18,
    height             = 4,
    hitdensity         = 100,
    metal              = 19077,
    object             = [[ASEADRAGON_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 20016,
    description        = [[Epoch Heap]],
    energy             = 0,
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = 7149,
    object             = [[6X6A]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------