--!nonstrict
local ExpandableTextAreaRoot = script.Parent
local Text = ExpandableTextAreaRoot.Parent
local App = Text.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local RoactGamepad = require(Packages.RoactGamepad)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local SpringAnimatedItem = require(UIBlox.Utility.SpringAnimatedItem)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local Images = require(UIBlox.App.ImageSet.Images)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ExpandableTextUtils = require(UIBlox.Core.Text.ExpandableText.ExpandableTextUtils)

local CursorKind = require(App.SelectionImage.CursorKind)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
local useCursorByType = require(App.SelectionCursor.useCursorByType)
local CursorType = require(App.SelectionCursor.CursorType)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local DEFAULT_PADDING_TOP = 30
local PADDING_TOP = DEFAULT_PADDING_TOP
local SPACING_Y = 10
local DEFAULT_PADDING_BOTTOM = 5
local PADDING_BOTTOM = DEFAULT_PADDING_BOTTOM
local DOWN_ARROW_SIZE = UDim2.new(0, 36, 0, 36)
local PRESSABLE_AREA_SIZE = UDim2.new(1, 0, 0, 36)
local GRADIENT_HEIGHT = 30
local GRADIENT_IMAGE = Images["gradient/gradient_0_100"]
local DOWN_ARROW_IMAGE_EXPAND = Images["truncate_arrows/actions_truncationExpand"]
local DOWN_ARROW_IMAGE_COLLAPSE = Images["truncate_arrows/actions_truncationCollapse"]

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 3.5,
}
local GRADIENT_ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 3.5,
}

local SpringImageComponent = SpringAnimatedItem.wrap(ImageSetComponent.Label)
local ExpandableTextArea = Roact.PureComponent:extend("ExpandableTextArea")

ExpandableTextArea.validateProps = t.strictInterface({
	Text = t.optional(t.string),
	Position = t.optional(t.UDim2),
	compactNumberOfLines = t.optional(t.number),
	LayoutOrder = t.optional(t.number),
	width = t.optional(t.UDim),
	padding = t.optional(t.Vector2),
	onClick = t.optional(t.callback),

	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	frameRef = t.optional(t.table),
	-- Selection cursor
	selectionCursor = if UIBloxConfig.migrateToNewSelectionCursor then t.optional(t.any) else nil,

	gradientColor = if UIBloxConfig.enableExpandableTextAreaGradientFix then t.optional(t.Color3) else nil,
})

ExpandableTextArea.defaultProps = {
	compactNumberOfLines = 2,
	Text = "",
}

function ExpandableTextArea:init()
	self.state = {
		isExpanded = false,
		frameWidth = 0,
	}

	self.onClick = function()
		self:setState(function(state)
			return {
				isExpanded = not state.isExpanded,
			}
		end)
		if self.props.onClick then
			self.props.onClick(self.state.isExpanded)
		end
	end

	self.ref = Roact.createRef()
	self.layoutRef = Roact.createRef()
end

function ExpandableTextArea:getRef()
	return self.props.frameRef or self.ref
end

function ExpandableTextArea:applyFit(y)
	local ref = self:getRef()
	if not ref.current then
		return
	end
	local frame = ref.current
	local offset = (y + PADDING_TOP + PADDING_BOTTOM)
	local width = self.props.width
	if width then
		frame.Size = UDim2.new(width.Scale, width.Offset, 0, offset)
	else
		frame.Size = UDim2.new(1, 0, 0, offset)
	end
end

function ExpandableTextArea:didMount()
	self.isMounted = true
	local layout = self.layoutRef.current
	if layout then
		local size = layout.AbsoluteContentSize
		self:applyFit(size.y)
	end
end

function ExpandableTextArea:willUnmount()
	self.isMounted = false
end

function ExpandableTextArea:render()
	local descriptionText = self.props.Text
	local position = self.props.Position
	local compactNumberOfLines = self.props.compactNumberOfLines
	local layoutOrder = self.props.LayoutOrder
	local width = self.props.width
	local padding = self.props.padding
	local gradientColor = self.props.gradientColor
	local ref = self:getRef()

	PADDING_TOP = padding and padding.Y or DEFAULT_PADDING_TOP
	PADDING_BOTTOM = padding and padding.X or DEFAULT_PADDING_BOTTOM

	return withStyle(function(stylePalette)
		return withSelectionCursorProvider(function(getSelectionCursor)
			local theme = stylePalette.Theme
			local font = stylePalette.Font
			local textSize = font.BaseSize * font.Body.RelativeSize
			local fullTextHeight, compactHeight = ExpandableTextUtils.getExpandableTextHeights(
				font,
				self.state.frameWidth,
				descriptionText,
				compactNumberOfLines
			)

			local compactSize = UDim2.new(1, 0, 0, compactHeight + PADDING_BOTTOM)
			local fullSize = UDim2.new(1, 0, 0, fullTextHeight + PADDING_BOTTOM)
			local canExpand = fullTextHeight > compactHeight
			local isExpanded = not canExpand or self.state.isExpanded

			local size = isExpanded and fullSize or compactSize
			local gradientHeight = isExpanded and 0 or GRADIENT_HEIGHT

			local isFocusable = canExpand
			local frameComponent = isFocusable and RoactGamepad.Focusable.Frame or "Frame"

			return Roact.createElement(frameComponent, {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = layoutOrder,
				Position = position,
				Size = width and UDim2.new(width.Scale, width.Offset, 0, 0) or UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				SelectionImageObject = if UIBloxConfig.migrateToNewSelectionCursor
					then self.props.selectionCursor
					else getSelectionCursor(CursorKind.RoundedRect),
				[Roact.Ref] = ref,
				[Roact.Change.AbsoluteSize] = function(rbx)
					if self.state.frameWidth ~= rbx.AbsoluteSize.X then
						-- Wrapped in spawn in order to avoid issues if Roact connects changed signal before the Size
						-- prop is set in older versions of Roact (older than 1.0) In 1.0, this is fixed by deferring event
						-- handlers and setState calls until after the current update]]
						self:setState({
							frameWidth = rbx.AbsoluteSize.X,
						})
					end
				end,

				NextSelectionUp = self.props.NextSelectionUp,
				NextSelectionDown = self.props.NextSelectionDown,
				NextSelectionLeft = self.props.NextSelectionLeft,
				NextSelectionRight = self.props.NextSelectionRight,
				inputBindings = isFocusable and {
					Activated = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, self.onClick),
				} or nil,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, SPACING_Y),
					[Roact.Change.AbsoluteContentSize] = function(rbx)
						self:applyFit(rbx.AbsoluteContentSize.y)
					end,

					[Roact.Ref] = self.layoutRef,
				}),
				UIPadding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, PADDING_TOP),
				}),
				ExpandableContainer = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
					animatedValues = {
						height = size.Y.Offset,
					},
					mapValuesToProps = function(values)
						return {
							Size = UDim2.new(1, 0, size.Y.Scale, values.height),
						}
					end,
					regularProps = {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ClipsDescendants = true,
						Size = size,
						LayoutOrder = 0,
					},
					springOptions = ANIMATION_SPRING_SETTINGS,
				}, {
					DescriptionText = Roact.createElement(GenericTextLabel, {
						colorStyle = theme.TextDefault,
						fontStyle = font.Body,
						Size = size,
						Text = descriptionText,
						TextSize = textSize,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextWrapped = true,
						BackgroundTransparency = 1,
					}),
					Gradient = canExpand and Roact.createElement(SpringImageComponent, {
						animatedValues = {
							height = gradientHeight,
						},
						mapValuesToProps = function(values)
							return {
								Size = UDim2.new(1, 0, 0, values.height),
							}
						end,
						regularProps = {
							Size = UDim2.new(1, 0, 0, GRADIENT_HEIGHT),
							Position = UDim2.new(0, 0, 1, 0),
							AnchorPoint = Vector2.new(0, 1),
							BackgroundTransparency = 1,
							Image = GRADIENT_IMAGE,
							ImageColor3 = if UIBloxConfig.enableExpandableTextAreaGradientFix
								then (gradientColor or theme.BackgroundDefault.Color)
								else theme.BackgroundDefault.Color,
						},
						springOptions = GRADIENT_ANIMATION_SPRING_SETTINGS,
					}),
				}),
				ButtonContainer = canExpand and Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 10),
					LayoutOrder = 1,
				}, {
					PressableButton = Roact.createElement("TextButton", {
						Position = UDim2.new(0, 0, 0, -24),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = PRESSABLE_AREA_SIZE,
						Text = "",
						[Roact.Event.Activated] = self.onClick,
					}, {
						DownArrow = Roact.createElement(ImageSetComponent.Label, {
							AnchorPoint = Vector2.new(0.5, 0),
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							Position = UDim2.new(0.5, 0, 0, 0),
							Image = (size == fullSize) and DOWN_ARROW_IMAGE_COLLAPSE or DOWN_ARROW_IMAGE_EXPAND,
							ImageColor3 = theme.IconEmphasis.Color,
							ImageTransparency = theme.IconEmphasis.Transparency,
							Size = DOWN_ARROW_SIZE,
						}),
					}),
				}),
			})
		end)
	end)
end

return Roact.forwardRef(function(props, ref)
	local selectionCursor = useCursorByType(CursorType.RoundedRect)
	if UIBloxConfig.migrateToNewSelectionCursor then
		props = Cryo.Dictionary.join({
			selectionCursor = selectionCursor,
		}, props)
	end
	return Roact.createElement(
		ExpandableTextArea,
		Cryo.Dictionary.join(props, {
			frameRef = ref,
		})
	)
end)
