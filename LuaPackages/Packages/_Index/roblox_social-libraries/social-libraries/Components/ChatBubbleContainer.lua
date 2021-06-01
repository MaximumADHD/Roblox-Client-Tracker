local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local RoactFitComponents = dependencies.RoactFitComponents
local FitFrameOnAxis = RoactFitComponents.FitFrameOnAxis
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local BUBBLE = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self2.png"
local RECEIVED_BUBBLE_WITH_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble.png"
local RECEIVED_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-tip.png"
local SENT_BUBBLE_WITH_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self.png"
local SENT_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self-tip.png"
local SLIDE_CENTER = Rect.new(10, 10, 11, 11)

local ChatBubbleContainer = Roact.PureComponent:extend("ChatBubbleContainer")
ChatBubbleContainer.TAIL_WIDTH = 6

ChatBubbleContainer.defaultProps = {
	isIncoming = false,
	hasTail = false,
	padding = 12,
	LayoutOrder = 0,
	isPending = false,
	[Roact.Change.AbsoluteSize] = function() end,
	-- TODO only used for AssetCardTemp, remove when when ROACTCHAT-206 is complete
	overrideImageColor = false,
}

function ChatBubbleContainer:init()
	self.bubbleSize, self.updateBubbleSize = Roact.createBinding(Vector2.new(0, 0))
end

function ChatBubbleContainer:render()
	return UIBlox.Style.withStyle(function(style)
		local children = self.props[Roact.Children] or {}
		local hasTail = self.props.hasTail
		local isIncoming = self.props.isIncoming
		local isPending = self.props.isPending

		local imageStyle
		if isIncoming then
			imageStyle = style.Theme.UIDefault
		elseif isPending then
			imageStyle = style.Theme.UIMuted
		else
			imageStyle = style.Theme.UIEmphasis
		end

		local imageColor = imageStyle.Color
		local imageTransparency = imageStyle.Transparency
		-- TODO only used for AssetCardTemp, remove when when ROACTCHAT-206 is complete
		if self.props.overrideImageColor then
			imageColor = nil
			if not isPending then
				imageTransparency = nil
			end
		end

		local bubbleImage = BUBBLE
		if hasTail then
			bubbleImage = isIncoming and RECEIVED_BUBBLE_WITH_TAIL or SENT_BUBBLE_WITH_TAIL
		end
		local bubblePosition = isIncoming and UDim2.new(0, self.TAIL_WIDTH, 0, 0) or UDim2.new(1, -self.TAIL_WIDTH, 0, 0)

		local tailImage = isIncoming and RECEIVED_TAIL or SENT_TAIL
		local tailPosition = isIncoming and UDim2.new(0, 0, 0, 0) or UDim2.new(1, 0, 0, 0)

		return Roact.createElement("Frame", {
			Size = self.bubbleSize:map(function(bubbleSize)
				return UDim2.new(0, bubbleSize.X + self.TAIL_WIDTH, 0, bubbleSize.Y)
			end),
			LayoutOrder = self.props.LayoutOrder,
			BackgroundTransparency = 1,
		}, {
			bubble = Roact.createElement(FitFrameOnAxis, {
				AnchorPoint = isIncoming and Vector2.new(0, 0) or Vector2.new(1, 0),
				axis = FitFrameOnAxis.Axis.Both,
				BackgroundTransparency = 1,
				ImageColor3 = imageColor,
				ImageSet = {
					Image = bubbleImage,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = SLIDE_CENTER,
				},
				ImageTransparency = imageTransparency,
				margin = RoactFitComponents.Rect.square(self.props.padding),
				Position = bubblePosition,
				[Roact.Change.AbsoluteSize] = function(rbx)
					self.updateBubbleSize(rbx.AbsoluteSize)
					self.props[Roact.Change.AbsoluteSize](rbx)
				end,
			}, children),
			tail = Roact.createElement("ImageLabel", {
				AnchorPoint = isIncoming and Vector2.new(0, 0) or Vector2.new(1, 0),
				Size = UDim2.new(0, self.TAIL_WIDTH, 0, self.TAIL_WIDTH),
				BackgroundTransparency = 1,
				ImageColor3 = imageColor,
				Position = tailPosition,
				Image = tailImage,
				ImageTransparency = imageTransparency,
				Visible = hasTail,
			}),
		})
	end)
end

return ChatBubbleContainer
