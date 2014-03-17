-- teleport_device

return {
  ["teleport_device"] = {
     teleport_device_spawn = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 2
      ,
      ground             = true,
      water              = false,
      properties = {
        delay              = [[0 i0.13 r1]],
        explosiongenerator = [[custom:teleport_device_sparkle]],
        pos                = [[0 , 10, 0]],
      },
    },
  },
   ["teleport_device_sparkle"] = {
      poof01 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.2,
        alwaysvisible      = false,
        colormap           = [[0.2 0.2 0.9 0.01		0.2 0.2 0.8 0.01				0.1 0.1 0.1 0.01]],
        directional        = false,
        emitrot            = [[0 r2]],
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = [[30 i0.43 r1]],
        particlelifespread = 0,
        particlesize       = 12.2,
        particlesizespread = 0,
        particlespeed      = 16,
        particlespeedspread = 0,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = -0.98,
        texture            = [[lightningball_new]],
        useairlos          = false,
      },
    },
  },
}

