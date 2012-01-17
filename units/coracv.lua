-- UNITDEF -- CORACV --
--------------------------------------------------------------------------------

local unitName = "coracv"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.033,
	bmcode = 1,
	brakeRate = 0.1375,
	buildCostEnergy = 55012,
	buildCostMetal = 2852,
	buildDistance = 95,
	builder = true,
	buildPic = [[CORACV.png]],
	buildTime = 20882,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canreclamate = 1,
	canstop = 1,
	category = [[ALL CONSTR LARGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON]],
	corpse = [[1_DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Tech Level 3]],
	energyMake = 20,
	energyStorage = 100,
	energyUse = 20,
	explodeAs = [[BIG_UNITEX]],
	footprintX = 3,
	footprintZ = 3,
	idleAutoHeal = 5,
	idleTime = 1800,
	leaveTracks = true,
	maneuverleashlength = 640,
	maxDamage = 3930,
	maxSlope = 16,
	maxVelocity = 1.76,
	maxWaterDepth = 18,
	metalMake = 0.2,
	metalStorage = 100,
	mobilestandorders = 1,
	movementClass = [[TANK3]],
	name = [[Advanced Construction Vehicle]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[CORACV]],
	radarDistance = 50,
	seismicSignature = 0,
	selfDestructAs = [[BIG_UNIT]],
	side = [[core]],
	sightDistance = 295.1,
	smoothAnim = true,
	standingmoveorder = 1,
	steeringmode = 1,
	terraformSpeed = 750,
	trackOffset = 0,
	trackStrength = 6,
	trackStretch = 1,
	trackType = [[StdTank]],
	trackWidth = 34,
	turnRate = 363,
	unitname = [[coracv]],
	workerTime = 350,
	buildoptions = {
<<<<<<< HEAD
		[1] = [[corfus]],
		[2] = [[cafus]],
		[3] = [[cmgeo]],
		[4] = [[corbhmth]],
		[5] = [[corevp]],
		[6] = [[cormoho]],
		[7] = [[cormexp]],
		[8] = [[cormmkr]],
		[9] = [[coruwadves]],
		[10] = [[coruwadvms]],
		[11] = [[corarad]],
		[12] = [[corshroud]],
		[13] = [[corfort]],
		[14] = [[corasp]],
		[15] = [[cortarg]],
		[16] = [[corsd]],
		[17] = [[corgate]],
		[18] = [[corflak]],
		[19] = [[screamer]],
		[20] = [[cortron]],
		[21] = [[corfmd]],
		[22] = [[corsilo]],
		[23] = [[corint]],
		[24] = [[corbuzz]],
		[25] = [[corvp]],
		[26] = [[coravp]],
		[27] = [[tawf010]],
		[28] = [[core_intimidator]],
		[29] = [[corboucher]],
		[30] = [[corech18]],
=======
		[[corfus]],
		[[cafus]],
		[[cmgeo]],
		[[corbhmth]],
		[[corevp]],
		[[cormoho]],
		[[cormexp]],
		[[cormmkr]],
		[[corhmakr]],
		[[coruwadves]],
		[[coruwadvms]],
		[[corarad]],
		[[corshroud]],
		[[corfort]],
		[[corasp]],
		[[cortarg]],
		[[corsd]],
		[[corgate]],
		[[corflak]],
		[[screamer]],
		[[cortron]],
		[[corfmd]],
		[[corsilo]],
		[[corint]],
		[[corbuzz]],
		[[corvp]],
		[[coravp]],
		[[tawf010]],
		[[core_intimidator]],
		[[corboucher]],
		[[corech18]],
>>>>>>> testmerge
	},
	featureDefs = nil,
	sounds = {
		build = [[nanlath2]],
		canceldestruct = [[cancel2]],
		capture = [[capture1]],
		repair = [[repair2]],
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
			[1] = [[vcormove]],
		},
		select = {
			[1] = [[vcorsel]],
		},
	},
}

--------------------------------------------------------------------------------

local featureDefs = {
	['1_DEAD'] = {
		blocking = true,
		category = [[corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CORACV_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
