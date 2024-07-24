--!nonstrict
local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local RoactGamepad = require(Packages.RoactGamepad)
local Cryo = require(Packages.Cryo)

local Images = require(AppRoot.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local withStyle = require(UIBlox.Core.Style.withStyle)

local ButtonStack = require(AppRoot.Button.ButtonStack)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local AlertType = require(AlertRoot.Enum.AlertType)
local AlertTitle = require(AlertRoot.AlertTitle)

local BACKGROUND_IMAGE = "component_assets/circle_17"
local PADDING_BETWEEN = 24

local Alert = Roact.PureComponent:extend("Alert")

Alert.validateProps = t.strictInterface({
	-- The type of alert to display. Used for stylizing purposes
	alertType = AlertType.isEnumValue,
	maxWidth = t.optional(t.number),
	minWidth = t.optional(t.number),
	margin = t.optional(t.table),
	-- Anchor point of the modal
	anchorPoint = t.optional(t.Vector2),
	-- A function that is called when the `Alert` is mounted
	onMounted = t.optional(t.callback),
	-- A function that is called when the `Alert` AbsoluteSize is changed
	onAbsoluteSizeChanged = t.optional(t.callback),
	-- Position of `Alert` in the whole page
	position = t.optional(t.UDim2),
	-- Size of the container housing the `Alert`. This is necessary to dynamically scale the alert's width
	screenSize = t.Vector2,
	-- Title text of the `Alert`. Title can be a maximum of 2 lines long before it is cut off
	title = t.string,
	-- Function that returns a Roact element to render
	titleContent = t.optional(t.callback),
	-- Function that returns a Roact element to render. Use this for checkboxes and other custom components.
	-- The content will render between the bodyText (if any) and buttons (if any)
	middleContent = t.optional(t.callback),
	-- Array of buttons. See [[ButtonStack]] for more info.
	buttonStackInfo = t.optional(ButtonStack.validateProps),
	-- Function that returns a Roact element to render
	footerContent = t.optional(t.callback),
	-- A function that is called when the X button in the Title has been clicked
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

Alert.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	margin = { top = 0, bottom = 24, left = 24, right = 24 },
	maxWidth = 400,
	minWidth = 272,
	position = UDim2.new(0.5, 0, 0.5, 0),
	isRoactGamepadEnabled = true,
}

function Alert:init()
	self.contentSize, self.changeContentSize = Roact.createBinding(Vector2.new(0, 0))

	self.middleContentRef = Roact.createRef()
	self.footerContentRef = Roact.createRef()
	self.buttonStackRef = Roact.createRef()
end

function Alert:didMount()
	if self.props.onMounted then
		self.props.onMounted()
	end
end

function Alert:render()
	local isMiddleContentFocusable = self.props.isMiddleContentFocusable
	local isFooterContentFocusable = self.props.isFooterContentFocusable
	local isRoactGamepadEnabled = self.props.isRoactGamepadEnabled

	local totalWidth = math.clamp(
		self.props.screenSize.X - self.props.margin.left - self.props.margin.right,
		self.props.minWidth,
		self.props.maxWidth
	)

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

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

		local buttonStackInfo = self.props.buttonStackInfo
		if buttonStackInfo then
			buttonStackInfo = Cryo.Dictionary.join(buttonStackInfo, {
				[Roact.Ref] = if isRoactGamepadEnabled then self.buttonStackRef else nil,
				NextSelectionUp = if isRoactGamepadEnabled
					then isMiddleContentFocusable and self.middleContentRef or nil
					else nil,
				NextSelectionDown = if isRoactGamepadEnabled
					then isFooterContentFocusable and self.footerContentRef or nil
					else nil,
				isRoactGamepadEnabled = isRoactGamepadEnabled,
			})
		end

		return Roact.createElement(
			if isRoactGamepadEnabled then RoactGamepad.Focusable[ImageSetComponent.Button] else ImageSetComponent.Button,
			{
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

				[Roact.Ref] = if isRoactGamepadEnabled then self.props.defaultChildRef else nil,
				[Roact.Change.AbsoluteSize] = self.props.onAbsoluteSizeChanged,
				defaultChild = if isRoactGamepadEnabled then self.buttonStackRef else nil,
			},
			{
				AlertContents = Roact.createElement(FitFrameOnAxis, {
					contentPadding = UDim.new(0, PADDING_BETWEEN),
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
						titleContent = self.props.titleContent,
						onCloseClicked = self.props.onCloseClicked,
					}),
					MiddleContent = self.props.middleContent
						and Roact.createElement(
							if isRoactGamepadEnabled then RoactGamepad.Focusable[FitFrameOnAxis] else FitFrameOnAxis,
							{
								BackgroundTransparency = 1,
								LayoutOrder = 2,
								minimumSize = UDim2.new(1, 0, 0, 0),

								[Roact.Ref] = if isRoactGamepadEnabled then self.middleContentRef else nil,
								NextSelectionDown = if isRoactGamepadEnabled
									then isMiddleContentFocusable and self.buttonStackRef or nil
									else nil,
							},
							{
								Content = self.props.middleContent(),
							}
						),
					Footer = Roact.createElement(FitFrameOnAxis, {
						BackgroundTransparency = 1,
						contentPadding = UDim.new(0, 12),
						LayoutOrder = 3,
						minimumSize = UDim2.new(1, 0, 0, 0),
					}, {
						Buttons = buttonStackInfo and Roact.createElement(ButtonStack, buttonStackInfo),
						FooterContent = self.props.footerContent
							and Roact.createElement(
								if isRoactGamepadEnabled then RoactGamepad.Focusable[FitFrameOnAxis] else FitFrameOnAxis,
								{
									BackgroundTransparency = 1,
									LayoutOrder = 5,
									minimumSize = UDim2.new(1, 0, 0, 0),

									[Roact.Ref] = if isRoactGamepadEnabled then self.footerContentRef else nil,
									NextSelectionUp = if isRoactGamepadEnabled
										then isFooterContentFocusable and self.buttonStackRef or nil
										else nil,
								},
								{
									Content = self.props.footerContent(),
								}
							),
					}),
				}) or nil,
			}
		)
	end)
end

return Alert
