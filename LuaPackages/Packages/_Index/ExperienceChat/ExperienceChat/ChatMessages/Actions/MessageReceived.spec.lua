local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local ChatMessages = ExperienceChat.ExperienceChat.ChatMessages
local MessageReceived = require(ChatMessages.Actions.MessageReceived)

return function()
	describe("MessageReceived", function()
		it("should return correct action name", function()
			expect(MessageReceived.name).toEqual("MessageReceived")
		end)

		it("should return correct action type name", function()
			local action = MessageReceived({})
			expect(action.type).toEqual(MessageReceived.name)
		end)
	end)
end
