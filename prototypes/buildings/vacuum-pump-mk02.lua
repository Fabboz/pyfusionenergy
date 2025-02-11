local pipes = {
    south = {
        filename = "__pyfusionenergy__/graphics/entity/vacuum-pump/bottom.png",
        priority = "extra-high",
        width = 110,
        height = 148
    }
}

RECIPE {
    type = "recipe",
    name = "vacuum-pump-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"vacuum-pump-mk01", 1},
        {"steel-plate", 10},
        {"electronic-circuit", 10},
        {"iron-gear-wheel", 10},
        {"pipe", 10}
    },
    results = {
        {"vacuum-pump-mk02", 1}
    }
}

ITEM {
    type = "item",
    name = "vacuum-pump-mk02",
    icon = "__pyfusionenergy__/graphics/icons/vacuum-pump-mk02.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk02",
    order = "c",
    place_result = "vacuum-pump-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "vacuum-pump-mk02",
    icon = "__pyfusionenergy__/graphics/icons/vacuum-pump-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "vacuum-pump-mk02"},
    fast_replaceable_group = "vacuum-pump",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"vacuum"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1.00,
    },
    energy_usage = "300kW",
    ingredient_count = 1,
    animation = {
	layers = {
		{
        filename = "__pyfusionenergy__/graphics/entity/vacuum-pump/vacuum-pump.png",
        width = 110,
        height = 148,
        frame_count = 20,
        line_length = 5,
        animation_speed = 1,
        shift = {0.187, -0.656}
		},
		{
        filename = "__pyfusionenergy__/graphics/entity/vacuum-pump/vacuum-pump-mask.png",
        width = 110,
        height = 148,
        frame_count = 20,
        line_length = 5,
        animation_speed = 1,
        tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
        shift = {0.187, -0.656}
		}
		}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.18, -2.6}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -2.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.18, -2.6}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 2.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/vacuum-pump.ogg", volume = 0.8},
        idle_sound = {filename = "__pyfusionenergy__/sounds/vacuum-pump.ogg", volume = 0.40},
        apparent_volume = 2.5
    }
}
