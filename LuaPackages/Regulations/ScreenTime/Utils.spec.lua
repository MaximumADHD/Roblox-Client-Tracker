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
			success, err = pcall(function()
				local utils = Utils:new(mock)
			end)
			expect(success).to.equal(false)
		end)

		it("should throw when setter is nil", function()
			local mock = createMockDependencies()
			mock.globalSetter = nil
			success, err = pcall(function()
				local utils = Utils:new(mock)
			end)
			expect(success).to.equal(false)
		end)
	end)

	describe("isLockedOut()", function()
		it("should return false before set", function()
			local mock = createMockDependencies()
			local utils = Utils:new(mock)
			local flag = utils:isLockedOut()
			expect(flag).to.equal(false)
		end)

		it("should return true after set", function()
			local mock = createMockDependencies()
			local utils = Utils:new(mock)
			utils:setLockedOut()
			local flag = utils:isLockedOut()
			expect(flag).to.equal(true)
		end)
	end)
end
