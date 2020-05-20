local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(Packages.UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(Packages.UIBlox.Core.ImageSet.ImageSetComponent)
local Controllable = require(Packages.UIBlox.Core.Control.Controllable)
local ControlState = require(Packages.UIBlox.Core.Control.Enum.ControlState)

local InputButton = Roact.PureComponent:extend("InputButton")

local validateProps = t.strictInterface({
	text = t.string,
	size = t.UDim2,
	image = t.table,
	imageColor = t.Color3,
	fillImage = t.optional(t.table),
	fillImageSize = t.optional(t.UDim2),
	fillImageColor = t.optional(t.Color3),
	selectedColor = t.Color3,
	textColor = t.Color3,
	transparency = t.number,
	onActivated = t.callback,
	isDisabled = t.optional(t.boolean),
	layoutOrder = t.optional(t.number),
})

InputButton.defaultProps = {
	layoutOrder = 0,
	isDisabled = false,
}

local SELECTION_BUTTON_SIZE = 26
local HORIZONTAL_PADDING = 8

function InputButton:init()
	self.state = {
		outerImage = self.props.image,
		outerTransparency = 1,
		outerImageColor = self.props.imageColor,
		innerImage = self.props.image,
		innerImageColor = self.props.fillImageColor,
		innerTransparency = 1,
	}

	self.changeSprite = function(buttonState)
		if buttonState == ControlState.Hover then
			if not self.props.isDisabled then
				self:setState({
					outerImageColor = self.props.selectedColor
				})
			end
		elseif buttonState == ControlState.Default then
			self:setState({
				outerImageColor = self.props.imageColor
			})
		end
	end
end

function InputButton:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local font = stylePalette.Font

		local verticalPadding = (self.props.size.Y.Offset - SELECTION_BUTTON_SIZE)/2

		local fillImage = self.props.fillImage

		return Roact.createElement("Frame",	{
				Size = self.props.size,
				BackgroundTransparency = 1,
				LayoutOrder = self.props.layoutOrder,
			}, {
				horizontalLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, HORIZONTAL_PADDING),
					VerticalAlignment = Enum.VerticalAlignment.Center
				}),
				padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, HORIZONTAL_PADDING),
					PaddingTop = UDim.new(0, verticalPadding),
					PaddingBottom = UDim.new(0, verticalPadding),
				}),
				InputButtonImage = Roact.createElement(Controllable, {
					controlComponent = {
					component = ImageSetComponent.Button,
						props = {
							BackgroundTransparency = 1,
							Size = UDim2.new(0, SELECTION_BUTTON_SIZE, 0, SELECTION_BUTTON_SIZE),
							Image = self.props.image,
							ImageTransparency = self.props.transparency,
							ScaleType = self.props.buttonSliceType,
							SliceCenter = self.props.buttonSliceCenter,
							ImageColor3 = self.state.outerImageColor,
							[Roact.Event.Activated] = self.props.onActivated,
							LayoutOrder = 1,
						},
						children = {
							InputFillImage = fillImage and Roact.createElement(ImageSetComponent.Label, {
								BackgroundTransparency = 1,
								Size = self.props.fillImageSize,
								Image = fillImage,
								ImageTransparency = self.props.transparency,
								ImageColor3 = self.props.fillImageColor,
								AnchorPoint = Vector2.new(0.5, 0.5),
								Position = UDim2.new(0.5, 0, 0.5, 0),
							})
						}
					},
					isDisabled = self.props.isDisabled,

					onStateChanged = function(_, newState)
						self.changeSprite(newState)
					end,
				}),
				touchZone = Roact.createElement(Controllable, {
					controlComponent =
					{
						component = "TextButton",
						props = {
							TextXAlignment = Enum.TextXAlignment.Left,
							Size = UDim2.new(1, 0, 1, 0),
							BackgroundTransparency = 1,
							Text = self.props.text,
							TextSize = font.Body.RelativeSize * font.BaseSize,
							TextColor3 = self.props.textColor,
							TextTransparency = self.props.transparency,
							Font = font.Body.Font,
							[Roact.Event.Activated] = not self.props.isDisabled and self.props.onActivated,
							LayoutOrder = 2,
						},
					},
					isDisabled = self.props.isDisabled,
					onStateChanged = function(_, newState)
						self.changeSprite(newState)
					end,
				})
			}
		)
	end)
end

return InputButton
