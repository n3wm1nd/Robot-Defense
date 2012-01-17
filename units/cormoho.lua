-- UNITDEF -- CORMOHO --
--------------------------------------------------------------------------------

local unitName = "cormoho"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	activateWhenBuilt = true,
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 2048,
	buildCostEnergy = 7677,
	buildCostMetal = 598,
	builder = false,
	buildPic = [[CORMOHO.png]],
	buildTime = 14125,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON]],
	corpse = [[DEAD]],
	damageModifier = 0.25,
	description = [[Advanced Metal Extractor / Storage]],
	energyStorage = 0,
	energyUse = 25,
	explodeAs = [[SMALL_BUILDINGEX]],
	extractsMetal = 0.006,
	footprintX = 5,
	footprintZ = 5,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maxDamage = 3500,
	maxSlope = 20,
	maxVelocity = 0,
	maxWaterDepth = 20,
	metalStorage = 1000,
	name = [[Moho Mine]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[CORMOHO]],
	onoffable = true,
	seismicSignature = 0,
	selfDestructAs = [[SMALL_BUILDING]],
	side = [[CORE]],
	sightDistance = 273,
	smoothAnim = true,
	turnRate = 0,
	unitname = [[cormoho]],
	workerTime = 0,
	yardMap = [[ooooooooooooooooooooooooo]],
	featureDefs = nil,
	sounds = {
		activate = [[mohorun2]],
		canceldestruct = [[cancel2]],
		deactivate = [[mohooff2]],
		underattack = [[warning1]],
		working = [[mohorun2]],
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		ok = {
			[1] = [[twractv3]],
		},
		select = {
			[1] = [[mohoon2]],
		},
	},
<<<<<<< HEAD
=======
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=8,
	buildingGroundDecalSizeY=8,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[cormoho_aoplane.dds]],
>>>>>>> testmerge
}

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
		footprintX = 5,
		footprintZ = 5,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CORMOHO_DEAD]],
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
		footprintX = 5,
		footprintZ = 5,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[5X5A]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
