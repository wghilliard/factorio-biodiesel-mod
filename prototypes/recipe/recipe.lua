data:extend({
  {
    type = "recipe",
    name = "biodiesel-processing",
    category = "biodiesel-production",
    enabled = true,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="water", amount=100},
      {type="item",  name="explosives", amount=10}
    },
    results=
    {
      {type="fluid", name="biodiesel", amount=30},
    },
    icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "a"
  },
  {
      type = "recipe",
      name = "biodiesel-engine",
      enabled = true,
      energy_required = 3,
      ingredients = {{"iron-gear-wheel", 50}, {"copper-plate", 50}, {"pipe", 20}},
      result = "biodiesel-engine"
  },
  {
  type = "recipe",
  name = "algae-farm",
  energy_required = 4,
  enabled = true,
  ingredients =
  {
    {"concrete", 100},
    {"steel-plate", 50},
    {"advanced-circuit", 100},
    {"iron-gear-wheel", 100}
  },
  result = "algae-farm",
  requester_paste_multiplier= 10
},
})
