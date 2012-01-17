-- UNITDEF -- TLLACSUB --
--------------------------------------------------------------------------------

local unitName = "tllacsub"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.03,
	bmcode = 1,
	brakeRate = 0.2,
	buildCostEnergy = 7986,
	buildCostMetal = 1112,
	buildDistance = 110,
	builder = true,
	buildTime = 17151,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canreclamate = 1,
	canstop = 1,
	category = [[ALL CONSTR LARGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTVTOL NOTWEAPON SUB]],
	collisionvolumeoffsets = [[0 0 0]],
	collisionvolumescales = [[36 26 66]],
	collisionvolumetest = 1,
	collisionvolumetype = [[Ell]],
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	corpse = [[dead]],
	defaultmissiontype = [[Standby]],
	description = [[Build UW Structures]],
	designation = [[TL-CS]],
	downloadable = 1,
	energyMake = 18,
	energyStorage = 50,
	energyUse = 0.9,
	explodeAs = [[SMALL_UNITEX]],
	footprintX = 4,
	footprintZ = 4,
	frenchdescription = [[Niveau Tech 2]],
	frenchname = [[Ss-marin de constr. �volu�]],
	germandescription = [[Tech Level 2]],
	germanname = [[Verb. Konstr. U-Boot]],
	maneuverleashlength = 640,
	maxDamage = 365,
	maxVelocity = 2,
	metalMake = 0.9,
	metalStorage = 50,
	minWaterDepth = 20,
	mobilestandorders = 1,
	movementClass = [[UBOAT4]],
	name = [[Advanced Construction Sub]],
	noAutoFire = false,
	noChaseCategory = [[NOTSUBNOTSHIP]],
	objectName = [[TLLACSUB]],
	radarDistance = 0,
	selfDestructAs = [[SMALL_UNIT]],
	shootme = 1,
	side = [[TLL]],
	sightDistance = 120,
	sonarDistance = 450,
	standingmoveorder = 1,
	steeringmode = 1,
	threed = 1,
	turnRate = 240,
	unitname = [[tllacsub]],
	unitnumber = 897,
	version = 3.1,
	waterline = 30,
	workerTime = 650,
	zbuffer = 1,
	buildoptions = {
		[1] = [[tlluwfusion]],
		[2] = [[tllauwmex]],
		[3] = [[tllplat]],
		[4] = [[tllsy]],
		[5] = [[tllasy]],
		[6] = [[tllsubpen]],
		[7] = [[tlllmtns]],
		[8] = [[tllnssam]],
		[9] = [[tllatorp]],
<<<<<<< HEAD
=======
		[10] = [[tlldtns]],
		[11] = [[tllsealock]],

>>>>>>> testmerge
	},
	featureDefs = nil,
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
			[1] = [[suarmmov]],
		},
		select = {
			[1] = [[suarmsel]],
		},
	},
}

--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[tll_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 4,
		footprintZ = 4,
		height = 12,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[tllacsub_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[all]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[Metal Shards]],
		featurereclamate = [[smudge01]],
		footprintX = 4,
		footprintZ = 4,
		hitdensity = 4,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[4x4a]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[all]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
