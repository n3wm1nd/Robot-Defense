-- UNITDEF -- CORHCAR --
--------------------------------------------------------------------------------

local unitName = "corhcar"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.015,
	activateWhenBuilt = true,
	antiweapons = 1,
	bmcode = 0,
	brakeRate = 0.02,
	buildAngle = 16384,
	buildCostEnergy = 603595,
	buildCostMetal = 21704,
	buildTime = 354322,
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
	collisionvolumeoffsets = [[0 -7 -2]],
	collisionvolumescales = [[110 86 198]],
	collisionvolumetest = 0,
	collisionvolumetype = [[Ell]],
	corpse = [[dead]],
	damageModifier = 0.5,
	defaultmissiontype = [[Standby]],
	description = [[Command Carrier]],
	designation = [[SB-3-VT]],
	energyMake = 1050,
	energyStorage = 3000,
	energyUse = 105,
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
	maxDamage = 15500,
	maxVelocity = 1.75,
	metalStorage = 2000,
	minWaterDepth = 30,
	mobilestandorders = 1,
	movementClass = [[HDBOAT8]],
	name = [[Nexus]],
	noChaseCategory = [[VTOL]],
	objectName = [[CORHCAR]],
	onoffable = true,
	radarDistance = 3500,
	selfDestructAs = [[ATOMIC_BLAST]],
	side = [[CORE]],
	sightDistance = 1024,
	standingfireorder = 0,
	standingmoveorder = 1,
	steeringmode = 1,
	turnRate = 64,
	unitname = [[corhcar]],
	version = 1,
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
			def = [[NUKE_HCAR_CORE]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			badTargetCategory = [[VTOL]],
			def = [[ROCKET_KROG]],
		},
=======
			badTargetCategory = [[VTOL]],
			def = [[ROCKET_KROG]],
		},
		[3] = {
			def = [[NUKE_HCAR_CORE]],
			onlyTargetCategory = [[NOTVTOL]],
		},
>>>>>>> testmerge
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	NUKE_HCAR_CORE = {
		areaOfEffect = 768,
		avoidFriendly = false,
		collideFriendly = false,
		commandfire = true,
		craterBoost = 2,
		craterMult = 1,
		cruise = 1,
		edgeEffectiveness = 0.35,
		energypershot = 90000,
		explosionGenerator = [[custom:MININUKES]],
		fireStarter = 100,
		flightTime = 400,
		guidance = true,
		impulseBoost = 0.5,
		impulseFactor = 0.5,
		lineOfSight = true,
		metalpershot = 1000,
		model = [[hcar_nuke2]],
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
	ROCKET_KROG = {
		areaOfEffect = 80,
		collideFriendly = false,
		craterBoost = 0,
		craterMult = 0,
		explosionGenerator = [[custom:FLASHSMALLBUILDINGEX]],
		fireStarter = 70,
		flightTime = 5,
		guidance = true,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		lineOfSight = true,
		metalpershot = 0,
		model = [[fmdmisl]],
		name = [[Heavy Rockets]],
		noSelfDamage = true,
		proximityPriority = -1,
		range = 1100,
		reloadtime = 1.25,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHit = [[xplosml2]],
		soundStart = [[rocklit1]],
		startsmoke = 1,
		startVelocity = 350,
		tolerance = 9000,
		tracks = true,
		turnRate = 63000,
		twoPhase = true,
		vlaunch = true,
		weaponAcceleration = 200,
		weaponTimer = 1,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 800,
		damage = {
			commanders = 10,
			default = 500,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = false,
		category = [[core_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		featurereclamate = [[smudge01]],
		footprintX = 8,
		footprintZ = 8,
		height = 4,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[corhcar_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
