-- UNITDEF -- ARMALAB --
--------------------------------------------------------------------------------

local unitName = "armalab"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 1024,
	buildCostEnergy = 61761,
	buildCostMetal = 3529,
	builder = true,
	buildingGroundDecalDecaySpeed = 3000,
	buildingGroundDecalSizeX = 7,
	buildingGroundDecalSizeY = 7,
	buildingGroundDecalType = [[armalab_aoplane.dds]],
	buildPic = [[ARMALAB.png]],
	buildTime = 45524,
	canMove = true,
	canPatrol = true,
	canstop = 1,
<<<<<<< HEAD
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON PLANT]],
=======
	category = [[LEVEL1 ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON PLANT]],
>>>>>>> testmerge
	corpse = [[DEAD1]],
	description = [[Produces T2 Kbots]],
	energyStorage = 200,
	energyUse = 0,
	explodeAs = [[LARGE_BUILDINGEX]],
	firestandorders = 1,
	footprintX = 6,
	footprintZ = 6,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maxDamage = 3808,
	maxSlope = 15,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 200,
	mobilestandorders = 1,
	name = [[Advanced Kbot Lab]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[ARMALAB]],
	radarDistance = 50,
	seismicSignature = 0,
	selfDestructAs = [[LARGE_BUILDING]],
	side = [[ARM]],
	sightDistance = 286,
	smoothAnim = true,
	standingfireorder = 2,
	standingmoveorder = 1,
	turnRate = 0,
	unitname = [[armalab]],
	useBuildingGroundDecal = true,
	workerTime = 400,
	yardMap = [[occccooccccooccccooccccooccccoocccco]],
	buildoptions = {
		[1] = [[armack]],
		[2] = [[armfark]],
		[3] = [[armfast]],
		[4] = [[armamph]],
		[5] = [[armzeus]],
		[6] = [[armmav]],
		[7] = [[armfido]],
		[8] = [[armsnipe]],
		[9] = [[armfboy]],
		[10] = [[armaak]],
		[11] = [[armdecom]],
		[12] = [[armscab]],
		[13] = [[armaser]],
		[14] = [[armspy]],
		[15] = [[armmark]],
		[16] = [[armhh]],
		[17] = [[armcav]],
		[18] = [[taipan]],
		[19] = [[akmech]],
		[20] = [[armhdpw]],
		[21] = [[armmech]],
	},
	featureDefs = nil,
	sounds = {
		build = [[plabwork]],
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
			[1] = [[plabactv]],
		},
	},
}

--------------------------------------------------------------------------------

local featureDefs = {
	DEAD1 = {
		blocking = true,
		category = [[corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[Kbot Lab Wreckage]],
		energy = 8000,
		featureDead = [[HEAP1]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 5,
		footprintZ = 6,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[ARMALAB_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	HEAP1 = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[Kbot Lab Heap]],
		energy = 4000,
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
