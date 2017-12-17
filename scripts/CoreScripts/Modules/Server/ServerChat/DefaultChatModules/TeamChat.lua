--	// FileName: TeamChat.lua
--	// Written by: Xsitsu
--	// Description: Module that handles all team chat.

local Chat = game:GetService("Chat")
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatSettings = require(ReplicatedModules:WaitForChild("ChatSettings"))
local ChatConstants = require(ReplicatedModules:WaitForChild("ChatConstants"))

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = {} function ChatLocalization:Get(key,default) return default end end

local errorTextColor = ChatSettings.ErrorMessageTextColor or Color3.fromRGB(245, 50, 50)
local errorExtraData = {ChatColor = errorTextColor}

local function Run(ChatService)

	local Players = game:GetService("Players")

	local channel = ChatService:AddChannel("Team")
	channel.WelcomeMessage = ChatLocalization:Get("GameChat_TeamChat_WelcomeMessage","This is a private channel between you and your team members.")
	channel.Joinable = false
	channel.Leavable = false
	channel.AutoJoin = false
	channel.Private = true

	local function TeamChatReplicationFunction(fromSpeaker, message, channelName)
		local speakerObj = ChatService:GetSpeaker(fromSpeaker)
		local channelObj = ChatService:GetChannel(channelName)
		if (speakerObj and channelObj) then
			local player = speakerObj:GetPlayer()
			if (player) then

				for i, speakerName in pairs(channelObj:GetSpeakerList()) do
					local otherSpeaker = ChatService:GetSpeaker(speakerName)
					if (otherSpeaker) then
						local otherPlayer = otherSpeaker:GetPlayer()
						if (otherPlayer) then

							if (player.Team == otherPlayer.Team) then
								local extraData = {
									NameColor = player.TeamColor.Color,
									ChatColor = player.TeamColor.Color,
									ChannelColor = player.TeamColor.Color
								}
								otherSpeaker:SendMessage(message, channelName, fromSpeaker, extraData)
							else
								--// Could use this line to obfuscate message for cool effects
								--otherSpeaker:SendMessage(message, channelName, fromSpeaker)
							end

						end
					end
				end

			end
		end

		return true
	end

	channel:RegisterProcessCommandsFunction("replication_function", TeamChatReplicationFunction, ChatConstants.LowPriority)

	local function DoTeamCommand(fromSpeaker, message, channel)
		if message == nil then
			message = ""
		end

		local speaker = ChatService:GetSpeaker(fromSpeaker)
		if speaker then
			local player = speaker:GetPlayer()

			if player then
				if player.Team == nil then
					speaker:SendSystemMessage(ChatLocalization:Get("GameChat_TeamChat_CannotTeamChatIfNotInTeam","You cannot team chat if you are not on a team!"), channel, errorExtraData)
					return
				end

				local channelObj = ChatService:GetChannel("Team")
				if channelObj then
					if not speaker:IsInChannel(channelObj.Name) then
						speaker:JoinChannel(channelObj.Name)
					end
					if message and string.len(message) > 0 then
						speaker:SayMessage(message, channelObj.Name)
					end
					speaker:SetMainChannel(channelObj.Name)
				end
			end
		end
	end

	local function TeamCommandsFunction(fromSpeaker, message, channel)
		local processedCommand = false

		if message == nil then
			error("Message is nil")
		end

		if channel == "Team" then
			return false
		end

		if string.sub(message, 1, 6):lower() == "/team " or message:lower() == "/team" then
			DoTeamCommand(fromSpeaker, string.sub(message, 7), channel)
			processedCommand = true
		elseif string.sub(message, 1, 3):lower() == "/t " or message:lower() == "/t" then
			DoTeamCommand(fromSpeaker, string.sub(message, 4), channel)
			processedCommand = true
		elseif string.sub(message, 1, 2):lower() == "% " or message:lower() == "%" then
			DoTeamCommand(fromSpeaker, string.sub(message, 3), channel)
			processedCommand = true
		end

		return processedCommand
	end

	ChatService:RegisterProcessCommandsFunction("team_commands", TeamCommandsFunction, ChatConstants.StandardPriority)

	local function GetDefaultChannelNameColor()
		if ChatSettings.DefaultChannelNameColor then
			return ChatSettings.DefaultChannelNameColor
		end
		return Color3.fromRGB(35, 76, 142)
	end

	local function PutSpeakerInCorrectTeamChatState(speakerObj, playerObj)
		if playerObj.Neutral or playerObj.Team == nil then
			speakerObj:UpdateChannelNameColor(channel.Name, GetDefaultChannelNameColor())

			if speakerObj:IsInChannel(channel.Name) then
				speakerObj:LeaveChannel(channel.Name)
			end
		elseif not playerObj.Neutral and playerObj.Team then
			speakerObj:UpdateChannelNameColor(channel.Name, playerObj.Team.TeamColor.Color)

			if not speakerObj:IsInChannel(channel.Name) then
				speakerObj:JoinChannel(channel.Name)
			end
		end
	end

	ChatService.SpeakerAdded:connect(function(speakerName)
		local speakerObj = ChatService:GetSpeaker(speakerName)
		if speakerObj then
			local player = speakerObj:GetPlayer()
			if player then
				PutSpeakerInCorrectTeamChatState(speakerObj, player)
			end
		end
	end)

	local PlayerChangedConnections = {}
	Players.PlayerAdded:connect(function(player)
		local changedConn = player.Changed:connect(function(property)
			local speakerObj = ChatService:GetSpeaker(player.Name)
			if speakerObj then
				if property == "Neutral" then
					PutSpeakerInCorrectTeamChatState(speakerObj, player)
				elseif property == "Team" then
					PutSpeakerInCorrectTeamChatState(speakerObj, player)
					if speakerObj:IsInChannel(channel.Name) then
						speakerObj:SendSystemMessage(
							string.gsub(
								ChatLocalization:Get(
									"GameChat_TeamChat_NowInTeam", 
									string.format("You are now on the '%s' team.", player.Team.Name)
								),
								"{RBX_NAME}",player.Team.Name
							),
							channel.Name
						)
					end
				end
			end
		end)
		PlayerChangedConnections[player] = changedConn
	end)

	Players.PlayerRemoving:connect(function(player)
		local changedConn = PlayerChangedConnections[player]
		if changedConn then
			changedConn:Disconnect()
		end
		PlayerChangedConnections[player] = nil
	end)
end

return Run
