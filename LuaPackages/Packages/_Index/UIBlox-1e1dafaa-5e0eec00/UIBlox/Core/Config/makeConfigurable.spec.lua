return function()
	local makeConfigurable = require(script.Parent.makeConfigurable)

	local name = "Library"

	-- Function provide by a library that returns the API
	local function initializeLibrary()
		return {
			someAPI = function()
				return true
			end
		}
	end

	local defaultConfig = {
		-- This is an example flag
		exampleFlag = false,
		-- This is another example flag
		anotherExampleFlag = false,
	}

	local config = {
		-- This is an example flag
		["exampleFlag"] = true,
	}

	it("should require a name", function()
		local ok = pcall(function()
			makeConfigurable(initializeLibrary, nil, defaultConfig)
		end)

		expect(ok).to.equal(false)
	end)

	it("should require a default config", function()
		local ok = pcall(function()
			makeConfigurable(initializeLibrary, name, nil)
		end)

		expect(ok).to.equal(false)
	end)

	it("should have an init function", function()
		local Library = makeConfigurable(initializeLibrary, name, defaultConfig)

		expect(typeof(Library.init)).to.equal("function")
	end)

	it("should not have loaded its API before calling init", function()
		local Library = makeConfigurable(initializeLibrary, name, defaultConfig)

		local ok = pcall(function()
			Library.someAPI()
		end)

		expect(ok).to.equal(false)
	end)

	it("should not require a config when calling init", function()
		local Library = makeConfigurable(initializeLibrary, name, defaultConfig)

		local ok = pcall(function()
			Library.init()
		end)

		expect(ok).to.equal(true)
	end)

	it("should have a loaded config after calling init", function()
		local Library = makeConfigurable(initializeLibrary, name, defaultConfig)
		Library.init(config)

		expect(Library.Config).to.be.ok()
		expect(Library.Config.exampleFlag).to.equal(true)
		expect(Library.Config.anotherExampleFlag).to.equal(false)
	end)

	it("should have a loaded API after calling init", function()
		local Library = makeConfigurable(initializeLibrary, name, defaultConfig)
		Library.init(config)

		expect(typeof(Library.someAPI)).to.equal("function")
		expect(Library.someAPI()).to.equal(true)
	end)
end