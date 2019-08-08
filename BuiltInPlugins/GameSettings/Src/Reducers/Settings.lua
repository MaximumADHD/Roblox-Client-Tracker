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
local AddTableChange = require(Plugin.Src.Actions.AddTableChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local AddTableErrors = require(Plugin.Src.Actions.AddTableErrors)
local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)
local DiscardChanges = require(Plugin.Src.Actions.DiscardChanges)
local DiscardErrors = require(Plugin.Src.Actions.DiscardErrors)
local DiscardTableErrors = require(Plugin.Src.Actions.DiscardTableErrors)
local DiscardTableChange = require(Plugin.Src.Actions.DiscardTableChange)

local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local DeepMergeTables = require(Plugin.Src.Util.DeepMergeTables)

local Scales = require(Plugin.Src.Util.Scales)
local AssetOverrides = require(Plugin.Src.Util.AssetOverrides)

local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")

local equalityCheckFunctions = {
	universeAvatarAssetOverrides = AssetOverrides.isEqual,
	universeAvatarMinScales = Scales.isEqual,
	universeAvatarMaxScales = Scales.isEqual,
}

local function isEqualCheck(current, changed)
	if current == nil or changed == nil then
		return current == changed
	end
	if isEmpty(current) ~= isEmpty(changed) then
		return false
	end

	local equal = true
	for key, value in pairs(current) do
		if changed[key] ~= value then
			equal = false
			break
		end
	end
	for key, value in pairs(changed) do
		if current[key] ~= value then
			equal = false
			break
		end
	end
	return equal
end

local function createDeepTableAndSetValue(keys, value)
	local table = {}

	local currTable = table
	for i = 1, #keys - 1 do
		currTable[keys[i]] = {}
		currTable = currTable[keys[i]]
	end
	currTable[keys[#keys]] = value

	return table
end

local function getDeepValue(table, keys)
	local currValue = table

	for _,key in ipairs(keys) do
		if currValue[key] == nil then
			return nil
		end
		currValue = currValue[key]
	end

	return currValue
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
			local isEqual = equalityCheckFunctions[action.setting] or isEqualCheck
			if isEqual(state.Current[action.setting], newValue) then
				newValue = Cryo.None
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

	elseif DFFlagDeveloperSubscriptionsEnabled and action.type == AddTableChange.name then
		local newValue = action.value

		local currValue = getDeepValue(state.Current, action.keys)
        if currValue == newValue then
			newValue = DeepMergeTables.None
		elseif type(newValue) == "table" then
			-- TODO: find a nice way of setting the equality function, didn't need it at the time
			-- local isEqual = equalityCheckFunctions[action.setting] or isEqualCheck
			
			-- TODO: Deep equal?
            if isEqualCheck(currValue, newValue) then
				newValue = DeepMergeTables.None
			end
		end

		local changed = createDeepTableAndSetValue(action.keys, newValue)

		local errors = nil
		if getDeepValue(state.Errors, action.keys) then
			errors = createDeepTableAndSetValue(action.keys, DeepMergeTables.None)
		end

		return Cryo.Dictionary.join(state, {
			Changed = DeepMergeTables.Merge(state.Changed, changed) or {},
			Errors = DeepMergeTables.Merge(state.Errors, errors) or {},
        })

	elseif action.type == AddErrors.name then
		return Cryo.Dictionary.join(state, {
			Errors = Cryo.Dictionary.join(state.Errors, action.errors)
        })
        
    elseif DFFlagDeveloperSubscriptionsEnabled and action.type == AddTableErrors.name then
		local errors = createDeepTableAndSetValue(action.keys, action.errors)

		return Cryo.Dictionary.join(state, {
			Errors = DeepMergeTables.Merge(state.Errors, errors) or {},
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

	elseif DFFlagDeveloperSubscriptionsEnabled and action.type == DiscardTableErrors.name then
		local errors = createDeepTableAndSetValue(action.keys, DeepMergeTables.None)

		return Cryo.Dictionary.join(state, {
			Errors = DeepMergeTables.Merge(state.Errors, errors) or {},
		})
		
	elseif DFFlagDeveloperSubscriptionsEnabled and action.type == DiscardTableChange.name then
		local changed = createDeepTableAndSetValue(action.keys, DeepMergeTables.None)

		local errors = nil
		if getDeepValue(state.Errors, action.keys) then
			errors = createDeepTableAndSetValue( action.keys, DeepMergeTables.None)
		end

		return Cryo.Dictionary.join(state, {
			Changed = DeepMergeTables.Merge(state.Changed, changed) or {},
			Errors = DeepMergeTables.Merge(state.Errors, errors) or {},
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
