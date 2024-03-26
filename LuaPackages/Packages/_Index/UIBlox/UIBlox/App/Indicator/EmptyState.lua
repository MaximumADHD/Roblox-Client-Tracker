--!nonstrict
local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)
local RoactGamepad = require(Packages.RoactGamepad)

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local validateImage = require(UIBlox.Core.ImageSet.Validator.validateImage)
local withStyle = require(UIBlox.Core.Style.withStyle)
local getPageMargin = require(App.Container.getPageMargin)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local Images = require(App.ImageSet.Images)

local Button = require(App.Button.Button)
local ButtonType = require(App.Button.Enum.ButtonType)

local ICON_TEXT_PADDING = 12
local TEXT_BUTTON_PADDING = 24
local TITLE_PADDING = 14
local BUTTON_HEIGHT = 48
local BUTTON_MAX_SIZE = 640

local EmptyState = Roact.PureComponent:extend("EmptyState")

EmptyState.validateProps = t.strictInterface({
	-- Text displayed under icon
	text = t.string,
	-- Icon is the image displayed above the text
	icon = t.optional(validateImage),
	size = t.optional(t.UDim2),
	-- The position of the button
	position = t.optional(t.UDim2),
	-- The anchor point of the button.
	anchorPoint = t.optional(t.Vector2),
	-- Icon displayed inside the button (pass empty string if you don't want icon to be rendered)
	buttonIcon = t.optional(validateImage),
	-- Button text
	buttonText = t.optional(t.string),
	-- Button type from App.Button
	buttonType = t.optional(ButtonType.isEnumValue),
	-- Passing in the callback function will render a button
	onActivated = t.optional(t.callback),
	frameRef = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	maxSizeTextLabel = t.optional(t.Vector2),
	iconColor = t.optional(t.Color3),
	iconSize = t.optional(t.UDim2),
	titleProps = t.optional(t.strictInterface({
		titleText = t.optional(t.string),
	})),
})

EmptyState.defaultProps = {
	icon = Images["icons/status/oof_xlarge"],
	size = UDim2.fromScale(1, 1),
	position = UDim2.fromScale(0.5, 0.5),
	anchorPoint = Vector2.new(0.5, 0.5),
	buttonIcon = Images["icons/common/refresh"],
	buttonType = ButtonType.Secondary,
	iconSize = UDim2.fromOffset(getIconSize(IconSize.XLarge), getIconSize(IconSize.XLarge)),
}

local function getCorrectedIconValue(icon: validateImage.Image)
	return if icon == "" then nil else icon
end

function EmptyState:init()
	self:setState({
		absoluteSize = Vector2.new(0, 0),
	})
	self.onAbsoluteSizeChange = function(frame)
		self:setState({
			absoluteSize = frame.AbsoluteSize,
		})
	end

	self.buttonRef = Roact.createRef()
end

function EmptyState:render()
	return withStyle(function(style)
		return Roact.createElement(RoactGamepad.Focusable.Frame, {
			[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
			Size = self.props.size,
			Position = self.props.position,
			AnchorPoint = self.props.anchorPoint,
			BackgroundTransparency = 1,
			[Roact.Ref] = self.props.frameRef,
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
			NextSelectionULeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			defaultChild = self.buttonRef,
		}, {
			Content = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 187),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Icon = Roact.createElement(ImageSetComponent.Label, {
					AnchorPoint = Vector2.new(0.5, 0),
					Size = self.props.iconSize,
					LayoutOrder = 1,
					Image = self.props.icon,
					BackgroundTransparency = 1,
					ImageColor3 = self.props.iconColor or style.Theme.IconEmphasis.Color,
					ImageTransparency = style.Theme.IconEmphasis.Transparency,
				}),
				iconTextPadding = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.fromOffset(0, ICON_TEXT_PADDING),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}),
				TitleFrame = if self.props.titleProps and self.props.titleProps.titleText
					then Roact.createElement("Frame", {
						Size = UDim2.fromScale(1, 0),
						Position = UDim2.fromScale(0, 0),
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.Y,
						BorderSizePixel = 0,
						LayoutOrder = 3,
					}, {
						TitlePadding = Roact.createElement("UIPadding", {
							PaddingTop = UDim.new(0, TITLE_PADDING),
							PaddingBottom = UDim.new(0, TITLE_PADDING),
						}),
						TitleText = Roact.createElement("TextLabel", {
							BackgroundTransparency = 1,
							Text = self.props.titleProps.titleText,
							TextXAlignment = Enum.TextXAlignment.Center,
							TextYAlignment = Enum.TextYAlignment.Center,
							Font = style.Font.Title.Font,
							TextSize = style.Font.Header1.RelativeSize * style.Font.BaseSize,
							TextColor3 = style.Theme.TextEmphasis.Color,
							TextTransparency = style.Theme.TextEmphasis.Transparency,
							AutomaticSize = Enum.AutomaticSize.Y,
							Size = UDim2.fromScale(1, 0),
							TextWrapped = true,
							LayoutOrder = 1,
						}),
					})
					else nil,
				Text = Roact.createElement(GenericTextLabel, {
					Text = self.props.text,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					LayoutOrder = 4,
					fontStyle = style.Font.Body,
					colorStyle = style.Theme.TextDefault,
					maxSize = self.props.maxSizeTextLabel,
				}),
				textButtonPadding = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.fromOffset(0, TEXT_BUTTON_PADDING),
					BackgroundTransparency = 1,
					LayoutOrder = 5,
				}),
				buttonFrame = self.props.onActivated and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 6,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, getPageMargin(self.state.absoluteSize.X)),
						PaddingRight = UDim.new(0, getPageMargin(self.state.absoluteSize.X)),
					}),
					UISizeConstraint = Roact.createElement("UISizeConstraint", {
						MaxSize = Vector2.new(BUTTON_MAX_SIZE, BUTTON_HEIGHT),
					}),
					Button = Roact.createElement(Button, {
						buttonType = self.props.buttonType,
						size = UDim2.fromScale(1, 1),
						position = UDim2.fromScale(0.5, 0.5),
						anchorPoint = Vector2.new(0.5, 0.5),
						onActivated = self.props.onActivated,
						icon = getCorrectedIconValue(self.props.buttonIcon),
						text = self.props.buttonText,
						[Roact.Ref] = self.buttonRef,
					}),
				}),
			}),
		})
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(EmptyState, Cryo.Dictionary.join(props, { frameRef = ref }))
end)
