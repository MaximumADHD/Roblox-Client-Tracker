local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local RoactGamepad = require(Packages.RoactGamepad)
local Cryo = require(Packages.Cryo)

local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
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
local PADDING_BETWEEN = 24

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local validateButtonStack = require(AppRoot.Button.Validator.validateButtonStack)

local Alert = Roact.PureComponent:extend("Alert")

local validateProps = t.strictInterface({
	alertType = enumerateValidator(AlertType),
	maxWidth = t.optional(t.number),
	minWidth = t.optional(t.number),
	margin = t.optional(t.table),
	anchorPoint = t.optional(t.Vector2),
	onMounted = t.optional(t.callback),
	onAbsoluteSizeChanged = t.optional(t.callback),
	position = t.optional(t.UDim2),
	screenSize = t.Vector2,

	title = t.string,
	titleContent = t.optional(t.callback),
	middleContent = t.optional(t.callback),
	buttonStackInfo = t.optional(validateButtonStack),
	footerContent = t.optional(t.callback),

	--Gamepad props
	defaultChildRef = t.optional(t.table),
	isMiddleContentFocusable = t.optional(t.boolean),
	isFooterContentFocusable = t.optional(t.boolean),
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
	minWidth = 272,
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function Alert:init()
	self.contentSize, self.changeContentSize = Roact.createBinding(Vector2.new(0, 0))

	if UIBloxConfig.enableExperimentalGamepadSupport then
		self.middleContentRef = Roact.createRef()
		self.footerContentRef = Roact.createRef()
	end
	self.buttonStackRef = Roact.createRef()
end

function Alert:didMount()
	if self.props.onMounted then
		self.props.onMounted()
	end
end

function Alert:render()
	assert(validateProps(self.props))
	local isMiddleContentFocusable = UIBloxConfig.enableExperimentalGamepadSupport and self.props.isMiddleContentFocusable
	local isFooterContentFocusable = UIBloxConfig.enableExperimentalGamepadSupport and self.props.isFooterContentFocusable

	local totalWidth = math.clamp(self.props.screenSize.X - self.props.margin.left - self.props.margin.right,
		self.props.minWidth, self.props.maxWidth)

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
		if UIBloxConfig.enableExperimentalGamepadSupport and buttonStackInfo then
			buttonStackInfo = Cryo.Dictionary.join(buttonStackInfo, {
				[Roact.Ref] = self.buttonStackRef,
				NextSelectionUp = isMiddleContentFocusable and self.middleContentRef or nil,
				NextSelectionDown = isFooterContentFocusable and self.footerContentRef or nil,
			})
		end

		return Roact.createElement(UIBloxConfig.enableExperimentalGamepadSupport and
			RoactGamepad.Focusable[ImageSetComponent.Button] or ImageSetComponent.Button, {
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

			[Roact.Ref] = self.props.defaultChildRef,
			[Roact.Change.AbsoluteSize] = self.props.onAbsoluteSizeChanged,
			defaultChild = UIBloxConfig.enableExperimentalGamepadSupport and self.buttonStackRef or nil,
		}, {
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
				}),
				MiddleContent = self.props.middleContent and Roact.createElement(UIBloxConfig.enableExperimentalGamepadSupport and
					RoactGamepad.Focusable[FitFrameOnAxis] or FitFrameOnAxis, {
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					minimumSize = UDim2.new(1, 0, 0, 0),

					[Roact.Ref] = self.middleContentRef,
					NextSelectionDown = isMiddleContentFocusable and self.buttonStackRef or nil,
				}, {
					Content = self.props.middleContent()
				}),
				Footer = Roact.createElement(FitFrameOnAxis, {
					BackgroundTransparency = 1,
					contentPadding = UDim.new(0, 12),
					LayoutOrder = 3,
					minimumSize = UDim2.new(1, 0, 0, 0),
				}, {
					Buttons = buttonStackInfo and Roact.createElement(ButtonStack, buttonStackInfo),
					FooterContent = self.props.footerContent and Roact.createElement(UIBloxConfig.enableExperimentalGamepadSupport and
						RoactGamepad.Focusable[FitFrameOnAxis] or FitFrameOnAxis, {
						BackgroundTransparency = 1,
						LayoutOrder = 5,
						minimumSize = UDim2.new(1, 0, 0, 0),

						[Roact.Ref] = self.footerContentRef,
						NextSelectionUp = isFooterContentFocusable and self.buttonStackRef or nil,
					}, {
						Content = self.props.footerContent()
					}),
				}),
			}) or nil
		})
	end)
end

return Alert
