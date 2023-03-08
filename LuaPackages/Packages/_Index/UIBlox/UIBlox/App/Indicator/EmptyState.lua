local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)
local RoactGamepad = require(Packages.RoactGamepad)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local validateImage = require(UIBlox.Core.ImageSet.Validator.validateImage)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local withStyle = require(UIBlox.Core.Style.withStyle)
local getPageMargin = require(App.Container.getPageMargin)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local Images = require(App.ImageSet.Images)
local SecondaryButton = require(App.Button.SecondaryButton)

local DEFAULT_ICON = "icons/status/oof_xlarge"
local DEFAULT_BUTTON_ICON = "icons/common/refresh"
local ICON_TEXT_PADDING = 12
local TEXT_BUTTON_PADDING = 24
local TITLE_PADDING = if UIBloxConfig.emptyStateTitleAndIconSize then 14 else nil
local BUTTON_HEIGHT = 48
local BUTTON_MAX_SIZE = 640

local EmptyState = Roact.PureComponent:extend("EmptyState")

EmptyState.validateProps = t.strictInterface({
	text = t.string,
	icon = t.optional(validateImage),
	size = t.optional(t.UDim2),
	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	buttonIcon = t.optional(validateImage),
	onActivated = t.optional(t.callback),
	frameRef = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	maxSizeTextLabel = t.optional(t.Vector2),
	iconColor = t.optional(t.Color3),
	iconSize = if UIBloxConfig.emptyStateTitleAndIconSize then t.optional(t.UDim2) else nil,
	titleProps = if UIBloxConfig.emptyStateTitleAndIconSize
		then t.optional(t.strictInterface({
			titleText = t.optional(t.string),
		}))
		else nil,
})

EmptyState.defaultProps = {
	icon = Images[DEFAULT_ICON],
	size = UDim2.fromScale(1, 1),
	position = UDim2.fromScale(0.5, 0.5),
	anchorPoint = Vector2.new(0.5, 0.5),
	buttonIcon = Images[DEFAULT_BUTTON_ICON],
	iconSize = if UIBloxConfig.emptyStateTitleAndIconSize
		then UDim2.fromOffset(getIconSize(IconSize.XLarge), getIconSize(IconSize.XLarge))
		else nil,
}

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
		return Roact.createElement(UIBloxConfig.emptyStateControllerSupport and RoactGamepad.Focusable.Frame or "Frame", {
			[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
			Size = self.props.size,
			Position = self.props.position,
			AnchorPoint = self.props.anchorPoint,
			BackgroundTransparency = 1,
			[Roact.Ref] = UIBloxConfig.emptyStateControllerSupport and self.props.frameRef or nil,
			NextSelectionUp = UIBloxConfig.emptyStateControllerSupport and self.props.NextSelectionUp or nil,
			NextSelectionDown = UIBloxConfig.emptyStateControllerSupport and self.props.NextSelectionDown or nil,
			NextSelectionULeft = UIBloxConfig.emptyStateControllerSupport and self.props.NextSelectionLeft or nil,
			NextSelectionRight = UIBloxConfig.emptyStateControllerSupport and self.props.NextSelectionRight or nil,
			defaultChild = UIBloxConfig.emptyStateControllerSupport and self.buttonRef or nil,
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
					Size = if UIBloxConfig.emptyStateTitleAndIconSize
						then self.props.iconSize
						else UDim2.fromOffset(getIconSize(IconSize.XLarge), getIconSize(IconSize.XLarge)),
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
				TitleFrame = if UIBloxConfig.emptyStateTitleAndIconSize
						and (self.props.titleProps and self.props.titleProps.titleText)
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
							Font = Enum.Font.GothamBlack,
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
					LayoutOrder = if UIBloxConfig.emptyStateTitleAndIconSize then 4 else 3,
					fontStyle = style.Font.Body,
					colorStyle = style.Theme.TextDefault,
					maxSize = self.props.maxSizeTextLabel,
				}),
				textButtonPadding = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.fromOffset(0, TEXT_BUTTON_PADDING),
					BackgroundTransparency = 1,
					LayoutOrder = if UIBloxConfig.emptyStateTitleAndIconSize then 5 else 4,
				}),
				buttonFrame = self.props.onActivated and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 1,
					LayoutOrder = if UIBloxConfig.emptyStateTitleAndIconSize then 6 else 5,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, getPageMargin(self.state.absoluteSize.X)),
						PaddingRight = UDim.new(0, getPageMargin(self.state.absoluteSize.X)),
					}),
					UISizeConstraint = Roact.createElement("UISizeConstraint", {
						MaxSize = Vector2.new(BUTTON_MAX_SIZE, BUTTON_HEIGHT),
					}),
					Button = Roact.createElement(SecondaryButton, {
						size = UDim2.fromScale(1, 1),
						position = UDim2.fromScale(0.5, 0.5),
						anchorPoint = Vector2.new(0.5, 0.5),
						onActivated = self.props.onActivated,
						icon = self.props.buttonIcon,
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
