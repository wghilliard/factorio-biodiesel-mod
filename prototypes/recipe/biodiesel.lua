data:extend({
  {
    type = "recipe",
    name = "biodisiel-processing",
    category = "crafting-with-fluid",
    enabled = true,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="water", amount=100},
      {type="item",  name="explosives", amount=10}
    },
    results=
    {
      {type="fluid", name="biodesiel", amount=30},
    },
    icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "a"
  }})
