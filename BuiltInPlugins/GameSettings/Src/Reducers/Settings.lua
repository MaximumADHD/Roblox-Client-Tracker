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
local Cryo = require(Plugin.Cryo)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)
local DiscardChanges = require(Plugin.Src.Actions.DiscardChanges)
local DiscardErrors = require(Plugin.Src.Actions.DiscardErrors)

local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local fastFlags = require(Plugin.Src.Util.FastFlags)

local Scales = nil
local AssetOverrides = nil

local equalityCheckFunctions = nil

local isEqualCheck = nil

if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
        isEqualCheck = function(current, changed)
            local equal = true
            for key, value in pairs(current) do
	            if changed[key] ~= value then
		            equal = false
		            break
	            end
            end
            return equal
        end

	Scales = require(Plugin.Src.Util.Scales)
	AssetOverrides = require(Plugin.Src.Util.AssetOverrides)

	equalityCheckFunctions = {
		universeAvatarAssetOverrides = AssetOverrides.isEqual,
		universeAvatarMinScales = Scales.isEqual,
		universeAvatarMaxScales = Scales.isEqual,
	}
end

local function Settings(state, action)
	state = state or {
		Current = {},
		Changed = {},
		Errors = {},
		Warnings = {},
	}

	if action.type == AddChange.name then
		local newValue = action.value
		if state.Current[action.setting] == newValue then
			newValue = Cryo.None
		elseif type(newValue) == "table" then
		        if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
			        local isEqual = equalityCheckFunctions[action.setting] or isEqualCheck
			        if isEqual(state.Current[action.setting], newValue) then
				        newValue = Cryo.None
			        end			
		        else
			        local equal = true
			        for key, value in pairs(state.Current[action.setting]) do
				        if newValue[key] ~= value then
					        equal = false
					        break
				        end
			        end
			        if equal then
				        newValue = Cryo.None
			        end
                        end
		end

		return Cryo.Dictionary.join(state, {
			Changed = Cryo.Dictionary.join(state.Changed, {
				[action.setting] = newValue,
			}),
			Errors = Cryo.Dictionary.join(state.Errors, {
				[action.setting] = Cryo.None,
			}),
	        })

	elseif action.type == AddErrors.name then
		return Cryo.Dictionary.join(state, {
			Errors = Cryo.Dictionary.join(state.Errors, action.errors)
		})

	elseif action.type == DiscardChanges.name then
		return Cryo.Dictionary.join(state, {
			Changed = {},
		})

	elseif action.type == DiscardErrors.name then
		return Cryo.Dictionary.join(state, {
			Errors = {},
			Warnings = {},
		})

	elseif action.type == SetCurrentSettings.name then
		return Cryo.Dictionary.join(state, {
			Current = action.settings,
		})

	elseif action.type == AddWarning.name then
		if not Cryo.List.find(state.Warnings, action.key) then
			return Cryo.Dictionary.join(state, {
				Warnings = Cryo.List.join(state.Warnings, {action.key})
			})
		end

	elseif action.type == DiscardWarning.name then
		return Cryo.Dictionary.join(state, {
			Warnings = Cryo.List.removeValue(state.Warnings, action.key)
		})
	end

	return state
end

return Settings