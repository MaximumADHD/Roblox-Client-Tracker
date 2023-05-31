local Players = game:GetService("Players")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)
local Packages = ExperienceChat.Parent

local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Dictionary = require(Packages.llama).Dictionary
local None = require(Packages.llama).None

local BubbleChat = script:FindFirstAncestor("BubbleChat")
local BillboardGui = require(BubbleChat.BillboardGui)

local GlobalFlags = require(ExperienceChat.GlobalFlags)

local BubbleChatApp = Roact.Component:extend("BubbleChatApp")

function BubbleChatApp.getDerivedStateFromProps(nextProps, lastState)
	return {
		-- We need to keep in memory userMessages' keys to allow the fade out animations to play, otherwise the child
		-- billboards would be unmounted right away. It is their responsibility to clean up by triggering
		-- the function self.onBillboardFadeOut
		userMessages = Dictionary.join(lastState.userMessages or {}, nextProps.userMessages),
	}
end

function BubbleChatApp:init()
	Logger:debug("Initializing")
	self:setState({
		userMessages = {},
	})

	self.onBillboardFadeOut = function(userId)
		self:setState({
			userMessages = Dictionary.join(self.state.userMessages, { [userId] = None }),
		})
	end
end

--[[
	Check that the user's device has given Roblox camera and microphone permission.
]]
function BubbleChatApp:getPermissions()
	local callback = function(hasCameraPermissions, hasMicPermissions)
		self:setState({
			hasCameraPermissions = hasCameraPermissions,
			hasMicPermissions = hasMicPermissions,
		})
	end

	if self.props.getPermissions then
		self.props.getPermissions(callback)
	end
end

function BubbleChatApp:didMount()
	if GlobalFlags.AvatarChatEnabled then
		self:getPermissions()
	end
end

function BubbleChatApp:render()
	local userIds = {}
	if self.props.characters then
		for userId, _ in pairs(self.props.characters) do
			-- Disable voice inserts for non-player messages
			userIds[userId] = false
		end
	end

	if self.props.mockUserIdToPartOrModel then
		-- populate mock userIds for references to partOrModel in userIds
		for userId, _ in pairs(self.props.mockUserIdToPartOrModel) do
			userIds[userId] = false
		end
	end

	if self.props.voiceParticipants then
		for userId, voiceState in pairs(self.props.voiceParticipants) do
			-- Enable them for player messages
			if voiceState ~= "Hidden" then
				userIds[userId] = true
			end
		end
	end

	-- Render the bubble chat billboard for the local player in case
	-- Avatar Chat camera is available.
	if GlobalFlags.AvatarChatEnabled and self.state.hasCameraPermissions and Players.LocalPlayer then
		userIds[tostring(Players.LocalPlayer.UserId)] = true
	end

	-- Wrapped in a ScreenGui so all of the billboards don't clog up
	-- PlayerGui. Specifically need to use a ScreenGui so we can set
	-- ResetOnSpawn. Folders would be a better alternative, but those
	-- are always destroyed when respawning.
	return Roact.createElement(
		"ScreenGui",
		{
			ResetOnSpawn = false,
		},
		Dictionary.map(userIds, function(isVoiceParticipant, userId)
			Logger:trace("Rendering billboard for ...{}", string.sub(tostring(userId), -4))
			return Roact.createElement(BillboardGui, {
				userId = userId,
				onFadeOut = self.onBillboardFadeOut,
				voiceEnabled = self.props.voiceEnabled and isVoiceParticipant,
				getIconVoiceIndicator = self.props.getIconVoiceIndicator,
				onClickedVoiceIndicator = self.props.onClickedVoiceIndicator,
				onClickedCameraIndicator = self.props.onClickedCameraIndicator,
				selfViewListenerChanged = self.props.selfViewListenerChanged,
				hasCameraPermissions = self.state.hasCameraPermissions,
				hasMicPermissions = self.state.hasMicPermissions,
				isBubbleChatEnabled = self.props.isBubbleChatEnabled,
				voiceState = self.props.voiceParticipants[userId],
				partOrModel = self.props.mockUserIdToPartOrModel[userId],
			}),
				"BubbleChat_" .. userId
		end)
	)
end

local function mapStateToProps(state)
	return {
		isBubbleChatEnabled = state.BubbleChatSettings.Enabled,
		userMessages = state.Messages.bubbleMessagesInOrderBySenderId,
		voiceEnabled = state.Voice.isEnabled,
		characters = state.Players.charactersByUserId,
		voiceParticipants = state.Voice.participants,
		mockUserIdToPartOrModel = state.Messages.mockUserIdToPartOrModel,
	}
end

return RoactRodux.connect(mapStateToProps)(BubbleChatApp)
