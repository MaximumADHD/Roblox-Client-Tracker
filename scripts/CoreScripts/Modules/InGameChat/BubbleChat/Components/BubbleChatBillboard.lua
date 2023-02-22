--!nonstrict
--[[
	Singular BillboardGui that displays a user's ChatBubbles.

	We also have BubbleChatBillboards (notice the plural), which handles
	rendering each BubbleChatBillboard.
]]

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local StarterGui = game:GetService("StarterGui")

local log = require(script.Parent.Parent.Logger)(script.Name)

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Otter = require(CorePackages.Packages.Otter)
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)

local BubbleChatList = require(script.Parent.BubbleChatList)
local ChatBubbleDistant = require(script.Parent.ChatBubbleDistant)
local VoiceBubble = require(script.Parent.VoiceBubble)
local ControlsBubble = require(script.Parent.ControlsBubble)
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicator)
local Types = require(script.Parent.Parent.Types)
local Constants = require(script.Parent.Parent.Constants)
local getSettingsForMessage = require(script.Parent.Parent.Helpers.getSettingsForMessage)
local selfViewVisibilityUpdatedSignal = require(RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local GetFFlagEnableVoiceChatSpeakerIcons = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatSpeakerIcons)
local GetFFlagEnableVoiceChatManualReconnect = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatManualReconnect)
local GetFFlagBubbleChatInexistantAdorneeFix = require(RobloxGui.Modules.Flags.GetFFlagBubbleChatInexistantAdorneeFix)
local GetFFlagSelfViewSettingsEnabled = require(RobloxGui.Modules.Settings.Flags.GetFFlagSelfViewSettingsEnabled)
local GetFFlagBubbleChatAddCamera = require(RobloxGui.Modules.Flags.GetFFlagBubbleChatAddCamera)
local SelfViewAPI = require(RobloxGui.Modules.SelfView.publicApi)

local FIntBubbleVoiceTimeoutMillis = game:DefineFastInt("BubbleVoiceTimeoutMillis", 1000)

local BubbleChatBillboard = Roact.PureComponent:extend("BubbleChatBillboard")

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 4,
}

BubbleChatBillboard.validateProps = t.strictInterface({
	userId = t.string,
	onFadeOut = t.optional(t.callback),
	voiceEnabled = t.optional(t.boolean),
	bubbleChatEnabled = t.optional(t.boolean),

	-- RoactRodux
	chatSettings = Types.IChatSettings,
	messageIds = t.optional(t.array(t.string)), -- messageIds == nil during the last bubble's fade out animation
	lastMessage = t.optional(Types.IMessage),
	voiceState = t.optional(t.string),
})

function BubbleChatBillboard:init()
	local selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible()
	local selfViewEnabled = if GetFFlagSelfViewSettingsEnabled() then StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All) or StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView) else nil

	self:setState({
		adornee = nil,
		isInsideRenderDistance = false,
		isInsideMaximizeDistance = false,
		savedChatSettings = self.props.chatSettings,
		voiceTimedOut = false,
		voiceStateCounter = 0,
		lastVoiceState = nil,
		selfViewOpen = selfViewOpen,
		selfViewEnabled = selfViewEnabled,
	})

	self.isMounted = false
	self.offset, self.updateOffset = Roact.createBinding(Vector3.new())
	self.offsetMotor = Otter.createSingleMotor(0)
	self.offsetMotor:onStep(function(offset)
		self.updateOffset(Vector3.new(0, offset, 0))
	end)
	self.offsetGoal = 0

	self.onSelfViewVisibilityUpdated = function()
		self:setState({
			selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible()
		})
	end

	self.onLastBubbleFadeOut = function()
		if self.props.onFadeOut and not self.isFadingOut then
			self.isFadingOut = true
			self.props.onFadeOut(self.props.userId)
		end

		if self.state.hasMessage and self.isMounted then
			self:setState({
				hasMessage = false,
			})
		end
	end

	if self.props.voiceEnabled then
		local onClick
		if self.props.userId == tostring(Players.LocalPlayer.UserId) then
			onClick = function()
				if GetFFlagEnableVoiceChatManualReconnect() and self.props.voiceState == Constants.VOICE_STATE.ERROR then
					VoiceChatServiceManager:RejoinPreviousChannel()
				else
					VoiceChatServiceManager:ToggleMic()
				end
			end
		else
			onClick = function()
				-- The billboards use strings, but the manager expects numbers
				VoiceChatServiceManager:ToggleMutePlayer(tonumber(self.props.userId))
			end
		end

		local userId = self.props.userId

		local iconStyle = "MicDark"

		if GetFFlagEnableVoiceChatSpeakerIcons() then
			iconStyle = userId ~= tostring(Players.LocalPlayer.UserId) and "SpeakerDark" or "MicDark"
		end

		self.renderInsert = function()
			return Roact.createElement(VoiceIndicator, {
				onClicked = onClick,
				userId = userId,
				iconStyle = iconStyle,
			})
		end

		self.insertSize = Vector2.new(28, 28)
	end

	self.onCoreGuiChanged = function()
		local coreGuiState = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
		if self.state.selfViewOpen ~= coreGuiState then
			self:setState({
				selfViewOpen = coreGuiState
			})
		end
	end

	self.selfViewVisibilityUpdatedSignal = selfViewVisibilityUpdatedSignal:connect(function()
		self:setState({
			selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible()
		})
	end)
end

function BubbleChatBillboard:checkCounterForTimeout(lastCounter)
	-- Start a new timer when the counter changes, unless this is the local
	-- user or the voice state is TALKING.
	if 
		self.props.userId ~= tostring(Players.LocalPlayer.UserId) and
		self.state.lastVoiceState ~= Constants.VOICE_STATE.TALKING and
		self.state.voiceStateCounter ~= lastCounter
	then
		local currentCounter = self.state.voiceStateCounter
		delay(FIntBubbleVoiceTimeoutMillis / 1000.0, function()
			-- If the counter hasn't changed during the delay, hide the voice indicator.
			if self.state.voiceStateCounter == currentCounter and self.isMounted then
				self:setState({
					voiceTimedOut = true,
				})
			end
		end)
	end
end

function BubbleChatBillboard:didMount()
	self.isMounted = true
	local adornee = self.props.lastMessage and self.props.lastMessage.adornee
	self:setState({
		adornee = adornee
	})

	local initialOffset = self:getVerticalOffset(adornee)
	self.offsetGoal = initialOffset
	self.offsetMotor:setGoal(Otter.instant(initialOffset))

	if GetFFlagBubbleChatAddCamera() then
		self:getPermissions()
	end

	-- When the character respawns, we need to update the adornee
	local player
	if adornee then
		player = Players:GetPlayerFromCharacter(adornee)
	elseif tonumber(self.props.userId) then
		player = Players:GetPlayerByUserId(self.props.userId)
	end

	if player then
		if player.Character then
			coroutine.wrap(function()
				self:onCharacterAdded(player, player.Character)
			end)()
		end
		self.characterConn = player.CharacterAdded:Connect(function(character)
			self:onCharacterAdded(player, character)
		end)
	end

	-- Need to use a loop because property changed signals don't work on Position
	self.heartbeatConn = RunService.Heartbeat:Connect(function()
		local adorneeInstance = self:getAdorneeInstance(self.state.adornee) -- Can be a BasePart or Attachment or nil
		if workspace.CurrentCamera and adorneeInstance then
			local position = adorneeInstance:IsA("Attachment") and adorneeInstance.WorldPosition or adorneeInstance.Position
			local distance = (workspace.CurrentCamera.CFrame.Position - position).Magnitude
			local isInsideRenderDistance = distance < self.state.savedChatSettings.MaxDistance
			local isInsideMaximizeDistance = distance < self.state.savedChatSettings.MinimizeDistance
			if isInsideMaximizeDistance ~= self.state.isInsideMaximizeDistance or isInsideRenderDistance ~= self.state.isInsideRenderDistance then
				self:setState({
					isInsideRenderDistance = isInsideRenderDistance,
					isInsideMaximizeDistance = isInsideMaximizeDistance
				})
			end
		end

		local offset = self:getVerticalOffset(self.state.adornee)
		if math.abs(offset - self.offsetGoal) > Constants.BILLBOARD_OFFSET_EPSILON then
			self.offsetGoal = offset
			self.offsetMotor:setGoal(Otter.spring(offset, SPRING_CONFIG))
		end
	end)

	self:checkCounterForTimeout(nil)
end

function BubbleChatBillboard:willUnmount()
	log:trace("Unmounting billboards for {}", self.state.shortId)
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
	self.offsetMotor:destroy()

	if self.selfViewVisibilityUpdatedSignal then
		self.selfViewVisibilityUpdatedSignal:disconnect()
		self.selfViewVisibilityUpdatedSignal = nil
	end
end

-- Wait for the first of the passed signals to fire
local function waitForFirst(...)
	local shunt = Instance.new("BindableEvent")
	local slots = {...}

	local function fire(...)
		for i = 1, #slots do
			slots[i]:Disconnect()
		end

		return shunt:Fire(...)
	end

	for i = 1, #slots do
		slots[i] = slots[i]:Connect(fire)
	end

	return shunt.Event:Wait()
end

local function findFirstChildByNameAndClass(instance, name, class)
	for _, child in ipairs(instance:GetChildren()) do
		if child.Name == name and child:IsA(class) then
			return child
		end
	end
end

-- Fires when the adornee character respawns. Updates the state adornee to the new character once it has respawned.
function BubbleChatBillboard:onCharacterAdded(player, character)
	-- This part is inspired from HumanoidReadyUtil.lua

	-- Make sure that character is parented, stop execution if the character has respawned again in the meantime
	if not character.Parent then
		waitForFirst(character.AncestryChanged, player.CharacterAdded)
	end
	if player.Character ~= character or not character.Parent then
		log:debug("Mismatched or unparented character in onCharacterAdded for {}", self.state.shortId)
		return
	end

	-- Make sure that the humanoid is parented, stop execution if the character has respawned again in the meantime
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	while character:IsDescendantOf(game) and not humanoid do
		waitForFirst(character.ChildAdded, character.AncestryChanged, player.CharacterAdded)
		humanoid = character:FindFirstChildOfClass("Humanoid")
	end

	if player.Character ~= character or not character:IsDescendantOf(game) then
		log:debug("Mismatched or unparented character in onCharacterAdded for {}", self.state.shortId)
		return
	end

	-- Make sure that the root part is parented, stop execution if the character has respawned again in the meantime
	local rootPart
	if GetFFlagBubbleChatInexistantAdorneeFix() then
		rootPart = character.PrimaryPart
	else
		rootPart = character:FindFirstChild("HumanoidRootPart")
	end
	while character:IsDescendantOf(game) and not rootPart do
		waitForFirst(character.ChildAdded, character.AncestryChanged, player.CharacterAdded)
		if GetFFlagBubbleChatInexistantAdorneeFix() then
			rootPart = character.PrimaryPart
		else
			rootPart = character:FindFirstChild("HumanoidRootPart")
		end
	end

	if rootPart and character:IsDescendantOf(game) and player.Character == character and self.isMounted then
		local head = findFirstChildByNameAndClass(character, "Head", "BasePart")
		self:setState({
			adornee = humanoid.Health == 0 and head or character
		})

		if self.humanoidDiedConn then
			self.humanoidDiedConn:Disconnect()
			self.humanoidDiedConn = nil
		end
		self.humanoidDiedConn = humanoid.Died:Connect(function()
			self:setState({
				adornee = findFirstChildByNameAndClass(character, "Head", "BasePart") or character
			})
		end)
	end
end

-- Offsets the billboard so it will align properly with the top of the
-- character, regardless of what assets they're wearing.
function BubbleChatBillboard:getVerticalOffset(adornee)
	if adornee and adornee:IsA("Model") then
		-- Billboard is adornee'd to a child part -> need to calculate the distance between it and the top of the
		-- bounding box
		local orientation, size = adornee:GetBoundingBox()
		local adorneeInstance = self:getAdorneeInstance(adornee)
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
function BubbleChatBillboard:getAdorneeInstance(adornee)
	if not adornee then
		return
	elseif adornee:IsA("Model") then
		local adorneePart = adornee:FindFirstChild(self.state.savedChatSettings.AdorneeName, true)
		if GetFFlagBubbleChatInexistantAdorneeFix() then
			adorneePart = adorneePart or adornee.PrimaryPart
		end
		if not adorneePart or adorneePart:IsA("BasePart") or adorneePart:IsA("Attachment") then
			return adorneePart
		end
	elseif adornee:IsA("BasePart") or adornee:IsA("Attachment") then
		return adornee
	end
end

--[[
	Check that the user's device has given Roblox camera permission.
]]
function BubbleChatBillboard:getPermissions()
	local callback = function(response)
		self:setState({
			hasCameraPermissions = response.hasCameraPermissions,
			hasMicPermissions = response.hasMicPermissions,
		})
	end
	return getCamMicPermissions(callback)
end

--[[
	Depending on a combination of account and device permissions, we
	show or hide the bubble to toggle mic/camera.
]]
function BubbleChatBillboard:shouldShowControlBubble()
	if GetFFlagBubbleChatAddCamera() then
		return self.state.hasMicPermissions or self.state.hasCameraPermissions
	else
		return false
	end
end

function BubbleChatBillboard:getRenderVoiceAndCameraBubble()
	local isLocalPlayer = self.props.userId == tostring(Players.LocalPlayer.UserId)
	local showVoiceIndicator = self.props.voiceEnabled and not self.state.voiceTimedOut

	-- Self View hides local player's bubble. Otherwise proceed as normal for other players.
	if isLocalPlayer and not self.state.selfViewOpen then
		return true
	end

	if not isLocalPlayer and showVoiceIndicator and (
		not self.props.bubbleChatEnabled
		or not self.props.messageIds
		or #self.props.messageIds == 0)
	then
		return true
	end

	return false
end

function BubbleChatBillboard:render()
	local adorneeInstance = self:getAdorneeInstance(self.state.adornee)
	local isLocalPlayer = self.props.userId == tostring(Players.LocalPlayer.UserId)
	local chatSettings = self.state.savedChatSettings

	if not adorneeInstance then
		log:trace("No adornee for {}", self.state.shortId)
		return
	end

	-- Don't render the billboard at all if out of range. We could use
	-- the MaxDistance property on the billboard, but that keeps
	-- instances around. This approach means nothing exists in the DM
	-- when there are no messages.
	if not self.state.isInsideRenderDistance then
		log:trace("Not in range for {}", self.state.shortId)
		return
	end

	local children = {}
	local active = nil
	local showVoiceIndicator = self.props.voiceEnabled and not self.state.voiceTimedOut
	
	-- Self View hides the local user's bubble chat billboard.
	if GetFFlagSelfViewSettingsEnabled() and isLocalPlayer then
		showVoiceIndicator = showVoiceIndicator and not self.state.selfViewOpen
	end

	if GetFFlagBubbleChatAddCamera() and self:getRenderVoiceAndCameraBubble() then
		children.VoiceAndCameraBubble = Roact.createElement(ControlsBubble, {
			chatSettings = chatSettings,
			isInsideMaximizeDistance = self.state.isInsideMaximizeDistance,
			LayoutOrder = 2,
			isLocalPlayer = isLocalPlayer,
			hasCameraPermissions = self.state.hasCameraPermissions,
			hasMicPermissions = self.state.hasMicPermissions,
			userId = self.props.userId,
		})
		children.listLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
			Padding = UDim.new(0, 8),
		})
		children.padding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 8),
		})
	else
		-- If neither bubble chat nor voice is on, this whole component shouldn't be rendered.
		if showVoiceIndicator and (
			not self.props.bubbleChatEnabled
			or not self.props.messageIds
			or #self.props.messageIds == 0)
		then
			-- Render the VoiceBubble if neither of the other two should render.
			children.VoiceBubble = Roact.createElement(VoiceBubble, {
				chatSettings = chatSettings,
				renderInsert = self.renderInsert,
				insertSize = self.insertSize,
				isDistant = not self.state.isInsideMaximizeDistance,
			})
		end
	end

	if self.state.hasMessage then
		if self.state.isInsideMaximizeDistance then
			children.BubbleChatList = Roact.createElement(BubbleChatList, {
				userId = self.props.userId,
				isVisible = self.state.isInsideMaximizeDistance,
				onLastBubbleFadeOut = self.onLastBubbleFadeOut,
				chatSettings = chatSettings,
				renderFirstInsert = if not GetFFlagBubbleChatAddCamera() and showVoiceIndicator then self.renderInsert else nil,
				insertSize = self.insertSize,
			})
		else
			children.DistantBubble = Roact.createElement(ChatBubbleDistant, {
				fadingOut = not self.props.messageIds or #self.props.messageIds == 0,
				onFadeOut = self.onLastBubbleFadeOut,
				chatSettings = chatSettings,
				renderInsert = showVoiceIndicator and self.renderInsert,
				insertSize = self.insertSize,
			})
		end
	end

	active = showVoiceIndicator

	-- For other players, increase vertical offset by 1 to prevent overlaps with the name display
	-- For the local player, increase Z offset to prevent the character from overlapping his bubbles when jumping/emoting
	-- (see default value of settings.LocalPlayerStudsOffset in ChatSettings.lua)
	-- This behavior is the same as the old bubble chat
	local studsOffset = isLocalPlayer and chatSettings.LocalPlayerStudsOffset or Vector3.new(0, 1, .1)
	return Roact.createElement("BillboardGui", {
		Adornee = adorneeInstance,
		Active = active,
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
	if (not self.props.messageIds or #self.props.messageIds == 0) and not self.state.isInsideRenderDistance then
		self.onLastBubbleFadeOut()
	end

	if self.props.messageIds and #self.props.messageIds > 0 then
		self.isFadingOut = false
	end

	self:checkCounterForTimeout(lastState.voiceStateCounter)
end

function BubbleChatBillboard.getDerivedStateFromProps(nextProps, lastState)
	-- Need to save the latest chat settings to the state because when the billboard does the fade out animation,
	-- there is no message (nextProps.lastMessage == nil), so no way to get the user ID, which is needed to get
	-- user specific settings.

	local shortId = "..." .. string.sub(tostring(nextProps.userId), -4)

	local hasMessage = not lastState.hasMessage and nextProps.messageIds and #nextProps.messageIds > 0

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

	return {
		hasMessage = hasMessage or nil,
		savedChatSettings = nextProps.lastMessage and nextProps.chatSettings,
		shortId = shortId,
		voiceStateCounter = voiceStateCounter,
		voiceTimedOut = voiceTimedOut,
		lastVoiceState = lastVoiceState,
	}
end

local function mapStateToProps(state, props)
	local messageIds = state.userMessages[props.userId]
	local lastMessageId = messageIds and #messageIds >= 1 and messageIds[#messageIds]
	local lastMessage = lastMessageId and state.messages[lastMessageId]
	local voiceState = state.voiceState[props.userId]
	return {
		chatSettings = getSettingsForMessage(state.chatSettings, lastMessage),
		messageIds = messageIds,
		lastMessage = lastMessage,
		voiceState = voiceState,
	}
end

return RoactRodux.connect(mapStateToProps)(BubbleChatBillboard)
