--[[
	Main reducer for all settings values.
	Saves a table of current settings and local changes.

	Changes are finally saved when the SaveChanges thunk is dispatched.
	Alternatively, they can be reset if DiscardChanges is dispatched.

	The state table:
		- Contains all settings and values under the Current key, loaded from a Settings Interface.
		- Contains a table under the Changed key, which keeps track of all changed settings.

	When saving changes, only settings in the Changed table are saved.
	When discarding changes, the Changed table is deleted.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Resources.Constants)
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local function isEqualCheck(left, right)
	left = left or {}
	right = right or {}
	if Cryo.isEmpty(left) ~= Cryo.isEmpty(right) then
		return false
	end
	for key, value in pairs(left) do
		if right[key] ~= value then
			return false
		end
	end
	for key, value in pairs(right) do
		if left[key] ~= value then
			return false
		end
	end
	return true
end

local initial = {
	current = {},
	changed = {
		name = "Untitled Game",
		creatorId = 0,
		description = "",
		genre = Constants.GENRE_IDS[1],
		playableDevices = {Computer = true, Phone = true, Tablet = true,},
	},
	errors = {},
}

return Rodux.createReducer(initial, {
	AddChange = function(state, action)
		local newValue = action.value
		if newValue == state.current[action.setting] then
			newValue = Cryo.None
		end
		if type(newValue) == "table" and isEqualCheck(newValue, state.current[action.setting]) then
			newValue = Cryo.None
		end

		return Cryo.Dictionary.join(state, {
			changed = Cryo.Dictionary.join(state.changed, {
				[action.setting] = newValue,
			}),
			errors = Cryo.Dictionary.join(state.errors, {
				[action.setting] = Cryo.None,
			}),
		})
	end,

	AddErrors = function(state, action)
		return Cryo.Dictionary.join(state, {
			errors = Cryo.Dictionary.join(state.errors, action.errors)
		})
	end,

	ResetInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			current = Cryo.Dictionary.join(state.current, action.current),
			changed = Cryo.Dictionary.join(state.changed, action.changed),
			errors = Cryo.Dictionary.join(state.errors, action.errors)
		})
	end,

})
