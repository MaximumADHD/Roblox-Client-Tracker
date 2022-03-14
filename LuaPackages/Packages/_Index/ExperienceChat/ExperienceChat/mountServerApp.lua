local Players = game:GetService("Players")
local Teams = game:GetService("Teams")
local TextChatService = game:GetService("TextChatService")

return function()
	if TextChatService.CreateDefaultTextChannels then
		local function findChannel(channelName)
			for _, descendant in pairs(TextChatService:GetDescendants()) do
				if descendant:IsA("TextChannel") and descendant.Name == channelName then
					return descendant
				end
			end

			return nil
		end

		local function addChannel(channelName)
			local channel = findChannel(channelName)

			if not channel then
				channel = Instance.new("TextChannel")
				channel.Name = channelName
				channel.Parent = TextChatService
			end

			return channel
		end

		local function findTextSourceFromChannelWithUserId(channel, userId)
			for _, child in pairs(channel:GetChildren()) do
				if child:IsA("TextSource") and child.UserId == userId then
					return child
				end
			end
		end

		local function createTeamChannel(team)
			local channel = addChannel("RBXTeam" .. tostring(team.TeamColor.Name))

			team.PlayerAdded:Connect(function(player)
				channel:AddUserAsync(player.UserId)
			end)

			team.PlayerRemoved:Connect(function(player)
				local textSource = findTextSourceFromChannelWithUserId(channel, player.UserId)
				if textSource then
					textSource:Destroy()
				end
			end)

			-- when a team color changes, everyone in that team is kicked off
			-- in the unlikely case a developer tries to then reuse this team, the associated team textchannel should
			-- also be reused, with corresponding name change
			team:GetPropertyChangedSignal("TeamColor"):Connect(function()
				channel.Name = "RBXTeam" .. tostring(team.TeamColor.Name)
			end)
		end

		for _, team in pairs(Teams:GetTeams()) do
			createTeamChannel(team)
		end

		Teams.ChildAdded:Connect(function(child)
			if child:IsA("Team") then
				createTeamChannel(child)
			end
		end)

		Teams.ChildRemoved:Connect(function(child)
			if child:IsA("Team") then
				local textChannel = findChannel("RBXTeam" .. tostring(child.TeamColor.Name))
				if textChannel then
					textChannel:Destroy()
				end
			end
		end)

		local defaultChannels = {
			addChannel("RBXGeneral"),
			addChannel("RBXSystem"),
		}

		local function addPlayerTextSourceToDefaultChannels(player)
			for _, channel in ipairs(defaultChannels) do
				local textSource = channel:AddUserAsync(player.UserId)
				if channel.Name == "RBXGeneral" then
					textSource.CanSend = true
				elseif channel.Name == "RBXSystem" then
					textSource.CanSend = false
				end
			end
		end

		for _, player in pairs(Players:GetPlayers()) do
			addPlayerTextSourceToDefaultChannels(player)
		end

		Players.PlayerAdded:Connect(function(player)
			addPlayerTextSourceToDefaultChannels(player)
		end)
	end

	if TextChatService.CreateDefaultTextChannels then
		local defaultCommands = {
			{ "RBXHelpCommand", "/help", "/?" },
			{ "RBXMuteCommand", "/mute" },
			{ "RBXUnmuteCommand", "/unmute" },
		}

		for _, commandData in ipairs(defaultCommands) do
			local name = commandData[1]
			local primaryAlias = commandData[2]
			local secondaryAlias = commandData[3]

			local textChatCommand = Instance.new("TextChatCommand")
			textChatCommand.Name = name
			textChatCommand.PrimaryAlias = primaryAlias
			if secondaryAlias then
				textChatCommand.SecondaryAlias = secondaryAlias
			end
			textChatCommand.Parent = TextChatService
		end
	end
end
