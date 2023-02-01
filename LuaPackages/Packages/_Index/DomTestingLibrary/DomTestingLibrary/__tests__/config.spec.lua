-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/config.js

local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local describe = JestGlobals.describe
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local configModule = require(script.Parent.Parent.config)
local configure = configModule.configure
local getConfig = configModule.getConfig

describe("configuration API", function()
	local originalConfig
	beforeEach(function()
		-- Grab the existing configuration so we can restore
		-- it at the end of the test
		configure(function(existingConfig)
			originalConfig = existingConfig -- Don't change the existing config
			return {}
		end)
	end)
	afterEach(function()
		configure(originalConfig)
	end)
	beforeEach(function()
		configure({ other = 123 })
	end)
	describe("getConfig", function()
		test("returns existing configuration", function()
			local conf = getConfig()
			expect(conf.testIdAttribute).toEqual("data-testid")
		end)
	end)
	describe("configure", function()
		test("merges a delta rather than replacing the whole config", function()
			local conf = getConfig()
			expect(conf).toMatchObject({ testIdAttribute = "data-testid" })
		end)
		test("overrides existing values", function()
			configure({ testIdAttribute = "new-id" })
			local conf = getConfig()
			expect(conf.testIdAttribute).toEqual("new-id")
		end)
		test("passes existing config out to config function", function()
			-- Create a new config key based on the value of an existing one
			configure(function(existingConfig)
				return {
					testIdAttribute = ("%s-derived"):format(tostring(existingConfig.testIdAttribute)),
				}
			end)
			local conf = getConfig() -- The new value should be there, and existing values should be
			-- untouched
			expect(conf).toMatchObject({ testIdAttribute = "data-testid-derived" })
		end)
	end)
end)

return {}
