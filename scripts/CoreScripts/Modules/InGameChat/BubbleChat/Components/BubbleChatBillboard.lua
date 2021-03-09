--[[
	Singular BillboardGui that displays a user's ChatBubbles.

	We also have BubbleChatBillboards (notice the plural), which handles
	rendering each BubbleChatBillboard.
]]

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Otter = require(CorePackages.Packages.Otter)
local BubbleChatList = require(script.Parent.BubbleChatList)
local ChatBubbleDistant = require(script.Parent.ChatBubbleDistant)
local Types = require(script.Parent.Parent.Types)
local Constants = require(script.Parent.Parent.Constants)
local getSettingsForMessage = require(script.Parent.Parent.Helpers.getSettingsForMessage)

local BubbleChatBillboard = Roact.PureComponent:extend("BubbleChatBillboard")

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 4,
}

BubbleChatBillboard.validateProps = t.strictInterface({
	userId = t.string,
	onFadeOut = t.optional(t.callback),

	-- RoactRodux
	chatSettings = Types.IChatSettings,
	messageIds = t.optional(t.array(t.string)), -- messageIds == nil during the last bubble's fade out animation
	lastMessage = t.optional(Types.IMessage),
})

function BubbleChatBillboard:init()
	self:setState({
		adornee = nil,
		isInsideRenderDistance = false,
		isInsideMaximizeDistance = false,
		savedChatSettings = self.props.chatSettings,
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

	-- When the character respawns, we need to update the adornee
	local player = Players:GetPlayerFromCharacter(adornee)
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
end

function BubbleChatBillboard:willUnmount()
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

-- Fires when the adornee character respawns. Updates the state adornee to the new character once it has respawned.
function BubbleChatBillboard:onCharacterAdded(player, character)
	-- This part is inspired from HumanoidReadyUtil.lua

	-- Make sure that character is parented, stop execution if the character has respawned again in the meantime
	if not character.Parent then
		waitForFirst(character.AncestryChanged, player.CharacterAdded)
	end
	if player.Character ~= character or not character.Parent then
		return
	end

	-- Make sure that the humanoid is parented, stop execution if the character has respawned again in the meantime
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	while character:IsDescendantOf(game) and not humanoid do
		waitForFirst(character.ChildAdded, character.AncestryChanged, player.CharacterAdded)
		humanoid = character:FindFirstChildOfClass("Humanoid")
	end

	if player.Character ~= character or not character:IsDescendantOf(game) then
		return
	end

	-- Make sure that the root part is parented, stop execution if the character has respawned again in the meantime
	local rootPart = character:FindFirstChild("HumanoidRootPart")
	while character:IsDescendantOf(game) and not rootPart do
		waitForFirst(character.ChildAdded, character.AncestryChanged, player.CharacterAdded)
		rootPart = character:FindFirstChild("HumanoidRootPart")
	end

	if rootPart and character:IsDescendantOf(game) and player.Character == character and self.isMounted then
		self:setState({
			adornee = humanoid.Health == 0 and character:FindFirstChild("Head") or character
		})

		if self.humanoidDiedConn then
			self.humanoidDiedConn:Disconnect()
			self.humanoidDiedConn = nil
		end
		self.humanoidDiedConn = humanoid.Died:Connect(function()
			self:setState({
				adornee = character:FindFirstChild("Head") or character
			})
		end)
	end
end

-- Offsets the billboard so it will align properly with the top of the
-- character, regardless of what assets they're wearing.
function BubbleChatBillboard:getVerticalOffset(adornee)
	if not adornee or adornee:IsA("Attachment") then
		return 0
	elseif adornee:IsA("Model") then
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
	elseif adornee:IsA("BasePart") then
		return adornee.Size.Y / 2
	end
end

-- From a given adornee object, which can be either a model, a part, an attachment, or nil, returns which part
-- (or attachment) (or nil) the billboard should attach itself to
function BubbleChatBillboard:getAdorneeInstance(adornee)
	if not adornee then
		return
	elseif adornee:IsA("Model") then
		local adorneePart = adornee:FindFirstChild(self.state.savedChatSettings.AdorneeName, true)
		if not adorneePart or adorneePart:IsA("BasePart") or adorneePart:IsA("Attachment") then
			return adorneePart
		end
	elseif adornee:IsA("BasePart") or adornee:IsA("Attachment") then
		return adornee
	end
end

function BubbleChatBillboard:render()
	local adorneeInstance = self:getAdorneeInstance(self.state.adornee)
	local isLocalPlayer = self.props.userId == tostring(Players.LocalPlayer.UserId)
	local chatSettings = self.state.savedChatSettings

	if not adorneeInstance then
		return
	end

	-- Don't render the billboard at all if out of range. We could use
	-- the MaxDistance property on the billboard, but that keeps
	-- instances around. This approach means nothing exists in the DM
	-- when there are no messages.
	if not self.state.isInsideRenderDistance then
		return
	end

	-- For other players, increase vertical offset by 1 to prevent overlaps with the name display
	-- For the local player, increase Z offset to prevent the character from overlapping his bubbles when jumping/emoting
	-- (see default value of settings.LocalPlayerStudsOffset in ChatSettings.lua)
	-- This behavior is the same as the old bubble chat
	local studsOffset = isLocalPlayer and chatSettings.LocalPlayerStudsOffset or Vector3.new(0, 1, .1)
	return Roact.createElement("BillboardGui", {
		Adornee = adorneeInstance,
		Size = UDim2.fromOffset(500, 200),
		SizeOffset = Vector2.new(0, 0.5),
		StudsOffset = studsOffset + Vector3.new(0, chatSettings.VerticalStudsOffset, 0),
		StudsOffsetWorldSpace = self.offset,
		ResetOnSpawn = false,
	}, {
		DistantBubble = not self.state.isInsideMaximizeDistance and Roact.createElement(ChatBubbleDistant, {
			fadingOut = not self.props.messageIds or #self.props.messageIds == 0,
			onFadeOut = self.onLastBubbleFadeOut,
			chatSettings = chatSettings,
		}),

		BubbleChatList = self.state.isInsideMaximizeDistance and Roact.createElement(BubbleChatList, {
			userId = self.props.userId,
			isVisible = self.state.isInsideMaximizeDistance,
			onLastBubbleFadeOut = self.onLastBubbleFadeOut,
			chatSettings = chatSettings,
		})
	})

end

function BubbleChatBillboard:didUpdate()
	-- If self.state.isInsideRenderDistance, the responsibility to call self.onLastBubbleFadeOut will be on either
	-- DistantBubble or BubbleChatList (after their fade out animation)
	if (not self.props.messageIds or #self.props.messageIds == 0) and not self.state.isInsideRenderDistance then
		self.onLastBubbleFadeOut()
	end
end

function BubbleChatBillboard.getDerivedStateFromProps(nextProps)
	-- Need to save the latest chat settings to the state because when the billboard does the fade out animation,
	-- there is no message (nextProps.lastMessage == nil), so no way to get the user ID, which is needed to get
	-- user specific settings.
	return {
		savedChatSettings = nextProps.lastMessage and nextProps.chatSettings
	}
end

local function mapStateToProps(state, props)
	local messageIds = state.userMessages[props.userId]
	local lastMessageId = messageIds and #messageIds >= 1 and messageIds[#messageIds]
	local lastMessage = lastMessageId and state.messages[lastMessageId]
	return {
		chatSettings = getSettingsForMessage(state.chatSettings, lastMessage),
		messageIds = messageIds,
		lastMessage = lastMessage
	}
end

return RoactRodux.connect(mapStateToProps)(BubbleChatBillboard)
