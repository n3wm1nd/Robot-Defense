-- UNITDEF -- ARMPRAET --
--------------------------------------------------------------------------------

local unitName = "armpraet"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.09,
	activateWhenBuilt = true,
	bmcode = 1,
	brakeRate = 0.99,
	buildCostEnergy = 320000,
	buildCostMetal = 18600,
	builder = false,
	buildTime = 344678,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL HUGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	collisionvolumeoffsets = [[0 0 0]],
	collisionvolumescales = [[86 120 78]],
	collisionvolumetest = 0,
	collisionvolumetype = [[Ell]],
	defaultmissiontype = [[Standby]],
	description = [[Experimental Shielded Kbot]],
	designation = [[BioMech]],
	energyMake = 1.1,
	energyStorage = 10000,
	energyUse = 1.1,
	explodeAs = [[ATOMIC_BLAST]],
	firestandorders = 1,
	footprintX = 5,
	footprintZ = 5,
	iconType = [[krogoth]],
	idleAutoHeal = 10,
	idleTime = 30,
	immunetoparalyzer = 1,
	maneuverleashlength = 640,
	mass = 1000000,
	maxDamage = 108000,
	maxSlope = 36,
	maxVelocity = 0.99,
	maxWaterDepth = 1200,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[VKBOT5]],
	name = [[Praetorian]],
<<<<<<< HEAD
	nanoColor = [[0 0 1]],
=======
>>>>>>> testmerge
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[ARMPRAET]],
	onoffable = true,
	ovradjust = 1,
	radarDistance = 0,
	script = [[armpraet.cob]],
	seismicSignature = 5000,
	selfDestructAs = [[ATOMIC_BLAST]],
	shootme = 1,
	side = [[ARM]],
	sightDistance = 540,
	sonarDistance = 0,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 2,
	threed = 1,
	turnRate = 225,
	unitname = [[armpraet]],
	unitnumber = 246,
	upright = true,
	version = 1,
	workerTime = 0,
	zbuffer = 1,
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
			[1] = [[krogok1]],
		},
		select = {
			[1] = [[krogsel1]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[PRAETORIAN_SPLIT]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			def = [[PRAETORIAN_ARMS]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[3] = {
			def = [[PRAETORIAN_ROCKET]],
		},
		[4] = {
			def = [[Praetorian_Shield]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	PRAETORIAN_ARMS = {
		areaOfEffect = 98,
		avoidFriendly = false,
		beamWeapon = true,
		craterBoost = 0,
		craterMult = 0,
		edgeEffectiveness = 0.8,
		explosionart = [[explode5]],
		explosiongaf = [[fx]],
		explosionGenerator = [[custom:PraetorianBeamFlash]],
		intensity = 1,
		lineOfSight = true,
		model = [[bfg]],
		name = [[Annihilator Arms]],
		pitchtolerance = 12000,
		range = 800,
		reloadtime = 3,
		renderType = 1,
		rgbColor = [[0 0 1]],
		soundHit = [[xplolrg1]],
		soundStart = [[BFG__X1B]],
		startsmoke = 0,
		thickness = 5,
		tolerance = 12000,
		turret = true,
		weaponTimer = 2,
		weaponType = [[LaserCannon]],
		weaponVelocity = 1900,
		damage = {
			default = 2000,
			subs = 5,
		},
	},
	PRAETORIAN_ROCKET = {
		areaOfEffect = 96,
		avoidFriendly = false,
		craterBoost = 0,
		craterMult = 0,
		explosionGenerator = [[custom:FLASH4]],
		fireStarter = 70,
		guidance = true,
		lineOfSight = true,
		metalpershot = 0,
		model = [[praetorian_missile]],
		name = [[HeavyRockets]],
		proximityPriority = -1,
		range = 1150,
		reloadtime = 1.5,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHit = [[xplosml2]],
		soundStart = [[rocklit1]],
		startsmoke = 1,
		startVelocity = 200,
		tolerance = 9000,
		tracks = true,
		turnRate = 96000,
		twoPhase = true,
		vlaunch = true,
		weaponAcceleration = 300,
		weaponTimer = 2,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 600,
		damage = {
			default = 240,
			subs = 5,
		},
	},
	Praetorian_Shield = {
		id = 9346,
		isShield = true,
		name = [[Praetorian_Shield]],
		range = 360,
		shieldAlpha = 0.3,
		shieldBadColor = [[1 0.2 0.2]],
		shieldEnergyUse = 1800,
		shieldForce = 9,
		shieldGoodColor = [[0.2 1 0.2]],
		shieldInterceptType = 1,
		shieldMaxSpeed = 3500,
		shieldPower = 5800,
		shieldPowerRegen = 58,
		shieldPowerRegenEnergy = 300,
		shieldRadius = 360,
		shieldRepulser = true,
		smartShield = true,
		turret = true,
		visibleShield = true,
		visibleShieldRepulse = true,
		weaponType = [[Shield]],
		damage = {
			default = 100,
		},
	},
	PRAETORIAN_SPLIT = {
		areaOfEffect = 10,
		avoidFriendly = false,
		burst = 22,
		burstrate = 0.01,
		craterBoost = 0,
		craterMult = 0,
		energypershot = 120,
		explosionart = [[explode5]],
		explosiongaf = [[fx]],
		explosionGenerator = [[custom:FLASH211]],
		lineOfSight = true,
		model = [[krogfire]],
		name = [[Plasma pulverizer]],
		range = 500,
		reloadtime = 1.2,
		renderType = 4,
		soundHit = [[xplomed2]],
		soundStart = [[bombrel]],
		sprayAngle = 3250,
		startsmoke = 0,
		tolerance = 5000,
		turret = true,
		weaponTimer = 2.2,
		weaponType = [[Cannon]],
		weaponVelocity = 600,
		damage = {
			default = 80,
		},
	},
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
