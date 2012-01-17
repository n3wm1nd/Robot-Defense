-- UNITDEF -- TLLSTING --
--------------------------------------------------------------------------------

local unitName = "tllsting"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.0115,
	bmcode = 1,
	brakeRate = 0.018,
	buildAngle = 16384,
	buildCostEnergy = 18281,
	buildCostMetal = 1385,
	builder = false,
	buildTime = 40287,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL LARGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTVTOL WEAPON]],
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	corpse = [[dead]],
	defaultmissiontype = [[Standby]],
	description = [[Anti-Air Ship]],
	designation = [[]],
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	floater = true,
	footprintX = 4,
	footprintZ = 4,
	frenchdescription = [[Navire antia�rien]],
	germandescription = [[Flugabwehrboot]],
	italiandescription = [[Nave antiaerea]],
	maneuverleashlength = 640,
	maxDamage = 2601,
	maxVelocity = 2.9,
	minWaterDepth = 30,
	mobilestandorders = 1,
	movementClass = [[BOAT4]],
	name = [[Stinger]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[TLLSTING]],
	scale = 0.6,
	selfDestructAs = [[BIG_UNIT]],
	shootme = 1,
	side = [[TLL]],
	sightDistance = 350,
	spanishdescription = [[Buque Antia�reo]],
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	threed = 1,
	turnRate = 150,
	unitname = [[tllsting]],
	unitnumber = 904,
	version = 3.1,
	zbuffer = 1,
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
			def = [[BOGUS_MISSILE]],
			onlyTargetCategory = [[VTOL]],
		},
		[2] = {
			def = [[GA2]],
=======
			def = [[GA2]],
			onlyTargetCategory = [[VTOL]],
		},
		[2] = {
			def = [[BOGUS_MISSILE]],
>>>>>>> testmerge
			onlyTargetCategory = [[VTOL]],
		},
		[3] = {
			def = [[MOBILEFLAK]],
			onlyTargetCategory = [[VTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	BOGUS_MISSILE = {
		areaOfEffect = 48,
		canattackground = false,
		craterBoost = 0,
		craterMult = 0,
		impulseBoost = 0,
		impulseFactor = 0,
		lineOfSight = true,
		metalpershot = 0,
		name = [[Missiles]],
		range = 800,
		reloadtime = 0.5,
		renderType = 1,
		startVelocity = 450,
		toAirWeapon = true,
		tolerance = 9000,
		turnRate = 33000,
		turret = true,
		weaponAcceleration = 101,
		weaponTimer = 0.1,
		weaponType = [[Cannon]],
		weaponVelocity = 650,
		damage = {
			bombers = 315,
			default = 5,
			fighters = 315,
			flak_resistant = 105,
			unclassed_air = 315,
		},
	},
	GA2 = {
		areaOfEffect = 64,
		burst = 2,
		burstrate = 0.4,
		canattackground = false,
		craterBoost = 0,
		craterMult = 0,
		energypershot = 0,
		explosionGenerator = [[custom:FLASH2]],
		fireStarter = 72,
<<<<<<< HEAD
=======
		flighttime = 3,
>>>>>>> testmerge
		guidance = true,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		lineOfSight = true,
		metalpershot = 0,
		model = [[missile]],
		name = [[AA2Missile]],
		noSelfDamage = true,
		range = 840,
		reloadtime = 0.8,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHit = [[packohit]],
		soundStart = [[packolau]],
		soundTrigger = true,
		startsmoke = 1,
		startVelocity = 520,
		toAirWeapon = true,
		tolerance = 9950,
		tracks = true,
		turnRate = 68000,
		turret = true,
		weaponAcceleration = 160,
		weaponTimer = 5,
		weaponType = [[MissileLauncher]],
		weaponVelocity = 820,
		damage = {
			bombers = 130,
			default = 5,
			fighters = 130,
			flak_resistant = 130,
			unclassed_air = 130,
		},
	},
	MOBILEFLAK = {
		accuracy = 1000,
		areaOfEffect = 140,
		ballistic = true,
		burnblow = true,
		canattackground = false,
<<<<<<< HEAD
=======
		cegTag = [[tllflak-fx]],
>>>>>>> testmerge
		color = 1,
		craterBoost = 0,
		craterMult = 0,
		edgeEffectiveness = 0.85,
		explosionGenerator = [[custom:FLASH3]],
		gravityaffected = [[true]],
		impulseBoost = 0,
		impulseFactor = 0,
		minbarrelangle = -24,
		name = [[FlakCannon]],
		noSelfDamage = true,
		range = 775,
		reloadtime = 0.75,
		renderType = 4,
		soundHit = [[flakhit]],
		soundStart = [[flakfire]],
		startsmoke = 1,
		toAirWeapon = true,
		turret = true,
		unitsonly = 1,
		weaponTimer = 1,
		weaponType = [[Cannon]],
		weaponVelocity = 1550,
		damage = {
			bombers = 262.5,
			default = 5,
			fighters = 262.5,
			flak_resistant = 87.5,
			unclassed_air = 262.5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[tll_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[tllsting_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[Wreckage]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[3x3b]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
