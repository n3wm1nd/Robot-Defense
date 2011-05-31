-- UNITDEF -- CHICKEN_DODO2 --
--------------------------------------------------------------------------------

local unitName = "chicken_dodo2"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 6,
  activateWhenBuilt  = false,
  bmcode             = 1,
  brakeRate          = 0.20000000298023,
  buildCostEnergy    = 9000,
  buildCostMetal     = 350,
  builder            = false,
  buildTime          = 6000,
  canGuard           = false,
  canHover           = true,
  canMove            = false,
  canPatrol          = false,
  canstop            = 1,
  category           = [[MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  collide            = false,
  collisionvolumeoffsets = [[0 3 0]],
  collisionvolumescales = [[18 28 41]],
  collisionvolumetype = [[box]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Chicken Bomb]],
  explodeAs          = [[DODO_DEATH2]],
  floater            = false,
  footprintX         = 3,
  footprintZ         = 3,
  hideDamage         = true,
  iconType           = [[chicken]],
  idleAutoHeal       = 55,
  idleTime           = 0,
  kamikaze           = false,
  kamikazeDistance   = 72,
  leaveTracks        = false,
  maneuverleashlength = 640,
  mass               = 1000,
  maxDamage          = 1300,
  maxSlope           = 18,
  maxVelocity        = 8,
  maxWaterDepth      = 0,
  movementClass      = [[HOVER3]],
  name               = [[Alpha Dodo]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL SINK FLOAT HOVER]],
  objectName         = [[big_chicken_dodo.s3o]],
  seismicSignature   = 4,
  selfDestructAs     = [[DODO_DEATH2]],
  selfDestructCountdown = 0,
  side               = [[THUNDERBIRDS]],
  sightDistance      = 100,
  smoothAnim         = false,
  stealth            = true,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  trackOffset        = 1,
  trackStrength      = 6,
  trackStretch       = 1,
  trackType          = [[ChickenTrack]],
  trackWidth         = 10,
  turninplace        = 0,
  turnRate           = 1000,
  unitname           = [[chicken_dodo2]],
  upright            = false,
  waterline          = 1,
  workerTime         = 0,
  featuredefs = {
    dead = {
      filename           = [[units/chicken_dodo2.lua]],
    },
    heap = {
      filename           = [[units/chicken_dodo2.lua]],
    },
  },
  sfxtypes = {
    explosiongenerators = {
      [[custom:DODOTRAIL]],
      [[custom:blood_explode]],
      [[custom:dirt]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
