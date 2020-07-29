local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local GetTextHeight = require(UIBlox.Core.Text.GetTextHeight)
local Images = require(AppRoot.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local withStyle = require(UIBlox.Core.Style.withStyle)

local ButtonStack = require(AppRoot.Button.ButtonStack)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local AlertType = require(AlertRoot.Enum.AlertType)
local AlertTitle = require(AlertRoot.AlertTitle)

local BACKGROUND_IMAGE = "component_assets/circle_17"
local MARGIN = 24

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local enableAlertTitleIconConfig = UIBloxConfig.enableAlertTitleIconConfig

local validateButtonStack = require(AppRoot.Button.Validator.validateButtonStack)

local Alert = Roact.PureComponent:extend("Alert")

local validateProps = t.strictInterface({
	alertType = enumerateValidator(AlertType),
	anchorPoint = t.optional(t.Vector2),
	bodyText = t.optional(t.string),
	buttonStackInfo = t.optional(validateButtonStack),
	margin = t.optional(t.table),
	maxWidth = t.optional(t.number),
	minWidth = t.optional(t.number),
	middleContent = t.optional(t.callback),
	middleContentPaddingBetweenBodyText = t.optional(t.number),
	onMounted = t.optional(t.callback),
	paddingBetween = t.optional(t.number),
	position = t.optional(t.UDim2),
	screenSize = t.Vector2,
	title = t.string,
	titleIcon = enableAlertTitleIconConfig and t.optional(t.union(t.table, t.string)) or nil,
	titleIconSize = enableAlertTitleIconConfig and t.optional(t.number) or nil,
	titlePadding = t.optional(t.number),
	titlePaddingWithIcon = t.optional(t.number),
})

Alert.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	margin = {
		top = 0,
		bottom = MARGIN,
		left = MARGIN,
		right = MARGIN,
	},
	maxWidth = 400,
	middleContentPaddingBetweenBodyText = 12,
	minWidth = 272,
	paddingBetween = 24,
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function Alert:init()
	self.contentSize, self.changeContentSize = Roact.createBinding(Vector2.new(0, 0))
end

function Alert:didMount()
	if self.props.onMounted then
		self.props.onMounted()
	end
end

function Alert:render()
	assert(validateProps(self.props))

	local totalWidth = math.clamp(self.props.screenSize.X - self.props.margin.left - self.props.margin.right,
		self.props.minWidth, self.props.maxWidth)
	local innerWidth = totalWidth - self.props.margin.left - self.props.margin.right

	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local theme = stylePalette.Theme
		local textFont = font.Body.Font

		local fontSize = font.BaseSize * font.Body.RelativeSize

		local fullTextHeight = self.props.bodyText
			and GetTextHeight(self.props.bodyText, textFont, fontSize, innerWidth)
			or 0

		local backgroundTransparency
		local imageColor
		local imageTransparency
		if self.props.alertType == AlertType.Interactive then
			imageColor = theme.BackgroundUIDefault.Color
			imageTransparency = theme.BackgroundUIDefault.Transparency
			backgroundTransparency = 1
		else
			backgroundTransparency = theme.BackgroundUIContrast.Transparency
			imageTransparency = 1
		end

		return Roact.createElement(ImageSetComponent.Button, {
			Position = self.props.position,
			AnchorPoint = self.props.anchorPoint,
			Size = self.contentSize:map(function(absoluteSize)
				return UDim2.new(0, absoluteSize.X, 0, absoluteSize.Y)
			end),
			BackgroundColor3 = theme.BackgroundUIDefault.Color,
			BackgroundTransparency = backgroundTransparency,
			BorderSizePixel = 0,
			Image = Images[BACKGROUND_IMAGE],
			ImageColor3 = imageColor,
			ImageTransparency = imageTransparency,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
			AutoButtonColor = false,
			ClipsDescendants = true,
			Selectable = false,
		}, {
			AlertContents = Roact.createElement(FitFrameOnAxis, {
				contentPadding = UDim.new(0, self.props.paddingBetween),
				margin = self.props.margin,
				minimumSize = UDim2.new(0, totalWidth, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				[Roact.Change.AbsoluteSize] = function(rbx)
					self.changeContentSize(rbx.AbsoluteSize)
				end,
			}, {
				TitleContainer = Roact.createElement(AlertTitle, {
					layoutOrder = 1,
					margin = self.props.margin,
					maxWidth = self.props.maxWidth,
					minWidth = self.props.minWidth,
					screenSize = self.props.screenSize,
					title = self.props.title,
					titleIcon = self.props.titleIcon,
					titleIconSize = self.props.titleIconSize,
					titlePadding = self.props.titlePadding,
					titlePaddingWithIcon = self.props.titlePaddingWithIcon,
				}),
				Content = Roact.createElement(FitFrameOnAxis, {
					BackgroundTransparency = 1,
					contentPadding = UDim.new(0, self.props.middleContentPaddingBetweenBodyText),
					LayoutOrder = 2,
					minimumSize = UDim2.new(1, 0, 0, 0),
				}, {
					BodyText = self.props.bodyText and Roact.createElement(GenericTextLabel, {
						BackgroundTransparency = 1,
						colorStyle = theme.TextDefault,
						fontStyle = font.Body,
						LayoutOrder = 1,
						Text = self.props.bodyText,
						TextSize = fontSize,
						TextXAlignment = Enum.TextXAlignment.Center,
						Size = UDim2.new(1, 0, 0, fullTextHeight),
					}),
					MiddleContent = self.props.middleContent and Roact.createElement(FitFrameOnAxis, {
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						minimumSize = UDim2.new(1, 0, 0, 0),
					},
						{
							Content = self.props.middleContent()
						}
					),
				}),
				Buttons = self.props.buttonStackInfo and Roact.createElement(ButtonStack, self.props.buttonStackInfo),
			})
		})
	end)
end

return Alert