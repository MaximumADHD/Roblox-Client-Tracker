local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local handleChannelWelcomeMessage = require(script.Parent.handleChannelWelcomeMessage)

return function()
	beforeAll(function(c)
		c.player = game.Players.LocalPlayer

		local TextChatService = game:GetService("TextChatService")
		local textChannel = Instance.new("TextChannel")
		textChannel.Parent = TextChatService
		c.textChannel = textChannel
	end)

	it("SHOULD return nil given text channel is not a whisper channel", function(c)
		c.textChannel.Name = "RBXGeneral"
		local mockTextChatMessage = c.textChannel:DisplaySystemMessage("hi", nil)
		local result = handleChannelWelcomeMessage(mockTextChatMessage, c.player)
		expect(result).toBe(nil)
	end)

	describe("GIVEN a valid whisper channel", function()
		beforeAll(function(c)
			c.textChannel.Name = "RBXWhisper:1_-1"
			c.textChannel:AddUserAsync(c.player.UserId)
			c.textChannel:AddUserAsync(-1)
		end)

		it("SHOULD return Welcome.Sent", function(c)
			local mockTextChatMessage = c.textChannel:DisplaySystemMessage("hi", nil)
			local result = handleChannelWelcomeMessage(mockTextChatMessage, c.player)
			expect(result).toHaveProperty("key", "CoreScripts.TextChat.Notification.WhisperChat.Created")
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Welcome.Sent")
		end)

		it("SHOULD return Welcome.AlreadySent if not given a valid translator of system text channel", function(c)
			local mockTextChatMessage = c.textChannel:DisplaySystemMessage("hi", nil)
			local result = handleChannelWelcomeMessage(mockTextChatMessage, c.player)
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Welcome.AlreadySent")
		end)
	end)
end
