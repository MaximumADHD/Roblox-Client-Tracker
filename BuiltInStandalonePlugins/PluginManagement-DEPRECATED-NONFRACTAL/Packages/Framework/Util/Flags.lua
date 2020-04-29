--[[
	Fast flag wrapping system.
	Used to define all flags for a plugin at the top level.

	function Flags.new(featuresMap): Takes a table mapping feature names to
		flag names, and loads the value for each flag name or creates a
		new flag at that name. Constructs and returns a new Flags instance
		with the feature names mapping to their respective flag values.
		Also allows feature names to map to arrays of flag names, to support dependencies.

	function Flags:get(key): Gets the value for the flag at the current
		feature name, taking into account local overrides for testing.

	function Flags:setLocalOverride(key, value): Sets the local override for the
		flag at the given feature name to the given value.

	function Flags:clearLocalOverride(key): Clears the local override for the
		flag at the given feature name.

	function Flags:setLocalOverrides(value): Sets the local override for all flags
		to the given value.

	function Flags:clearLocalOverrides(): Clears all local overrides so that 'get'
		will return the actual value for all features.

	Example:
		local FastFlags = Flags.new({
			TextBoxFix = "FixBrokenTextBoxes",
			FocusScrolling = "EnableFocusScrolling",
			BigFeature = {
				"BigFeatureEnabled",
				"BigFeatureBugfix1",
				"BigFeatureOtherBugfix",
			},
		})
]]

local featureUndefinedError = [[
`%s` was not defined as a feature name.]]

local featuresMapError = [[
"Flags.new expects a table mapping keys to flag names."]]

local Immutable = require(script.Parent.Immutable)

local Flags = {}
Flags.__index = Flags

local function assertFeaturesMap(featuresMap)
	assert(type(featuresMap) == "table", featuresMapError)
end

local function getFastFlag(flagName)
	local value = game:GetFastFlag(flagName)
	if value ~= nil then
		return value
	else
		game:DefineFastFlag(flagName, false)
		return false
	end
end

function Flags.new(featuresMap)
	assertFeaturesMap(featuresMap)
	local values = {}
	for key, item in pairs(featuresMap) do
		if type(item) == "table" then
			local isOn = true
			for _, name in ipairs(item) do
				if not getFastFlag(name) then
					isOn = false
					break
				end
			end
			values[key] = isOn
		else
			values[key] = getFastFlag(item)
		end
	end

	local self = {
		values = values,
		localOverrides = {},
	}

	setmetatable(self, Flags)
	return self
end

function Flags:get(key)
	self:__assertKeyExists(key)
	local localOverride = self.localOverrides[key]
	if localOverride ~= nil then
		return localOverride
	else
		return self.values[key]
	end
end

function Flags:setLocalOverride(key, value)
	self:__assertKeyExists(key)
	self.localOverrides = Immutable.JoinDictionaries(self.localOverrides, {
		[key] = value,
	})
end

function Flags:clearLocalOverride(key)
	self:__assertKeyExists(key)
	self.localOverrides = Immutable.RemoveFromDictionary(self.localOverrides, key)
end

function Flags:setLocalOverrides(value)
	for key, _ in pairs(self.values) do
		self:setLocalOverride(key, value)
	end
end

function Flags:clearLocalOverrides()
	self.localOverrides = {}
end

function Flags:__assertKeyExists(key)
	assert(self.values[key] ~= nil, string.format(featureUndefinedError, key))
end

function Flags.__mock(featuresMap)
	assertFeaturesMap(featuresMap)
	local values = {}
	for key, _ in pairs(featuresMap) do
		values[key] = false
	end

	local self = {
		values = values,
		localOverrides = {},
	}

	setmetatable(self, Flags)
	return self
end

return Flags
