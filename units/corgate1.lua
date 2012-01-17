-- UNITDEF -- CORGATE1 --
--------------------------------------------------------------------------------

local unitName = "corgate1"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	activateWhenBuilt = true,
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 2048,
	buildCostEnergy = 127666,
	buildCostMetal = 12736,
	builder = false,
	buildPic = [[CORGATE.png]],
	buildTime = 377166,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON]],
	corpse = [[DEAD]],
	description = [[Long Range Plasma Deflector]],
	energyStorage = 1500,
	energyUse = 0,
	explodeAs = [[CRAWL_BLAST]],
	footprintX = 5,
	footprintZ = 5,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maxDamage = 9200,
	maxSlope = 10,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 0,
	name = [[Super Shield]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	norestrict = 1,
	objectName = [[CORGATE1]],
	onoffable = true,
	script = [[corgate.cob]],
	seismicSignature = 0,
	selfDestructAs = [[MINE_NUKE]],
	side = [[CORE]],
	sightDistance = 273,
	smoothAnim = true,
	turnRate = 0,
	unitname = [[corgate1]],
	workerTime = 0,
	yardMap = [[oooooooooooooooo]],
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
			[1] = [[drone1]],
		},
		select = {
			[1] = [[drone1]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[REPULSOR1]],
		},
	},
<<<<<<< HEAD
=======
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=8,
	buildingGroundDecalSizeY=8,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[corgate1_aoplane.dds]],
>>>>>>> testmerge
}

--------------------------------------------------------------------------------

local weaponDefs = {
	REPULSOR1 = {
		isShield = true,
		name = [[PlasmaRepulsor]],
		range = 1000,
		shieldAlpha = 0.3,
		shieldBadColor = [[1 0.2 0.2]],
		shieldEnergyUse = 6000,
		shieldForce = 7,
		shieldGoodColor = [[0.2 1 0.2]],
		shieldInterceptType = 1,
		shieldMaxSpeed = 3500,
		shieldPower = 77500,
		shieldPowerRegen = 350,
		shieldPowerRegenEnergy = 5600.5,
		shieldRadius = 1000,
		shieldRepulser = true,
		smartShield = true,
		visibleShield = true,
		visibleShieldRepulse = true,
		weaponType = [[Shield]],
		damage = {
			default = 100,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = true,
		category = [[corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 4,
		footprintZ = 4,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CORGATE1_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	HEAP = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = unitDef.name .. [[ Heap]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 4,
		footprintZ = 4,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[4X4E]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
