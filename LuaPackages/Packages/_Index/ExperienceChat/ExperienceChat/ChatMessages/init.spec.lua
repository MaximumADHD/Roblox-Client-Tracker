local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect

return function()
	it("SHOULD return a table", function()
		local ChatMessages = require(script.Parent)
		expect(type(ChatMessages)).toEqual("table")

		it("SHOULD expose actions", function()
			expect(ChatMessages.Actions).never.toBeNil()
		end)
	end)
end
