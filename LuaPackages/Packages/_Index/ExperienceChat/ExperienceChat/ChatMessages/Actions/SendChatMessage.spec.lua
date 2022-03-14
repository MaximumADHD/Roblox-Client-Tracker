local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local ChatMessages = ExperienceChat.ExperienceChat.ChatMessages
local SendChatMessage = require(ChatMessages.Actions.SendChatMessage)

return function()
	describe("SendChatMessage", function()
		it("should return correct action name", function()
			expect(SendChatMessage.name).toEqual("SendChatMessage")
		end)

		it("should return correct action type name", function()
			local mockTextChatMessage = {
				TextChannel = {
					Name = "textChannelName",
				},
				MessageId = "messageId",
				TextSource = {
					UserId = 1,
				},
				Text = "sample text",
			}
			local action = SendChatMessage(mockTextChatMessage)
			expect(action.type).toEqual(SendChatMessage.name)
		end)
	end)
end
