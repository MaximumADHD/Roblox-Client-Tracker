--!nonstrict
-- If you are using an interactive alert for in experience Core UI, it is important to take the possibility of users being tricked into confirming the prompt into account.
-- In the past, prompts which have appeared immediately and allowed users to immediately confirm the prompt have been victims of click jacking attacks of various types.
-- To prevent this sort of exploit, you can use the delayInputSeconds property on GenericButton (by including this property in the buttonProps). You can search for examples like the CreateAssetPrompt.

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
local DEFAULT_BODY_HEIGHT = 200
local DEFAULT_FOOTER_HEIGHT = 100

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local GetTextHeight = require(UIBlox.Core.Text.GetTextHeight)
local withStyle = require(UIBlox.Core.Style.withStyle)

local ButtonStack = require(AppRoot.Button.ButtonStack)

local InteractiveAlert = Roact.PureComponent:extend("InteractiveAlert")

InteractiveAlert.validateProps = t.strictInterface({
	-- Anchor point of the modal
	anchorPoint = t.optional(t.Vector2),
	-- Position of `Alert` in the whole page
	position = t.optional(t.UDim2),
	-- Size of the container housing the `Alert`. This is necessary to dynamically scale the alert's width
	screenSize = t.Vector2,
	-- A function that is called when the `Alert` is mounted
	onMounted = t.optional(t.callback),
	-- A function that is called when the `Alert` AbsoluteSize is changed
	onAbsoluteSizeChanged = t.optional(t.callback),
	-- Title text of the `Alert`. Title can be a maximum of 2 lines long before it is cut off
	title = t.string,
	titleIcon = t.optional(t.union(t.table, t.string)),
	-- Function that returns a Roact element to render
	titleContent = t.optional(t.callback),
	-- Body message text of the `Alert`
	bodyText = t.optional(t.string),
	-- Allows body text to include rich text formatting
	richText = t.optional(t.boolean),
	-- Function that returns a Roact element to render. Use this for checkboxes and other custom components.
	-- The content will render between the bodyText (if any) and buttons (if any)
	middleContent = t.optional(t.callback),
	-- Array of buttons
	buttonStackInfo = ButtonStack.validateProps,
	footerText = t.optional(t.string),
	-- Function that returns a Roact element to render
	footerContent = t.optional(t.callback),
	onCloseClicked = t.optional(t.callback),

	-- RoactGamepad props. These take effect when isRoactGamepadEnabled is true
	defaultChildRef = t.optional(t.union(t.table, t.callback)),
	-- Boolean to determine if the middle content is focusable with a gamepad
	isMiddleContentFocusable = t.optional(t.boolean),
	-- Boolean to determine if the footer content is focusable with a gamepad
	isFooterContentFocusable = t.optional(t.boolean),
	-- Boolean to determine if the component will use RoactGamepad for focus navigation
	isRoactGamepadEnabled = t.optional(t.boolean),
})

function InteractiveAlert:render()
	return withStyle(function(stylePalette)
		if UIBloxConfig.interactiveAlertDesignTokenMinMaxSize then
			MIN_WIDTH = stylePalette.Tokens.Global.Size_200 * 17 -- 16 * 17 = 272
			MAX_WIDTH = stylePalette.Tokens.Global.Size_500 * 10 -- 40 * 10 = 400
		end
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
					}),
				})
			end
		end

		local totalWidth = math.clamp(self.props.screenSize.X - 2 * MARGIN, MIN_WIDTH, MAX_WIDTH)
		local innerWidth = totalWidth - 2 * MARGIN

		local footerContent = self.props.footerContent
		if self.props.footerText then
			local fullFooterTextHeight = self.props.footerText
					and GetTextHeight(
						self.props.footerText,
						font.Footer.Font,
						font.BaseSize * font.Footer.RelativeSize,
						innerWidth,
						if UIBloxConfig.getTextHeightOptionalMaxHeight then DEFAULT_FOOTER_HEIGHT else nil
					)
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
				and GetTextHeight(
					self.props.bodyText,
					textFont,
					fontSize,
					innerWidth,
					if UIBloxConfig.getTextHeightOptionalMaxHeight then DEFAULT_BODY_HEIGHT else nil
				)
			or 0

		local middleContent = self.props.middleContent
		if self.props.bodyText then
			middleContent = function()
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
						RichText = self.props.richText,
						TextSize = fontSize,
						TextXAlignment = Enum.TextXAlignment.Center,
						Size = UDim2.new(1, 0, 0, fullTextHeight),
					}),
					CustomContent = self.props.middleContent and Roact.createElement(FitFrameOnAxis, {
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						minimumSize = UDim2.new(1, 0, 0, 0),
					}, {
						Content = self.props.middleContent(),
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
			onCloseClicked = self.props.onCloseClicked,
			defaultChildRef = self.props.defaultChildRef,
			isRoactGamepadEnabled = self.props.isRoactGamepadEnabled,
		})
	end)
end

return InteractiveAlert
