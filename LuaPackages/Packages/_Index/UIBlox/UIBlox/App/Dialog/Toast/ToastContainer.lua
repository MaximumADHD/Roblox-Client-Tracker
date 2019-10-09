local TextService = game:GetService("TextService")
local ToastRoot = script.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(UIBloxRoot.ImageSet.Images)
local withStyle = require(UIBloxRoot.Style.withStyle)
local validateColorInfo = require(UIBloxRoot.Style.Validator.validateColorInfo)

local DEFAULT_PADDING = 12
local DEFAULT_ICON_SIZE = Vector2.new(36, 36)

local MAX_WIDTH = 400
local MIN_WIDTH = 24
local MIN_HEIGHT = 60

local MAX_BOUND = 10000
local PATCHED_PADDING = 2

local function getTextHeight(text, font, fontSize, widthCap)
	local bounds = Vector2.new(widthCap, MAX_BOUND)
	local textSize = TextService:GetTextSize(text, fontSize, font, bounds)
	return textSize.Y + PATCHED_PADDING
end

local ToastContainer = Roact.PureComponent:extend("ToastContainer")

local validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	fitHeight = t.optional(t.boolean),
	iconColorStyle = t.optional(validateColorInfo),
	-- Optional image to be displayed in the toast.
	iconImage = t.optional(t.union(t.table, t.string)),
	iconSize = t.optional(t.Vector2),
	layoutOrder = t.optional(t.integer),
	onActivated = t.optional(t.callback),
	onTouchSwipe = t.optional(t.callback),
	padding = t.numberMin(0),
	position = t.UDim2,
	pressedScale = t.optional(t.number),
	renderToast = t.callback,
	size = t.UDim2,
	sizeConstraint = t.optional(t.table),
	toastSubtitle = t.optional(t.string),
	toastTitle = t.string,
})

ToastContainer.defaultProps = {
	anchorPoint = Vector2.new(0, 0),
	fitHeight = true,
	padding = DEFAULT_PADDING,
	position = UDim2.new(0, 0, 0, 0),
	size = UDim2.new(1, -DEFAULT_PADDING * 2, 0, 0),
	sizeConstraint = {
		MaxSize = Vector2.new(MAX_WIDTH, math.huge),
		MinSize = Vector2.new(MIN_WIDTH, MIN_HEIGHT),
	},
}

function ToastContainer:init()
	self.isMounted = false

	self.state = {
		containerWidth = 0,
		pressed = false,
		subtitleHeight = 0,
		titleHeight = 0,
	}

	self.getIconSize = function()
		local iconSize = self.props.iconSize
		local iconImage = self.props.iconImage
		local imagesResolutionScale = Images.ImagesResolutionScale
		if iconImage then
			if iconSize then
				return iconSize
			elseif iconImage.ImageRectSize and imagesResolutionScale and imagesResolutionScale > 0 then
				return iconImage.ImageRectSize / imagesResolutionScale
			else
				return DEFAULT_ICON_SIZE
			end
		end
		return Vector2.new(0, 0)
	end

	self.onButtonInputBegan = function(_, inputObject)
		if inputObject.UserInputState == Enum.UserInputState.Begin and
			(inputObject.UserInputType == Enum.UserInputType.Touch or
			inputObject.UserInputType == Enum.UserInputType.MouseButton1) then
			if not self.state.pressed and self.isMounted then
				self:setState({
					pressed = true,
				})
			end
		end
	end

	self.onButtonInputEnded = function()
		if self.state.pressed and self.isMounted then
			self:setState({
				pressed = false,
			})
		end
	end
end

function ToastContainer:render()
	assert(validateProps(self.props))
	local iconImage = self.props.iconImage
	local iconSize = self.getIconSize()
	local padding = self.props.padding
	local toastSubtitle = self.props.toastSubtitle
	local toastTitle = self.props.toastTitle

	local textFrameHeight = self.state.titleHeight + self.state.subtitleHeight
	local size = self.props.size
	if self.props.fitHeight then
		local containerHeight = math.max(iconSize.Y, textFrameHeight) + padding*2
		size = UDim2.new(size.X.Scale, size.X.Offset, 0, containerHeight)
	end

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font
		local titleStyle = font.Header2
		local subtitleStyle = font.CaptionBody

		return Roact.createElement("TextButton", {
			AnchorPoint = self.props.anchorPoint,
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
			Position = self.props.position,
			Size = size,
			Text = "",
			[Roact.Change.AbsoluteSize] = function(rbx)
				if self.state.containerWidth ~= rbx.AbsoluteSize.X then
					local containerWidth = rbx.AbsoluteSize.X
					local textFrameWidth = containerWidth - padding*2
					if iconImage then
						textFrameWidth = textFrameWidth - iconSize.X - padding
					end

					local titleFont = titleStyle.Font
					local titleSize = titleStyle.RelativeSize * font.BaseSize
					local titleHeight = math.max(0, getTextHeight(toastTitle, titleFont, titleSize, textFrameWidth))
					local subtitleHeight = 0

					if toastSubtitle then
						local subtitleFont = subtitleStyle.Font
						local subtitleSize = subtitleStyle.RelativeSize * font.BaseSize
						subtitleHeight = math.max(0, getTextHeight(toastSubtitle, subtitleFont, subtitleSize, textFrameWidth))
					end

					-- Wrapped in spawn in order to avoid issues if Roact connects changed signal before the Size
					-- prop is set in older versions of Roact (older than 1.0) In 1.0, this is fixed by deferring event
					-- handlers and setState calls until after the current update]]
					spawn(function()
						if self.isMounted then
							self:setState({
								containerWidth = containerWidth,
								subtitleHeight = subtitleHeight,
								titleHeight = titleHeight,
							})
						end
					end)
				end
			end,
			[Roact.Event.Activated] = self.props.onActivated,
			[Roact.Event.InputBegan] = self.onButtonInputBegan,
			[Roact.Event.InputEnded] = self.onButtonInputEnded,
			[Roact.Event.TouchSwipe] = self.props.onTouchSwipe,
		}, {
			UISizeConstraint = Roact.createElement("UISizeConstraint", self.props.sizeConstraint),
			Toast = self.props.renderToast({
				iconProps = iconImage and {
					colorStyle = self.props.iconColorStyle,
					Image = iconImage,
					Size = UDim2.new(0, iconSize.X, 0, iconSize.Y),
				} or nil,
				padding = padding,
				pressed = self.props.onActivated and self.state.pressed or nil,
				pressedScale = self.props.pressedScale,
				subtitleTextProps = toastSubtitle and {
					colorStyle = theme.TextEmphasis,
					fontStyle = subtitleStyle,
					Size = UDim2.new(1, 0, 0, self.state.subtitleHeight),
					Text = toastSubtitle,
				} or nil,
				textFrameSize = UDim2.new(1, iconImage and -iconSize.X - padding or 0, 0, textFrameHeight),
				titleTextProps = {
					colorStyle = theme.TextEmphasis,
					fontStyle = titleStyle,
					Size = UDim2.new(1, 0, 0, self.state.titleHeight),
					Text = toastTitle,
				},
			}),
		})
	end)
end

function ToastContainer:didMount()
	self.isMounted = true
end

function ToastContainer:willUnmount()
	self.isMounted = false
end

return ToastContainer
