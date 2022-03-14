local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local ChatCommands = ExperienceChat.ExperienceChat.ChatCommands
local MuteUser = require(ChatCommands.Actions.MuteUser)

return function()
	describe("MuteUser", function()
		it("should return correct action name", function()
			expect(MuteUser.name).toEqual("MuteUser")
		end)

		it("should return correct action type name (MuteUser)", function()
			local action = MuteUser({})
			expect(action.type).toEqual(MuteUser.name)
		end)
	end)
end
