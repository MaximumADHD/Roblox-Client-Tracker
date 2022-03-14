local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local ChatMessages = ExperienceChat.ExperienceChat.ChatMessages

return function()
	local SendChatMessage = require(ChatMessages.Actions.SendChatMessage)
	local byTextChannelId = require(ChatMessages.Reducers.byTextChannelId)

	describe("byMessageId", function()
		it("should be not nil by default", function()
			local defaultState = byTextChannelId(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should be unmodified by other actions", function()
			local oldState = byTextChannelId(nil, {})
			local newState = byTextChannelId(oldState, { type = "not a real action" })

			expect(oldState).toEqual(newState)
		end)

		it("should be changed using SendChatMessage", function()
			local state = byTextChannelId(nil, {})

			-- @TODO replace with actual TextChatMessage constructor
			local textChatMessage = {
				TextChannel = {
					Name = "textChannelId",
				},
				TextSource = {
					UserId = Players.LocalPlayer.UserId,
				},
				MessageId = "messageId",
				Text = "text",
			}

			state = byTextChannelId(state, SendChatMessage(textChatMessage))
			expect(state.textChannelId[1]).toEqual("messageId")
		end)

		it("should handle existing messageId entries", function()
			local state = byTextChannelId(nil, {})

			-- @TODO replace with actual TextChatMessage constructor
			local textChatMessage1 = {
				TextChannel = {
					Name = "textChannelId",
				},
				TextSource = {
					UserId = Players.LocalPlayer.UserId,
				},
				MessageId = "messageId",
				Text = "text",
			}
			-- @TODO replace with actual TextChatMessage constructor
			local textChatMessage2 = {
				TextChannel = {
					Name = "textChannelId",
				},
				TextSource = {
					UserId = Players.LocalPlayer.UserId,
				},
				MessageId = "messageId",
				Text = "newText",
			}
			state = byTextChannelId(state, SendChatMessage(textChatMessage1))
			state = byTextChannelId(state, SendChatMessage(textChatMessage2))
			expect(state.textChannelId[1]).toEqual("messageId")
			expect(state.textChannelId[2]).toBeNil()
		end)
	end)
end
