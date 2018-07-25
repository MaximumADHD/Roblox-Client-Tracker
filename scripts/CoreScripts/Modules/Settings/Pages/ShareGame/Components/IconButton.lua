
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)


local IconButton = Roact.PureComponent:extend("IconButton")

function IconButton:render()
	local visible = self.props.visible
	local anchorPoint = self.props.anchorPoint
	local position = self.props.position
	local size = self.props.size
	local zIndex = self.props.zIndex
	local onClick = self.props.onClick

	local iconHorizontalAlignment = self.props.iconHorizontalAlignment or Enum.HorizontalAlignment.Center
	local iconVerticalAlignment = self.props.iconVerticalAlignment or Enum.VerticalAlignment.Center
	local iconSpritePath = self.props.iconSpritePath
	local iconSpriteFrame = self.props.iconSpriteFrame

	local horizontalInset = self.props.horizontalInset or 12
	local offsetLayoutOrder = 0
	local iconLayoutOrder = 1
	local iconSize = UDim2.new(0, iconSpriteFrame.size.X, 0, iconSpriteFrame.size.Y)

	if iconHorizontalAlignment == Enum.HorizontalAlignment.Center then
		horizontalInset = 0
	elseif iconHorizontalAlignment == Enum.HorizontalAlignment.Left then
		position = UDim2.new(position.X.Scale, position.X.Offset - horizontalInset, position.Y.Scale, position.Y.Offset)
	elseif iconHorizontalAlignment == Enum.HorizontalAlignment.Right then
		position = UDim2.new(position.X.Scale, position.X.Offset + horizontalInset, position.Y.Scale, position.Y.Offset)

		offsetLayoutOrder = 1
		iconLayoutOrder = 0
	end

	size = UDim2.new(size.X.Scale, size.X.Offset + horizontalInset, size.Y.Scale, size.Y.Offset)

	return Roact.createElement("ImageButton", {
			Visible = visible,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AnchorPoint = anchorPoint,
			Position = position,
			Size = size,
			ZIndex = zIndex,
			[Roact.Event.Activated] = onClick,
		}, {
			IconLayout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = iconHorizontalAlignment,
				VerticalAlignment = iconVerticalAlignment,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Offset = Roact.createElement("Frame", {
				BorderSizePixel = 0,

				LayoutOrder = offsetLayoutOrder,
				Size = UDim2.new(0, horizontalInset, 0, 0),
			}),
			BackIcon = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, iconSpriteFrame.size.X, 0, iconSpriteFrame.size.Y),

				Image = iconSpritePath,
				ImageRectOffset = iconSpriteFrame.offset,
				ImageRectSize = iconSpriteFrame.size,
				ZIndex = zIndex,
				LayoutOrder = iconLayoutOrder,
			}),
		})
end

return IconButton
