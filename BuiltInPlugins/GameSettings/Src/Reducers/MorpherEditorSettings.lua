local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

-- TODO In the future this should be a constant but we don't have enough testing against this
-- and it's extremely easy for someone to modify part of the deep table externally and dirty the default
local function getDefaultState()
	if game:GetFastFlag("GameSettingsNetworkRefactor") then
		return {
			scaleBoundaries = {
				boundaries = {}
			},
		}
	else
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
end

if game:GetFastFlag("StudioGameSettingsResetStoreAction2") then
	return Rodux.createReducer(getDefaultState(), {
		ResetStore = function(state, action)
			return getDefaultState()
		end,

		SettingsSetFetchingScaleBoundaries = function(state, action)
			if game:GetFastFlag("GameSettingsNetworkRefactor") then return state end
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
else
	local SettingsSaveScaleBoundaries = require(Plugin.Src.Actions.SettingsSaveScaleBoundaries)
	local SettingsSetFetchingScaleBoundaries = require(Plugin.Src.Actions.DEPRECATED_SettingsSetFetchingScaleBoundaries)

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

		if action.type == SettingsSetFetchingScaleBoundaries.name and not game:GetFastFlag("GameSettingsNetworkRefactor") then
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
end