local pipe_left = {
    north = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/top-left.png",
        priority = "low",
        width = 320,
        height = 336
    },
    south = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/bottom-right.png",
        priority = "high",
        width = 320,
        height = 336
    },
    east = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/right-top.png",
        priority = "high",
        width = 320,
        height = 336
    },
    west = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/left-bottom.png",
        priority = "high",
        width = 320,
        height = 336
    }
}

local pipe_right = {
    north = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/top-right.png",
        priority = "low",
        width = 320,
        height = 336
    },
    south = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/bottom-left.png",
        priority = "high",
        width = 320,
        height = 336
    },
    east = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/right-bottom.png",
        priority = "high",
        width = 320,
        height = 336
    },
    west = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/left-top.png",
        priority = "high",
        width = 320,
        height = 336
    }
}

RECIPE {
    type = "recipe",
    name = "centrifugal-pan-mk04",
    energy_required = 15,
    enabled = false,
    ingredients = {
                {'centrifugal-pan-mk03', 1},
                {'super-steel', 30},
                {'low-density-structure', 15},
                {'nbfe-alloy', 20}
            },
    results = {
        {"centrifugal-pan-mk04", 1}
    },
}

ITEM {
    type = "item",
    name = "centrifugal-pan-mk04",
    icon = "__pyfusionenergy__/graphics/icons/centrifugal-pan-mk04.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk04",
    order = "d",
    place_result = "centrifugal-pan-mk04",
    stack_size = 5
}

ENTITY {
    type = "assembling-machine",
    name = "centrifugal-pan-mk04",
    icon = "__pyfusionenergy__/graphics/icons/centrifugal-pan-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "centrifugal-pan-mk04"},
    fast_replaceable_group = "centrifugal-pan",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"pan"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1580kW",
    ingredient_count = 6,
    animation = {
		layers = {
			{
			filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/off.png",
			width = 320,
			height = 328,
			frame_count = 1,
			--line_length = 10,
			--animation_speed = 1,
			shift = {0.02, -0.10}
			},
			{
			filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/off-mask.png",
			width = 320,
			height = 328,
			frame_count = 1,
			--line_length = 10,
			--animation_speed = 1,
			shift = {0.02, -0.10},
			tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
			}
		}
    },
    working_visualisations = {
        {
            north_position = {0.02, -0.22},
            west_position = {0.02, -0.22},
            south_position = {0.02, -0.22},
            east_position = {0.02, -0.22},
            animation = {
                filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/on.png",
                frame_count = 100,
                line_length = 10,
                width = 192,
                height = 192,
                animation_speed = 0.4
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.5, -5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_connections = {{type = "output", position = {2.5, 5.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.5, -5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_connections = {{type = "output", position = {-2.5, 5.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/centrifugal-pan.ogg"},
        idle_sound = {filename = "__pyfusionenergy__/sounds/centrifugal-pan.ogg", volume = 0.65},
        apparent_volume = 2.5
    }
}
