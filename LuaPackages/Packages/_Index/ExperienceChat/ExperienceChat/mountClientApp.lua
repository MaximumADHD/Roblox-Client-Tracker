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

local function addPlayerToDisplayNameCache(store)
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
		dispatch(player)
	end)
end

local function removePlayerFromDisplayNameCache(store)
	-- When player leaves, remove them from cache
	Players.PlayerRemoving:Connect(function(player)
		store:dispatch(PlayerRemoved(player.UserId))
	end)
end

local function canShowDefaultChat()
	if Chat.LoadDefaultChat and not GuiService:IsTenFootInterface() and not VRService.VREnabled then
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

return function(config: Config): { roactInstance: any }
	config = Dictionary.join(defaultConfig, config)

	local store = createStore()
	createDispatchBindableEvent(store)

	local function handleMessageReceived(textChannel: TextChannel)
		store:dispatch(TextChannelCreated(textChannel))
		textChannel.MessageReceived:Connect(function(textChatMessage)
			store:dispatch(IncomingMessageReceived(textChatMessage))
			MessageReceivedBindableEvent:Fire(textChatMessage)
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
						local message = config.translator:FormatByKey(
							systemMessageResponse.key,
							systemMessageResponse.args
						)
						config.defaultSystemTextChannel:DisplaySystemMessage(message, systemMessageResponse.metadata)
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

	local roactInstance = Roact.mount(root, config.parent, "ExperienceChat")

	return {
		roactInstance = roactInstance,
	}
end
