-- UNITDEF -- CHICKENF1 --
--------------------------------------------------------------------------------

local unitName = "chickenf1"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.80000001192093,
  airHoverFactor     = 0,
  attackrunlength    = 32,
  bmcode             = 1,
  brakeRate          = 0.40000000596046,
  buildCostEnergy    = 4550,
  buildCostMetal     = 212,
  builder            = false,
  buildTime          = 6250,
  canAttack          = false,
  canFly             = false,
  canGuard           = false,
  canland            = [[true]],
  canMove            = false,
  canPatrol          = false,
  canstop            = 1,
  canSubmerge        = false,
  category           = [[VTOL MOBILE WEAPON NOTSUB NOTSHIP ALL]],
  collide            = false,
  collisionvolumeoffsets = [[0 8 -2]],
  collisionvolumescales = [[70 14 48]],
  collisionvolumetype = [[box]],
  corpse             = [[dead]],
  cruiseAlt          = 240,
  defaultmissiontype = [[Standby]],
  description        = [[Flying Chicken Bomber]],
  explodeAs          = [[TALON_DEATH]],
  footprintX         = 3,
  footprintZ         = 3,
  hideDamage         = true,
  iconType           = [[chickenf]],
  idleAutoHeal       = 5,
  idleTime           = 0,
  maneuverleashlength = 20000,
  mass               = 227.5,
  maxDamage          = 1350,
  maxVelocity        = 6.1999998092651,
  moverate1          = 32,
  name               = [[Talon]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[chickenf.s3o]],
  seismicSignature   = 0,
  selfDestructAs     = [[TALON_DEATH]],
  side               = [[THUNDERBIRDS]],
  sightDistance      = 1000,
  smoothAnim         = false,
  steeringmode       = 2,
  TEDClass           = [[VTOL]],
  turninplace        = 0,
  turnRate           = 900,
  unitname           = [[chickenf1]],
  workerTime         = 0,
  featuredefs = {
    dead = {
      filename           = [[units/chickenf1.lua]],
    },
    heap = {
      filename           = [[units/chickenf1.lua]],
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
      accuracy           = 1000,
      areaofeffect       = 128,
      avoidfeature       = [[false]],
      avoidfriendly      = [[false]],
      burst              = 8,
      burstrate          = 0.23999999463558,
      collidefriendly    = [[false]],
      craterboost        = 0,
      cratermult         = 0,
      dropped            = [[true]],
      edgeeffectiveness  = 0.15000000596046,
      explosiongenerator = [[custom:gundam_MISSILE_EXPLOSION]],
      gravityaffected    = [[true]],
      impulseboost       = 1,
      impulsefactor      = 1,
      interceptedbyshieldtype = 0,
      manualbombsettings = [[true]],
      model              = [[chickeneggyellow.s3o]],
      name               = [[GooBombs]],
      noselfdamage       = [[true]],
      range              = 800,
      reloadtime         = 7,
      rendertype         = 6,
      soundhit           = [[junohit2edit]],
      sprayangle         = 2000,
      weapontype         = [[AircraftBomb]],
      damage = {
        antibomber         = 155,
        chicken            = 100,
        default            = 310,
        tinychicken        = 100,
      },
    },
  },
  weapons = {
    [1]  = {
      def                = [[chickenf1_weapon]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  chickenf1_weapon = {
    accuracy           = 1000,
    areaOfEffect       = 128,
    avoidFeature       = false,
    avoidFriendly      = false,
    burst              = 8,
    burstrate          = 0.23999999463558,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    dropped            = false,
    edgeEffectiveness  = 0.15000000596046,
    explosionGenerator = [[custom:gundam_MISSILE_EXPLOSION]],
    gravityaffected    = [[true]],
    impulseBoost       = 1,
    impulseFactor      = 1,
    interceptedByShieldType = 0,
    manualBombSettings = false,
    model              = [[chickeneggyellow.s3o]],
    name               = [[GooBombs]],
    noSelfDamage       = false,
    range              = 800,
    reloadtime         = 7,
    renderType         = 6,
    soundHit           = [[junohit2edit]],
    sprayAngle         = 2000,
    weaponType         = [[AircraftBomb]],
    damage = {
      antibomber         = 155,
      chicken            = 100,
      default            = 310,
      tinychicken        = 100,
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
