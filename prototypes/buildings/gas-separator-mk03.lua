RECIPE {
    type = "recipe",
    name = "gas-separator-mk03",
    energy_required = 15,
    enabled = false,
    ingredients = {
                {'gas-separator-mk02', 1},
                --{'titanium-plate', 20},
                --{'stainless-steel', 20},
                --{'tin-plate', 20},
                {'processing-unit', 10}
            },
    results = {
        {"gas-separator-mk03", 1}
    }
}

ITEM {
    type = "item",
    name = "gas-separator-mk03",
    icon = "__pyfusionenergy__/graphics/icons/gas-separator-mk03.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk03",
    order = "c",
    place_result = "gas-separator-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "gas-separator-mk03",
    icon = "__pyfusionenergy__/graphics/icons/gas-separator-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "gas-separator-mk03"},
    fast_replaceable_group = "gas-separator",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-separator"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1.00,
    },
    energy_usage = "1450kW",
    ingredient_count = 5,
    animation = {
		layers = {
			{
			filename = "__pyfusionenergy__/graphics/entity/gas-separator/off.png",
			width = 241,
			height = 265,
			frame_count = 1,
			--animation_speed = 0.5,
			shift = {0.2, -0.635}
			},
			{
			filename = "__pyfusionenergy__/graphics/entity/gas-separator/off-mask.png",
			width = 241,
			height = 265,
			frame_count = 1,
			--animation_speed = 0.5,
			shift = {0.2, -0.635},
			tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
			}
		}
    },
    working_visualisations = {
        {
            north_position = {0.2, -0.635},
            west_position = {0.2, -0.635},
            south_position = {0.2, -0.635},
            east_position = {0.2, -0.635},
            animation = {
				layers = {
					{
                filename = "__pyfusionenergy__/graphics/entity/gas-separator/on.png",
                frame_count = 50,
                width = 241,
                height = 265,
                line_length = 8,
                animation_speed = 0.3
				},
				{
                filename = "__pyfusionenergy__/graphics/entity/gas-separator/on-mask.png",
                frame_count = 50,
                width = 241,
                height = 265,
                line_length = 8,
                animation_speed = 0.3,
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
				}
			}
            }
        }
    },
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, -4.0}}}
        },
        --North2
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -4.0}}}
        },
        --North3
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -4.0}}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 4.0}}}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/gas-separator.ogg"},
        idle_sound = {filename = "__pyfusionenergy__/sounds/gas-separator.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
