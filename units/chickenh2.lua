-- UNITDEF -- CHICKENH2 --
--------------------------------------------------------------------------------

local unitName = "chickenh2"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.56000000238419,
  bmcode             = 1,
  brakeRate          = 0.20000000298023,
  buildCostEnergy    = 5200.7998046875,
  buildCostMetal     = 250.80000305176,
  builder            = false,
  buildTime          = 18000,
  canAttack          = false,
  canGuard           = false,
  canMove            = false,
  canPatrol          = false,
  canstop            = 1,
  category           = [[MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  collisionvolumeoffsets = [[0 10 2]],
  collisionvolumescales = [[37 55 90]],
  collisionvolumetype = [[box]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Queen Hatchling]],
  explodeAs          = [[BIGBUG_DEATH]],
  floater            = false,
  footprintX         = 2,
  footprintZ         = 2,
  hideDamage         = true,
  iconType           = [[chicken]],
  leaveTracks        = false,
  maneuverleashlength = 640,
  mass               = 1500,
  maxDamage          = 2600,
  maxSlope           = 18,
  maxVelocity        = 3,
  maxWaterDepth      = 15,
  movementClass      = [[AKBOT2]],
  name               = [[Progenitor]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[s_chickenboss_white.s3o]],
  selfDestructAs     = [[BUG_DEATH]],
  side               = [[THUNDERBIRDS]],
  sightDistance      = 700,
  smoothAnim         = false,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  trackOffset        = 0,
  trackStrength      = 8,
  trackStretch       = 1,
  trackType          = [[ChickenTrack]],
  trackWidth         = 18,
  turninplace        = 0,
  turnRate           = 400,
  unitname           = [[chickenh2]],
  upright            = false,
  waterline          = 8,
  workerTime         = 0,
  featuredefs = {
    dead = {
      filename           = [[units/chickenh2.lua]],
    },
    heap = {
      filename           = [[units/chickenh2.lua]],
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
    weapon = {
      areaofeffect       = 24,
      avoidfeature       = 0,
      avoidfriendly      = 0,
      craterboost        = 0,
      cratermult         = 0,
      endsmoke           = 0,
      explosiongenerator = [[custom:NONE]],
      impulseboost       = 2.2000000476837,
      impulsefactor      = 1,
      interceptedbyshieldtype = 0,
      lineofsight        = [[true]],
      name               = [[Claws]],
      noselfdamage       = [[true]],
      range              = 165,
      reloadtime         = 1.2000000476837,
      size               = 0,
      soundstart         = [[smallchickenattack]],
      startsmoke         = 0,
      targetborder       = 1,
      tolerance          = 5000,
      turret             = [[true]],
      waterweapon        = [[true]],
      weapontimer        = 0.10000000149012,
      weapontype         = [[Cannon]],
      weaponvelocity     = 500,
      damage = {
        chicken            = 0.0010000000474975,
        default            = 400,
      },
    },
  },
  weapons = {
    [1]  = {
      def                = [[chickenh2_weapon]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 120,
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  chickenh2_weapon = {
    areaOfEffect       = 24,
    avoidFeature       = false,
    avoidFriendly      = false,
    craterBoost        = 0,
    craterMult         = 0,
    endsmoke           = 0,
    explosionGenerator = [[custom:NONE]],
    impulseBoost       = 2.2000000476837,
    impulseFactor      = 1,
    interceptedByShieldType = 0,
    lineOfSight        = false,
    name               = [[Claws]],
    noSelfDamage       = false,
    range              = 165,
    reloadtime         = 1.2000000476837,
    size               = 0,
    soundStart         = [[smallchickenattack]],
    startsmoke         = 0,
    targetBorder       = 1,
    tolerance          = 5000,
    turret             = false,
    waterWeapon        = false,
    weaponTimer        = 0.10000000149012,
    weaponType         = [[Cannon]],
    weaponVelocity     = 500,
    damage = {
      chicken            = 0.0010000000474975,
      default            = 400,
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
