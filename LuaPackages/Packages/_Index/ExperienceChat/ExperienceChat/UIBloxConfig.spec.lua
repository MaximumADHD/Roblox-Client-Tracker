local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local jest = require(ExperienceChat.Dev.Jest).Globals
local expect = jest.expect

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
