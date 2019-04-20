data:extend({
  {
    type = "assembling-machine",
    name = "algae-farm",
    order= "a",
    icon = "__base__/graphics/icons/centrifuge.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "algae-farm"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    always_draw_idle_animation = true,
    idle_animation =
    {
      layers =
      {
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C.png",
          priority = "high",
          line_length = 8,
          width = 119,
          height = 107,
          frame_count = 64,
          shift = util.by_pixel(-0.5, -26.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 237,
            height = 214,
            frame_count = 64,
            shift = util.by_pixel(-0.25, -26.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 132,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(20, -10),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 279,
            height = 152,
            frame_count = 64,
            shift = util.by_pixel(16.75, -10)
          }
        },
        -- Centrifuge B
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B.png",
          priority = "high",
          line_length = 8,
          width = 78,
          height = 117,
          frame_count = 64,
          shift = util.by_pixel(23, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 156,
            height = 234,
            frame_count = 64,
            shift = util.by_pixel(23, 6.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 124,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(63, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 251,
            height = 149,
            frame_count = 64,
            shift = util.by_pixel(63.25, 15.25)
          }
        },
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A.png",
          priority = "high",
          line_length = 8,
          width = 70,
          height = 123,
          frame_count = 64,
          shift = util.by_pixel(-26, 3.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 139,
            height = 246,
            frame_count = 64,
            shift = util.by_pixel(-26.25, 3.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
          priority = "high",
          draw_as_shadow = true,
          line_length = 8,
          width = 108,
          height = 54,
          frame_count = 64,
          shift = util.by_pixel(6, 27),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-shadow.png",
            priority = "high",
            draw_as_shadow = true,
            scale = 0.5,
            line_length = 8,
            width = 230,
            height = 124,
            frame_count = 64,
            shift = util.by_pixel(8.5, 23.5)
          }
        }
      }
    },

    animation =
    {
      layers =
      {
        -- Centrifuge C
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 96,
          height = 104,
          frame_count = 64,
          shift = util.by_pixel(0, -27),

          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 190,
            height = 207,
            frame_count = 64,
            shift = util.by_pixel(0, -27.25)
          }
        },
        -- Centrifuge B
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 65,
          height = 103,
          frame_count = 64,
          shift = util.by_pixel(16.5, 0.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 131,
            height = 206,
            frame_count = 64,
            shift = util.by_pixel(16.75, 0.5)
          }
        },
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 55,
          height = 98,
          frame_count = 64,
          shift = util.by_pixel(-23.5, -2),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 108,
            height = 197,
            frame_count = 64,
            shift = util.by_pixel(-23.5, -1.75)
          }
        }
      }
    },

    working_visualisations =
    {
      {
        effect = "uranium-glow", -- changes alpha based on energy source light intensity
        light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    crafting_speed = 1,
    energy_source = {
      type = "void"
    },
    -- {
    --   type = "electric",
    --   -- usage_priority = "solar",
    --   usage_priority = "secondary-input",
    --   emissions_per_minute = 0,
    --   render_no_power_icon = false
    -- },
    energy_usage = "1W",
    crafting_categories = {"biodiesel-production"},
    fixed_recipe = "biodiesel-processing",
    fluid_boxes =
    {
      {
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
          {type = "input", position = {-2, 0}},
          {type = "input", position = {2, 0}}
        },
        production_type = "input",
        filter = "water"
      },{
        base_area = 1,
        height = 2,
        base_level = 1,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
          {type = "output", position = {0, -1.5}}
        },
        production_type = "output",
        filter = "biodiesel"
      }
  }
}
,
{
  type = "generator",
  name = "biodiesel-engine",
  order= "a",
  icon = "__base__/graphics/icons/steam-turbine.png",
  icon_size = 32,
  flags = {"placeable-neutral","player-creation"},
  minable = {mining_time = 0.3, result = "biodiesel-engine"},
  max_health = 300,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  alert_icon_shift = util.by_pixel(0, -12),
  effectivity = 1,
  fluid_usage_per_tick = 1/4,
  scale_fluid_usage = true,
  maximum_temperature = 25,
  burns_fluid = true,
  resistances =
  {
    {
      type = "fire",
      percent = 90
    },
    {
      type = "explosion",
      percent = 30
    },
    {
      type = "impact",
      percent = 30
    }
  },
  collision_box = {{-1.35, -2.35}, {1.35, 2.35}},
  selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
  fluid_box =
  {
    minimum_temperature = 25,
    maximum_temperature = 25,
    base_area = 1,
    height = 2,
    base_level = -1,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
      { type = "input-output", position = {0, 3} },
      { type = "input-output", position = {0, -3} }
    },
    production_type = "input-output",
    filter = "biodiesel"
  },
  energy_source =
  {
    type = "electric",
    usage_priority = "primary-output",
    buffer_capacity = "10MJ",
    input_flow_limit = "1W",
    output_flow_limit = "4.8MW"
  },
  horizontal_animation =
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
        width = 160,
        height = 123,
        frame_count = 8,
        line_length = 4,
        shift = util.by_pixel(0, -2.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
          width = 320,
          height = 245,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(0, -2.75),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
        width = 217,
        height = 74,
        repeat_count = 8,
        frame_count = 1,
        line_length = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(28.75, 18),
        hr_version =
        {
          filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
          width = 435,
          height = 150,
          repeat_count = 8,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(28.5, 18),
          scale = 0.5
        }
      }
    }
  },
  vertical_animation =
  {
   layers =
   {
      {
        filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
        width = 108,
        height = 173,
        frame_count = 8,
        line_length = 4,
        shift = util.by_pixel(5, 6.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
          width = 217,
          height = 347,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(4.75, 6.75),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
        width = 151,
        height = 131,
        repeat_count = 8,
        frame_count = 1,
        line_length = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(39.5, 24.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
          width = 302,
          height = 260,
          repeat_count = 8,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(39.5, 24.5),
          scale = 0.5
        }
      }
    }
  },
  smoke =
  {
    {
      name = "turbine-smoke",
      north_position = {0.0, -1.0},
      east_position = {0.75, -0.75},
      frequency = 10 / 32,
      starting_vertical_speed = 0.08,
      slow_down_factor = 1,
      starting_frame_deviation = 60
    }
  },
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/steam-engine-90bpm.ogg",
      volume = 0.6
    },
    match_speed_to_activity = true
  },
  min_perceived_performance = 0.25,
  performance_to_sound_speedup = 0.5,
  max_power_output = "4.8MW",
  production = "4.8KW"
}
})
