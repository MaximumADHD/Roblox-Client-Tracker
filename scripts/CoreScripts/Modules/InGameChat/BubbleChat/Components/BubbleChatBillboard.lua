--[[
	Singular BillboardGui that displays a user's ChatBubbles.

	We also have BubbleChatBillboards (notice the plural), which handles
	rendering each BubbleChatBillboard.
]]

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local BubbleChatList = require(script.Parent.BubbleChatList)
local ChatBubbleDistant = require(script.Parent.ChatBubbleDistant)
local CameraContext = require(script.Parent.CameraContext)
local Types = require(script.Parent.Parent.Types)

local BubbleChatBillboard = Roact.Component:extend("BubbleChatBillboard")

BubbleChatBillboard.validateProps = t.strictInterface({
	userId = t.string,

	-- RoactRodux
	chatSettings = t.table,
	messages = t.map(t.string, Types.IMessage),
	messageIds = t.array(t.string)
})

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

function BubbleChatBillboard:canShowDistantBubble(chatSettings, lastMessage, distance)
	if lastMessage then
		if distance >= chatSettings.MinimizeDistance then
			if os.time() - lastMessage.timestamp <= chatSettings.BubbleDuration then
				return true
			end
		end
	end
	return false
end

function BubbleChatBillboard:getAdornee(message)
	assert(Types.IMessage(message))

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
		return message.adornee
	end
end

function BubbleChatBillboard:render()
	local chatSettings = self.props.chatSettings
	local messageIds = self.props.messageIds
	local lastMessageId = messageIds[#messageIds]
	local lastMessage = self.props.messages[lastMessageId]

	local adornee = self:getAdornee(lastMessage)

	local adorneePart
	if adornee:IsA("Model") then
		adorneePart = adornee.PrimaryPart
	else
		adorneePart = adornee
	end

	return Roact.createElement(CameraContext.Consumer, {
		render = function(cameraCFrame)
			local distance = (adorneePart.Position - cameraCFrame.Position).Magnitude
			local showDistantBubble = self:canShowDistantBubble(chatSettings, lastMessage, distance)

			-- Don't render the Billboard if the user has not sent any messages recently
			if os.time() - lastMessage.timestamp > chatSettings.BubbleDuration then
				return
			end

			-- Don't render the billboard at all if out of range. We could use
			-- the MaxDistance property on the billboard, but that keeps
			-- instances around. This approach means nothing exists in the DM
			-- when there are no messages.
			if distance > chatSettings.MaxDistance then
				return
			end

			return Roact.createElement("BillboardGui", {
				Adornee = adorneePart,
				AutoLocalize = false,
				Size = UDim2.new(0, 500, 0, 200),
				SizeOffset = Vector2.new(0, 0.5),
				StudsOffset = self:getVerticalOffset(adornee),
				ResetOnSpawn = false,
			}, {
				DistantBubble = showDistantBubble and Roact.createElement(ChatBubbleDistant),

				BubbleChatList = not showDistantBubble and Roact.createElement(BubbleChatList, {
					userId = self.props.userId,
					isVisible = distance < chatSettings.MinimizeDistance,
				})
			})
		end
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
