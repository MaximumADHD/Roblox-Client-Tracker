local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(c)
		c.mapDispatchToProps = require(script.Parent.mapDispatchToProps)
	end)

	it("SHOULD return a function", function(c)
		expect(type(c.mapDispatchToProps)).toEqual("function")
	end)

	describe("WHEN called", function()
		beforeAll(function(c)
			c.returnValue = c.mapDispatchToProps(function() end)
		end)

		it("SHOULD return a table", function(c)
			expect(type(c.returnValue)).toEqual("table")
		end)

		it("SHOULD have the expected fields", function(c)
			expect(c.returnValue.onSendChat).never.toBeNil()
			expect(c.returnValue.activateWhisperMode).never.toBeNil()
			expect(c.returnValue.resetTargetChannel).never.toBeNil()
		end)

		it("SHOULD run without any errors", function(c)
			expect(c.returnValue.onSendChat("test")).toBeNil()
			expect(c.returnValue.activateWhisperMode(1)).toBeNil()
			expect(c.returnValue.resetTargetChannel()).toBeNil()
		end)
	end)
end
