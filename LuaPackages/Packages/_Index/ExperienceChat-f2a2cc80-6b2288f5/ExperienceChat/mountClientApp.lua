--!strict
local Chat = game:GetService("Chat")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local VRService = game:GetService("VRService")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local countParticipantsInTextChannel = require(ExperienceChat.countParticipantsInTextChannel)
local Analytics = require(ExperienceChat.Analytics)
local Packages = ExperienceChat.Parent
local Promise = require(Packages.Promise)
local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Dictionary = require(Packages.llama).Dictionary

local App = require(script.Parent.App)
local Logger = require(script.Parent.Logger):new("ExpChat/" .. script.Name)

local createDispatchBindableEvent = require(script.Parent.createDispatchBindableEvent)
local createStore = require(script.Parent.createStore)
local GetNameColor = require(script.Parent.GetNameColor)
local reportMessageReceived = require(script.Parent.reportMessageReceived)
local watchForErrors = require(script.Parent.watchForErrors)

local CommandTypes = require(ExperienceChat.Commands.types)
type Command = CommandTypes.Command
local Commands = require(ExperienceChat.Commands)

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local OutgoingMessageSent = require(Actions.OutgoingMessageSent)
local TextChannelCreated = require(Actions.TextChannelCreated)
local TextChannelRemoved = require(Actions.TextChannelRemoved)
local PlayerAdded = require(Actions.PlayerAdded)
local PlayerRemoved = require(Actions.PlayerRemoved)
local LocalCharacterLoaded = require(Actions.LocalCharacterLoaded)
local TargetTextChannelPropertyChanged = require(Actions.TargetTextChannelPropertyChanged)
local LocalTeamChanged = require(Actions.LocalTeamChanged)
local ClientAppLoaded = require(Actions.ClientAppLoaded)
local LastInputTypeChanged = require(Actions.LastInputTypeChanged)
local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
local ChatWindowConfigurationEnabled = require(Actions.ChatWindowConfigurationEnabled)
local ChatPrivacySettingsReceived = require(Actions.ChatPrivacySettingsReceived)
local ChatPrivacySettingsFetchFailed = require(Actions.ChatPrivacySettingsFetchFailed)

local displaySystemMessage = require(ExperienceChat.displaySystemMessage)
local getOtherDisplayNameInWhisperChannel = require(ExperienceChat.getOtherDisplayNameInWhisperChannel)
local handleChannelWelcomeMessage = require(ExperienceChat.handleChannelWelcomeMessage)

local context = require(ExperienceChat.context)

local function watchPlayersService(config, store)
	Logger:trace("Watching Players service")
	local function onPlayerAdded(player: Player)
		Logger:debug("Player added: {} {}", player.Name, tostring(player.UserId))
		store:dispatch(PlayerAdded(player.UserId, player.Name, player.DisplayName))

		if player == Players.LocalPlayer then
			Logger:trace("Found local player")

			player:GetPropertyChangedSignal("Team"):Connect(function()
				store:dispatch(LocalTeamChanged(player.Team))
			end)

			local function onLocalCharacterLoaded(character: Model)
				Logger:debug("Local character loaded: {}", character.Name)
				store:dispatch(LocalCharacterLoaded(character))
			end

			if player.Character then
				onLocalCharacterLoaded(player.Character)
			end
			player.CharacterAdded:Connect(onLocalCharacterLoaded)
		end
	end

	local function onNewPlayerAdded(player: Player)
		onPlayerAdded(player)

		if Players.LocalPlayer then
			Promise.try(function()
				return player:IsFriendsWith(Players.LocalPlayer.UserId)
			end)
				:andThen(function(isFriend)
					if isFriend then
						displaySystemMessage(
							"GameChat_FriendChatNotifier_JoinMessage",
							{ RBX_NAME = player.DisplayName },
							"Roblox.Notification.Friend.Joined",
							config.translator,
							config.defaultSystemTextChannel
						)
					end
				end)
				:catch(function(err)
					Logger.error("Could not fetch friendship status. Error: {}", tostring(err))
				end)
		end
	end

	-- Add current players and any future players to the player list cache.
	for _, player in pairs(Players:GetPlayers()) do
		if player:IsA("Player") then
			onPlayerAdded(player)
		end
	end
	Players.PlayerAdded:Connect(onNewPlayerAdded)

	-- When player leaves, remove them from cache
	Players.PlayerRemoving:Connect(function(player)
		Logger:debug("Player removed: {} {}", player.Name, tostring(player.UserId))
		store:dispatch(PlayerRemoved(player.UserId))
	end)
end

local function canShowDefaultChat()
	return not GuiService:IsTenFootInterface() and not VRService.VREnabled
end

type Config = {
	defaultTargetTextChannel: TextChannel?,
	defaultSystemTextChannel: TextChannel,
	translator: Translator,
	parent: Instance,
	canUserChatAsync: ((number) -> (boolean))?,
	analytics: any?,
	script: Instance?,
}

local defaultConfig = {
	canUserChatAsync = function(userId)
		return Chat:CanUserChatAsync(userId)
	end,
}

return function(config: Config): { roactInstance: any }
	Logger:trace("mountClientApp started")
	config = Dictionary.join(defaultConfig, config)

	local store = createStore()
	createDispatchBindableEvent(store)

	watchForErrors(game:GetService("ScriptContext"), config.script, false)

	-- Make a reference of the translator to use inside autoCastCommand later
	context.translator = config.translator
	-- Make a reference of the store to use inside autoCastCommand later
	context.store = store

	if config.analytics then
		Analytics.with(config.analytics)
	end

	UserInputService.LastInputTypeChanged:Connect(function(userInputType)
		store:dispatch(LastInputTypeChanged(userInputType))
	end)

	if config.defaultSystemTextChannel then
		config.defaultSystemTextChannel.OnIncomingMessage = function(message)
			Logger:trace("System OnIncomingMessage started: {} {}", message.PrefixText, message.Text)
			local properties = Instance.new("TextChatMessageProperties")

			properties.Text = string.format(
				[[<font color="#%s">%s</font>]],
				if string.find(message.Metadata, "Error")
					then UIBlox.App.Style.Colors.Red:ToHex()
					else UIBlox.App.Style.Colors.LightGrey:ToHex(),
				message.Text
			)
			Logger:trace("System OnIncomingMessage finished: {} {}", properties.PrefixText, properties.Text)

			return properties
		end
	end

	local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
	if chatInputBarConfiguration then
		store:dispatch(ChatInputBarConfigurationEnabled(chatInputBarConfiguration.Enabled))
		chatInputBarConfiguration:GetPropertyChangedSignal("Enabled"):Connect(function()
			store:dispatch(ChatInputBarConfigurationEnabled(chatInputBarConfiguration.Enabled))
		end)

		chatInputBarConfiguration:GetPropertyChangedSignal("TargetTextChannel"):Connect(function()
			store:dispatch(TargetTextChannelPropertyChanged(chatInputBarConfiguration.TargetTextChannel))
		end)

		if config.defaultTargetTextChannel then
			chatInputBarConfiguration.TargetTextChannel = config.defaultTargetTextChannel
		end

		-- 2-way sync store changes to Roblox DOM
		store.changed:connect(function(newState, oldState)
			if newState.TextChannels ~= oldState.TextChannels then
				if newState.TextChannels.targetTextChannel ~= oldState.TextChannels.targetTextChannel then
					chatInputBarConfiguration.TargetTextChannel = newState.TextChannels.targetTextChannel
				end
			end
		end)
	end

	local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
	if chatWindowConfiguration then
		store:dispatch(ChatWindowConfigurationEnabled(chatWindowConfiguration.Enabled))
		chatWindowConfiguration:GetPropertyChangedSignal("Enabled"):Connect(function()
			store:dispatch(ChatWindowConfigurationEnabled(chatWindowConfiguration.Enabled))
		end)
	end

	local localPlayer = Players.LocalPlayer
	if localPlayer then
		localPlayer:GetPropertyChangedSignal("Team"):Connect(function()
			local team = localPlayer.Team
			if team then
				displaySystemMessage(
					"GameChat_TeamChat_NowInTeam",
					{ RBX_NAME = team.Name },
					"Roblox.Team.Success.NowInTeam",
					config.translator,
					config.defaultSystemTextChannel
				)
			end
		end)
	end

	local function handleMessageReceived(textChannel: TextChannel)
		store:dispatch(TextChannelCreated(textChannel))

		if string.find(textChannel.Name, "RBXGeneral") then
			textChannel.OnIncomingMessage = function(message)
				local properties = Instance.new("TextChatMessageProperties")

				if message.TextSource then
					local nameColor = GetNameColor(message.TextSource.UserId)
					properties.PrefixText =
						string.format([[<font color="#%s">%s</font>]], nameColor:ToHex(), message.PrefixText)
				end

				return properties
			end
		elseif string.find(textChannel.Name, "^RBXTeam") then
			textChannel.OnIncomingMessage = function(message)
				Logger:trace("Team OnIncomingMessage started: {} {}", message.PrefixText, message.Text)
				local properties = Instance.new("TextChatMessageProperties")

				if Players.LocalPlayer then
					local teamColor = Players.LocalPlayer.TeamColor.Color
					properties.PrefixText =
						string.format([[<font color="#%s">[Team] %s</font>]], teamColor:ToHex(), message.PrefixText)
				end

				Logger:trace("Team OnIncomingMessage finished: {} {}", properties.PrefixText, properties.Text)

				return properties
			end
		elseif string.find(textChannel.Name, "^RBXWhisper") then
			if localPlayer then
				textChannel.OnIncomingMessage = function(message)
					local textSource = message.TextSource
					if textSource then
						local otherPlayerDisplayName = getOtherDisplayNameInWhisperChannel(textChannel, localPlayer)
						if otherPlayerDisplayName then
							local translatedPrefixText: string
							if textSource.UserId == localPlayer.UserId then
								translatedPrefixText = config.translator:FormatByKey(
									"CoreScripts.TextChat.WhisperChat.PrefixText.Outgoing",
									{ RBX_NAME = otherPlayerDisplayName }
								)
							else
								translatedPrefixText = config.translator:FormatByKey(
									"CoreScripts.TextChat.WhisperChat.PrefixText.Incoming",
									{ RBX_NAME = otherPlayerDisplayName }
								)
							end

							local properties = Instance.new("TextChatMessageProperties")
							local nameColor = GetNameColor(textSource.UserId)
							properties.PrefixText = string.format(
								[[%s <font color="#%s">%s</font>]],
								translatedPrefixText,
								nameColor:ToHex(),
								message.PrefixText
							)

							return properties
						end
					end
				end
			end
		end

		textChannel.MessageReceived:Connect(function(textChatMessage)
			Logger:debug(
				"Incoming MessageReceived Status: {} Text: {}",
				textChatMessage.Status.Name,
				textChatMessage.Text
			)

			if localPlayer then
				reportMessageReceived(localPlayer.UserId, textChatMessage)
			end

			if
				localPlayer
				and textChatMessage.TextSource
				and textChatMessage.TextSource.UserId ~= localPlayer.UserId
			then
				local response = handleChannelWelcomeMessage(textChatMessage, localPlayer)
				if response and response.key then
					displaySystemMessage(
						response.key,
						response.args,
						response.metadata,
						config.translator,
						config.defaultSystemTextChannel
					)
				end
			end

			store:dispatch(IncomingMessageReceived(textChatMessage))
			if textChatMessage.Status == Enum.TextChatMessageStatus.Floodchecked then
				displaySystemMessage(
					"CoreScripts.TextChat.MessageStatus.Warning.Floodchecked",
					nil,
					"Roblox.MessageStatus.Warning.Floodchecked",
					config.translator,
					config.defaultSystemTextChannel
				)
			elseif textChatMessage.Status == Enum.TextChatMessageStatus.TextFilterFailed then
				-- TODO: Implement a threshold instead
				displaySystemMessage(
					"CoreScripts.TextChat.MessageStatus.Warning.TextFilterFailed",
					nil,
					"Roblox.MessageStatus.Warning.TextFilterFailed",
					config.translator,
					config.defaultSystemTextChannel
				)
			elseif textChatMessage.Status == Enum.TextChatMessageStatus.InvalidPrivacySettings then
				displaySystemMessage(
					"CoreScripts.TextChat.MessageStatus.Warning.InvalidPrivacySettings",
					nil,
					"Roblox.MessageStatus.Warning.InvalidPrivacySettings",
					config.translator,
					config.defaultSystemTextChannel
				)
			elseif textChatMessage.Status == Enum.TextChatMessageStatus.MessageTooLong then
				displaySystemMessage(
					"CoreScripts.TextChat.MessageStatus.Warning.MessageTooLong",
					nil,
					"Roblox.MessageStatus.Warning.MessageTooLong",
					config.translator,
					config.defaultSystemTextChannel
				)
			elseif textChatMessage.Status == Enum.TextChatMessageStatus.Unknown then
				displaySystemMessage(
					"CoreScripts.TextChat.MessageStatus.Warning.Unknown",
					nil,
					"Roblox.MessageStatus.Warning.Unknown",
					config.translator,
					config.defaultSystemTextChannel
				)
			end

			Analytics.FireClientAnalyticsWithEventName("MessageResponse", {
				messageStatus = textChatMessage.Status.Name,
			})
		end)
	end

	local function watchTextChatCommand(command: TextChatCommand)
		command.Triggered:Connect(function()
			Analytics.FireClientAnalyticsWithEventName("CommandSent", {
				commandName = command.Name,
			})
		end)
	end

	for _, descendant in pairs(TextChatService:GetDescendants()) do
		if descendant:IsA("TextChannel") then
			handleMessageReceived(descendant)
		elseif descendant:IsA("TextChatCommand") then
			watchTextChatCommand(descendant)
		end
	end

	-- add MessageReceived event listeners to all future TextChannels
	TextChatService.DescendantAdded:Connect(function(descendant: Instance)
		if descendant:IsA("TextChannel") then
			handleMessageReceived(descendant)
		elseif descendant:IsA("TextChatCommand") then
			watchTextChatCommand(descendant)
		end
	end)

	TextChatService.DescendantRemoving:Connect(function(descendant)
		if descendant:IsA("TextChannel") then
			store:dispatch(TextChannelRemoved(descendant))
		end
	end)

	TextChatService.SendingMessage:Connect(function(textChatMessage)
		Logger:debug("Outgoing SendingMessage Status: {} Text: {}", textChatMessage.Status.Name, textChatMessage.Text)

		if localPlayer then
			local response = handleChannelWelcomeMessage(textChatMessage, localPlayer)
			if response and response.key then
				displaySystemMessage(
					response.key,
					response.args,
					response.metadata,
					config.translator,
					config.defaultSystemTextChannel
				)
			end
		end
		store:dispatch(OutgoingMessageSent(textChatMessage))

		local textChannel = textChatMessage.TextChannel
		if textChannel then
			Analytics.FireClientAnalyticsWithEventName("MessageSent", {
				channelName = textChannel.Name,
				totalParticipants = countParticipantsInTextChannel(textChannel),
			})
		end
	end)

	local function findCommandInstance(commandName: string): TextChatCommand?
		for _, instance in ipairs(TextChatService:GetDescendants()) do
			if instance.Name == commandName and instance:IsA("TextChatCommand") then
				return instance
			end
		end

		return nil
	end

	for _, command in ipairs(Commands) do
		if command.clientRun then
			local commandInstance = findCommandInstance(command.name)
			if commandInstance then
				commandInstance.Triggered:Connect(function(textSource, ...)
					local systemMessageResponse = command.clientRun(store, textSource.UserId, ...)
					if systemMessageResponse then
						displaySystemMessage(
							systemMessageResponse.key,
							systemMessageResponse.args,
							systemMessageResponse.metadata,
							config.translator,
							config.defaultSystemTextChannel
						)
					end
				end)
			end
		end
	end

	if config.canUserChatAsync and Players.LocalPlayer then
		Promise.try(function()
			return config.canUserChatAsync(Players.LocalPlayer.UserId)
		end)
			:andThen(function(canUserChat)
				store:dispatch(ChatPrivacySettingsReceived(canUserChat))
			end)
			:catch(function()
				store:dispatch(ChatPrivacySettingsFetchFailed())
			end)
	end

	watchPlayersService(config, store)

	local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
	local StyleConstants = UIBlox.App.Style.Constants
	local DarkTheme = StyleConstants.ThemeName.Dark
	local Gotham = StyleConstants.FontName.Gotham

	local themes = {
		Dark = {
			themeName = DarkTheme,
			fontName = Gotham,
		},
	}

	local root = Roact.createElement(AppStyleProvider, {
		style = themes["Dark"],
	}, {
		app = Roact.createElement(App, {
			store = store,
			translator = config.translator,
			isChatWindowVisible = true,
			isChatInputBarVisible = true,
			isDefaultChatEnabled = canShowDefaultChat(),
		}),
	})

	store:dispatch(ClientAppLoaded({
		team = Players.LocalPlayer and Players.LocalPlayer.Team,
		isChatCoreGuiEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat),
	}))

	Logger:trace("Roact.mount to {}", tostring(config.parent))
	local roactInstance = Roact.mount(root, config.parent, "ExperienceChat")
	return {
		roactInstance = roactInstance,
	}
end
