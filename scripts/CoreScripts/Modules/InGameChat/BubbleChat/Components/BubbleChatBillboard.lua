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
	})

	self.isMounted = false
	self.offset, self.updateOffset = Roact.createBinding(Vector3.new())
	self.offsetMotor = Otter.createSingleMotor(0)
	self.offsetMotor:onStep(function(offset)
		self.updateOffset(Vector3.new(0, offset, 0))
	end)
	self.offsetGoal = 0

	self.onLastBubbleFadeOut = function()
		if self.props.onFadeOut then
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
		local adorneePart = self:getAdorneePart()
		if workspace.CurrentCamera and adorneePart then
			local distance = (workspace.CurrentCamera.CFrame.Position - adorneePart.Position).Magnitude
			local isInsideRenderDistance = distance < self.props.chatSettings.MaxDistance
			local isInsideMaximizeDistance = distance < self.props.chatSettings.MinimizeDistance
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
	if not adornee then
		return 0
	elseif adornee:IsA("Model") then
		-- Billboard is adornee'd to the PrimaryPart -> need to calculate the distance between it and the top of the
		-- bounding box
		local orientation, size = adornee:GetBoundingBox()
		if adornee.PrimaryPart then
			local relative = orientation:PointToObjectSpace(adornee.PrimaryPart.Position)
			return size.Y / 2 - relative.Y
		end
		return size.Y / 2
	elseif adornee:IsA("BasePart") then
		return adornee.Size.Y / 2
	end
end

function BubbleChatBillboard:getAdorneePart()
	local adornee = self.state.adornee
	if adornee and adornee:IsA("Model") then
		return adornee.PrimaryPart
	else
		return adornee
	end
end

function BubbleChatBillboard:render()
	local adorneePart = self:getAdorneePart()
	local isLocalPlayer = self.props.userId == tostring(Players.LocalPlayer.UserId)
	local settings = self.props.chatSettings

	if not adorneePart then
		return
	end

	-- Don't render the billboard at all if out of range. We could use
	-- the MaxDistance property on the billboard, but that keeps
	-- instances around. This approach means nothing exists in the DM
	-- when there are no messages.
	if not self.state.isInsideRenderDistance then
		return
	end

	return Roact.createElement("BillboardGui", {
		Adornee = adorneePart,
		Size = UDim2.fromOffset(500, 200),
		SizeOffset = Vector2.new(0, 0.5),
		-- For other players, increase vertical offset by 1 to prevent overlaps with the name display
		-- For the local player, increase Z offset to prevent the character from overlapping his bubbles when jumping/emoting
		-- This behavior is the same as the old bubble chat
		StudsOffset = Vector3.new(0, (isLocalPlayer and 0 or 1) + settings.VerticalStudsOffset, isLocalPlayer and 2 or 0.1),
		StudsOffsetWorldSpace = self.offset,
		ResetOnSpawn = false,
	}, {
		DistantBubble = not self.state.isInsideMaximizeDistance and Roact.createElement(ChatBubbleDistant, {
			fadingOut = not self.props.messageIds or #self.props.messageIds == 0,
			onFadeOut = self.onLastBubbleFadeOut,
		}),

		BubbleChatList = self.state.isInsideMaximizeDistance and Roact.createElement(BubbleChatList, {
			userId = self.props.userId,
			isVisible = self.state.isInsideMaximizeDistance,
			onLastBubbleFadeOut = self.onLastBubbleFadeOut,
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

local function mapStateToProps(state, props)
	local messageIds = state.userMessages[props.userId]
	local lastMessageId = messageIds and #messageIds >= 1 and messageIds[#messageIds]
	return {
		chatSettings = state.chatSettings,
		messageIds = messageIds,
		lastMessage = lastMessageId and state.messages[lastMessageId]
	}
end

return RoactRodux.connect(mapStateToProps)(BubbleChatBillboard)
