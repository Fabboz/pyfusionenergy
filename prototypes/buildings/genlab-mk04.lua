local pipe = {
    south = {
        filename = "__pyfusionenergy__/graphics/entity/genlab/bottom.png",
        priority = "extra-high",
        width = 224,
        height = 257
    }
}

RECIPE {
    type = "recipe",
    name = "genlab-mk04",
    energy_required = 10,
    enabled = false,
    ingredients = {
                {'genlab-mk03', 1},
                --{'super-steel', 30},
                --{'low-density-structure', 15},
                --{'nbfe-alloy', 20}
            },
    results = {
        {"genlab-mk04", 1}
    }
}

ITEM {
    type = "item",
    name = "genlab-mk04",
    icon = "__pyfusionenergy__/graphics/icons/genlab-mk04.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk04",
    order = "d",
    place_result = "genlab-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "genlab-mk04",
    icon = "__pyfusionenergy__/graphics/icons/genlab-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "genlab-mk04"},
    fast_replaceable_group = "genlab",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"genlab"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1.00,
    },
    energy_usage = "250kW",
    ingredient_count = 4,
    animation = {
		layers = {
		{
        filename = "__pyfusionenergy__/graphics/entity/genlab/off.png",
        width = 224,
        height = 257,
        frame_count = 1,
        --animation_speed = 0.5,
        shift = {-0.00, -0.15}
		},
		{
        filename = "__pyfusionenergy__/graphics/entity/genlab/off-mask.png",
        width = 224,
        height = 257,
        frame_count = 1,
        --animation_speed = 0.5,
        shift = {-0.00, -0.15},
		tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
		}
		}
    },
    working_visualisations = {
        {
            north_position = {-0.25, -1.624},
            west_position = {-0.25, -1.624},
            south_position = {-0.25, -1.624},
            east_position = {-0.25, -1.624},
            animation = {
                filename = "__pyfusionenergy__/graphics/entity/genlab/main.png",
                frame_count = 100,
                width = 140,
                height = 163,
                line_length = 14,
                animation_speed = 0.3,
                priority = "medium",
                run_mode = "forward-then-backward"
            }
        },
        {
            north_position = {-0.0, -3.156},
            west_position = {-0.0, -3.156},
            south_position = {-0.0, -3.156},
            east_position = {-0.0, -3.156},
            animation = {
                filename = "__pyfusionenergy__/graphics/entity/genlab/cooler.png",
                frame_count = 80,
                width = 224,
                height = 64,
                line_length = 9,
                animation_speed = 0.5,
                priority = "high"
            }
        },
        {
            north_position = {2.0, -0.556},
            west_position = {2.0, -0.556},
            south_position = {2.0, -0.556},
            east_position = {2.0, -0.556},
            animation = {
                filename = "__pyfusionenergy__/graphics/entity/genlab/smoke.png",
                frame_count = 50,
                width = 96,
                height = 96,
                line_length = 20,
                animation_speed = 0.5,
                priority = "high"
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-2.0, -4.25}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -4.0}}},
            priority = "extra-high"
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-2.00, -4.25}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}},
            priority = "extra-high"
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/genlab.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergy__/sounds/genlab.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
