require("functions/functions")

data.raw.item["landfill"].stack_size = 1000

data.raw.recipe["landfill"].ingredients={{type="item", name="stone", amount=5}}

data.raw.recipe["tailings-copper-iron"].ingredients[1].amount=50

data.raw.recipe["tailings-borax-niobium"].ingredients[1].amount=50

for k, result in ipairs(data.raw.recipe["tailings-copper-iron"].results) do

	--log(data.raw.recipe["tailings-copper-iron"].results[k].name)

	if data.raw.recipe["tailings-copper-iron"].results[k].name == "copper-ore" then
	
		data.raw.recipe["tailings-copper-iron"].results[k].amount = 10
		data.raw.recipe["tailings-copper-iron"].results[k].probability = 1
		
	end
	
	if data.raw.recipe["tailings-copper-iron"].results[k].name == "iron-ore" then
	
		data.raw.recipe["tailings-copper-iron"].results[k].amount = 10
		data.raw.recipe["tailings-copper-iron"].results[k].probability = 1
		
	end
	
end

for k, result in ipairs(data.raw.recipe["tailings-borax-niobium"].results) do

	--log(data.raw.recipe["tailings-copper-iron"].results[k].name)

	if data.raw.recipe["tailings-borax-niobium"].results[k].name == "niobium-ore" then
	
		data.raw.recipe["tailings-borax-niobium"].results[k].amount = 10
		data.raw.recipe["tailings-borax-niobium"].results[k].probability = 1
		
	end
	
	if data.raw.recipe["tailings-borax-niobium"].results[k].name == "raw-borax" then
	
		data.raw.recipe["tailings-borax-niobium"].results[k].amount = 10
		data.raw.recipe["tailings-borax-niobium"].results[k].probability = 1
		
	end
	
end

data.raw.recipe["quenching-tower"].ingredients[4] = nil

data.raw["furnace"]["py-sinkhole"].crafting_speed = 10

data:extend
(
{
	{
	type = "recipe",
	name = "soil-to-stone",
	category = "washer",
    enabled = true,
    energy_required = 4,
	ingredients =
		{
			{type = "item", name = "soil", amount = 25},
			{type = "fluid", name = "water", amount = 400}
		},
	results = 
		{
			{type = "item", name = "stone", amount = 10},
			{type = "fluid", name = "dirty-water", amount = 50}
		},
	main_product = "stone",
	icon = "__pycoalprocessing__/graphics/icons/soil-washer.png",
    icon_size = 32,
    subgroup = "py-washer",
    order = "c"
	},
	{
	type = "recipe",
	name = "coaldust-to-diamond",
	category = "hpf",
	enabled = false,
	energy_required = 10,
	ingredients = 
		{
			{
			type = "item", name = "coal-dust", amount = 20
			}
		},
	results = 
		{
			{
			type = "item", name = "kimberlite-rock", amount = 1
			}
		},
	icon = "__pyfusionenergy__/graphics/icons/ores/kimberlite-rock.png",
	icon_size = 32,
	subgroup = "py-fusion-recipes",
    order = "h"
	},
	{
	type = "recipe",
    name = "tailings-tin-alum",
    localised_name = {"recipe-name.tailings-ore-extraction", {"item-name.ore-tin"}, {"item-name.ore-aluminium"}, {"fluid-name.tar"}},
    category = "quenching-tower",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "tar", amount = 200},
        {type = "fluid", name = "dirty-water", amount = 500}
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 100},
        {type = "fluid", name = "flue-gas", amount = 300},
        {type = "fluid", name = "water-saline", amount = 200},
		{type = "item", name = "ore-tin", amount = 10},
		{type = "item", name = "ore-aluminium", amount = 10}
    },
    icons = {
        {icon = "__pycoalprocessing__/graphics/icons/dirty-water.png", icon_size = 32}
    },
    icon_size = 32,
    subgroup = "py-quenching-ores",
    order = "tailings-a"
	},
	--TODO:finish sand to quartz recipe.
	--[[
	{
	type = "recipe",
	name = "sand-quartz-sifting",
	}
	]]--
}
)

RECIPE("bio-reactor"):replace_ingredient('super-alloy','boron')
RECIPE("bio-reactor"):replace_ingredient('gasturbinemk02','gasturbinemk01')