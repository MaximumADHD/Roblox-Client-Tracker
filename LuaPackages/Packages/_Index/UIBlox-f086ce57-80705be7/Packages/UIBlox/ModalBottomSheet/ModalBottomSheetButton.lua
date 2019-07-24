local Packages = script.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(Packages.UIBlox.Style.withStyle)
local ImageSetComponent = require(Packages.UIBlox.ImageSet.ImageSetComponent)
local Images = require(Packages.UIBlox.ImageSet.Images)

local ModalBottomSheetButton = Roact.PureComponent:extend("ModalBottomSheetButton")
local imageSize = Images["buttons/buttonFill"].ImageRectSize
local imageOffset = Images["buttons/buttonFill"].ImageRectOffset

local xOffset = 8
local yOffset = 8
local imageCenter = Rect.new(xOffset, yOffset, imageSize.x - xOffset, imageSize.y - yOffset)

local PropTypes = t.strictInterface({
	icon = t.optional(t.string),
	text = t.optional(t.string),
	onActivated = t.optional(t.callback),
	elementHeight = t.integer,
	hasRoundBottom = t.boolean,
	hasRoundTop = t.boolean,
	LayoutOrder = t.optional(t.integer),
})

ModalBottomSheetButton.defaultProps = {
	icon = "",
	text = "",
	onActivated = function() end,
	elementHeight = 64,
	hasRoundBottom = true,
	hasRoundTop = true,
}

function ModalBottomSheetButton:render()
	assert(PropTypes(self.props))
	local hasRoundTop = self.props.hasRoundTop
	local hasRoundBottom = self.props.hasRoundBottom
	local elementHeight = self.props.elementHeight

	local ImageRectSize
	local ImageRectOffset
	local SliceCenter

	local s100 = imageSize.X
	local s50 = s100 * 0.5
	local s33 = s100 * 0.33

	if hasRoundTop and hasRoundBottom then
		ImageRectSize = imageSize
		ImageRectOffset = imageOffset
		SliceCenter = imageCenter
	elseif hasRoundTop then
		ImageRectSize = Vector2.new(s100, s50)
		SliceCenter = Rect.new(s33, s33, s100-s33, s50)
	elseif hasRoundBottom then
		ImageRectSize = Vector2.new(s100, s50)
		ImageRectOffset = imageOffset + Vector2.new(0, s50)
		SliceCenter = Rect.new(s33, 0, s100-s33, 0)
	else
		ImageRectSize = Vector2.new(s33, s33)
		ImageRectOffset = imageOffset + Vector2.new(s33, s33)
	end

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font

		return Roact.createElement(ImageSetComponent.Button, {
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = SliceCenter,
			Image = Images["buttons/buttonFill"],
			ImageColor3 = theme.UIDefault.Color,
			ImageRectSize = ImageRectSize,
			ImageRectOffset = ImageRectOffset,
			Size = UDim2.new(0.9, 0, 0, elementHeight),
			LayoutOrder = self.props.LayoutOrder,
			[Roact.Event.Activated] = self.props.onActivated,
		}, {
			buttonContents = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				horizontalLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, elementHeight/2),
				}),
				padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, elementHeight/2),
					PaddingTop = UDim.new(0.1, 0),
					PaddingBottom = UDim.new(0.1, 0),
				}),
				icon = Roact.createElement("ImageLabel", {
					Image = self.props.icon,
					Size = UDim2.new(0, elementHeight * 0.8, 0, elementHeight * 0.8),
					LayoutOrder = 1,
				}),
				textLabel = Roact.createElement("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -elementHeight, 1, 0),
					Text = self.props.text,
					Font = font.Header2.Font,
					TextColor3 = theme.TextDefault.Color,
					TextSize = font.Header1.RelativeSize * font.BaseSize,
					LayoutOrder = 2,
				}),
			}),
			bottomBorder = not hasRoundBottom and Roact.createElement("Frame", {
				LayoutOrder = 0,
				BackgroundColor3 = theme.TextDefault.Color,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 1),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
			})
		})
	end)
end

return ModalBottomSheetButton