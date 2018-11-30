local Plugin = script.Parent.Parent.Parent

local Category = require(Plugin.Core.Types.Category)

local FFlagStudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")
local FFlagHideSearchStringInToolboxMainViewHeader = settings():GetFFlag("HideSearchStringInToolboxMainViewHeader")

local Suggestion = {}

-- TODO: CLIDEVSRVS-1740 : Improve localized toolbox suggestion

if FFlagStudioLuaWidgetToolboxV2 then
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
else
	Suggestion.SUGGESTIONS = {
		"NPC",
		"Vehicle",
		"Weapon",
		"Building",
		"Light",
	}
end

function Suggestion.canHaveSuggestions(searchTerm, categoryIndex)
	if FFlagHideSearchStringInToolboxMainViewHeader then
		return false
	end
	return searchTerm == "" and Category.categoryIsFreeAsset(categoryIndex)
end

return Suggestion
