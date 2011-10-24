-- UNITDEF -- ROOST --
--------------------------------------------------------------------------------

local unitName = "roost"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	activateWhenBuilt = true,
	bmcode = [[0]],
	brakeRate = 0,
	buildCostEnergy = 25000,
	buildCostMetal = 400,
	builder = false,
	buildTime = 12500,
	category = [[NOTVTOL NOTSUB NOTSHIP ALL]],
	capturable         = false,
	collisionVolumeOffsets = [[0 0 0]],
	collisionVolumeScales = [[56 11 56]],
	collisionVolumeType = [[box]],
	description = [[Spawns Chicken]],
	energystorage = 1000,
	explodeAs = [[ROOST_DEATH]],
	footprintX = 3,
	footprintZ = 3,
	iconType = [[special]],
	idleAutoHeal = 0,
	idleTime = 1800,
	levelGround = false,
	mass = 165.75,
	maxDamage = 6800,
	maxVelocity = 0,
	name = [[Roost]],
	noAutoFire = false,
	objectName = [[roost.3do]],
	radardistance = 900,
	reclaimable        = false,
	seismicSignature = 4,
	selfDestructAs = [[ROOST_DEATH]],
	selfDestructCountdown = 7200,
	side = [[ARM]],
	sightDistance = 450,
	smoothAnim = true,
	TEDClass = [[ENERGY]],
	turnRate = 0,
	unitname = [[roost]],
	upright = false,
	waterline = 0,
	workerTime = 0,
	yardMap = [[ooooooooo]],
	featureDefs = nil,
	sfxtypes = {
		explosiongenerators = {
			[1] = [[custom:dirt2]],
			[2] = [[custom:dirt3]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[WEAPON]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	WEAPON = {
		areaofeffect = 450,
		AvoidFriendly = 0,
		cegTag = [[ASTEROIDTRAIL_Expl]],
		CollideFriendly = 0,
		craterBoost = 0,
		craterMult = 0,
		edgeeffectiveness = 0,
		explosionGenerator = [[custom:COMM_EXPLOSION]],
		firestarter = 70,
		lineofsight = 1,
		metalpershot = 0,
		model = [[greyrock2.s3o]],
		name = [[Asteroid]],
		range = 29999,
		reloadtime = 5,
		rendertype = 1,
		selfprop = 1,
		smokedelay = 0.1,
		smoketrail = 1,
		soundhit = [[xplonuk4]],
		startsmoke = 1,
		startvelocity = 2000,
		turret = 1,
		weaponacceleration = 120,
		weapontimer = 10,
		weaponvelocity = 2000,
		wobble = 0,
		damage = {
			CHICKEN = 10,
			default = 6000,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
