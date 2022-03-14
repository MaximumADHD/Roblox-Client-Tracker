local Chat = game:GetService("Chat")
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Promise = require(ProjectRoot.Promise)

local App = require(script.Parent.App)
local createStore = require(script.Parent.createStore)
local processCommands = require(script.Parent.processCommands)

local function fetchUserChatPrivacySetting(store)
	Promise.try(function()
		return Chat:CanUserChatAsync(Players.LocalPlayer.UserId)
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

local function addPlayerToDisplayNameCache(store)
	-- Add current players and any future players to the player list cache.
	for _, player in pairs(Players:GetPlayers()) do
		store:dispatch({
			type = "PlayerAdded",
			-- TODO: change back to DisplayName after testing
			-- displayName = player.DisplayName,
			displayName = player.Name,
			userId = player.UserId,
		})
	end
	Players.PlayerAdded:Connect(function(player)
		store:dispatch({
			type = "PlayerAdded",
			-- TODO: change back to DisplayName after testing
			-- displayName = player.DisplayName,
			displayName = player.Name,
			userId = player.UserId,
		})
	end)
end

local function removePlayerFromDisplayNameCache(store)
	-- When player leaves, remove them from cache
	Players.PlayerRemoving:Connect(function(player)
		store:dispatch({
			type = "PlayerRemoved",
			-- TODO: change back to DisplayName after testing
			-- displayName = player.DisplayName,
			displayName = player.Name,
			userId = player.UserId,
		})
	end)
end

return function()
	local store = createStore()

	local SendChatMessage = require(ProjectRoot.ExperienceChat.ChatMessages.Actions.SendChatMessage)

	-- add messagereceived event listeners to all existing textchannels
	for _, descendant in pairs(TextChatService:GetDescendants()) do
		if descendant:IsA("TextChannel") then
			descendant.MessageReceived:Connect(function(textChatMessage)
				store:dispatch(SendChatMessage(textChatMessage))
			end)
		end
	end

	-- add messagereceived event listeners to all future textchannels
	TextChatService.DescendantAdded:Connect(function(descendant)
		if descendant:IsA("TextChannel") then
			descendant.MessageReceived:Connect(function(textChatMessage)
				store:dispatch(SendChatMessage(textChatMessage))
			end)
		end
	end)

	TextChatService.SendingMessage:Connect(function(textChatMessage)
		store:dispatch(SendChatMessage(textChatMessage))
	end)

	-- bind default commands, if any
	local defaultCommands = {
		RBXHelpCommand = { "/help", "/?" },
		RBXMuteCommand = { "/mute" },
		RBXUnmuteCommand = { "/unmute" },
	}

	local function bindDefaultCommand(command)
		if command:IsA("TextChatCommand") then
			if defaultCommands[command.Name] then
				command.Triggered:Connect(function(_, unfilteredText)
					processCommands(store, unfilteredText)
				end)
			end
		end
	end

	for _, c in pairs(TextChatService:GetChildren()) do
		bindDefaultCommand(c)
	end
	TextChatService.ChildAdded:Connect(function(c)
		bindDefaultCommand(c)
	end)

	fetchUserChatPrivacySetting(store)
	addPlayerToDisplayNameCache(store)
	removePlayerFromDisplayNameCache(store)

	App.defaultProps.store = store

	return App
end
