local Players = game:GetService("Players")
local Teams = game:GetService("Teams")
local TextChatService = game:GetService("TextChatService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local CommandTypes = require(ExperienceChat.Commands.types)
type Command = CommandTypes.Command
local Commands = require(ExperienceChat.Commands)

local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)

return function()
	Logger:trace("mountServerApp started")
	if TextChatService.CreateDefaultTextChannels then
		Logger:trace("Creating default TextChannels")

		local textChannelsFolder = Instance.new("Folder")
		textChannelsFolder.Name = "TextChannels"
		textChannelsFolder.Parent = TextChatService

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
				channel.Parent = textChannelsFolder
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
			Logger:debug("Creating team TextChannel: {}", channel.Name)

			team.PlayerAdded:Connect(function(player)
				local textSource = channel:AddUserAsync(player.UserId)
				textSource.CanSend = true
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
					Logger:debug("Destroying team TextChannel: {}", textChannel.Name)
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

	if TextChatService.CreateDefaultCommands then
		Logger:trace("Creating default TextChatCommands")
		local textChatCommandsFolder = Instance.new("Folder")
		textChatCommandsFolder.Name = "TextChatCommands"
		textChatCommandsFolder.Parent = TextChatService

		for _, command in ipairs(Commands) do
			local textChatCommand = Instance.new("TextChatCommand")
			textChatCommand.Name = command.name
			textChatCommand.PrimaryAlias = command.alias[1]
			textChatCommand.SecondaryAlias = command.alias[2] or ""

			if command.serverRun then
				textChatCommand.Triggered:Connect(function(...)
					command.serverRun(nil, ...)
				end)
			end

			textChatCommand.Parent = textChatCommandsFolder
		end
	end
end
