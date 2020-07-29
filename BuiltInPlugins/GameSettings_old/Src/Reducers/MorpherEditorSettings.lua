local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

-- TODO In the future this should be a constant but we don't have enough testing against this
-- and it's extremely easy for someone to modify part of the deep table externally and dirty the default
local function getDefaultState()
	return {
		scaleBoundaries = {
			isFetching = false,
			boundaries = {
				height = {min=0.9, max=1.05, increment=0.05},
				width = {min=0.7, max=1, increment=0.05},
				head = {min=0.95, max=1, increment=0.05},
				bodyType = {min=0, max=0.3, increment=0.05},
				proportion = {min=0, max=1, increment=0.05},
			}
		}
	}
end

return Rodux.createReducer(getDefaultState(), {
	ResetStore = function(state, action)
		return getDefaultState()
	end,

	SettingsSetFetchingScaleBoundaries = function(state, action)
		return Cryo.Dictionary.join(state, {
			scaleBoundaries = Cryo.Dictionary.join(state.scaleBoundaries, {
				isFetching = action.currentlyFetching,
			}),
		})
	end,

	SettingsSaveScaleBoundaries = function(state, action)
		return Cryo.Dictionary.join(state, {
			scaleBoundaries = Cryo.Dictionary.join(state.scaleBoundaries, {
				boundaries = action.rulesData.scales,
			}),
		})
	end
})
