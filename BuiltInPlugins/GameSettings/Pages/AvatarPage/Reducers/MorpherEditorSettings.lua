local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

-- TODO In the future this should be a constant but we don't have enough testing against this
-- and it's extremely easy for someone to modify part of the deep table externally and dirty the default
local function getDefaultState()
	return {
		scaleBoundaries = {
			boundaries = {}
		},
	}
end

return Rodux.createReducer(getDefaultState(), {
	ResetStore = function(state, action)
		return getDefaultState()
	end,

	SettingsSaveScaleBoundaries = function(state, action)
		return Cryo.Dictionary.join(state, {
			scaleBoundaries = Cryo.Dictionary.join(state.scaleBoundaries, {
				boundaries = action.rulesData.scales,
			}),
		})
	end
})