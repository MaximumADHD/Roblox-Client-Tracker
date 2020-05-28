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
	}
}

-- TODO rename categoryKey to categoryName when FFlagUseCategoryNameInToolbox is retired
function Suggestion.canHaveSuggestions(searchTerm, categoryKey)
	return searchTerm == "" and Category.categoryIsFreeAsset(categoryKey)
end

return Suggestion
