-- UNITDEF -- CHICKENR3 --
--------------------------------------------------------------------------------

local unitName = "chickenr3"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 8,
  bmcode             = 1,
  brakeRate          = 8,
  buildCostEnergy    = 12320,
  buildCostMetal     = 396,
  builder            = false,
  buildTime          = 180000,
  canAttack          = false,
  canGuard           = false,
  canMove            = false,
  canPatrol          = false,
  canstop            = 1,
  category           = [[MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Meteor Launcher]],
  explodeAs          = [[LOBBER_MORPH]],
  footprintX         = 3,
  footprintZ         = 3,
  hideDamage         = true,
  highTrajectory     = 1,
  iconType           = [[chickenr]],
  idleAutoHeal       = 20,
  idleTime           = 300,
  leaveTracks        = false,
  maneuverleashlength = 640,
  mass               = 4000,
  maxDamage          = 60000,
  maxSlope           = 18,
  maxVelocity        = 6,
  maxWaterDepth      = 15,
  movementClass      = [[CHICKQUEEN]],
  name               = [[Chicken Colonizer]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[chicken_colonizer.s3o]],
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
  trackWidth         = 70,
  turninplace        = 0,
  turnRate           = 1500,
  unitname           = [[chickenr3]],
  upright            = false,
  workerTime         = 0,
  featuredefs = {
    dead = {
      filename           = [[units/chickenr3.lua]],
    },
    heap = {
      filename           = [[units/chickenr3.lua]],
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
    meteorlauncher = {
      areaofeffect       = 600,
      avoidfriendly      = 0,
      cegtag             = [[ASTEROIDTRAIL_Expl]],
      collidefriendly    = 0,
      craterboost        = 0,
      cratermult         = 0,
      edgeeffectiveness  = 0,
      explosiongenerator = [[custom:COMM_EXPLOSION]],
      firestarter        = 70,
      highTrajectory     = 1,
      model              = [[greyrock2.s3o]],
      name               = [[METEORLAUNCHER]],
      proximitypriority  = -12,
      range              = 29999,
      reloadtime         = 15,
      soundhit           = [[xplonuk4]],
      turret             = 1,
      weapontype         = [[Cannon]],
      weaponvelocity     = 3000,
      damage = {
        default            = 3000,
      },
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[MOBILE]],
      def                = [[chickenr3_meteorlauncher]],
      mainDir            = [[0 0 1]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  chickenr3_meteorlauncher = {
    areaOfEffect       = 600,
    avoidFriendly      = false,
    cegTag             = [[ASTEROIDTRAIL_Expl]],
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0,
    explosionGenerator = [[custom:COMM_EXPLOSION]],
    fireStarter        = 70,
    hightrajectory     = 1,
    model              = [[greyrock2.s3o]],
    name               = [[METEORLAUNCHER]],
    proximityPriority  = -12,
    range              = 29999,
    reloadtime         = 15,
    soundHit           = [[xplonuk4]],
    turret             = true,
    weaponType         = [[Cannon]],
    weaponVelocity     = 3000,
    damage = {
      default            = 3000,
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
