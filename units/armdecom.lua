-- UNITDEF -- ARMDECOM --
--------------------------------------------------------------------------------

local unitName = "armdecom"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.18,
	activateWhenBuilt = true,
	autoHeal = 5,
	bmcode = 1,
	brakeRate = 0.375,
	buildCostEnergy = 11561,
	buildCostMetal = 721,
	buildDistance = 120,
	builder = true,
	buildPic = [[ARMDECOM.png]],
	buildTime = 24048,
	canAttack = true,
<<<<<<< HEAD
	canDGun = true,
=======
	canManualFire = true,
>>>>>>> testmerge
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canreclamate = 1,
	canstop = 1,
	category = [[ALL CONSTR MEDIUM MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	cloakCost = 30,
	cloakCostMoving = 180,
	collisionvolumeoffsets = [[0 -1 0]],
	collisionvolumescales = [[36 44 26]],
	collisionvolumetest = 1,
	collisionvolumetype = [[Ell]],
<<<<<<< HEAD
=======
	customParams           = {
		iscommander = true,
	},
>>>>>>> testmerge
	decoyFor = [[armcom]],
	defaultmissiontype = [[Standby]],
	description = [[Decoy Commander]],
	energyMake = 15,
	energyStorage = 50,
	explodeAs = [[DECOY_COMMANDER_BLAST]],
	firestandorders = 1,
	footprintX = 2,
	footprintZ = 2,
	hideDamage = true,
	iconType = [[armcommander]],
	idleAutoHeal = 5,
	idleTime = 1800,
	immunetoparalyzer = 1,
	maneuverleashlength = 640,
	mass = 5000,
	maxDamage = 3000,
	maxSlope = 20,
	maxVelocity = 1.25,
	maxWaterDepth = 35,
	metalMake = 0.5,
	metalStorage = 50,
	minCloakDistance = 50,
	mobilestandorders = 1,
	movementClass = [[AKBOT2]],
	name = [[Commander]],
	noChaseCategory = [[ALL SUB]],
	norestrict = 1,
<<<<<<< HEAD
	objectName = [[ARMCOM]],
=======
	objectName = [[ARMDECOM]],
>>>>>>> testmerge
	radarDistance = 50,
	reclaimable = false,
	seismicSignature = 0,
	selfDestructAs = [[DECOY_COMMANDER_BLAST]],
	showPlayerName = true,
	side = [[arm]],
	sightDistance = 377,
	smoothAnim = true,
	standingfireorder = 2,
	standingmoveorder = 0,
	steeringmode = 2,
	terraformSpeed = 450,
	turnRate = 1148,
	unitname = [[armdecom]],
	upright = true,
	workerTime = 150,
	buildoptions = {
		[1] = [[armsolar]],
		[2] = [[armtide]],
		[3] = [[armwin]],
		[4] = [[armmstor]],
		[5] = [[armestor]],
		[6] = [[armuwms]],
		[7] = [[armuwes]],
		[8] = [[armmex]],
		[9] = [[armuwmex]],
		[10] = [[armmakr]],
		[11] = [[armfmkr]],
	},
	sounds = {
		build = [[nanlath1]],
		canceldestruct = [[cancel2]],
		capture = [[capture1]],
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
			[1] = [[kbarmmov]],
		},
		select = {
			[1] = [[kbarmsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[ARMCOMLASER]],
		},
		[3] = {
			def = [[DECOY_DISINTEGRATOR]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARMCOMLASER = {
		areaOfEffect = 12,
		avoidFeature = false,
		beamlaser = 1,
		beamTime = 0.1,
		coreThickness = 0.1,
		craterBoost = 0,
		craterMult = 0,
		cylinderTargetting = 1,
		edgeEffectiveness = 0.99,
		explosionGenerator = [[custom:SMALL_RED_BURN]],
		fireStarter = 70,
		impactonly = 1,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		laserFlareSize = 7,
		lineOfSight = true,
		name = [[J7Laser]],
		noSelfDamage = true,
		range = 300,
		reloadtime = 0.4,
		renderType = 0,
		rgbColor = [[1 0 0]],
		soundHit = [[lasrhit2]],
		soundStart = [[lasrfir1]],
		soundTrigger = true,
		targetMoveError = 0.05,
		thickness = 2,
		tolerance = 10000,
		turret = true,
		weaponType = [[BeamLaser]],
		weaponVelocity = 900,
		damage = {
			bombers = 112.5,
			default = 75,
			fighters = 112.5,
			flak_resistant = 112.5,
			subs = 5,
			unclassed_air = 196.875,
		},
	},
	DECOY_DISINTEGRATOR = {
		areaOfEffect = 32,
		avoidFriendly = false,
		beamWeapon = true,
		commandfire = true,
		craterBoost = 0,
		craterMult = 0,
		energypershot = 50,
		explosionGenerator = [[custom:DGUNTRACE]],
		impulseBoost = 0,
		impulseFactor = 0,
		lineOfSight = true,
		name = [[Disintegrator]],
		noExplode = true,
		noSelfDamage = true,
		range = 250,
		reloadtime = 1.5,
		renderType = 3,
		soundHit = [[xplomas2]],
		soundStart = [[disigun1]],
		soundTrigger = true,
		startsmoke = 1,
		tolerance = 10000,
		turret = true,
		weaponTimer = 4.2,
		weaponType = [[DGun]],
		weaponVelocity = 300,
		damage = {
			default = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
