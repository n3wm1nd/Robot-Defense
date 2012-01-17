-- UNITDEF -- ARMHCAR --
--------------------------------------------------------------------------------

local unitName = "armhcar"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.02,
	activateWhenBuilt = true,
	antiweapons = 1,
	bmcode = 0,
	brakeRate = 0.02,
	buildAngle = 16384,
	buildCostEnergy = 594934,
	buildCostMetal = 21852,
	buildTime = 349755,
	canAttack = true,
	canGuard = true,
<<<<<<< HEAD
=======
	canManualFire = true,
>>>>>>> testmerge
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL HUGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTVTOL WEAPON]],
	collisionvolumeoffsets = [[0 -6 1]],
	collisionvolumescales = [[128 94 206]],
	collisionvolumetest = 0,
	collisionvolumetype = [[Ell]],
	corpse = [[dead]],
	damageModifier = 0.5,
	defaultmissiontype = [[Standby]],
	description = [[Command Carrier]],
	designation = [[ASD-SC]],
	energyMake = 1000,
	energyStorage = 3000,
	energyUse = 100,
	explodeAs = [[NUCLEAR_BLAST]],
	firestandorders = 1,
	floater = true,
	footprintX = 8,
	footprintZ = 8,
	iconType = [[sea]],
	immunetoparalyzer = 1,
	isAirBase = true,
	isTargetingUpgrade = true,
	maneuverleashlength = 640,
	maxDamage = 15280,
	maxVelocity = 1.8,
	metalStorage = 2000,
	minWaterDepth = 30,
	mobilestandorders = 1,
	movementClass = [[HDBOAT8]],
	name = [[Atlantis]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[ARMHCAR]],
	onoffable = true,
	radarDistance = 3500,
	selfDestructAs = [[ATOMIC_BLAST]],
	side = [[ARM]],
	sightDistance = 1324,
	standingfireorder = 0,
	standingmoveorder = 1,
	steeringmode = 1,
	turnRate = 64,
	unitname = [[armhcar]],
	waterline = 2,
	workerTime = 750,
	featureDefs = nil,
	sounds = {
		canceldestruct = [[cancel2]],
		underattack = [[warning1]],
		cant = {
			[1] = [[cantdo4]],
		},
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		ok = {
			[1] = [[sharmmov]],
		},
		select = {
			[1] = [[sharmsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
<<<<<<< HEAD
			def = [[NUKE_HCAR_ARM]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			badTargetCategory = [[VTOL]],
			def = [[ROCKET_MCV]],
		},
=======
			badTargetCategory = [[VTOL]],
			def = [[ROCKET_MCV]],
		},
		[3] = {
			def = [[NUKE_HCAR_ARM]],
			onlyTargetCategory = [[NOTVTOL]],
		},
>>>>>>> testmerge
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	NUKE_HCAR_ARM = {
		areaOfEffect = 768,
		avoidFriendly = false,
		collideFriendly = false,
		commandfire = true,
		craterBoost = 2,
		craterMult = 1,
		cruise = 1,
		edgeEffectiveness = 0.35,
		energypershot = 90000,
		explosionGenerator = [[custom:FLASHNUKE768]],
		fireStarter = 100,
		flightTime = 400,
		guidance = true,
		impulseBoost = 0.5,
		impulseFactor = 0.5,
		lineOfSight = true,
		metalpershot = 1000,
		model = [[hcar_nuke1]],
		name = [[Operational Nuclear Missile]],
		noautorange = 1,
		propeller = 1,
		range = 5120,
		reloadtime = 2,
		renderType = 1,
		selfprop = true,
		shakeduration = 2,
		shakemagnitude = 32,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHit = [[megaboom]],
		soundStart = [[misicbm1]],
		startsmoke = 1,
		stockpile = true,
		stockpiletime = 90,
		targetable = 1,
		tolerance = 4000,
		turnRate = 32768,
		twoPhase = true,
		vlaunch = true,
		weaponAcceleration = 75,
		weaponTimer = 5,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 525,
		damage = {
			commanders = 1600,
			default = 4800,
			subs = 5,
		},
	},
	ROCKET_MCV = {
		areaOfEffect = 64,
		collideFriendly = false,
		craterBoost = 0,
		craterMult = 0,
		explosionGenerator = [[custom:ARM_FIRE_SMALL]],
		fireStarter = 0,
		flightTime = 5,
		guidance = true,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		lineOfSight = true,
		metalpershot = 0,
		model = [[missile]],
		name = [[Heavy Guided Rockets]],
		noautorange = 1,
		noSelfDamage = true,
		proximityPriority = -1,
		range = 1500,
		reloadtime = 0.85,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.001,
		smokeTrail = true,
		soundHit = [[cent_hit]],
		soundStart = [[mcv_fire1]],
		startsmoke = 1,
		startVelocity = 350,
		tolerance = 6000,
		tracks = true,
		turnRate = 68000,
		twoPhase = true,
		vlaunch = true,
		weaponAcceleration = 200,
		weaponTimer = 1,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 1000,
		damage = {
			commanders = 10,
			default = 300,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = false,
		category = [[arm_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		featurereclamate = [[smudge01]],
		footprintX = 8,
		footprintZ = 8,
		height = 4,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[armhcar_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
