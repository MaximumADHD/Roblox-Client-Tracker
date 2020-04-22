local Packages = script.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(Packages.UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(Packages.UIBlox.Core.ImageSet.ImageSetComponent)
local Images = require(Packages.UIBlox.App.ImageSet.Images)

local ModalBottomSheetButton = Roact.PureComponent:extend("ModalBottomSheetButton")
local imageSize = Images["component_assets/circle_17"].ImageRectSize
local imageOffset = Images["component_assets/circle_17"].ImageRectOffset

local xOffset = 8 * Images.ImagesResolutionScale
local yOffset = 8 * Images.ImagesResolutionScale
local imageCenter = Rect.new(xOffset, yOffset, imageSize.x - xOffset, imageSize.y - yOffset)

-- https://share.goabstract.com/cfe90baa-ab79-4f34-ad1b-3ef389d39da4
local WIDTH_FIXED = 300
local WIDTH_MARGIN = 16
local WIDTH_INNER_MARGIN = 24
local WIDTH_INNER_MARGIN_ICON = 12

local validateProps = t.strictInterface({
	icon = t.optional(t.union(t.table, t.string)),
	text = t.optional(t.string),
	onActivated = t.optional(t.callback),
	renderRightElement = t.optional(t.callback),

	showImage = t.boolean,
	isFixed = t.boolean,
	onActivatedAndDismissed = t.callback,
	elementHeight = t.integer,
	hasRoundBottom = t.boolean,
	hasRoundTop = t.boolean,
	LayoutOrder = t.integer,
	stayOnActivated = t.optional(t.boolean),
})

ModalBottomSheetButton.defaultProps = {
	icon = {},
	text = "",
	onActivated = function() end,
}

function ModalBottomSheetButton:init()
	self.ref = Roact.createRef()
	self.onColorChange = function(styledColor)
		if not self.ref.current then return end
		self.ref.current.ImageColor3 = styledColor
	end
	-- TODO(UIBLOX-30): Update with Controllable.lua
	self.onInputBegan = function(inputObject)
		return inputObject.UserInputType == Enum.UserInputType.MouseButton1 or
			inputObject.UserInputType == Enum.UserInputType.Touch
	end
	self.onInputEnd = function(inputObject)
		return inputObject.UserInputType == Enum.UserInputType.MouseButton1 or
			inputObject.UserInputType == Enum.UserInputType.Touch
	end
end

function ModalBottomSheetButton:render()
	assert(validateProps(self.props))
	local hasRoundTop = self.props.hasRoundTop
	local hasRoundBottom = self.props.hasRoundBottom

	local ImageRectSize
	local ImageRectOffset
	local SliceCenter

	local s100 = imageSize.X
	local s50 = s100 / 2

	-- we are slicing around a 1x1 pixel in the center
	if hasRoundTop and hasRoundBottom then
		ImageRectSize = imageSize
		ImageRectOffset = imageOffset
		SliceCenter = imageCenter
	elseif hasRoundTop then
		ImageRectSize = Vector2.new(s100, s50)
		ImageRectOffset = imageOffset
		SliceCenter = Rect.new(s50-1, s50-1, s50+1, s50)
	elseif hasRoundBottom then
		ImageRectSize = Vector2.new(s100, s50)
		ImageRectOffset = imageOffset + Vector2.new(0, s50)
		SliceCenter = Rect.new(s50-1, 0, s50+1, 1)
	else
		ImageRectSize = Vector2.new(1, 1)
		ImageRectOffset = imageOffset + Vector2.new(s50, s50)
	end

	local elementHeight = self.props.elementHeight
	-- Width is dependant on parent width
	local buttonSize
	if self.props.isFixed then
		buttonSize = UDim2.new(0, WIDTH_FIXED, 0, elementHeight)
	else
		buttonSize = UDim2.new(1, -WIDTH_MARGIN*2, 0, elementHeight)
	end

	local padding = WIDTH_INNER_MARGIN
	if self.props.showImage or self.props.renderRightElement then
		padding = WIDTH_INNER_MARGIN_ICON
	end

	local textWidthOffset = padding
	local iconSize = elementHeight * 0.8
	if self.props.showImage then
		textWidthOffset = textWidthOffset + iconSize + padding
	end
	if self.props.renderRightElement then
		textWidthOffset = textWidthOffset + iconSize + padding
	end

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font
		local transparency = theme.BackgroundUIDefault.Transparency
		local textColor = theme.TextEmphasis.Color

		return Roact.createElement("ImageButton", {
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = SliceCenter,
			Image = Images["component_assets/circle_17"].Image,
			ImageColor3 = theme.BackgroundUIDefault.Color,
			ImageRectSize = ImageRectSize,
			ImageRectOffset = ImageRectOffset,
			ImageTransparency = transparency,
			Size = buttonSize,
			LayoutOrder = self.props.LayoutOrder,
			[Roact.Ref] = self.ref,
			[Roact.Event.Activated] = self.props.onActivatedAndDismissed,
			[Roact.Event.InputBegan] = function(_, inputObject)
				if self.onInputBegan(inputObject) then
					self.onColorChange(theme.BackgroundOnPress.Color)
				end
			end,
			[Roact.Event.InputEnded] = function (_, inputObject)
				if self.onInputEnd(inputObject) then
					self.onColorChange(theme.BackgroundUIDefault.Color)
				end
			end,
		}, {
			buttonContents = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				horizontalLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, padding),
				}),
				padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, padding),
					PaddingTop = UDim.new(0.1, 0),
					PaddingBottom = UDim.new(0.1, 0),
				}),
				icon = self.props.showImage and Roact.createElement(ImageSetComponent.Label, {
					Image = self.props.icon,
					ImageColor3 = textColor,
					ImageTransparency = transparency,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, iconSize, 0, iconSize),
					LayoutOrder = 1,
				}) or nil,
				textLabel = Roact.createElement("TextLabel", {
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -textWidthOffset, 1, 0),
					Text = self.props.text,
					TextTransparency = transparency,
					Font = font.Header2.Font,
					TextColor3 = textColor,
					TextSize = font.Header2.RelativeSize * font.BaseSize,
					TextTruncate = Enum.TextTruncate.AtEnd,
					LayoutOrder = 2,
				}),
				rightContainer = self.props.renderRightElement and Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, iconSize, 0, iconSize),
					LayoutOrder = 3,
				}, {
					hint = self.props.renderRightElement(),
				})
			}),
			bottomBorder = not hasRoundBottom and Roact.createElement("Frame", {
				LayoutOrder = 0,
				BackgroundTransparency = 1,
				BackgroundColor3 = theme.Divider.Color,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 1),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
			})
		})
	end)
end

return ModalBottomSheetButton