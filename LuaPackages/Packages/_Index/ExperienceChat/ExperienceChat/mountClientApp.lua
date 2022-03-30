--!strict
local Chat = game:GetService("Chat")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local VRService = game:GetService("VRService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Promise = require(Packages.Promise)
local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Dictionary = require(Packages.llama).Dictionary

local App = require(script.Parent.App)
local Logger = require(script.Parent.Logger):new("ExpChat/" .. script.Name)

local MessageReceivedBindableEvent = require(script.Parent.MessageReceivedBindableEvent)

local createDispatchBindableEvent = require(script.Parent.createDispatchBindableEvent)
local createStore = require(script.Parent.createStore)

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

local ChatVisibilityActions = require(ExperienceChat.ChatVisibility.Actions)
local ChatInputBarConfigurationEnabled = ChatVisibilityActions.ChatInputBarConfigurationEnabled
local ChatWindowConfigurationEnabled = ChatVisibilityActions.ChatWindowConfigurationEnabled

local function addPlayerToDisplayNameCache(store)
	Logger:trace("Watching Players service")
	local function dispatch(player)
		store:dispatch(PlayerAdded(player.UserId, player.Name, player.DisplayName))
	end
	-- Add current players and any future players to the player list cache.
	for _, player in pairs(Players:GetPlayers()) do
		if player:IsA("Player") then
			dispatch(player)
		end
	end
	Players.PlayerAdded:Connect(function(player)
		Logger:debug("Player added: {} {}", player.Name, tostring(player.UserId))
		dispatch(player)
	end)
end

local function removePlayerFromDisplayNameCache(store)
	-- When player leaves, remove them from cache
	Players.PlayerRemoving:Connect(function(player)
		Logger:debug("Player removed: {} {}", player.Name, tostring(player.UserId))
		store:dispatch(PlayerRemoved(player.UserId))
	end)
end

local function canShowDefaultChat()
	if not GuiService:IsTenFootInterface() and not VRService.VREnabled then
		return true
	end

	return false
end

type Config = {
	defaultTargetTextChannel: TextChannel,
	defaultSystemTextChannel: TextChannel,
	translator: Translator,
	parent: Instance,
	canUserChatAsync: ((number) -> (boolean))?,
}

local defaultConfig = {
	canUserChatAsync = function(userId)
		return Chat:CanUserChatAsync(userId)
	end,
}

local function displaySystemMessage(config, key, args, metadata)
	Logger:debug("Display system message: {}", metadata)
	local message = config.translator:FormatByKey(key, args)
	config.defaultSystemTextChannel:DisplaySystemMessage(message, metadata)
end

return function(config: Config): { roactInstance: any }
	Logger:trace("mountClientApp started")
	config = Dictionary.join(defaultConfig, config)

	local store = createStore()
	createDispatchBindableEvent(store)

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

	local chatInputBarConfiguration = TextChatService:FindFirstChild("ChatInputBarConfiguration")
	if chatInputBarConfiguration then
		store:dispatch(ChatInputBarConfigurationEnabled(chatInputBarConfiguration.Enabled))
		chatInputBarConfiguration:GetPropertyChangedSignal("Enabled"):Connect(function()
			store:dispatch(ChatInputBarConfigurationEnabled(chatInputBarConfiguration.Enabled))
		end)
	end

	local chatWindowConfiguration = TextChatService:FindFirstChild("ChatWindowConfiguration")
	if chatWindowConfiguration then
		store:dispatch(ChatWindowConfigurationEnabled(chatWindowConfiguration.Enabled))
		chatWindowConfiguration:GetPropertyChangedSignal("Enabled"):Connect(function()
			store:dispatch(ChatWindowConfigurationEnabled(chatWindowConfiguration.Enabled))
		end)
	end

	local function handleMessageReceived(textChannel: TextChannel)
		store:dispatch(TextChannelCreated(textChannel))

		if string.find(textChannel.Name, "^RBXTeam") then
			textChannel.OnIncomingMessage = function(message)
				Logger:trace("Team OnIncomingMessage started: {} {}", message.PrefixText, message.Text)
				local properties = Instance.new("TextChatMessageProperties")

				if Players.LocalPlayer then
					local teamColor = Players.LocalPlayer.TeamColor.Color
					properties.PrefixText = string.format(
						[[<font color="#%s">%s</font>]],
						teamColor:ToHex(),
						message.PrefixText
					)
				end

				Logger:trace("Team OnIncomingMessage finished: {} {}", properties.PrefixText, properties.Text)

				return properties
			end
		end

		textChannel.MessageReceived:Connect(function(textChatMessage)
			Logger:debug(
				"Incoming MessageReceived Status: {} Text: {}",
				textChatMessage.Status.Name,
				textChatMessage.Text
			)

			store:dispatch(IncomingMessageReceived(textChatMessage))
			MessageReceivedBindableEvent:Fire(textChatMessage)
			if textChatMessage.Status == Enum.TextChatMessageStatus.Floodchecked then
				displaySystemMessage(
					config,
					"GameChat_ChatFloodDetector_Message",
					nil,
					"Roblox.MessageStatus.Warning.Floodchecked"
				)
			elseif textChatMessage.Status == Enum.TextChatMessageStatus.TextFilterFailed then
				-- TODO: Implement a threshold instead
				displaySystemMessage(
					config,
					"GameChat_ChatService_ChatFilterIssues",
					nil,
					"Roblox.MessageStatus.Warning.TextFilterFailed"
				)
			elseif textChatMessage.Status == Enum.TextChatMessageStatus.InvalidPrivacySettings then
				displaySystemMessage(
					config,
					"GameChat_ChatMessageValidator_SettingsError",
					nil,
					"Roblox.MessageStatus.Warning.InvalidPrivacySettings"
				)
			end
		end)
	end

	for _, descendant in pairs(TextChatService:GetDescendants()) do
		if descendant:IsA("TextChannel") then
			handleMessageReceived(descendant)
		end
	end

	-- add MessageReceived event listeners to all future TextChannels
	TextChatService.DescendantAdded:Connect(function(descendant)
		if descendant:IsA("TextChannel") then
			handleMessageReceived(descendant)
		end
	end)

	TextChatService.DescendantRemoving:Connect(function(descendant)
		if descendant:IsA("TextChannel") then
			store:dispatch(TextChannelRemoved(descendant))
		end
	end)

	TextChatService.SendingMessage:Connect(function(textChatMessage)
		Logger:debug("Outgoing SendingMessage Status: {} Text: {}", textChatMessage.Status.Name, textChatMessage.Text)
		store:dispatch(OutgoingMessageSent(textChatMessage))
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
				commandInstance.Triggered:Connect(function(...)
					local systemMessageResponse = command.clientRun(store, ...)
					if systemMessageResponse then
						displaySystemMessage(
							config,
							systemMessageResponse.key,
							systemMessageResponse.args,
							systemMessageResponse.metadata
						)
					end
				end)
			end
		end
	end

	if config.canUserChatAsync then
		Promise.try(function()
			if Players.LocalPlayer then
				return config.canUserChatAsync(Players.LocalPlayer.UserId)
			end

			return false
		end)
			:andThen(function(canUserChat)
				store:dispatch({
					type = "ChatPrivacySettingsReceived",
					canUserChat = canUserChat,
				})
			end)
			:catch(function()
				store:dispatch({
					type = "ChatPrivacySettingsFetchFailed",
				})
			end)
	end

	addPlayerToDisplayNameCache(store)
	removePlayerFromDisplayNameCache(store)

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
			defaultTargetTextChannel = config.defaultTargetTextChannel,
			isChatWindowVisible = true,
			isChatInputBarVisible = true,
			isDefaultChatEnabled = canShowDefaultChat(),
		}),
	})

	Logger:trace("Roact.mount to {}", tostring(config.parent))
	local roactInstance = Roact.mount(root, config.parent, "ExperienceChat")

	return {
		roactInstance = roactInstance,
	}
end
