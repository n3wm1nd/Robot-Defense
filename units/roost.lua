-- UNITDEF -- ROOST --
--------------------------------------------------------------------------------

local unitName = "roost"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  activateWhenBuilt  = false,
  bmcode             = 0,
  brakeRate          = 0,
  buildCostEnergy    = 25000,
  buildCostMetal     = 400,
  builder            = false,
  buildTime          = 12500,
  category           = [[NOTAIR NOTSUB NOTSHIP ALL]],
  collisionvolumeoffsets = [[0 0 0]],
  collisionvolumescales = [[56 11 56]],
  collisionvolumetype = [[box]],
  description        = [[Spawns Chicken]],
  energyStorage      = 1000,
  explodeAs          = [[ROOST_DEATH]],
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = [[special]],
  idleAutoHeal       = 0,
  idleTime           = 1800,
  levelGround        = false,
  mass               = 165.75,
  maxDamage          = 1800,
  maxVelocity        = 0,
  name               = [[Roost]],
  noAutoFire         = false,
  objectName         = [[roost.3do]],
  radarDistance      = 900,
  seismicSignature   = 4,
  selfDestructAs     = [[ROOST_DEATH]],
  side               = [[ARM]],
  sightDistance      = 450,
  smoothAnim         = false,
  TEDClass           = [[ENERGY]],
  turnRate           = 0,
  unitname           = [[roost]],
  upright            = false,
  waterline          = 0,
  workerTime         = 0,
  yardMap            = [[ooooooooo]],
  featuredefs = {
  },
  sfxtypes = {
    explosiongenerators = {
      [[custom:dirt2]],
      [[custom:dirt3]],
    },
  },
  weapondefs = {
    weapon = {
      areaofeffect       = 450,
      avoidfriendly      = 0,
      cegtag             = [[ASTEROIDTRAIL_Expl]],
      collidefriendly    = 0,
      craterboost        = 0,
      cratermult         = 0,
      edgeeffectiveness  = 0,
      explosiongenerator = [[custom:COMM_EXPLOSION]],
      firestarter        = 70,
      lineofsight        = 1,
      metalpershot       = 0,
      model              = [[greyrock2.s3o]],
      name               = [[Asteroid]],
      range              = 29999,
      reloadtime         = 5,
      rendertype         = 1,
      selfprop           = 1,
      smokedelay         = 0.10000000149012,
      smoketrail         = 1,
      soundhit           = [[xplonuk4]],
      startsmoke         = 1,
      startvelocity      = 2000,
      turret             = 1,
      weaponacceleration = 120,
      weapontimer        = 10,
      weapontype         = [[MissileLauncher]],
      weaponvelocity     = 2000,
      wobble             = 0,
      damage = {
        chicken            = 10,
        default            = 6000,
      },
    },
  },
  weapons = {
    [1]  = {
      def                = [[roost_weapon]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  roost_weapon = {
    areaOfEffect       = 450,
    avoidFriendly      = false,
    cegTag             = [[ASTEROIDTRAIL_Expl]],
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0,
    explosionGenerator = [[custom:COMM_EXPLOSION]],
    fireStarter        = 70,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[greyrock2.s3o]],
    name               = [[Asteroid]],
    range              = 29999,
    reloadtime         = 5,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.10000000149012,
    smokeTrail         = true,
    soundHit           = [[xplonuk4]],
    startsmoke         = 1,
    startVelocity      = 2000,
    turret             = true,
    weaponAcceleration = 120,
    weaponTimer        = 10,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 2000,
    wobble             = 0,
    damage = {
      chicken            = 10,
      default            = 6000,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
