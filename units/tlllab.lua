-- UNITDEF -- TLLLAB --
--------------------------------------------------------------------------------

local unitName = "tlllab"

--------------------------------------------------------------------------------

local unitDef = {
	bmcode = 0,
	buildAngle = 2096,
	buildCostEnergy = 850,
	buildCostMetal = 555,
	builder = true,
	buildTime = 5160,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON PLANT]],
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	corpse = [[dead]],
	description = [[Produces Kbots]],
	designation = [[]],
	energyStorage = 100,
	energyUse = 0,
	explodeAs = [[LARGE_BUILDINGEX]],
	firestandorders = 1,
	footprintX = 6,
	footprintZ = 6,
	frenchdescription = [[Niveau Tech 1]],
	frenchname = [[Labo de Kbots ]],
	germandescription = [[Tech Level 1]],
	germanname = [[Kbot-Labor]],
	iconType = [[building]],
	italiandescription = [[Produce Kbot]],
	italianname = [[Laboratorio Kbot]],
	maxDamage = 2107,
	maxSlope = 10,
	maxWaterDepth = 0,
	metalStorage = 100,
	mobilestandorders = 1,
	name = [[Kbot Lab]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[TLLLAB]],
	scale = 0.75,
	selfDestructAs = [[LARGE_BUILDING]],
	side = [[TLL]],
	sightDistance = 223,
	spanishdescription = [[Produce Kbots]],
	spanishname = [[Laboratorio Kbot]],
	standingmoveorder = 2,
	threed = 1,
	unitname = [[tlllab]],
	unitnumber = 811,
	version = 3,
	workerTime = 210,
	yardMap = [[occccooccccooccccooccccooccccoocccco]],
	zbuffer = 1,
	buildoptions = {
		[1] = [[tllck]],
		[2] = [[tllsham]],
		[3] = [[tllprivate]],
		[4] = [[tllfireraiser]],
		[5] = [[tllpbot]],
		[6] = [[tllfirestarter]],
		[7] = [[tlllasbot]],
		[8] = [[tllbug]],
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
<<<<<<< HEAD
=======
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=9,
	buildingGroundDecalSizeY=9,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[tlllab_aoplane.dds]],
>>>>>>> testmerge
}

--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[tll_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 6,
		footprintZ = 6,
		height = 21,
		hitdensity = 105,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[tlllab_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[wreckage]],
		featureDead = [[heap2]],
		featurereclamate = [[smudge01]],
		footprintX = 6,
		footprintZ = 6,
		height = 2,
		hitdensity = 105,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[6x6C]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap2 = {
		blocking = false,
		category = [[heaps]],
		damage = 0.2160 * unitDef.maxDamage,
		description = [[wreckage]],
		featurereclamate = [[smudge01]],
		footprintX = 6,
		footprintZ = 6,
		height = 2,
		hitdensity = 105,
		metal = 0.5120 * unitDef.buildCostMetal,
		object = [[4x4C]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
