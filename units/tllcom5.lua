-- UNITDEF -- TLLCOM5 --
--------------------------------------------------------------------------------

local unitName = "tllcom5"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.22,
  activateWhenBuilt  = true,
  amphibious         = 1,
  autoHeal           = 10,
  badTargetCategory  = [[ANTILASER]],
  bmcode             = 1,
  brakeRate          = 0.395,
  buildCostEnergy    = 40000,
  buildCostMetal     = 10000,
  buildDistance      = 200,
  builder            = true,
  buildPic           = [[TLLCOM.PCX]],
  buildTime          = 400000,
  canAttack          = true,
  canCapture         = true,
  canDGun            = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canreclamate       = 1,
  canstop            = 1,
  category           = [[TLL WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  cloakCost          = 100,
  cloakCostMoving    = 750,
  collisionvolumeoffsets = [[0 -12 -3]],
  collisionvolumescales = [[40 48 30]],
  collisionvolumetest = 1,
  collisionvolumetype = [[Ell]],
  commander          = true,
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Commander]],
  energyMake         = 150,
  energyStorage      = 5000,
  energyUse          = 0,
  explodeAs          = [[COMMANDER_BLAST6]],
  firestandorders    = 1,
  footprintX         = 2,
  footprintZ         = 2,
  hideDamage         = true,
  iconType           = [[tllcommander]],
  idleAutoHeal       = 10,
  idleTime           = 1300,
  immunetoparalyzer  = 1,
  maneuverleashlength = 640,
  mass               = 5000,
  maxDamage          = 8000,
  maxSlope           = 29,
  maxVelocity        = 1.7,
  maxWaterDepth      = 35,
  metalMake          = 9,
  metalStorage       = 5000,
  minCloakDistance   = 40,
  mobilestandorders  = 1,
  movementClass      = [[AKBOT2]],
  name               = [[Assault Commander]],
  noChaseCategory    = [[ALL]],
  norestrict         = 1,
  objectName         = [[TLLCOMSHIELDED]],
  onoffable          = true,
  radarDistance      = 1000,
  reclaimable        = false,
  seismicSignature   = 0,
  selfDestructAs     = [[COMMANDER_SELFD]],
  selfDestructCountdown = 20,
  showPlayerName     = true,
  side               = [[TLL]],
  sightDistance      = 700,
  smoothAnim         = true,
  sonarDistance      = 500,
  standingfireorder  = 2,
  standingmoveorder  = 0,
  steeringmode       = 2,
  TEDClass           = [[COMMANDER]],
  turnRate           = 1348,
  unitname           = [[tllcom5]],
  upright            = true,
  workerTime         = 550,
  buildoptions = {
    [[tllsolar]],
    [[tlltide]],
    [[tllwindtrap]],
    [[tllmstor]],
    [[tllestor]],
    [[tlluwmstorage]],
    [[tlluwestorage]],
    [[tllmex]],
    [[tlluwmex]],
    [[tllmm]],
    [[tllwmconv]],
    [[tlllab]],
    [[tllvp]],
    [[tllap]],
    [[tllsy]],
    [[tlltower]],
    [[tllradar]],
    [[tllsonar]],
    [[tlldt]],
    [[tlldtns]],
    [[tllweb]],
    [[tlltorp]],
    [[tlllmt]],
    [[tlllmtns]],
    [[tlldcsta]],
    [[tllshoretorp]],
    [[tllsolarns]],
    [[tllhltns]],
    [[tllck]],
    [[tllfireraiser]],
    [[corupmex]],

   },
  sounds = {
    build              = [[nanlath1]],
    canceldestruct     = [[cancel2]],
    capture            = [[capture1]],
    cloak              = [[kloak1]],
    repair             = [[repair1]],
    uncloak            = [[kloak1un]],
    underattack        = [[warning2]],
    unitcomplete       = [[kcarmmov]],
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
      [[kcarmmov]],
    },
    select = {
      [[kcarmsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[ANTILASER]],
      def                = [[TLLCOM_LIGHTNING5]],
    },
    [2]  = {
      def                = [[TLL_DISINTEGRATOR2]],
    },
    [3]  = {
      def                = [[COM_SHIELD]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  TLLCOM_LIGHTNING5 = {
    areaOfEffect       = 12,
    beamWeapon         = true,
    color              = 144,
    color2             = 217,
    craterBoost        = 0,
    craterMult         = 0,
    duration           = 3,
    explosionart       = [[explode5]],
    explosiongaf       = [[fx]],
    fireStarter        = 85,
    id                 = 217,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lavaexplosionart   = [[lavasplashsm]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    name               = [[Commander Lightning Beam]],
    noSelfDamage       = true,
    range              = 435,
    reloadtime         = 0.9,
    renderType         = 7,
    soundHit           = [[lashit2]],
    soundStart         = [[Lghthvy1]],
    tolerance          = 600,
    turret             = true,
    waterexplosionart  = [[h2oboom1]],
    waterexplosiongaf  = [[fx]],
    weaponTimer        = 1,
    weaponType         = [[LightningCannon]],
    weaponVelocity     = 860,
    damage = {
      default            = 225,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
      vtrans             = 230,
    },
  },
  TLL_DISINTEGRATOR2 = {
    areaOfEffect       = 36,
    avoidFriendly      = false,
    beamWeapon         = true,
    commandfire        = true,
    craterBoost        = 0,
    craterMult         = 0,
    energypershot      = 1000,
    explosionGenerator = [[custom:DGUNTRACE]],
    fireStarter        = 100,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lineOfSight        = true,
    name               = [[Disintegrator]],
    noExplode          = true,
    noSelfDamage       = true,
    range              = 310,
    reloadtime         = 0.4,
    renderType         = 3,
    soundHit           = [[xplomas2]],
    soundStart         = [[disigun1]],
    soundTrigger       = true,
    startsmoke         = 1,
    tolerance          = 10000,
    turret             = true,
    weaponType         = [[DGun]],
    weaponTimer        = 4.2,
    weaponVelocity     = 300,
    damage = {
      chicken            = 20,
      commanders         = 450,
      default            = 999999,
      rech               = 120,
    },
  },
  COM_SHIELD = {
    isShield           = true,
    name               = [[PersonalShield]],
    shieldAlpha        = 0.35,
    shieldBadColor     = [[1 0.1 0.3]],
    shieldEnergyUse    = 200,
    shieldForce        = 8,
    shieldGoodColor    = [[0.1 1 0.5]],
    shieldInterceptType = 1,
    shieldMaxSpeed     = 3500,
    shieldPower        = 700,
    shieldPowerRegen   = 10,
    shieldPowerRegenEnergy = 226.6,
    shieldRadius       = 70,
    shieldRepulser     = true,
    smartShield        = true,
    visibleShield      = true,
    visibleShieldHitFrames = 70,
    visibleShieldRepulse = true,
    weaponType         = [[Shield]],
    damage = {
      default            = 100,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = 100000,
    description        = [[Commander Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 20,
    hitdensity         = 100,
    metal              = 5000,
    object             = [[ARMCOM_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 25000,
    description        = [[Commander Debris]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = 2500,
    object             = [[2X2F]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
