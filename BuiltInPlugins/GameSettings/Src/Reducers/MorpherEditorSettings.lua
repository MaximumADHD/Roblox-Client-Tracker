local Plugin = script.Parent.Parent.Parent

local SettingsSaveScaleBoundaries = require(Plugin.Src.Actions.SettingsSaveScaleBoundaries)
local SettingsSetFetchingScaleBoundaries = require(Plugin.Src.Actions.SettingsSetFetchingScaleBoundaries)

return function(state, action)
	state = state or {
		scaleBoundaries = {
			isFetching=false,
			boundaries = {
				height = {min=0.9, max=1.05, increment=0.05},
				width = {min=0.7, max=1, increment=0.05},
				head = {min=0.95, max=1, increment=0.05},
				bodyType = {min=0, max=0.3, increment=0.05},
				proportion = {min=0, max=1, increment=0.05},
			}
		}
	}

    if action.type == SettingsSetFetchingScaleBoundaries.name then
		return {
			scaleBoundaries = {
				isFetching = action.currentlyFetching,
				boundaries = state.scaleBoundaries.boundaries
			}
		}
	elseif action.type == SettingsSaveScaleBoundaries.name then
		return {
			scaleBoundaries = {
				isFetching = state.scaleBoundaries.isFetching,
				boundaries = action.rulesData.scales
			}
		}
	end

	return state
end