local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local ChatCommands = ExperienceChat.ExperienceChat.ChatCommands
local UnmuteUser = require(ChatCommands.Actions.UnmuteUser)

return function()
	describe("UnmuteUser", function()
		it("should return correct action name", function()
			expect(UnmuteUser.name).toEqual("UnmuteUser")
		end)

		it("should return correct action type name (UnmuteUser)", function()
			local action = UnmuteUser({})
			expect(action.type).toEqual(UnmuteUser.name)
		end)
	end)
end
