local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local getOtherDisplayNameInWhisperChannel = require(script.Parent.getOtherDisplayNameInWhisperChannel)

return function()
	local TextChatService = game:GetService("TextChatService")
	local textChannel = Instance.new("TextChannel")
	textChannel.Parent = TextChatService

	local player = game.Players.LocalPlayer
	textChannel:AddUserAsync(player.UserId)

	it("SHOULD return nil given localPlayer", function()
		local result = getOtherDisplayNameInWhisperChannel(textChannel, player)
		expect(result).toBe(nil)
	end)

	it("SHOULD return a DisplayName given a fake player", function()
		local fakePlayer = {
			UserId = -player.UserId,
		}
		local result = getOtherDisplayNameInWhisperChannel(textChannel, fakePlayer)
		expect(result).toEqual(player.DisplayName)
	end)
end
