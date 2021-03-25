local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Alert = require(AlertRoot.Alert)
local AlertType = require(AlertRoot.Enum.AlertType)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local MIN_WIDTH = 272
local MAX_WIDTH = 400
local MARGIN = 24
local MIDDLE_CONTENT_PADDING = 12
local TITLE_ICON_SIZE = 48

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local GetTextHeight = require(UIBlox.Core.Text.GetTextHeight)
local withStyle = require(UIBlox.Core.Style.withStyle)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local enableAlertTitleIconConfig = UIBloxConfig.enableAlertTitleIconConfig
local enableAlertCustomTitleFooterConfig = UIBloxConfig.enableAlertCustomTitleFooterConfig
local validateButtonStack = require(AppRoot.Button.Validator.validateButtonStack)

local InteractiveAlert = Roact.PureComponent:extend("InteractiveAlert")

local validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	screenSize = t.Vector2,

	onMounted = t.optional(t.callback),
	onAbsoluteSizeChanged = t.optional(t.callback),

	title = t.string,
	titleIcon = enableAlertTitleIconConfig and t.optional(t.union(t.table, t.string)) or nil,
	titleContent = enableAlertCustomTitleFooterConfig and t.optional(t.callback) or nil,
	bodyText = t.optional(t.string),
	middleContent = t.optional(t.callback),
	buttonStackInfo = validateButtonStack,
	footerText = enableAlertCustomTitleFooterConfig and t.optional(t.string) or nil,
	footerContent = enableAlertCustomTitleFooterConfig and t.optional(t.callback) or nil,

	--Gamepad props
	defaultChildRef = t.optional(t.table),
	isMiddleContentFocusable = t.optional(t.boolean),
	isFooterContentFocusable = enableAlertCustomTitleFooterConfig and t.optional(t.boolean) or nil,
})

function InteractiveAlert:render()
	assert(validateProps(self.props))
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font
		local textFont = font.Body.Font

		local fontSize = font.BaseSize * font.Body.RelativeSize

		local titleContent = self.props.titleContent
		if self.props.titleIcon then
			titleContent = function()
				return Roact.createElement(FitFrameOnAxis, {
					BackgroundTransparency = 1,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					margin = {
						top = 12, -- Title already has 12 padding on the top
						bottom = 0,
						left = 0,
						right = 0,
					},
					minimumSize = UDim2.new(1, 0, 0, 0),
				}, {
					Icon = Roact.createElement(ImageSetComponent.Label, {
						BackgroundTransparency = 1,
						Image = self.props.titleIcon,
						ImageColor3 = theme.IconEmphasis.Color,
						ImageTransparency = theme.IconEmphasis.Transparency,
						Size = UDim2.new(0, TITLE_ICON_SIZE, 0, TITLE_ICON_SIZE),
					})
				})
			end
		end

		local totalWidth = math.clamp(self.props.screenSize.X - 2 * MARGIN, MIN_WIDTH, MAX_WIDTH)
		local innerWidth = totalWidth - 2 * MARGIN

		local footerContent = self.props.footerContent
		if self.props.footerText then
			local fullFooterTextHeight = self.props.footerText
				and GetTextHeight(self.props.footerText, font.Footer.Font,
					font.BaseSize * font.Footer.RelativeSize, innerWidth)
				or 0

			footerContent = function()
				return Roact.createElement(GenericTextLabel, {
					BackgroundTransparency = 1,
					colorStyle = theme.TextDefault,
					fontStyle = font.Footer,
					LayoutOrder = 4,
					Text = self.props.footerText,
					TextSize = fontSize,
					TextXAlignment = Enum.TextXAlignment.Center,
					Size = UDim2.new(1, 0, 0, fullFooterTextHeight),
				})
			end
		end

		local fullTextHeight = self.props.bodyText
			and GetTextHeight(self.props.bodyText, textFont, fontSize, innerWidth) or 0

		local middleContent = self.props.middleContent
		if self.props.bodyText then
			middleContent = function ()
				return Roact.createElement(FitFrameOnAxis, {
					BackgroundTransparency = 1,
					contentPadding = UDim.new(0, MIDDLE_CONTENT_PADDING),
					LayoutOrder = 2,
					minimumSize = UDim2.new(1, 0, 0, 0),
				}, {
					BodyText = Roact.createElement(GenericTextLabel, {
						BackgroundTransparency = 1,
						colorStyle = theme.TextDefault,
						fontStyle = font.Body,
						LayoutOrder = 1,
						Text = self.props.bodyText,
						TextSize = fontSize,
						TextXAlignment = Enum.TextXAlignment.Center,
						Size = UDim2.new(1, 0, 0, fullTextHeight),
					}),
					CustomContent = self.props.middleContent and Roact.createElement(FitFrameOnAxis, {
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						minimumSize = UDim2.new(1, 0, 0, 0),
					}, {
						Content = self.props.middleContent()
					}),
				})
			end
		end

		return Roact.createElement(Alert, {
			anchorPoint = self.props.anchorPoint,
			alertType = AlertType.Interactive,
			margin = {
				top = 0,
				bottom = MARGIN,
				left = MARGIN,
				right = MARGIN,
			},
			maxWidth = MAX_WIDTH,
			minWidth = MIN_WIDTH,
			buttonStackInfo = self.props.buttonStackInfo,
			middleContent = middleContent,
			isMiddleContentFocusable = self.props.isMiddleContentFocusable,
			onMounted = self.props.onMounted,
			onAbsoluteSizeChanged = self.props.onAbsoluteSizeChanged,
			position = self.props.position,
			screenSize = self.props.screenSize,
			title = self.props.title,
			titleContent = titleContent,
			footerContent = footerContent,
			isFooterContentFocusable = self.props.isFooterContentFocusable,

			defaultChildRef = self.props.defaultChildRef,
		})
	end)
end

return InteractiveAlert
