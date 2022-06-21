local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Object = dependencies.LuauPolyfill.Object

local BUBBLE = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self2.png"
local RECEIVED_BUBBLE_WITH_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble.png"
local RECEIVED_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-tip.png"
local SENT_BUBBLE_WITH_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self.png"
local SENT_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self-tip.png"
local SLIDE_CENTER = Rect.new(10, 10, 11, 11)
local TAIL_WIDTH = 6

local defaultProps = {
	isIncoming = false,
	hasTail = false,
	padding = 12,
	LayoutOrder = 0,
	isPending = false,
	[Roact.Change.AbsoluteSize] = function() end,
	-- TODO only used for AssetCardTemp, remove when when ROACTCHAT-206 is complete
	overrideImageColor = false,
}

local function ChatBubbleContainer(props)
	return UIBlox.Style.withStyle(function(style)
		local children = props[Roact.Children] or {}
		local hasTail = props.hasTail or defaultProps.hasTail
		local isIncoming = props.isIncoming or defaultProps.isIncoming
		local isPending = props.isPending or defaultProps.isPending

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
		if props.overrideImageColor or defaultProps.overrideImageColor then
			imageColor = nil
			if not isPending then
				imageTransparency = nil
			end
		end

		local bubbleImage = BUBBLE
		if hasTail then
			bubbleImage = isIncoming and RECEIVED_BUBBLE_WITH_TAIL or SENT_BUBBLE_WITH_TAIL
		end
		local bubblePosition = isIncoming and UDim2.new(0, TAIL_WIDTH, 0, 0) or UDim2.new(1, -TAIL_WIDTH, 0, 0)

		local tailImage = isIncoming and RECEIVED_TAIL or SENT_TAIL
		local tailPosition = isIncoming and UDim2.new(0, 0, 0, 0) or UDim2.new(1, 0, 0, 0)
		local padding = UDim.new(0, props.padding or defaultProps.padding)

		return Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = props.LayoutOrder or defaultProps.LayoutOrder,
			BackgroundTransparency = 1,
		}, {
			bubble = Roact.createElement("ImageLabel", {
					AutomaticSize = Enum.AutomaticSize.XY,
					AnchorPoint = isIncoming and Vector2.new(0, 0) or Vector2.new(1, 0),
					BackgroundTransparency = 1,
					ImageColor3 = imageColor,
					Image = bubbleImage,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = SLIDE_CENTER,
					ImageTransparency = imageTransparency,
					Position = bubblePosition,
					[Roact.Change.AbsoluteSize] = props[Roact.Change.AbsoluteSize] or defaultProps[Roact.Change.AbsoluteSize]
				}, Object.assign(table.clone(children), {
					Padding = Roact.createElement("UIPadding", {
						PaddingBottom = padding,
						PaddingTop = padding,
						PaddingRight = padding,
						PaddingLeft = padding,
					})
				})),
				tail = Roact.createElement("ImageLabel", {
					AnchorPoint = isIncoming and Vector2.new(0, 0) or Vector2.new(1, 0),
					Size = UDim2.new(0, TAIL_WIDTH, 0, TAIL_WIDTH),
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
