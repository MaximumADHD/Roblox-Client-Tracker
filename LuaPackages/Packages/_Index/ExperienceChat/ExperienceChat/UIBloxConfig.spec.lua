local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	describe("WHEN required", function()
		beforeAll(function(c)
			c.requiredValue = require(script.Parent.UIBloxConfig)
		end)

		it("SHOULD return without issue", function(c)
			expect(c.requiredValue).never.toBeNil()
		end)
	end)
end
