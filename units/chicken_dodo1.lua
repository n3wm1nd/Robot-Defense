-- UNITDEF -- CHICKEN_DODO1 --
--------------------------------------------------------------------------------

local unitName = "chicken_dodo1"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 6,
  activateWhenBuilt  = false,
  bmcode             = 1,
  brakeRate          = 0.20000000298023,
  buildCostEnergy    = 3000,
  buildCostMetal     = 128,
  builder            = false,
  buildTime          = 3080,
  canGuard           = false,
  canHover           = true,
  canMove            = false,
  canPatrol          = false,
  canstop            = 1,
  category           = [[MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  collide            = false,
  collisionvolumeoffsets = [[0 -1 0]],
  collisionvolumescales = [[10 14 22]],
  collisionvolumetype = [[box]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Chicken Bomb]],
  explodeAs          = [[DODO_DEATH1]],
  floater            = false,
  footprintX         = 3,
  footprintZ         = 3,
  hideDamage         = true,
  iconType           = [[chicken]],
  kamikaze           = false,
  kamikazeDistance   = 36,
  leaveTracks        = false,
  maneuverleashlength = 640,
  mass               = 1000,
  maxDamage          = 198,
  maxSlope           = 18,
  maxVelocity        = 7,
  maxWaterDepth      = 0,
  movementClass      = [[HOVER3]],
  name               = [[Dodo]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL SINK FLOAT HOVER]],
  objectName         = [[chicken_dodo.s3o]],
  seismicSignature   = 2,
  selfDestructAs     = [[DODO_DEATH1]],
  selfDestructCountdown = 0,
  side               = [[THUNDERBIRDS]],
  sightDistance      = 36,
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
  turnRate           = 2000,
  unitname           = [[chicken_dodo1]],
  upright            = false,
  waterline          = 1,
  workerTime         = 0,
  featuredefs = {
    dead = {
      filename           = [[units/chicken_dodo1.lua]],
    },
    heap = {
      filename           = [[units/chicken_dodo1.lua]],
    },
  },
  sfxtypes = {
    explosiongenerators = {
      [[custom:blood_spray]],
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
