-- UNITDEF -- CHICKEND1 --
--------------------------------------------------------------------------------

local unitName = "chickend1"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  activateWhenBuilt  = false,
  bmcode             = 0,
  brakeRate          = 0,
  buildCostEnergy    = 3000,
  buildCostMetal     = 120,
  builder            = false,
  buildTime          = 1800,
  canAttack          = false,
  canstop            = 1,
  category           = [[WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  collisionvolumeoffsets = [[0 15 0]],
  collisionvolumescales = [[14 50 14]],
  collisionvolumetype = [[box]],
  corpse             = [[dead]],
  defaultmissiontype = [[GUARD_NOMOVE]],
  description        = [[Defense]],
  energyMake         = 12000,
  energyStorage      = 300000,
  explodeAs          = [[custom:blood_explode]],
  extractsMetal      = 0.0010000000474975,
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = [[defense]],
  idleAutoHeal       = 15,
  idleTime           = 1800,
  levelGround        = false,
  mass               = 90,
  maxDamage          = 1125,
  maxSlope           = 255,
  maxVelocity        = 0,
  maxWaterDepth      = 0,
  metalMake          = 50,
  metalStorage       = 5000,
  name               = [[Chicken Tube]],
  noAutoFire         = false,
  noChaseCategory    = [[MOBILE]],
  objectName         = [[tube.s3o]],
  seismicSignature   = 0,
  selfDestructAs     = [[custom:blood_explode]],
  side               = [[THUNDERBIRDS]],
  sightDistance      = 370,
  smoothAnim         = false,
  TEDClass           = [[METAL]],
  turnRate           = 0,
  unitname           = [[chickend1]],
  upright            = false,
  waterline          = 1,
  workerTime         = 0,
  yardMap            = [[ooooooooo]],
  featuredefs = {
    dead = {
      filename           = [[units/chickend1.lua]],
    },
    heap = {
      filename           = [[units/chickend1.lua]],
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
      areaofeffect       = 32,
      avoidfriendly      = [[false]],
      collidefriendly    = [[false]],
      craterboost        = 0,
      cratermult         = 0,
      dance              = 20,
      explosiongenerator = [[custom:NONE]],
      firestarter        = 0,
      flighttime         = 5,
      groundbounce       = 1,
      guidance           = [[true]],
      heightmod          = 0.5,
      impulseboost       = 0,
      impulsefactor      = 0.40000000596046,
      interceptedbyshieldtype = 2,
      lineofsight        = [[true]],
      metalpershot       = 0,
      model              = [[AgamAutoBurst]],
      name               = [[Missiles]],
      noselfdamage       = [[true]],
      range              = 420,
      reloadtime         = 2.2000000476837,
      rendertype         = 1,
      selfprop           = [[true]],
      smokedelay         = 0.1,
      smoketrail         = [[true]],
      startsmoke         = 1,
      startvelocity      = 100,
      texture1           = [[]],
      texture2           = [[sporetrail]],
      tolerance          = 10000,
      tracks             = [[true]],
      trajectoryheight   = 2,
      turnRate           = 24000,
      turret             = [[true]],
      waterweapon        = [[true]],
      weaponacceleration = 100,
      weapontype         = [[MissileLauncher]],
      weaponvelocity     = 500,
      wobble             = 32000,
      damage = {
        default            = 320,
        l2bombers          = 420,
      },
    },
  },
  weapons = {
    [1]  = {
      def                = [[chickend1_weapon]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  chickend1_weapon = {
    areaOfEffect       = 32,
    avoidFriendly      = false,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    dance              = 20,
    explosionGenerator = [[custom:NONE]],
    fireStarter        = 0,
    flightTime         = 5,
    groundbounce       = true,
    guidance           = false,
    heightMod          = 0.5,
    impulseBoost       = 0,
    impulseFactor      = 0.40000000596046,
    interceptedByShieldType = 2,
    lineOfSight        = false,
    metalpershot       = 0,
    model              = [[AgamAutoBurst]],
    name               = [[Missiles]],
    noSelfDamage       = false,
    range              = 420,
    reloadtime         = 2.2000000476837,
    renderType         = 1,
    selfprop           = false,
    smokedelay         = 0.1,
    smokeTrail         = false,
    startsmoke         = 1,
    startVelocity      = 100,
    texture1           = [[]],
    texture2           = [[sporetrail]],
    tolerance          = 10000,
    tracks             = false,
    trajectoryHeight   = 2,
    turnRate           = 24000,
    turret             = false,
    waterWeapon        = false,
    weaponAcceleration = 100,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 500,
    wobble             = 32000,
    damage = {
      default            = 320,
      l2bombers          = 420,
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
