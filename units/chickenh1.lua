-- UNITDEF -- CHICKENH1 --
--------------------------------------------------------------------------------

local unitName = "chickenh1"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.050000000745058,
  activateWhenBuilt  = false,
  bmcode             = 1,
  brakeRate          = 0.20000000298023,
  buildCostEnergy    = 600,
  buildCostMetal     = 40,
  buildDistance      = 120,
  builder            = true,
  buildPic           = [[chicken_drone.png]],
  buildTime          = 600,
  canAssist          = false,
  canBuild           = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canreclamate       = 0,
  canRepair          = true,
  canstop            = 1,
  category           = [[MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  collide            = false,
  collisionvolumeoffsets = [[0 -1 0]],
  collisionvolumescales = [[10 14 22]],
  collisionvolumetype = [[box]],
  defaultmissiontype = [[Standby]],
  description        = [[Chicken Healer]],
  energyMake         = 25,
  explodeAs          = [[WEAVER_DEATH]],
  floater            = false,
  footprintX         = 2,
  footprintZ         = 2,
  hideDamage         = true,
  iconType           = [[builder]],
  idleAutoHeal       = 15,
  idleTime           = 0,
  kamikaze           = false,
  kamikazeDistance   = 60,
  leaveTracks        = false,
  maneuverleashlength = 640,
  mass               = 14,
  maxDamage          = 225,
  maxSlope           = 18,
  maxVelocity        = 2.2999999523163,
  maxWaterDepth      = 5000,
  mobilestandorders  = 1,
  movementClass      = [[KBOT2]],
  name               = [[Weaver]],
  noAutoFire         = false,
  objectName         = [[chicken_drone.s3o]],
  repairSpeed        = 225,
  seismicSignature   = 1,
  selfDestructAs     = [[WEAVER_DEATH]],
  side               = [[THUNDERBIRDS]],
  sightDistance      = 256,
  smoothAnim         = false,
  standingmoveorder  = 1,
  stealth            = true,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  trackOffset        = 1,
  trackStrength      = 6,
  trackStretch       = 1,
  trackType          = [[ChickenTrack]],
  trackWidth         = 10,
  turninplace        = 0,
  turnRate           = 468,
  unitname           = [[chickenh1]],
  upright            = false,
  waterline          = 8,
  workerTime         = 225,
  featuredefs = {
    dead = {
      filename           = [[units/chickenh1.lua]],
    },
    heap = {
      filename           = [[units/chickenh1.lua]],
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

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
