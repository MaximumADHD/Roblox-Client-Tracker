local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)
local Packages = ExperienceChat.Parent

local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local List = require(Packages.llama).List
local Otter = require(Packages.Otter)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local VRService = game:GetService("VRService")

local memoize = require(ExperienceChat.memoize)

local BubbleChat = script:FindFirstAncestor("BubbleChat")
local VoiceIndicator = require(BubbleChat.VoiceIndicator)
local BlankBubble = require(BubbleChat.BlankBubble)
local BubbleChatList = require(BubbleChat.BubbleChatList)
local ChatBubbleDistant = require(BubbleChat.ChatBubbleDistant)
local PlayerButtons = require(BubbleChat.PlayerButtons)
local GlobalFlags = require(ExperienceChat.GlobalFlags)

local FFlagSelfViewNoApi = game:DefineFastFlag("SelfViewNoApi", false)
local GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat =
	require(ExperienceChat.Flags.GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat)

local getFFlagEnableAvatarChatToggleUIUpgradeForTextChatService =
	require(ExperienceChat.Flags.getFFlagEnableAvatarChatToggleUIUpgradeForTextChatService)
local getFFlagHideLocalPlayerControlBubbleForVR =
	require(ExperienceChat.Flags.getFFlagHideLocalPlayerControlBubbleForVR)

local PlayerButtonsV2
if getFFlagEnableAvatarChatToggleUIUpgradeForTextChatService() then
	PlayerButtonsV2 = require(BubbleChat.PlayerButtonsV2)
end
local FFlagEasierUnmuting = game:DefineFastFlag("EasierUnmutingTCS", false)
local FFlagEasierUnmutingBasedOnCamera = game:DefineFastFlag("EasierUnmutingBasedOnCameraTCS", false)
local FFlagEasierUnmutingHideIfMuted = game:DefineFastFlag("EasierUnmutingHideIfMutedTCS", false)
local FIntEasierUnmutingDisplayDistance = game:DefineFastInt("EasierUnmutingDisplayDistanceTCS", 20)

local FFlagFixTimestampNowComparisonForChatMessages =
	game:DefineFastFlag("FixTimestampNowComparisonForChatMessages", false)

local BILLBOARD_OFFSET_EPSILON = 0.5
local RENDER_INSERT_SIZE = Vector2.new(28, 28)

local BubbleChatBillboard = Roact.PureComponent:extend("BubbleChatBillboard")

local VOICE_TIMEOUT_MILLIS = 1000
local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 4,
}

function getEasierUnmutingDistance(adorneePosition: Vector3?, localAdorneePosition: Vector3?): number?
	local cameraPosition = workspace.CurrentCamera and workspace.CurrentCamera.CFrame.Position

	if (FFlagEasierUnmutingBasedOnCamera or not localAdorneePosition) and adorneePosition and cameraPosition then
		return (adorneePosition - cameraPosition).Magnitude
	end

	if adorneePosition and localAdorneePosition then
		return (adorneePosition - localAdorneePosition).Magnitude
	end

	return nil
end

function BubbleChatBillboard:init()
	local selfViewOpen
	local selfViewEnabled
	if GlobalFlags.AvatarChatEnabled then
		local getSelfViewVisibility = self.props.selfViewListenerChanged.getSelfViewVisibility
		selfViewOpen = getSelfViewVisibility()
		selfViewEnabled = FFlagSelfViewNoApi
			or StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All)
			or StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
	end

	self:setState({
		isInsideRenderDistance = false,
		isInsideMaximizeDistance = false,
		isInsideEasierUnmutingDistance = if FFlagEasierUnmuting then false else nil,
		savedChatSettings = self.props.chatSettings,
		selfViewOpen = selfViewOpen,
		selfViewEnabled = selfViewEnabled,
		voiceTimedOut = false,
		voiceStateCounter = 0,
		lastVoiceState = nil,
	})

	self.isMounted = false
	self.offset, self.updateOffset = Roact.createBinding(Vector3.new())
	self.offsetMotor = Otter.createSingleMotor(0)
	self.offsetMotor:onStep(function(offset)
		self.updateOffset(Vector3.new(0, offset, 0))
	end)
	self.offsetGoal = 0

	self.onLastBubbleFadeOut = function()
		if self.props.onFadeOut and not self.isFadingOut then
			self.isFadingOut = true
			self.props.onFadeOut(self.props.userId)
		end
	end

	local localPlayer = Players.LocalPlayer
	local iconStyle = if localPlayer
		then self.props.userId ~= tostring(localPlayer.UserId) and "SpeakerDark" or "MicDark"
		else "SpeakerDark"
	self.renderInsert = function()
		return Roact.createElement(VoiceIndicator, {
			userId = self.props.userId,
			getIcon = self.props.getIconVoiceIndicator,
			onClicked = self.props.onClickedVoiceIndicator,
			iconStyle = iconStyle,
		})
	end

	if GlobalFlags.AvatarChatEnabled then
		local signal = self.props.selfViewListenerChanged.selfViewVisibilityUpdatedSignal
		local getSelfViewVisibility = self.props.selfViewListenerChanged.getSelfViewVisibility

		local function callback()
			self:setState({
				selfViewOpen = getSelfViewVisibility(),
			})
		end
		self.selfViewConnection = signal:connect(callback)
	end
end

function BubbleChatBillboard:checkCounterForTimeout(lastCounter)
	-- Start a new timer when the counter changes, unless this is the local
	-- user or the voice state is TALKING.
	if
		Players.LocalPlayer
		and self.props.userId ~= tostring(Players.LocalPlayer.UserId)
		and self.state.lastVoiceState ~= "Talking"
		and self.state.voiceStateCounter ~= lastCounter
	then
		local currentCounter = self.state.voiceStateCounter
		delay(VOICE_TIMEOUT_MILLIS / 1000.0, function()
			-- If the counter hasn't changed during the delay, hide the voice indicator.
			if self.state.voiceStateCounter == currentCounter and self.isMounted then
				self:setState({
					voiceTimedOut = true,
				})
			end
		end)
	end
end

function BubbleChatBillboard:checkCounterForTimeoutWithEasierUnmuting(lastState)
	local lastCounter = if lastState then lastState.voiceStateCounter else nil

	if not FFlagEasierUnmuting then
		return self:checkCounterForTimeout(lastCounter)
	end

	-- Start a new timer when the counter changes, unless this is the local
	-- user or the voice state is TALKING or LOCAL_MUTED.

	local notLocalPlayer = if Players.LocalPlayer
		then self.props.userId ~= tostring(Players.LocalPlayer.UserId)
		else false
	local relevantStateHasChanged = self.state.voiceStateCounter ~= lastCounter
	local shouldHideIndicator = self.state.lastVoiceState ~= "Talking" and self.state.lastVoiceState ~= "LOCAL_MUTED"

	if notLocalPlayer and relevantStateHasChanged and shouldHideIndicator then
		local currentCounter = self.state.voiceStateCounter

		delay(VOICE_TIMEOUT_MILLIS / 1000.0, function()
			-- If the counter hasn't changed during the delay, hide the voice indicator.
			if self.state.voiceStateCounter == currentCounter and self.isMounted then
				self:setState({
					voiceTimedOut = true,
				})
			end
		end)
	end

	return
end

-- Offsets the billboard so it will align properly with the top of the
-- character, regardless of what assets they're wearing.
function BubbleChatBillboard:getVerticalOffset()
	local adornee = self.props.adornee
	if adornee and adornee:IsA("Model") then
		-- Billboard is adornee'd to a child part -> need to calculate the distance between it and the top of the
		-- bounding box
		local orientation, size = adornee:GetBoundingBox()
		local adorneeInstance = getAdorneeInstance(self.props.adornee, self.state.savedChatSettings.AdorneeName)
		if not adorneeInstance then
			return size.Y / 2
		elseif adorneeInstance:IsA("BasePart") then
			local relative = orientation:PointToObjectSpace(adorneeInstance.Position)
			return size.Y / 2 - relative.Y
		end
		return 0
	elseif adornee and adornee:IsA("BasePart") then
		return adornee.Size.Y / 2
	else
		return 0
	end
end

-- From a given adornee object, which can be either a model, a part, an attachment, or nil, returns which part
-- (or attachment) (or nil) the billboard should attach itself to
function getAdorneeInstance(adornee: Instance?, adorneeName: string): BasePart | Attachment | nil
	if not adornee then
		return nil
	elseif adornee:IsA("Model") then
		local adorneePart = adornee:FindFirstChild(adorneeName, true) or adornee.PrimaryPart

		if not adorneePart or adorneePart:IsA("BasePart") or adorneePart:IsA("Attachment") then
			return adorneePart
		end
	elseif adornee:IsA("BasePart") or adornee:IsA("Attachment") then
		return adornee
	end

	return nil
end

function BubbleChatBillboard:shouldRenderCaret()
	local chatSettings = self.state.savedChatSettings

	return chatSettings.TailVisible and not self:shouldRenderPlayerButtons()
end

function BubbleChatBillboard:shouldRenderPlayerButtons()
	local isLocalPlayer = if Players.LocalPlayer
		then self.props.userId == tostring(Players.LocalPlayer.UserId)
		else false

	if isLocalPlayer then
		if (getFFlagHideLocalPlayerControlBubbleForVR() and VRService.VREnabled) or GlobalFlags.ChromeEnabled then
			return false
		end
		-- Self View hides local player's bubble.
		if not self.state.selfViewOpen then
			-- Local player renders the control button even in the timed out state
			-- Controls buttons are separate for local player even with other messages.
			return true
		else
			return false
		end
	end

	local hasNoMessages = not self.state.filteredMessages or #self.state.filteredMessages == 0
	local showVoiceIndicator = self.props.voiceEnabled and not self.state.voiceTimedOut
	if showVoiceIndicator and (not self.props.isBubbleChatEnabled or hasNoMessages) then
		return true
	end

	return false
end

function BubbleChatBillboard:render()
	local adorneeInstance = getAdorneeInstance(self.props.adornee, self.state.savedChatSettings.AdorneeName)
	local isLocalPlayer = if Players.LocalPlayer
		then self.props.userId == tostring(Players.LocalPlayer.UserId)
		else false
	local chatSettings = self.state.savedChatSettings

	if not adorneeInstance then
		Logger:debug("No adornee for {}", self.state.shortId)
		return
	end

	-- Don't render the billboard at all if out of range. We could use
	-- the MaxDistance property on the billboard, but that keeps
	-- instances around. This approach means nothing exists in the DM
	-- when there are no messages.
	if not self.state.isInsideRenderDistance then
		Logger:debug("Not in range for {}", self.state.shortId)
		return
	end

	-- Easier Unmuting:
	-- if easier unmuting is on, we are no longer hiding the locally muted
	-- indicator. however, we do still want to hide the indicator if the
	-- other player is not near localplayer OR if the other player is muted
	if
		FFlagEasierUnmuting
		and self.props.voiceState == "LOCAL_MUTED"
		and (not self.state.isInsideEasierUnmutingDistance or (FFlagEasierUnmutingHideIfMuted and self.props.isMuted))
	then
		Logger:trace("Unmute toggle not applicable for {}", self.state.shortId)
		return
	end

	local children = {}

	local hasMessagesToShow = self.state.filteredMessages and #self.state.filteredMessages > 0
	local showVoiceIndicator = self.props.voiceEnabled and not self.state.voiceTimedOut

	-- Self View hides the local player's bubbles.
	if GlobalFlags.AvatarChatEnabled and isLocalPlayer then
		showVoiceIndicator = showVoiceIndicator and not self.state.selfViewOpen
	end
	local shouldRenderInsert = showVoiceIndicator and not GlobalFlags.AvatarChatEnabled
	local renderInsert = if showVoiceIndicator then self.renderInsert else nil
	local renderInsertSize = RENDER_INSERT_SIZE

	local clientSettings = GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat() and self.props.clientSettings
		or nil
	if GlobalFlags.AvatarChatEnabled or GlobalFlags.ChromeEnabled then
		if self:shouldRenderPlayerButtons() then
			local PlayerButtonSettings = {
				chatSettings = getFFlagEnableAvatarChatToggleUIUpgradeForTextChatService() and self.props.chatSettings
					or chatSettings,
				isInsideMaximizeDistance = self.state.isInsideMaximizeDistance,
				LayoutOrder = 2,
				isLocalPlayer = isLocalPlayer,
				userId = self.props.userId,
				getIcon = self.props.getIconVoiceIndicator,
				hasCameraPermissions = self.props.hasCameraPermissions,
				hasMicPermissions = self.props.hasMicPermissions,
				onClickedVoiceIndicator = self.props.onClickedVoiceIndicator,
				onClickedCameraIndicator = self.props.onClickedCameraIndicator,
				voiceEnabled = self.props.voiceEnabled,
			}

			children.PlayerButtons = (
				getFFlagEnableAvatarChatToggleUIUpgradeForTextChatService()
				and Roact.createElement(PlayerButtonsV2, PlayerButtonSettings)
			) or Roact.createElement(PlayerButtons, PlayerButtonSettings)

			children.listLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
				Padding = UDim.new(0, 8),
			})
			children.padding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 8),
			})
		end
	else
		-- If neither voice is not on or we have messages to show this whole component shouldn't be rendered.
		if showVoiceIndicator and hasMessagesToShow == false then
			-- Render the VoiceBubble if neither of the other two should render.
			children.VoiceBubble = Roact.createElement(BlankBubble, {
				chatSettings = chatSettings,
				userId = self.props.userId,
				renderInsert = renderInsert,
				insertSize = renderInsertSize,
				isDistant = not self.state.isInsideMaximizeDistance,
				clientSettings = clientSettings,
			})
		end
	end

	if self.state.isInsideMaximizeDistance then
		children.BubbleChatList = Roact.createElement(BubbleChatList, {
			userId = self.props.userId,
			isVisible = self.state.isInsideMaximizeDistance,
			onLastBubbleFadeOut = self.onLastBubbleFadeOut,
			chatSettings = chatSettings,
			renderFirstInsert = if shouldRenderInsert then renderInsert else nil,
			insertSize = renderInsertSize,
			messages = self.state.filteredMessages,
			clientSettings = clientSettings,
		})
	elseif hasMessagesToShow then
		children.DistantBubble = Roact.createElement(ChatBubbleDistant, {
			fadingOut = not self.state.filteredMessages or #self.state.filteredMessages == 0,
			onFadeOut = self.onLastBubbleFadeOut,
			chatSettings = chatSettings,
			renderInsert = if shouldRenderInsert then renderInsert else nil,
			insertSize = renderInsertSize,
			clientSettings = clientSettings,
		})
	end

	-- For other players, increase vertical offset by 1 to prevent overlaps with the name display
	-- For the local player, increase Z offset to prevent the character from overlapping his bubbles when jumping/emoting
	-- (see default value of settings.LocalPlayerStudsOffset in ChatSettings.lua)
	-- This behavior is the same as the old bubble chat
	local studsOffset = isLocalPlayer and chatSettings.LocalPlayerStudsOffset or Vector3.new(0, 1, 0.1)
	return Roact.createElement("BillboardGui", {
		Adornee = adorneeInstance,
		Active = if GlobalFlags.AvatarChatEnabled then self:shouldRenderPlayerButtons() else showVoiceIndicator,
		Size = UDim2.fromOffset(500, 200),
		SizeOffset = Vector2.new(0, 0.5),
		StudsOffset = studsOffset + Vector3.new(0, chatSettings.VerticalStudsOffset, 0),
		StudsOffsetWorldSpace = self.offset,
		ResetOnSpawn = false,
	}, children)
end

function BubbleChatBillboard:didUpdate(_lastProps, lastState)
	-- If self.state.isInsideRenderDistance, the responsibility to call self.onLastBubbleFadeOut will be on either
	-- DistantBubble or BubbleChatList (after their fade out animation)
	if
		(not self.state.filteredMessages or #self.state.filteredMessages == 0) and not self.state.isInsideRenderDistance
	then
		self.onLastBubbleFadeOut()
	end

	if self.state.filteredMessages and #self.state.filteredMessages > 0 then
		self.isFadingOut = false
	end

	if FFlagEasierUnmuting then
		self:checkCounterForTimeoutWithEasierUnmuting(lastState)
	else
		self:checkCounterForTimeout(lastState.voiceStateCounter)
	end
end

local function getRecentMessages(messages, bubbleDurationInMillis, maxBubbles)
	local now = FFlagFixTimestampNowComparisonForChatMessages and (workspace:GetServerTimeNow() * 1000)
		or DateTime.now().UnixTimestampMillis

	return List.filter(messages, function(message, index)
		if message.isVisibleInBubbleChat then
			return index > #messages - maxBubbles
				and now - message.timestamp.UnixTimestampMillis < bubbleDurationInMillis
		else
			return false
		end
	end)
end

function BubbleChatBillboard:didMount()
	self.isMounted = true

	local initialOffset = self:getVerticalOffset()
	self.offsetGoal = initialOffset
	self.offsetMotor:setGoal(Otter.instant(initialOffset))

	-- Need to use a loop because property changed signals don't work on Position
	self.heartbeatConn = RunService.Heartbeat:Connect(function()
		local adorneeInstance = getAdorneeInstance(self.props.adornee, self.state.savedChatSettings.AdorneeName) -- Can be a BasePart or Attachment or nil
		if workspace.CurrentCamera and adorneeInstance then
			local position = if adorneeInstance:IsA("Attachment")
				then adorneeInstance.WorldPosition
				else adorneeInstance.Position
			local distance = (workspace.CurrentCamera.CFrame.Position - position).Magnitude
			local isInsideRenderDistance = distance < self.state.savedChatSettings.MaxDistance
			local isInsideMaximizeDistance = distance < self.state.savedChatSettings.MinimizeDistance
			local isInsideEasierUnmutingDistance = false

			if FFlagEasierUnmuting then
				local localAdorneeInstance =
					getAdorneeInstance(self.props.localAdornee, self.state.savedChatSettings.AdorneeName)

				if localAdorneeInstance then
					local localPosition = if localAdorneeInstance:IsA("Attachment")
						then localAdorneeInstance.WorldPosition
						else localAdorneeInstance.Position
					local easierUnmutingDistance = getEasierUnmutingDistance(position, localPosition)

					if easierUnmutingDistance ~= nil then
						isInsideEasierUnmutingDistance = easierUnmutingDistance < FIntEasierUnmutingDisplayDistance
					end
				end
			end

			if
				isInsideMaximizeDistance ~= self.state.isInsideMaximizeDistance
				or isInsideRenderDistance ~= self.state.isInsideRenderDistance
				or (FFlagEasierUnmuting and isInsideEasierUnmutingDistance ~= self.state.isInsideEasierUnmutingDistance)
			then
				self:setState({
					isInsideRenderDistance = isInsideRenderDistance,
					isInsideMaximizeDistance = isInsideMaximizeDistance,
					isInsideEasierUnmutingDistance = isInsideEasierUnmutingDistance,
				})
			end
		end

		local offset = self:getVerticalOffset()
		if math.abs(offset - self.offsetGoal) > BILLBOARD_OFFSET_EPSILON then
			self.offsetGoal = offset
			self.offsetMotor:setGoal(Otter.spring(offset, SPRING_CONFIG))
		end

		local now = FFlagFixTimestampNowComparisonForChatMessages and (workspace:GetServerTimeNow() * 1000)
			or DateTime.now().UnixTimestampMillis
		local bubbleDurationInMillis = self.state.savedChatSettings.BubbleDuration * 1000
		for _, message in ipairs(self.state.filteredMessages) do
			if now - message.timestamp.UnixTimestampMillis >= bubbleDurationInMillis then
				self:setState(function(state)
					local newFilteredMessages = getRecentMessages(
						state.filteredMessages,
						bubbleDurationInMillis,
						self.props.chatSettings.MaxBubbles
					)
					return {
						filteredMessages = newFilteredMessages,
					}
				end)
				break
			end
		end
	end)

	if FFlagEasierUnmuting then
		self:checkCounterForTimeoutWithEasierUnmuting(nil)
	else
		self:checkCounterForTimeout(nil)
	end
end

function BubbleChatBillboard:willUnmount()
	Logger:trace("Unmounting billboards for {}", self.state.shortId)
	self.isMounted = false
	if self.characterConn then
		self.characterConn:Disconnect()
		self.characterConn = nil
	end
	if self.heartbeatConn then
		self.heartbeatConn:Disconnect()
		self.heartbeatConn = nil
	end
	if self.humanoidDiedConn then
		self.humanoidDiedConn:Disconnect()
		self.humanoidDiedConn = nil
	end
	if self.selfViewConnection then
		self.selfViewConnection:disconnect()
		self.selfViewConnection = nil
	end
	self.offsetMotor:destroy()
end

function BubbleChatBillboard.getDerivedStateFromProps(nextProps, lastState)
	-- Need to save the latest chat settings to the state because when the billboard does the fade out animation,
	-- there is no message (nextProps.lastMessage == nil), so no way to get the user ID, which is needed to get
	-- user specific settings.

	local shortId = "..." .. string.sub(tostring(nextProps.userId), -4)

	local lastVoiceState
	local voiceStateCounter
	local voiceTimedOut
	if lastState.lastVoiceState ~= nextProps.voiceState then
		voiceStateCounter = (lastState.voiceStateCounter or 0) + 1
		voiceTimedOut = false
		-- Need to save voiceState into state here since getDerivedState
		-- doesn't have access to last props.
		lastVoiceState = nextProps.voiceState
	end

	local bubbleDurationInMillis = lastState.savedChatSettings.BubbleDuration * 1000
	local filteredMessages =
		getRecentMessages(nextProps.messages, bubbleDurationInMillis, lastState.savedChatSettings.MaxBubbles)
	return {
		savedChatSettings = nextProps.lastMessage and nextProps.chatSettings,
		shortId = shortId,
		filteredMessages = filteredMessages,
		voiceStateCounter = voiceStateCounter,
		voiceTimedOut = voiceTimedOut,
		lastVoiceState = lastVoiceState,
	}
end

local selectMessages = memoize(function(messagesState, userId)
	return List.map(messagesState.bubbleMessagesInOrderBySenderId[userId] or {}, function(messageId)
		return messagesState.byMessageId[messageId]
	end)
end)

local function mapStateToProps(state, props)
	local messages = selectMessages(state.Messages, props.userId)
	local lastMessage = messages[#messages]
	local localPlayerId = if Players.LocalPlayer then tostring(Players.LocalPlayer.UserId) else ""

	return {
		messages = messages,
		lastMessage = lastMessage,
		chatSettings = state.BubbleChatSettings,
		adornee = state.Adornees[props.userId] or props.partOrModel,
		clientSettings = state.ClientSettings,
		isMuted = state.Voice.participantsMuted[props.userId] or false,
		localAdornee = if FFlagEasierUnmuting then state.Adornees[localPlayerId] else nil,
	}
end

return RoactRodux.connect(mapStateToProps)(BubbleChatBillboard)
