return function()
	local Config = require(script.Parent.Config)

	local defaultConfig = {
		-- This is an example flag
		exampleFlag = false,
	}

	it("should accept valid configuration", function()
		local config = Config.new(defaultConfig)
		local values = config.get()

		expect(values.exampleFlag).to.equal(false)

		config.set({
			exampleFlag = true,
		})

		expect(values.exampleFlag).to.equal(true)
	end)

	it("should reject invalid configuration keys", function()
		local config = Config.new(defaultConfig)

		local badKey = "garblegoop"

		local ok, err = pcall(function()
			config.set({
				[badKey] = true,
			})
		end)

		expect(ok).to.equal(false)

		-- The error should mention our bad key somewhere.
		expect(err:find(badKey)).to.be.ok()
	end)

	it("should reject invalid configuration values", function()
		local config = Config.new(defaultConfig)

		local goodKey = "exampleFlag"
		local badValue = "Hello there!"

		local ok, err = pcall(function()
			config.set({
				[goodKey] = badValue,
			})
		end)

		expect(ok).to.equal(false)

		-- The error should mention both our key and value
		expect(err:find(goodKey)).to.be.ok()
		expect(err:find(badValue)).to.be.ok()
	end)
end