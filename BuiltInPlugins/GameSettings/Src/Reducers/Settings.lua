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
local Rodux = require(Plugin.Rodux)

local isEmpty = require(Plugin.Src.Util.isEmpty)
local DeepMergeTables = require(Plugin.Src.Util.DeepMergeTables)

local Scales = require(Plugin.Src.Util.Scales)
local AssetOverrides = require(Plugin.Src.Util.AssetOverrides)

local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")
local FFlagFixWarningsInGameSettings = game:DefineFastFlag("FixWarningsInGameSettings", false)

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

local function getTableValue(table, tableName, tableKey, valueKey)
	if table ~= nil and table[tableName] ~= nil then
		if valueKey ~= nil then
			if table[tableName][tableKey] ~= nil then
				return table[tableName][tableKey][valueKey]
			end
		else
			return table[tableName][tableKey]
		end
	end
	return nil
end

-- TODO In the future this should be a constant but we don't have enough testing against this file
-- and it's extremely easy for someone to directly modify the store and dirty the default
local function getDefaultState()
	return {
		Current = {},
		Changed = {},
		Errors = {},
		Warnings = {},
	}
end

return Rodux.createReducer(getDefaultState(), {
	ResetStore = function(state, action)
		return getDefaultState()
	end,

	AddChange = function(state, action)
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
	end,

	AddTableChange = DFFlagDeveloperSubscriptionsEnabled and function(state, action)
		local newValue = action.value

		local currValue = getTableValue(state.Current, action.tableName, action.tableKey)
		if currValue == newValue then
			newValue = Cryo.None
		elseif type(newValue) == "table" then
			if isEqualCheck(currValue, newValue) then
				newValue = Cryo.None
			end
		end

		local changed = {
			[action.tableName] = {
				[action.tableKey] = newValue
			}
		}

		local errors = nil
		if getTableValue(state.Errors, action.tableName, action.tableKey) ~= nil then
			errors = {
				[action.tableName] = {
					[action.tableKey] = Cryo.None
				}
			}
		end

		return Cryo.Dictionary.join(state, {
			Changed = DeepMergeTables.Merge(state.Changed, changed) or {},
			Errors = DeepMergeTables.Merge(state.Errors, errors) or {},
		})
	end or nil,

	AddTableKeyChange = DFFlagDeveloperSubscriptionsEnabled and function(state, action)
		local newValue = action.value

		local currValue = getTableValue(state.Current, action.tableName, action.tableKey, action.valueKey)
		if currValue == newValue then
			newValue = Cryo.None
		elseif type(newValue) == "table" then
			if isEqualCheck(currValue, newValue) then
				newValue = Cryo.None
			end
		end

		local changed = {
			[action.tableName] = {
				[action.tableKey] = {
					[action.valueKey] = newValue
				}
			}
		}

		local errors = nil
		if getTableValue(state.Errors, action.tableName, action.tableKey, action.valueKey) ~= nil then
			errors = {
				[action.tableName] = {
					[action.tableKey] = {
						[action.valueKey] = Cryo.None
					}
				}
			}
		end

		return Cryo.Dictionary.join(state, {
			Changed = DeepMergeTables.Merge(state.Changed, changed) or {},
			Errors = DeepMergeTables.Merge(state.Errors, errors) or {},
		})
	end or nil,

	AddErrors = function(state, action)
		return Cryo.Dictionary.join(state, {
			Errors = Cryo.Dictionary.join(state.Errors, action.errors)
		})
	end,

	DiscardError = function(state, action)
		return Cryo.Dictionary.join(state, {
			Errors = Cryo.Dictionary.join(state.Errors, {
				[action.error] = Cryo.None,
			}),
		})
	end,

	AddTableKeyErrors = DFFlagDeveloperSubscriptionsEnabled and function(state, action)
		return Cryo.Dictionary.join(state, {
			Errors = DeepMergeTables.Merge(state.Errors, {
				[action.tableName] = {
					[action.tableKey] = {
						[action.valueKey] = action.errors
					}
				}
			}) or {},
		})
	end or nil,

	DiscardChanges = function(state, action)
		return Cryo.Dictionary.join(state, {
			Changed = {},
		})
	end,

	DiscardErrors = function(state, action)
		return Cryo.Dictionary.join(state, {
			Errors = {},
			Warnings = {},
		})
	end,

	DiscardTableErrors = DFFlagDeveloperSubscriptionsEnabled and function(state, action)
		return Cryo.Dictionary.join(state, {
			Errors = DeepMergeTables.Merge(state.Errors, {
				[action.tableName] = {
					[action.tableKey] = Cryo.None,
				},
			}) or {},
		})
	end or nil,

	DiscardTableKeyErrors = DFFlagDeveloperSubscriptionsEnabled and function(state, action)
		return Cryo.Dictionary.join(state, {
			Errors = DeepMergeTables.Merge(state.Errors, {
				[action.tableName] = {
					[action.tableKey] = {
						[action.valueKey] = Cryo.None,
					},
				},
			}) or {},
		})
	end or nil,

	DiscardTableChanges = DFFlagDeveloperSubscriptionsEnabled and function(state, action)
		local changed = {
			[action.tableName] = {
				[action.tableKey] = Cryo.None,
			},
		}

		local errors = nil
		if getTableValue(state.Errors, action.tableName, action.tableKey) ~= nil then
			errors = {
				[action.tableName] = {
					[action.tableKey] = Cryo.None,
				},
			}
		end

		return Cryo.Dictionary.join(state, {
			Changed = DeepMergeTables.Merge(state.Changed, changed) or {},
			Errors = DeepMergeTables.Merge(state.Errors, errors) or {},
		})
	end or nil,

	DiscardTableKeyChanges = DFFlagDeveloperSubscriptionsEnabled and function(state, action)
		local changed = {
			[action.tableName] = {
				[action.tableKey] = {
					[action.valueKey] = Cryo.None,
				},
			},
		}

		local errors = nil
		if getTableValue(state.Errors, action.tableName, action.tableKey, action.valueKey) ~= nil then
			errors = {
				[action.tableName] = {
					[action.tableKey] = {
						[action.valueKey] = Cryo.None
					}
				}
			}
		end

		return Cryo.Dictionary.join(state, {
			Changed = DeepMergeTables.Merge(state.Changed, changed) or {},
			Errors = DeepMergeTables.Merge(state.Errors, errors) or {},
		})
	end or nil,

	SetCurrentSettings = function(state, action)
		return Cryo.Dictionary.join(state, {
			Current = action.settings,
		})
	end,

	AppendSettings = function(state, action)
		return Cryo.Dictionary.join(state, {
			Current = Cryo.Dictionary.join(state.Current, action.settings),
		})
	end,

	AddWarning = function(state, action)
		if FFlagFixWarningsInGameSettings then
			if not Cryo.List.find(state.Warnings, action.key) then
				return Cryo.Dictionary.join(state, {
					Warnings = Cryo.List.join(state.Warnings, {action.key})
				})
			else
				return state
			end
		else
			if not Cryo.List.find(state.Warnings, action.key) then
				return Cryo.Dictionary.join(state, {
					Warnings = Cryo.List.join(state.Warnings, {action.key})
				})
			end
		end
	end,

	DiscardWarning = function(state, action)
		return Cryo.Dictionary.join(state, {
			Warnings = Cryo.List.removeValue(state.Warnings, action.key)
		})
	end,
})