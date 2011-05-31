-- UNITDEF -- CHICKENH3 --
--------------------------------------------------------------------------------

local unitName = "chickenh3"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.36000001430511,
  bmcode             = 1,
  brakeRate          = 0.20000000298023,
  buildCostEnergy    = 2325.8000488281,
  buildCostMetal     = 122.80000305176,
  builder            = false,
  buildTime          = 3328,
  canAttack          = false,
  canGuard           = false,
  canMove            = false,
  canPatrol          = false,
  canstop            = 1,
  category           = [[MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  collisionvolumeoffsets = [[0 2 0]],
  collisionvolumescales = [[30 38 60]],
  collisionvolumetype = [[box]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Progenitor Hatchling]],
  explodeAs          = [[BUG_DEATH]],
  floater            = false,
  footprintX         = 2,
  footprintZ         = 2,
  hideDamage         = true,
  iconType           = [[chicken]],
  leaveTracks        = false,
  maneuverleashlength = 640,
  mass               = 700,
  maxDamage          = 1200,
  maxSlope           = 18,
  maxVelocity        = 4.5,
  maxWaterDepth      = 15,
  movementClass      = [[AKBOT2]],
  name               = [[Chicken]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[s_chickenboss2_white.s3o]],
  selfDestructAs     = [[BUG_DEATH]],
  side               = [[THUNDERBIRDS]],
  sightDistance      = 500,
  smoothAnim         = false,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  trackOffset        = 0,
  trackStrength      = 8,
  trackStretch       = 1,
  trackType          = [[ChickenTrack]],
  trackWidth         = 18,
  turninplace        = 0,
  turnRate           = 768,
  unitname           = [[chickenh3]],
  upright            = false,
  waterline          = 8,
  workerTime         = 0,
  featuredefs = {
    dead = {
      filename           = [[units/chickenh3.lua]],
    },
    heap = {
      filename           = [[units/chickenh3.lua]],
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
      range              = 130,
      reloadtime         = 0.60000002384186,
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
        default            = 200,
      },
    },
  },
  weapons = {
    [1]  = {
      def                = [[chickenh3_weapon]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 120,
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  chickenh3_weapon = {
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
    range              = 130,
    reloadtime         = 0.60000002384186,
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
      default            = 200,
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
