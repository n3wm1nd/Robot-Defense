-- UNITDEF -- CHICKENR1 --
--------------------------------------------------------------------------------

local unitName = "chickenr1"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.10000000149012,
  bmcode             = 1,
  brakeRate          = 0.36000001430511,
  buildCostEnergy    = 12320,
  buildCostMetal     = 396,
  builder            = false,
  buildTime          = 12320,
  canAttack          = false,
  canGuard           = false,
  canMove            = false,
  canPatrol          = false,
  canstop            = 1,
  category           = [[MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  collisionvolumeoffsets = [[0 1 0]],
  collisionvolumescales = [[25 34 44]],
  collisionvolumetype = [[box]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Artillery]],
  explodeAs          = [[LOBBER_MORPH]],
  footprintX         = 2,
  footprintZ         = 2,
  hideDamage         = true,
  highTrajectory     = 1,
  iconType           = [[chickenr]],
  idleAutoHeal       = 20,
  idleTime           = 300,
  leaveTracks        = false,
  maneuverleashlength = 640,
  mass               = 4000,
  maxDamage          = 2500,
  maxSlope           = 18,
  maxVelocity        = 1.3999999761581,
  maxWaterDepth      = 15,
  movementClass      = [[AKBOT2]],
  name               = [[Lobber]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[chickenr.s3o]],
  seismicSignature   = 4,
  selfDestructAs     = [[LOBBER_MORPH]],
  side               = [[THUNDERBIRDS]],
  sightDistance      = 1250,
  smoothAnim         = false,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  trackOffset        = 6,
  trackStrength      = 8,
  trackStretch       = 1,
  trackType          = [[ChickenTrack]],
  trackWidth         = 30,
  turninplace        = 0,
  turnRate           = 360,
  unitname           = [[chickenr1]],
  upright            = false,
  workerTime         = 0,
  featuredefs = {
    dead = {
      filename           = [[units/chickenr1.lua]],
    },
    heap = {
      filename           = [[units/chickenr1.lua]],
    },
  },
  sfxtypes = {
    explosiongenerators = {
      [[custom:blood_spray]],
      [[custom:blood_explode]],
      [[custom:dirt]],
    },
  },
  weapondefs = {
    goolauncher = {
      accuracy           = 512,
      areaofeffect       = 128,
      avoidfeature       = 0,
      avoidfriendly      = 0,
      burst              = 3,
      burstrate          = 0.80000001192093,
      cegtag             = [[blob_trail]],
      collidefriendly    = 0,
      craterboost        = 0,
      cratermult         = 0,
      edgeeffectiveness  = 0.33000001311302,
      endsmoke           = 0,
      explosiongenerator = [[custom:ELECTRIC_EXPLOSION]],
      impulseboost       = 0,
      impulsefactor      = 0.40000000596046,
      intensity          = 0.69999998807907,
      interceptedbyshieldtype = 1,
      lineofsight        = [[true]],
      name               = [[GOOLAUNCHER]],
      noselfdamage       = [[true]],
      proximitypriority  = -4,
      range              = 1250,
      reloadtime         = 36,
      rendertype         = 4,
      rgbcolor           = [[0.2 0.5 0.9]],
      size               = 9,
      sizedecay          = 0,
      soundhit           = [[junohit2edit]],
      sprayangle         = 512,
      startsmoke         = 1,
      tolerance          = 5000,
      turret             = [[true]],
      weapontimer        = 0.20000000298023,
      weapontype         = [[Cannon]],
      weaponvelocity     = 600,
      damage = {
        blackhydra         = 300,
        commanders         = 300,
        default            = 600,
        krogoth            = 300,
        orcone             = 300,
        seadragon          = 300,
      },
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[MOBILE]],
      def                = [[chickenr1_goolauncher]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 120,
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  chickenr1_goolauncher = {
    accuracy           = 512,
    areaOfEffect       = 128,
    avoidFeature       = false,
    avoidFriendly      = false,
    burst              = 3,
    burstrate          = 0.80000001192093,
    cegTag             = [[blob_trail]],
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0.33000001311302,
    endsmoke           = 0,
    explosionGenerator = [[custom:ELECTRIC_EXPLOSION]],
    impulseBoost       = 0,
    impulseFactor      = 0.40000000596046,
    intensity          = 0.69999998807907,
    interceptedByShieldType = 1,
    lineOfSight        = false,
    name               = [[GOOLAUNCHER]],
    noSelfDamage       = false,
    proximityPriority  = -4,
    range              = 1250,
    reloadtime         = 36,
    renderType         = 4,
    rgbColor           = [[0.2 0.5 0.9]],
    size               = 9,
    sizeDecay          = 0,
    soundHit           = [[junohit2edit]],
    sprayAngle         = 512,
    startsmoke         = 1,
    tolerance          = 5000,
    turret             = false,
    weaponTimer        = 0.20000000298023,
    weaponType         = [[Cannon]],
    weaponVelocity     = 600,
    damage = {
      blackhydra         = 300,
      commanders         = 300,
      default            = 600,
      krogoth            = 300,
      orcone             = 300,
      seadragon          = 300,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
