local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local ChatVisibility = ExperienceChat.ExperienceChat.ChatVisibility
local TextChatServiceChatWindowPropertyChanged = require(
	ChatVisibility.Actions.TextChatServiceChatWindowPropertyChanged
)

return function()
	describe("TextChatServiceChatWindowPropertyChanged", function()
		it("should return correct action name", function()
			expect(TextChatServiceChatWindowPropertyChanged.name).toEqual("TextChatServiceChatWindowPropertyChanged")
		end)

		it("should return correct action type name", function()
			local action = TextChatServiceChatWindowPropertyChanged(true)
			expect(action.type).toEqual(TextChatServiceChatWindowPropertyChanged.name)
		end)

		it("should return correct action isVisible", function()
			local action = TextChatServiceChatWindowPropertyChanged(true)
			expect(action.isVisible).toEqual(true)

			action = TextChatServiceChatWindowPropertyChanged(false)
			expect(action.isVisible).toEqual(false)
		end)
	end)
end
