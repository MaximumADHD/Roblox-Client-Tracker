--[[
	Exposes an interface to set global configuration values for a package.

	Configuration can only occur once, and should only be done by an application
	using this package, not a library.

	Any keys that aren't recognized will cause errors. Configuration is only
	intended for configuring the package itself, not extensions or libraries.

	Configuration is expected to be set immediately after loading the package. Setting
	configuration values after an application starts may produce unpredictable
	behavior.
]]

local Config = {}

-- Every valid configuration value should be non-nil in the config table.
function Config.new(defaultConfig)
	local self = {}
	self.defaultConfig = defaultConfig
	self.defaultConfigKeys = {}

	for key in pairs(defaultConfig) do
		table.insert(self.defaultConfigKeys, key)
	end

	self._currentConfig = setmetatable({}, {
		__index = function(_, key)
			local message = (
				"Invalid global configuration key %q. Valid configuration keys are: %s"
			):format(
				tostring(key),
				table.concat(self.defaultConfigKeys, ", ")
			)

			error(message, 3)
		end
	})

	-- We manually bind these methods here so that the Config's methods can be
	-- used without passing in self, since they could get exposed on the
	-- root object.
	self.set = function(...)
		return Config.set(self, ...)
	end

	self.get = function(...)
		return Config.get(self, ...)
	end

	self.scoped = function(...)
		return Config.scoped(self, ...)
	end

	self.set(defaultConfig)

	return self
end

function Config:set(configValues)
	-- Validate values without changing any configuration.
	-- We only want to apply this configuration if it's valid!
	for key, value in pairs(configValues) do
		if self.defaultConfig[key] == nil then
			local message = (
				"Invalid global configuration key %q (type %s). Valid configuration keys are: %s"
			):format(
				tostring(key),
				typeof(key),
				table.concat(self.defaultConfigKeys, ", ")
			)

			error(message, 3)
		end

		-- Right now, all configuration values must be boolean.
		if typeof(value) ~= "boolean" then
			local message = (
				"Invalid value %q (type %s) for global configuration key %q. Valid values are: true, false"
			):format(
				tostring(value),
				typeof(value),
				tostring(key)
			)

			error(message, 3)
		end

		self._currentConfig[key] = value
	end
end

function Config:get()
	return self._currentConfig
end

return Config