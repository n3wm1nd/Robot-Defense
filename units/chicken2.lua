-- UNITDEF -- CHICKEN2 --
--------------------------------------------------------------------------------

local unitName = "chicken2"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.34999999403954,
  bmcode             = 1,
  brakeRate          = 0.30000001192093,
  buildCostEnergy    = 1000,
  buildCostMetal     = 100,
  builder            = false,
  buildTime          = 4280,
  canAttack          = false,
  canGuard           = false,
  canMove            = false,
  canPatrol          = false,
  canstop            = 1,
  category           = [[MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  collisionvolumeoffsets = [[0 -1 0]],
  collisionvolumescales = [[20 29 44]],
  collisionvolumetype = [[box]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Advanced Swarmer]],
  explodeAs          = [[BUG_DEATH]],
  floater            = false,
  footprintX         = 2,
  footprintZ         = 2,
  iconType           = [[chicken]],
  leaveTracks        = false,
  maneuverleashlength = 640,
  mass               = 100,
  maxDamage          = 2400,
  maxSlope           = 18,
  maxVelocity        = 5.1999998092651,
  maxWaterDepth      = 15,
  movementClass      = [[AKBOT2]],
  name               = [[Chicken]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[chicken2.s3o]],
  seismicSignature   = 0,
  selfDestructAs     = [[BUG_DEATH]],
  side               = [[THUNDERBIRDS]],
  sightDistance      = 356,
  smoothAnim         = false,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  trackOffset        = 0,
  trackStrength      = 8,
  trackStretch       = 1,
  trackType          = [[ChickenTrack]],
  trackWidth         = 18,
  turninplace        = 0,
  turnRate           = 800,
  unitname           = [[chicken2]],
  upright            = false,
  waterline          = 8,
  workerTime         = 0,
  featuredefs = {
    dead = {
      filename           = [[units/chicken2.lua]],
    },
    heap = {
      filename           = [[units/chicken2.lua]],
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
      name               = [[Claws]],
      noselfdamage       = [[true]],
      range              = 100,
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
        default            = 162,
        tinychicken        = 0.0010000000474975,
      },
    },
  },
  weapons = {
    [1]  = {
      def                = [[chicken2_weapon]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 120,
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  chicken2_weapon = {
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
    name               = [[Claws]],
    noSelfDamage       = false,
    range              = 100,
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
      default            = 162,
      tinychicken        = 0.0010000000474975,
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
