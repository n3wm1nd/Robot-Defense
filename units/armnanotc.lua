-- UNITDEF -- ARMNANOTC --
--------------------------------------------------------------------------------

local unitName = "armnanotc"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	brakeRate = 1.5,
<<<<<<< HEAD
	buildCostEnergy = 9021,
	buildCostMetal = 297,
	buildDistance = 580,
	builder = true,
	buildPic = [[ARMNANOTC.png]],
	buildTime = 5312,
=======
	buildCostEnergy = 9000, --
	buildCostMetal = 300, -- 
	buildDistance = 450, --
	builder = true,
	buildPic = [[ARMNANOTC.png]],
	buildTime = 5000, --
>>>>>>> testmerge
	canGuard = true,
	canMove = false,
	canPatrol = true,
	canreclamate = 1,
	canstop = 1,
	cantBeTransported = true,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON]],
	defaultmissiontype = [[Standby]],
	description = [[Repairs and builds in large radius]],
	energyStorage = 0,
<<<<<<< HEAD
	energyUse = 30,
=======
	energyUse = 20, --
>>>>>>> testmerge
	explodeAs = [[NANOBOOM2]],
	footprintX = 3,
	footprintZ = 3,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maneuverleashlength = 380,
	mass = 1000000000000,
<<<<<<< HEAD
	maxDamage = 500,
=======
	maxDamage = 400, --
>>>>>>> testmerge
	maxSlope = 10,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 0,
<<<<<<< HEAD
	name = [[Nano Turret]],
=======
	name = [[Nano Turret Level 1]],
>>>>>>> testmerge
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[ARMNANOTC]],
	seismicSignature = 0,
	selfDestructAs = [[TINY_BUILDINGEX]],
	side = [[ARM]],
	sightDistance = 380,
	smoothAnim = true,
	steeringmode = 1,
	turnRate = 1,
	unitname = [[armnanotc]],
	upright = true,
<<<<<<< HEAD
	workerTime = 300,
=======
	workerTime = 250, --
>>>>>>> testmerge
	sounds = {
		build = [[nanlath1]],
		canceldestruct = [[cancel2]],
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
			[1] = [[varmmove]],
		},
		select = {
			[1] = [[varmsel]],
		},
	},
<<<<<<< HEAD
=======
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=5,
	buildingGroundDecalSizeY=5,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[armnanotc_aoplane.dds]],
>>>>>>> testmerge
}
--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
