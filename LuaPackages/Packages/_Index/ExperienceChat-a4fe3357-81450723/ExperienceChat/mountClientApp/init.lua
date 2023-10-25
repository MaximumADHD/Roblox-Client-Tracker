local Chat = game:GetService("Chat")
local GuiService = game:GetService("GuiService")
local HttpService = game:GetService("HttpService")
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
local bindableEventQueue = require(ExperienceChat.Events.bindableEventQueue)
local createStore = require(script.Parent.createStore)
local GetNameColor = require(script.Parent.GetNameColor)
local reportMessageReceived = require(script.Parent.reportMessageReceived)
local watchForErrors = require(script.Parent.watchForErrors)

local CommandTypes = require(ExperienceChat.Commands.types)
type Command = CommandTypes.Command
local Commands = require(ExperienceChat.Commands)

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local IncomingBubbleChatMessageReceived = require(Actions.IncomingBubbleChatMessageReceived)
local OutgoingMessageSent = require(Actions.OutgoingMessageSent)
local TextChannelCreated = require(Actions.TextChannelCreated)
local TextChannelRemoved = require(Actions.TextChannelRemoved)
local PlayerAdded = require(Actions.PlayerAdded)
local PlayerRemoved = require(Actions.PlayerRemoved)
local CharacterAdded = require(Actions.CharacterAdded)
local LocalCharacterLoaded = require(Actions.LocalCharacterLoaded)
local LocalTeamChanged = require(Actions.LocalTeamChanged)
local ClientAppLoaded = require(Actions.ClientAppLoaded)
local LastInputTypeChanged = require(Actions.LastInputTypeChanged)
local ChatPrivacySettingsReceived = require(Actions.ChatPrivacySettingsReceived)
local ChatPrivacySettingsFetchFailed = require(Actions.ChatPrivacySettingsFetchFailed)
local CommandAliasChanged = require(Actions.CommandAliasChanged)
local HumanoidDied = require(Actions.HumanoidDied)
local AdorneeAdded = require(Actions.AdorneeAdded)

local displaySystemMessage = require(ExperienceChat.displaySystemMessage)
local getOtherDisplayNameInWhisperChannel = require(ExperienceChat.getOtherDisplayNameInWhisperChannel)
local handleChannelWelcomeMessage = require(ExperienceChat.handleChannelWelcomeMessage)
local isPlayerVerified = require(ExperienceChat.isPlayerVerified)

local FFlagShowVerifiedBadgeInNewChat = require(ExperienceChat.Flags.FFlagShowVerifiedBadgeInNewChat)
local GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat =
	require(ExperienceChat.Flags.GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat)
local isExperienceChatUserProfileApiEnabled = require(ExperienceChat.Flags.isExperienceChatUserProfileApiEnabled)

local getEngineFeatureFlagEnableDisplayBubble = require(ExperienceChat.Flags.getEngineFeatureFlagEnableDisplayBubble)
local getFFlagEnablePerBubbleCustomization = require(ExperienceChat.Flags.getFFlagEnablePerBubbleCustomization)

local FFlagFixTextChatServiceNotShowingUpInVR = game:DefineFastFlag("FixTextChatServiceNotShowingUpInVR", false)

local getFFlagChatTranslationUIEnabled = require(ExperienceChat.Flags.getFFlagChatTranslationUIEnabled)
local getFFlagChatTranslationEnableSystemMessage =
	require(ExperienceChat.Flags.getFFlagChatTranslationEnableSystemMessage)

function getChatTranslationEnabled()
	local canGetSetting, setting = pcall(function()
		return TextChatService.ChatTranslationEnabled
	end)

	return canGetSetting and setting
end

local helpers = script.helpers
local setUpConfigurationObjects = require(helpers.setUpConfigurationObjects)
local setUpClientSettings = require(helpers.setUpClientSettings)
local waitForFirst = require(helpers.waitForFirst)

local context = require(ExperienceChat.context)
local reportVersionLoaded = require(script.reportVersionLoaded)
local Version = require(ExperienceChat.Version)
local AtomicBinding = require(ExperienceChat.AtomicBinding)

local function watchPlayersService(config, store)
	Logger:trace("Watching Players service")

	local allPlayerCharacterConns = {}
	local function onPlayerAdded(player: Player)
		Logger:debug("Player added: {} {}", player.Name, tostring(player.UserId))

		local hasVerifiedBadge = if FFlagShowVerifiedBadgeInNewChat() and isPlayerVerified(player) then true else nil
		store:dispatch(PlayerAdded(player.UserId, player.Name, player.DisplayName, hasVerifiedBadge))

		if player == Players.LocalPlayer then
			Logger:trace("Found local player")

			player:GetPropertyChangedSignal("Team"):Connect(function()
				store:dispatch(LocalTeamChanged(player.Team))
			end)
		end

		local function getHumanoidBinding()
			-- An AtomicBinding bound to Player.Character
			-- Only when the Character Model has Humanoid and HumanoidRootPart children will the dispatchBubbleChatAdornee callback fire.
			local function dispatchBubbleChatAdornee(instances)
				local character: Model = instances.root
				local humanoid = instances.humanoid
				local humanoidRootPart = instances.humanoidRootPart

				if humanoid:IsA("Humanoid") and humanoidRootPart:IsA("Part") then
					if character and humanoidRootPart and player.Character == character then
						store:dispatch(AdorneeAdded(player.UserId, character, humanoid))
					end

					local humanoidDiedConn: RBXScriptConnection = humanoid.Died:Connect(function()
						store:dispatch(HumanoidDied(player.UserId))
					end)

					local function disconnectHumanoidDied()
						-- This function will run when the AtomicBinding unbinds, namely when onCharacterRemoving is called.
						-- When the character is removed, we want to disconnect any leftover Humanoid.Died connections connected to that now defunct character's Humanoid
						if humanoidDiedConn then
							humanoidDiedConn:Disconnect()
						end
					end

					return disconnectHumanoidDied
				end

				return function() end
			end
			local humanoidBinding = AtomicBinding.new({
				humanoid = "Humanoid",
				humanoidRootPart = "HumanoidRootPart",
			}, dispatchBubbleChatAdornee)

			return humanoidBinding
		end
		local humanoidBinding = getHumanoidBinding()

		local function onCharacterAdded(character: Model)
			-- Since Character is not a child of Player but rather a property, we cannot create an AtomicBinding on player.
			-- Thus, we must check existence and compliance of Character and create an AtomicBinding on that instead.
			if not character.Parent then
				waitForFirst(character.AncestryChanged, player.CharacterAdded)
			end
			if player.Character ~= character or not character.Parent then
				Logger:debug("Mismatched or unparented character in onCharacterAdded for {}", tostring(player.UserId))
				return
			end

			if player == Players.LocalPlayer then
				Logger:debug("Local character loaded: {}", character.Name)
				store:dispatch(LocalCharacterLoaded(character))
			end
			store:dispatch(CharacterAdded(player.UserId, character))
			humanoidBinding:bindRoot(character)
		end

		local function onCharacterRemoving(character: Model)
			humanoidBinding:unbindRoot(character)
		end

		if player.Character then
			onCharacterAdded(player.Character)
		end

		local characterAddedConn = player.CharacterAdded:Connect(onCharacterAdded)
		local chracterRemovingConn = player.CharacterRemoving:Connect(onCharacterRemoving)

		local currPlayerCharacterConns = allPlayerCharacterConns[player.UserId]
		if not currPlayerCharacterConns then
			currPlayerCharacterConns = { characterAddedConn, chracterRemovingConn }
			allPlayerCharacterConns[player.UserId] = currPlayerCharacterConns
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
					Logger:error("Could not fetch friendship status. Error: {}", tostring(err))
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

		local currPlayerCharacterConns = allPlayerCharacterConns[player.UserId]
		if currPlayerCharacterConns then
			for _, conn in ipairs(currPlayerCharacterConns) do
				conn:Disconnect()
			end
			allPlayerCharacterConns[player.UserId] = nil
		end
	end)
end

local function canShowDefaultChat()
	if FFlagFixTextChatServiceNotShowingUpInVR then
		return not GuiService:IsTenFootInterface()
	else
		return not GuiService:IsTenFootInterface() and not VRService.VREnabled
	end
end

type Config = {
	defaultTargetTextChannel: TextChannel?,
	defaultSystemTextChannel: TextChannel,
	translator: Translator,
	parent: Instance,
	canUserChatAsync: ((number) -> boolean)?,
	analytics: any?,
	script: Instance?,
	getIconVoiceIndicator: ((string, string) -> string)?,
	onClickedVoiceIndicator: ((number | string) -> nil)?,
	onClickedCameraIndicator: (() -> nil)?,
	getPermissions: any?,
	selfViewListenerChanged: any?,
	apolloClient: any?,
	displayCameraDeniedToast: (() -> nil)?,
	isCamEnabledForUserAndPlace: (() -> boolean)?,
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
	bindableEventQueue:flush()

	watchForErrors(game:GetService("ScriptContext"), config.script, false)

	-- Make a reference of the translator to use inside autoCastCommand later
	context.translator = config.translator
	-- Make a reference of the store to use inside autoCastCommand later
	context.store = store

	context.apolloClient = if isExperienceChatUserProfileApiEnabled() then config.apolloClient else nil

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

	setUpConfigurationObjects(store, config)
	if GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat() then
		setUpClientSettings(store)
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
				if response then
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

	local function runOnBubbleDisplayed(partOrModel: Instance, message: string, textChatMessage: TextChatMessage?)
		local player = nil
		if partOrModel:IsA("Model") then
			player = Players:GetPlayerFromCharacter(partOrModel)
		end

		local bubbleChatMessageId: string = HttpService:GenerateGUID(false)
		local bubbleChatMessageProperties: BubbleChatMessageProperties?
		local bubbleChatMessageTranslation: string?
		if textChatMessage then
			bubbleChatMessageId = textChatMessage.MessageId
			bubbleChatMessageProperties = textChatMessage.BubbleChatMessageProperties
			bubbleChatMessageTranslation = if getFFlagChatTranslationUIEnabled()
				then textChatMessage.Translation
				else nil
		end

		local messageTable = {
			message = message,
			translation = bubbleChatMessageTranslation,
			bubbleChatMessageId = bubbleChatMessageId,
			bubbleChatMessageUserId = player and tostring(player.UserId) or nil,
			partOrModel = partOrModel,
			timestamp = DateTime.now(),
			bubbleChatMessageProperties = bubbleChatMessageProperties,
		}
		store:dispatch(IncomingBubbleChatMessageReceived(messageTable))
	end

	-- Add support for Chat:Chat(), we should probably remove this later
	Chat.Chatted:Connect(function(partOrModel, message)
		runOnBubbleDisplayed(partOrModel, message)
	end)

	if getEngineFeatureFlagEnableDisplayBubble() and getFFlagEnablePerBubbleCustomization() then
		TextChatService.BubbleDisplayed:Connect(function(partOrModel, textChatMessage)
			runOnBubbleDisplayed(partOrModel, textChatMessage and textChatMessage.Text, textChatMessage)
		end)
	end

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
					if textSource then
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
					end
				end)

				if
					string.find(commandInstance.Name, "RBXTeamCommand")
					or string.find(commandInstance.Name, "RBXWhisperCommand")
				then
					for _, aliasType in { "PrimaryAlias", "SecondaryAlias" } do
						commandInstance:GetPropertyChangedSignal(aliasType):Connect(function()
							store:dispatch(
								CommandAliasChanged(
									commandInstance.Name,
									commandInstance.PrimaryAlias,
									commandInstance.SecondaryAlias
								)
							)
						end)
					end
				end
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
			getIconVoiceIndicator = config.getIconVoiceIndicator,
			onClickedVoiceIndicator = config.onClickedVoiceIndicator,
			onClickedCameraIndicator = config.onClickedCameraIndicator,
			selfViewListenerChanged = config.selfViewListenerChanged,
			getPermissions = config.getPermissions,
			displayCameraDeniedToast = config.displayCameraDeniedToast,
			isCamEnabledForUserAndPlace = config.isCamEnabledForUserAndPlace,
		}),
	})

	store:dispatch(ClientAppLoaded({
		team = Players.LocalPlayer and Players.LocalPlayer.Team,
		isChatCoreGuiEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat),
	}))

	reportVersionLoaded(Analytics, Version[1])

	Logger:trace("Roact.mount to {}", tostring(config.parent))
	local roactInstance = Roact.mount(root, config.parent, "ExperienceChat")

	if
		getFFlagChatTranslationUIEnabled()
		and getFFlagChatTranslationEnableSystemMessage()
		and getChatTranslationEnabled()
	then
		displaySystemMessage(
			"CoreScripts.TextChat.ChatTranslation.ChatWindow.SystemMessageNew",
			nil,
			"Roblox.ChatTranslation.ChatWindow.SystemMessage",
			config.translator,
			config.defaultSystemTextChannel,
			"Roblox automatically translates supported languages in chat"
		)
	end

	return {
		roactInstance = roactInstance,
	}
end
