local pipe_left = {
    north = {
        filename = "__pyfusionenergy__/graphics/entity/jig/top-left.png",
        priority = "low",
        width = 276,
        height = 268
    },
    south = {
        filename = "__pyfusionenergy__/graphics/entity/jig/bottom-right.png",
        priority = "high",
        width = 276,
        height = 268
    },
    east = {
        filename = "__pyfusionenergy__/graphics/entity/jig/right-top.png",
        priority = "high",
        width = 276,
        height = 268
    },
    west = {
        filename = "__pyfusionenergy__/graphics/entity/jig/left-bottom.png",
        priority = "high",
        width = 276,
        height = 268
        --shift = {0.0, -0.2},
    }
}

local pipe_right = {
    north = {
        filename = "__pyfusionenergy__/graphics/entity/jig/top-right.png",
        priority = "low",
        width = 276,
        height = 268
    },
    south = {
        filename = "__pyfusionenergy__/graphics/entity/jig/bottom-left.png",
        priority = "high",
        width = 276,
        height = 268
    },
    east = {
        filename = "__pyfusionenergy__/graphics/entity/jig/right-bottom.png",
        priority = "high",
        width = 276,
        height = 268
    },
    west = {
        filename = "__pyfusionenergy__/graphics/entity/jig/left-top.png",
        priority = "high",
        width = 276,
        height = 268
    }
}

RECIPE {
    type = "recipe",
    name = "jig-mk02",
    energy_required = 15,
    enabled = false,
    ingredients = {
                {"jig-mk01", 1},
                --{'duralumin', 15},
                --{'lead-plate', 10},
                {'nexelit-plate', 15},
                {'advanced-circuit', 10}
            },
    results = {
        {"jig-mk02", 1}
    },
}

ITEM {
    type = "item",
    name = "jig-mk02",
    icon = "__pyfusionenergy__/graphics/icons/jig-mk02.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk02",
    order = "d",
    place_result = "jig-mk02",
    stack_size = 5
}

ENTITY {
    type = "assembling-machine",
    name = "jig-mk02",
    icon = "__pyfusionenergy__/graphics/icons/jig-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "jig-mk02"},
    fast_replaceable_group = "jig",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.8, -3.8}, {3.8, 3.8}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"jig"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1.00,
    },
    energy_usage = "900kW",
    ingredient_count = 6,
    animation = {
	layers = {
	{
        filename = "__pyfusionenergy__/graphics/entity/jig/off.png",
        width = 276,
        height = 268,
        frame_count = 1,
        --line_length = 10,
        --animation_speed = 1,
        shift = {0.3, -0.2}
    },
	{
        filename = "__pyfusionenergy__/graphics/entity/jig/off-mask.png",
        width = 276,
        height = 268,
        frame_count = 1,
        --line_length = 10,
        --animation_speed = 1,
        shift = {0.3, -0.2},
		tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
    }
	}
	},
    working_visualisations = {
        {
            north_position = {0.48, 0.417},
            west_position = {0.48, 0.417},
            south_position = {0.48, 0.417},
            east_position = {0.48, 0.417},
            animation = {
			layers = {
			{
                filename = "__pyfusionenergy__/graphics/entity/jig/on.png",
                frame_count = 120,
                line_length = 12,
                width = 160,
                height = 192,
                animation_speed = 0.3
			},
			{
                filename = "__pyfusionenergy__/graphics/entity/jig/on-mask.png",
                frame_count = 120,
                line_length = 12,
                width = 160,
                height = 192,
                animation_speed = 0.3,
				tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
			}
			}
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {1.8, 4.3}, {-1.2, -4.65}, {4.8, -1.7}, {-4.27, 1.3}, pipe_right),
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -4.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {1.8, 4.3}, {-1.2, -4.65}, {4.8, -1.7}, {-4.27, 1.3}, pipe_right),
            pipe_connections = {{type = "output", position = {1.5, 4.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {-1.2, 4.3}, {1.8, -4.65}, {4.8, 1.3}, {-4.27, -1.8}, pipe_left),
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -4.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {-1.2, 4.3}, {1.8, -4.65}, {4.8, 1.3}, {-4.27, -1.8}, pipe_left),
            pipe_connections = {{type = "output", position = {-1.5, 4.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/jig.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergy__/sounds/jig.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
