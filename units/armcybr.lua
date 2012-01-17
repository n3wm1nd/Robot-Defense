-- UNITDEF -- ARMCYBR --
--------------------------------------------------------------------------------

local unitName = "armcybr"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.396,
	bankscale = 1,
	bmcode = 1,
	brakeRate = 5,
	buildCostEnergy = 40371,
	buildCostMetal = 2103,
	builder = false,
	buildPic = [[ARMCYBR.png]],
	buildTime = 76203,
	canAttack = true,
	canFly = true,
	canGuard = false,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL MOBILE NOTDEFENSE NOTSUB NOTSUBNOTSHIP VTOL WEAPON]],
	collide = false,
	cruiseAlt = 300,
	defaultmissiontype = [[VTOL_standby]],
	description = [[Atomic Bomber]],
	energyMake = 0,
	energyStorage = 0,
	energyUse = 40,
	explodeAs = [[SMALL_BUILDING]],
	firestandorders = 1,
	footprintX = 3,
	footprintZ = 3,
	iconType = [[air]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maneuverleashlength = 1280,
	maxDamage = 3600,
	maxSlope = 10,
	maxVelocity = 10.35,
	maxWaterDepth = 0,
	metalStorage = 0,
	mobilestandorders = 1,
	moverate1 = 9,
	name = [[Liche]],
	noAutoFire = true,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[ARMCYBR]],
	seismicSignature = 0,
	selfDestructAs = [[LARGE_BUILDING]],
	side = [[ARM]],
	sightDistance = 455,
	smoothAnim = true,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	turnRate = 535,
	unitname = [[armcybr]],
	workerTime = 0,
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
			[1] = [[vtolarmv]],
		},
		select = {
			[1] = [[vtolarac]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[ARM_PIDR]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARM_PIDR = {
		areaOfEffect = 256,
		avoidFeature = false,
		avoidFriendly = false,
		collideFriendly = false,
<<<<<<< HEAD
		commandfire = true,
=======
		commandfire = false,
>>>>>>> testmerge
		craterBoost = 0,
		craterMult = 0,
		cruise = 1,
		cruisealt = 260,
		edgeEffectiveness = 0.5,
		explosionGenerator = [[custom:FLASHSMALLBUILDINGEX]],
		fireStarter = 100,
		flightTime = 175,
		guidance = true,
		impulseBoost = 1.723,
		impulseFactor = 1.75,
		interceptedByShieldType = 16,
		lineOfSight = true,
		model = [[plasmafire]],
		name = [[PlasmaImplosionDumpRocket]],
		noautorange = 1,
		noSelfDamage = true,
		pitchtolerance = 16000,
		range = 500,
		reloadtime = 8,
		renderType = 1,
		selfprop = true,
		shakeduration = 2,
		shakemagnitude = 18,
		smokedelay = 0.2,
		smokeTrail = true,
		soundHit = [[tonukeex]],
		soundStart = [[bombdropxx]],
		soundwater = [[towaterex]],
		startsmoke = 1,
		startVelocity = 200,
		targetable = 0,
		tolerance = 16000,
		tracks = true,
		turnRate = 32768,
		twoPhase = true,
		unitsonly = 0,
		weaponAcceleration = 40,
		weaponTimer = 6,
		weaponType = [[MissileLauncher]],
		weaponVelocity = 400,
		damage = {
			bomb_resistant = 2541.6667,
			bombers = 200,
			commanders = 1750,
			default = 7625,
			fighters = 200,
			flak_resistant = 200,
			unclassed_air = 200,
		},
	},
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
