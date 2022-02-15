local Plugin = script.Parent.Parent.Parent

local Category = require(Plugin.Core.Types.Category)

local Suggestion = {}

-- TODO: CLIDEVSRVS-1740 : Improve localized toolbox suggestion

Suggestion.SUGGESTIONS = {
	{
		name = "NPC",
		search = "NPC",
	},
	{
		name = "Vehicle",
		search = "Vehicle",
	},
	{
		name = "Weapon",
		search = "Weapon",
	},
	{
		name = "Building",
		search = "Building",
	},
	{
		name = "Light",
		search = "Light",
	},
}

function Suggestion.canHaveSuggestions(searchTerm, categoryName)
	return searchTerm == "" and Category.categoryIsFreeAsset(categoryName)
end

return Suggestion
