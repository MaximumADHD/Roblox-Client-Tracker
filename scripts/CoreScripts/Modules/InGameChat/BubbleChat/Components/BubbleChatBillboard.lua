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
local BubbleChatList = require(script.Parent.BubbleChatList)
local ChatBubbleDistant = require(script.Parent.ChatBubbleDistant)
local Types = require(script.Parent.Parent.Types)

local BubbleChatBillboard = Roact.Component:extend("BubbleChatBillboard")

BubbleChatBillboard.validateProps = t.strictInterface({
	userId = t.string,

	-- RoactRodux
	chatSettings = t.table,
	messages = t.map(t.string, Types.IMessage),
	messageIds = t.array(t.string)
})

function BubbleChatBillboard:init()
	self.state = {
		adornee = nil,
		isInsideRenderDistance = false,
		isInsideMaximizeDistance = false
	}
end

function BubbleChatBillboard:didMount()
	local adornee = self:getAdornee()
	self:setState({
		adornee = adornee
	})

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
	end)
end

function BubbleChatBillboard:willUnmount()
	if self.characterConn then
		self.characterConn:Disconnect()
		self.characterConn = nil
	end
	if self.heartbeatConn then
		self.heartbeatConn:Disconnect()
		self.heartbeatConn = nil
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

	-- Make sure that the root part is parented, stop execution if the character has respawned again in the meantime
	local rootPart = character:FindFirstChild("HumanoidRootPart")
	while character:IsDescendantOf(game) and not rootPart do
		waitForFirst(character.ChildAdded, character.AncestryChanged, player.CharacterAdded)
		rootPart = character:FindFirstChild("HumanoidRootPart")
	end
	if rootPart and character:IsDescendantOf(game) and player.Character == character then
		self:setState({
			adornee = character
		})
	end
end

-- Offsets the billboard so it will align properly with the top of the
-- character, regardless of what assets they're wearing.
function BubbleChatBillboard:getVerticalOffset(adornee)
	if adornee:IsA("Model") then
		local extents = adornee:GetExtentsSize()
		return Vector3.new(0, extents.Y / 2, 0)
	else
		return Vector3.new(0, adornee.Size.Y / 2, 0)
	end
end

-- If the billboard is to be attached to a character, return it,
-- otherwise return the part specified in lastMessage.adornee
function BubbleChatBillboard:getAdornee()
	local lastMessageId = self.props.messageIds[#self.props.messageIds]
	if not lastMessageId then return end

	local lastMessage = self.props.messages[lastMessageId]
	assert(Types.IMessage(lastMessage))

	-- Need to pcall since GetPlayerByUserId will error if there's no Player
	-- instance associated with userId. Since we need to support NPCs, a Player
	-- not existing is a common scenario.
	-- TODO Just use message.adornee https://jira.rbx.com/browse/SOCIALAPP-138
	local success, player = pcall(function()
		return Players:GetPlayerByUserId(tonumber(self.props.userId))
	end)

	if success then
		return player.Character
	else
		return lastMessage.adornee
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
	local chatSettings = self.props.chatSettings
	local messageIds = self.props.messageIds
	local lastMessageId = messageIds[#messageIds]
	local lastMessage = self.props.messages[lastMessageId]
	local adornee = self.state.adornee
	local adorneePart = self:getAdorneePart()

	-- adorneePart can be nil if this is a player bubble and the character has been deleted
	if not adorneePart then
		return
	end

	-- Don't render the Billboard if the user has not sent any messages recently
	if os.time() - lastMessage.timestamp > chatSettings.BubbleDuration then
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
		StudsOffset = self:getVerticalOffset(adornee),
		ResetOnSpawn = false,
	}, {
		DistantBubble = not self.state.isInsideMaximizeDistance and Roact.createElement(ChatBubbleDistant),

		BubbleChatList = self.state.isInsideMaximizeDistance and Roact.createElement(BubbleChatList, {
			userId = self.props.userId,
			isVisible = self.state.isInsideMaximizeDistance,
		})
	})

end

function BubbleChatBillboard:shouldUpdate(nextProps)
	-- Only update the messages if the user's list of message IDs changed.
	--
	-- Since `messages` and `userMessages` are updated at the same time, we only
	-- want to update the current user's billboard when both a new message has
	-- been added, AND their specific list of messages has changed. This ensures
	-- that a user chatting will not cause a rerender for another user.
	if nextProps.messages ~= self.props.messages then
		if nextProps.messageIds == self.props.messageIds then
			return false
		end
	end
	return true
end

local function mapStateToProps(state, props)
	return {
		chatSettings = state.chatSettings,
		messages = state.messages,
		messageIds = state.userMessages[props.userId]
	}
end

return RoactRodux.connect(mapStateToProps)(BubbleChatBillboard)
