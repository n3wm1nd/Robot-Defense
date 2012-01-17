-- UNITDEF -- ARMANTAR --
--------------------------------------------------------------------------------

local unitName = "armantar"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.01,
	bmcode = 1,
	brakeRate = 0.007629395,
<<<<<<< HEAD
	buildCostEnergy = 43547,
	buildCostMetal = 6215,
=======
	buildCostEnergy = 63547,
	buildCostMetal = 8215,
>>>>>>> testmerge
	builder = false,
	buildTime = 30842,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	cantBeTransported = true,
	category = [[ALL HUGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	corpse = [[dead]],
	defaultmissiontype = [[Standby]],
	description = [[Heavy Assault Tank]],
	designation = [[ARM-TER]],
	energyMake = 1,
	energyStorage = 0,
	energyUse = 25,
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	footprintX = 4,
	footprintZ = 4,
	frenchdescription = [[V�hicule d'assaut lourd]],
	frenchname = [[Antarion]],
	germandescription = [[Schweres Angriffsfahrzeug]],
	germanname = [[Antarion]],
	maneuverleashlength = 640,
	maxDamage = 26287,
	maxSlope = 12,
	maxVelocity = 0.8,
	maxWaterDepth = 100,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[htank4]],
	name = [[Antarion]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[ARMANTAR]],
	onoffable = true,
	radarDistance = 1200,
	radarDistanceJam = 10,
	selfDestructAs = [[BIG_UNIT]],
	shootme = 1,
	side = [[ARM]],
	sightDistance = 460,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	threed = 1,
	turnRate = 300,
	unitname = [[armantar]],
	unitnumber = 954568,
	version = 3,
	workerTime = 0,
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
			[1] = [[tarmmove]],
		},
		select = {
			[1] = [[tarmsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[ARMANTAR_LASER]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			def = [[ARMANTAR_LASER]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[3] = {
			def = [[ARMANTAR_MISSILE]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARMANTAR_LASER = {
		areaOfEffect = 8,
		beamWeapon = true,
		color = 12,
		color2 = 12,
		craterBoost = 0,
		craterMult = 0,
		energypershot = 150,
		explosionart = [[explode5]],
		explosiongaf = [[fx]],
		fireStarter = 90,
		id = 232,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		lavaexplosionart = [[lavasplashsm]],
		lavaexplosiongaf = [[fx]],
		lineOfSight = true,
		name = [[High Energy Laser]],
		noSelfDamage = true,
		range = 800,
<<<<<<< HEAD
		reloadtime = 1,
=======
		reloadtime = 0.9,
>>>>>>> testmerge
		renderType = 0,
		soundHit = [[lasrhit1]],
		soundStart = [[lasrhit1]],
		tolerance = 8000,
		turret = true,
		waterexplosionart = [[h2oboom1]],
		waterexplosiongaf = [[fx]],
		weaponType = [[LaserCannon]],
		weaponVelocity = 1500,
		damage = {
			default = 240,
			subs = 5,
		},
	},
	ARMANTAR_MISSILE = {
		areaOfEffect = 120,
		craterBoost = 0,
		craterMult = 0,
		explosionart = [[explode3]],
		explosiongaf = [[fx]],
		fireStarter = 70,
		guidance = true,
		id = 168,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		lavaexplosionart = [[lavasplash]],
		lavaexplosiongaf = [[fx]],
		lineOfSight = true,
		metalpershot = 0,
		model = [[missileantarion]],
		name = [[Missiles]],
		noSelfDamage = true,
<<<<<<< HEAD
		range = 1500,
		reloadtime = 0.9,
=======
		range = 900,
		reloadtime = 0.7,
>>>>>>> testmerge
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHit = [[xplomed2]],
		soundStart = [[xplomed2]],
		startsmoke = 1,
		startVelocity = 470,
		tolerance = 10000,
		tracks = true,
		turnRate = 50000,
		turret = true,
		waterexplosionart = [[h2o]],
		waterexplosiongaf = [[fx]],
		weaponAcceleration = 300,
		weaponTimer = 5,
		weaponType = [[MissileLauncher]],
		weaponVelocity = 660,
		damage = {
<<<<<<< HEAD
			default = 200,
=======
			default = 150,
>>>>>>> testmerge
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[arm_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 4,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[armantar_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = unitDef.name .. [[ Heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[3x3c]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
