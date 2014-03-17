-- teleport_beam

return {
  ["teleport_beam"] = {
    usedefaultexplosions = true,
    groundflash = {
      circlealpha        = 0.7,
      circlegrowth       = 25,
      flashalpha         = 1.2,
      flashsize          = 430,
      ttl                = 32,
      color = {
        [1]  = 0.55000001192093,
        [2]  = 0.69999998807907,
        [3]  = 0.89999997615814,
      },
    },
      SpikeSpawner = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 10,
      ground             = true,
      water              = false,
      properties = {
        delay              = [[0 i3]],
        explosiongenerator = [[custom:teleport_spikes]],
        pos                = [[0, 0, 0]],
      },
    },
  },
     ["teleport_spikes"] = {
    spikesofhell1 = {
      air                = true,
      class              = [[explspike]],
      count              = 3,
      ground             = true,
      water              = true,
      properties = {
        alpha              = 0.9,
        alphadecay         = 0.05,
        alwaysvisible      = true,
        color              = [[0.3, 0.3, 0.9]],
        dir                = [[-25 r50,-25 r50,-25 r50]],
        length             = 150,
        width              = 100,
      },
    },
},
}

