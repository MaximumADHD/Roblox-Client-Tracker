--!nonstrict
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local Utils = require(script.Parent.Utils)

function createMockDependencies()
	local dict = {}
	return {
		globalGetter = function(key)
			return dict[key]
		end,
		globalSetter = function(key, val)
			dict[key] = val
		end,
	}
end

return function()
	describe("new()", function()
		it("should throw when getter is nil", function()
			local mock = createMockDependencies()
			mock.globalGetter = nil
			local success, err = pcall(function()
				local utils = Utils:new(mock)
			end)
			expect(success).toBe(false)
		end)

		it("should throw when setter is nil", function()
			local mock = createMockDependencies()
			mock.globalSetter = nil
			local success, err = pcall(function()
				local utils = Utils:new(mock)
			end)
			expect(success).toBe(false)
		end)
	end)

	describe("isLockedOut()", function()
		it("should return false before set", function()
			local mock = createMockDependencies()
			local utils = Utils:new(mock)
			local flag = utils:isLockedOut()
			expect(flag).toBe(false)
		end)

		it("should return true after set", function()
			local mock = createMockDependencies()
			local utils = Utils:new(mock)
			utils:setLockedOut()
			local flag = utils:isLockedOut()
			expect(flag).toBe(true)
		end)
	end)
end
