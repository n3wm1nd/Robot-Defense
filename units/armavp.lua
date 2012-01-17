-- UNITDEF -- ARMAVP --
--------------------------------------------------------------------------------

local unitName = "armavp"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 1024,
	buildCostEnergy = 71440,
	buildCostMetal = 3598,
	builder = true,
	buildingGroundDecalDecaySpeed = 3000,
	buildingGroundDecalSizeX = 8,
	buildingGroundDecalSizeY = 7,
	buildingGroundDecalType = [[armavp_aoplane.dds]],
	buildPic = [[ARMAVP.png]],
	buildTime = 36440,
	canMove = true,
	canPatrol = true,
	canstop = 1,
<<<<<<< HEAD
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON PLANT]],
=======
	category = [[LEVEL1 ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON PLANT]],
>>>>>>> testmerge
	corpse = [[DEAD1]],
	description = [[Produces T2 Vehicles]],
	energyStorage = 200,
	energyUse = 0,
	explodeAs = [[LARGE_BUILDINGEX]],
	firestandorders = 1,
	footprintX = 7,
	footprintZ = 6,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maxDamage = 4296,
	maxSlope = 15,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 200,
	mobilestandorders = 1,
	name = [[Advanced Vehicle Plant]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[ARMAVP]],
	radarDistance = 50,
	seismicSignature = 0,
	selfDestructAs = [[LARGE_BUILDING]],
	side = [[ARM]],
	sightDistance = 283.4,
	smoothAnim = true,
	sortbias = 0,
	standingfireorder = 2,
	standingmoveorder = 1,
	turnRate = 0,
	unitname = [[armavp]],
	useBuildingGroundDecal = true,
	workerTime = 400,
	yardMap = [[occcccoocccccoocccccoocccccoocccccooccccco]],
	buildoptions = {
		[1] = [[armacv]],
		[2] = [[consul]],
		[3] = [[armcroc]],
		[4] = [[armlatnk]],
		[5] = [[armbull]],
		[6] = [[armbull2]],
		[7] = [[tawf014]],
		[8] = [[armst]],
		[9] = [[armmart]],
		[10] = [[armmerl]],
		[11] = [[armmanni]],
		[12] = [[armyork]],
		[13] = [[armseer]],
		[14] = [[armjam]],
		[15] = [[armorca]],
		[16] = [[tankanotor]],
		[17] = [[vaporiser]],
		[18] = [[armscpion]],
		[19] = [[armcd]],
	},
	featureDefs = nil,
	sounds = {
		build = [[pvehwork]],
		canceldestruct = [[cancel2]],
		underattack = [[warning1]],
		unitcomplete = [[untdone]],
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		select = {
			[1] = [[pvehactv]],
		},
	},
}

--------------------------------------------------------------------------------

local featureDefs = {
	DEAD1 = {
		blocking = true,
		category = [[corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[Vehicle Plant Wreckage]],
		energy = 14000,
		featureDead = [[HEAP1]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 6,
		footprintZ = 6,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[ARMAVP_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	HEAP1 = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[Vehicle Plant Heap]],
		energy = 700,
		featurereclamate = [[SMUDGE01]],
		footprintX = 6,
		footprintZ = 6,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[6X6D]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
