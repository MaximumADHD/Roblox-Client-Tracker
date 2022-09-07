--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)
local UpdateChatSettings = require(script.Parent.Parent.Actions.UpdateChatSettings)
local ChatSettings = require(script.Parent.Parent.ChatSettings)

local function deepCopy(t)
	if type(t) ~= "table" then
		return t
	end

	local result = {}
	for key, value in pairs(t) do
		result[key] = deepCopy(value)
	end
	return result
end

-- If source is a subset of destination, copies over the keys from source into destination. Handles nested tables.
local function mergeInto(destination, source)
	for key, value in pairs(source) do
		if type(value) ~= "table" then
			destination[key] = value
		elseif destination[key] then
			mergeInto(destination[key], value)
		end
	end
end

local chatSettings = Rodux.createReducer(ChatSettings, {
	[UpdateChatSettings.name] = function(_, action)
		-- action.settings is of type Types.IChatSettings (see Types.lua), meaning it's a subset of the default settings
		-- table (see ChatSettings.lua). See spec file for examples.
		-- As components expect every setting to be defined, we need to merge the default settings table with
		-- action.settings to ensure no setting is missing in the settings table that we save in the store

		local result = deepCopy(ChatSettings)
		mergeInto(result, action.settings)

		-- Fill missing keys from user specific settings with their default values
		local userSpecificSettings = action.settings.UserSpecificSettings
		if userSpecificSettings then
			for key, specificSettings in pairs(userSpecificSettings) do
				local mergedSettings = deepCopy(ChatSettings)
				mergedSettings.UserSpecificSettings = nil
				mergeInto(mergedSettings, specificSettings)
				result.UserSpecificSettings[key] = mergedSettings
			end
		end

		return result
	end,
})

return chatSettings
