local Config = require(script.Parent.Config)

return function(initializeLibrary, name, defaultConfig)
	if typeof(name) ~= "string" then
		error("Bad argument #2 - expected a string for the name of the library")
	end
	if typeof(defaultConfig) ~= "table" then
		error("Bad argument #3 - expected a default config table for the library")
	end

	local Library = {}
	local LibraryConfig = Config.new(defaultConfig)

	function Library.init(config)
		setmetatable(Library, nil)

		if config then
			LibraryConfig.set(config)
		end

		Library.Config = LibraryConfig.get()

		local contents = initializeLibrary()
		for key, value in pairs(contents) do
			Library[key] = value
		end

		Library.init = function()
			warn(string.format("%s has already been configured", name))
		end

		return setmetatable(Library, {
			__index = function(self, key)
				local message = ("%q (%s) is not a valid member of %s"):format(
					tostring(key),
					typeof(key),
					name
				)

				error(message, 2)
			end,

			__newindex = function(self, key, value)
				local message = ("%q (%s) is not a valid member of %s"):format(
					tostring(key),
					typeof(key),
					name
				)

				error(message, 2)
			end,
		})
	end

	return setmetatable(Library, {
		__index = function(self, key)
			error(("You must call %s.init(config) before using it!"):format(name), 2)
		end,

		__newindex = function(self, key, value)
			error(("You must call %s.init(config) before using it!"):format(name), 2)
		end,
	})
end