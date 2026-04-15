local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local PlayersService = game:GetService("Players")

local Foundation = require(CorePackages.Packages.Foundation)
local RobloxGui = CoreGui.RobloxGui

local AccessoryType = Foundation.Enums.AccessoryType

local Promise = require(CorePackages.Packages.Promise)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

return {
	type = "listItem",
	fetch = function(_params)
		local success, voiceData = pcall(function()
			return VoiceChatServiceManager:getRecentUsersInteractionData()
		end)

		if success then
			if not voiceData then
				return Promise.resolve({})
			end
			local localPlayer = PlayersService.LocalPlayer
			local voiceUsers = {}
			for _userId, playerVoiceData in pairs(voiceData) do
				local player = playerVoiceData.player
				local isLocalPlayer = if localPlayer then player.UserId == localPlayer.UserId else false

				if player and not isLocalPlayer then
					table.insert(voiceUsers, {
						leading = {
							type = AccessoryType.Avatar,
							userId = player.UserId,
						},
						id = tostring(player.UserId),
						label = player.DisplayName,
						description = "@" .. player.Name,
						meta = { username = player.Name, displayName = player.DisplayName },
					})
				end
			end
			table.sort(voiceUsers, function(a, b)
				return a.label < b.label
			end)
			return Promise.resolve(voiceUsers)
		else
			return Promise.reject("Failed to fetch voice users")
		end
	end,
}
