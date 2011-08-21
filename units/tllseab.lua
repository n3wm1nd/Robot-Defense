-- UNITDEF -- TLLSEAB --
--------------------------------------------------------------------------------

local unitName = "tllseab"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.37,
	amphibious = 1,
	attackrunlength = 100,
	bankscale = 1,
	bmcode = 1,
	brakeRate = 4,
	buildCostEnergy = 2000,
	buildCostMetal = 400,
	builder = false,
	buildTime = 22825,
	canAttack = true,
	canFly = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	canSubmerge = true,
	category = [[ALL MEDIUM MOBILE NOTDEFENSE NOTSUB NOTSUBNOTSHIP VTOL]],
	collide = false,
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	cruiseAlt = 80,
	defaultmissiontype = [[VTOL_standby]],
	description = [[Torpedo Seaplane]],
	designation = [[TL-SB]],
	downloadable = 1,
	energyMake = 0.7,
	energyStorage = 0,
	energyUse = 0.7,
	explodeAs = [[SMALL_UNITEX]],
	firestandorders = 1,
	footprintX = 3,
	footprintZ = 3,
	frenchdescription = [[Hydravion bombardier de combat]],
	germandescription = [[Seetaugliches Bomber-Gunship]],
	italiandescription = [[Idroplano bombadiere]],
	maneuverleashlength = 1280,
	maxDamage = 1870,
	maxSlope = 10,
	maxVelocity = 9.9,
	maxWaterDepth = 255,
	metalStorage = 0,
	mobilestandorders = 1,
	moverate1 = 8,
	name = [[Osprey]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[TLLSEAB]],
	radarDistance = 0,
	selfDestructAs = [[SMALL_UNIT]],
	shootme = 1,
	side = [[TLL]],
	sightDistance = 350,
	spanishdescription = [[Hidroavión de helicópteros bombarderos]],
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	threed = 1,
	turnRate = 452,
	unitname = [[tllseab]],
	unitnumber = 920,
	version = 1,
	workerTime = 0,
	zbuffer = 1,
	sounds = {
		build = [[nanlath1]],
		canceldestruct = [[cancel2]],
		repair = [[repair1]],
		underattack = [[warning1]],
		working = [[reclaim1]],
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
			[1] = [[vtolcrmv]],
		},
		select = {
			[1] = [[seapsel1]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[ARMSEAP_WEAPON1]],
			onlyTargetCategory = [[NOTHOVERNOTVTOL]],
		},
		[2] = {
			def = [[ARMSEAP_WEAPON1]],
			onlyTargetCategory = [[NOTHOVERNOTVTOL]],
		},
		[3] = {
			def = [[TLLVTOL_MISSILE]],
			onlyTargetCategory = [[VTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARMSEAP_WEAPON1 = {
		areaOfEffect = 16,
		avoidFriendly = false,
		burnblow = true,
		collideFriendly = false,
		craterBoost = 0,
		craterMult = 0,
		explosionGenerator = [[custom:FLASH2]],
		guidance = true,
		impactonly = 1,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		interceptedByShieldType = 2,
		lineOfSight = true,
		model = [[torpedo]],
		name = [[TorpedoLauncher]],
		noSelfDamage = true,
		propeller = 1,
		range = 500,
		reloadtime = 8,
		renderType = 1,
		selfprop = true,
		soundHit = [[xplodep2]],
		soundStart = [[bombrel]],
		startVelocity = 100,
		tolerance = 12000,
		tracks = true,
		turnRate = 25000,
		turret = false,
		waterWeapon = true,
		weaponAcceleration = 15,
		weaponTimer = 5,
		weaponType = [[TorpedoLauncher]],
		weaponVelocity = 100,
		damage = {
			bomb_resistant = 320,
			commanders = 480,
			default = 960,
		},
	},
	TLLVTOL_MISSILE = {
		areaOfEffect = 48,
		collideFriendly = false,
		craterBoost = 0,
		craterMult = 0,
		explosionart = [[explode3]],
		explosiongaf = [[fx]],
		fireStarter = 70,
		guidance = true,
		id = 134,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		interceptedByShieldType = 2,
		lavaexplosionart = [[lavasplash]],
		lavaexplosiongaf = [[fx]],
		lineOfSight = true,
		metalpershot = 0,
		model = [[tllvtolmissile]],
		name = [[Guided Missiles]],
		noSelfDamage = true,
		range = 530,
		reloadtime = 1,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHit = [[xplosml2]],
		soundStart = [[Rocklit3]],
		startVelocity = 420,
		texture2 = [[armsmoketrail]],
		tolerance = 8000,
		tracks = true,
		turnRate = 16384,
		waterexplosionart = [[h2o]],
		waterexplosiongaf = [[fx]],
		weaponAcceleration = 146,
		weaponTimer = 5,
		weaponType = [[MissileLauncher]],
		weaponVelocity = 480,
		damage = {
			bombers = 200,
			default = 5,
			fighters = 100,
			flak_resistant = 100,
			unclassed_air = 100,
		},
	},
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
