local Players = game:GetService("Players")

local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local llama = require(ProjectRoot.llama)
local Set = llama.Set
local processCommands = script:FindFirstAncestor("processCommands")
local Utils = require(processCommands.Utils)
local SystemMessages = require(processCommands.Utils.SystemMessages)

return function(store, command, message)
	local displayName = Utils.getDisplayNameFromCommand(message)
	local playerListCache = store:getState().PlayersList
		and store:getState().PlayersList.byDisplayName.playersListByDisplayName
	if displayName and playerListCache then
		if not playerListCache[displayName] then
			return string.format(SystemMessages.MuteUserDoesNotExist, displayName)
		else
			if #playerListCache[displayName] > 1 then
				return string.format(SystemMessages.MuteUserDuplicate, displayName)
			end

			local userId = nil
			for k, _ in pairs(playerListCache[displayName]) do
				userId = k
			end

			local mutedUserIds = store:getState().ChatCommands and store:getState().ChatCommands.byUserId.mutedUserIds
			if userId then
				if userId == Players.LocalPlayer.UserId then
					return SystemMessages.MuteUserIsYourself
				end

				if command == "mute" then
					if mutedUserIds and Set.has(mutedUserIds, userId) then
						return string.format(SystemMessages.MuteUserAlreadyMuted, displayName)
					else
						store:dispatch({ type = "MuteUser", userId = userId })
						return string.format(SystemMessages.MuteUserSuccess, displayName)
					end
				elseif command == "unmute" then
					if mutedUserIds and Set.has(mutedUserIds, userId) then
						store:dispatch({ type = "UnmuteUser", userId = userId })
					end
					return string.format(SystemMessages.UnmuteUserSuccess, displayName)
				end
			end
		end
	end
	return "Something went wrong..."
end
