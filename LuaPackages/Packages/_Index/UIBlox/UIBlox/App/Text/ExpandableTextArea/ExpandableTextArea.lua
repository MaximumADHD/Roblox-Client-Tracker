local ExpandableTextAreaRoot = script.Parent
local Text = ExpandableTextAreaRoot.Parent
local App = Text.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Style.withStyle)

local TextService = game:GetService("TextService")
local SpringAnimatedItem = require(UIBlox.Utility.SpringAnimatedItem)
local ImageSetComponent = require(UIBlox.ImageSet.ImageSetComponent)
local Images = require(UIBlox.ImageSet.Images)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local PADDING_TOP = 30
local SPACING_Y = 10
local PADDING_BOTTOM = 5
local DOWN_ARROW_SIZE = UDim2.new(0, 36, 0, 36)
local PRESSABLE_AREA_SIZE = UDim2.new(1, 0, 0, 36)
local GRADIENT_HEIGHT = 30
local GRADIENT_IMAGE = Images["gradient/gradient_0_100"]
local DOWN_ARROW_IMAGE_EXPAND = Images["truncate_arrows/actions_truncationExpand"]
local DOWN_ARROW_IMAGE_COLLAPSE = Images["truncate_arrows/actions_truncationCollapse"]
-- NOTE: Any number greater than 2^30 will make TextService:GetTextSize give invalid results
local MAX_BOUND = 10000
local PATCHED_PADDING = 2

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 3.5,
}
local GRADIENT_ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 3.5,
}

-- NOTE: We use this instead of Text.GetTextHeight because we want to avoid the fix
-- for CLIPLAYEREX-1633 breaking our expandable container.
local function getTextHeight(text, font, fontSize, widthCap)
	local bounds = Vector2.new(widthCap, MAX_BOUND)
	local textSize = TextService:GetTextSize(text, fontSize, font, bounds)
	return textSize.Y + PATCHED_PADDING
end

local SpringImageComponent = SpringAnimatedItem.wrap(ImageSetComponent.Label)
local ExpandableTextArea = Roact.PureComponent:extend("ExpandableTextArea")

ExpandableTextArea.defaultProps = {
	compactNumberOfLines = 2,
	Text = "",
}

local validateProps = t.strictInterface({
	Text = t.optional(t.string),
	Position = t.optional(t.UDim2),
	compactNumberOfLines = t.optional(t.number),
	LayoutOrder = t.optional(t.number),
	width = t.UDim,
})

function ExpandableTextArea:init()
	self.state = {
		isExpanded = false,
		frameWidth = 0,
	}

	self.onClick = function()
		self:setState(function(state)
			return {
				isExpanded = not state.isExpanded
			}
		end)
	end

	self.ref = Roact.createRef()

	self.isMounted = false
end

function ExpandableTextArea:applyFit(y)
	if not self.ref.current then
		return
	end
	local frame = self.ref.current
	local offset = (y + PADDING_TOP + PADDING_BOTTOM)
	local width = self.props.width
	frame.Size = UDim2.new(width.Scale, width.Offset, 0, offset)
end

function ExpandableTextArea:didMount()
	self.isMounted = true
	local frame = self.ref.current
	local size = frame.AbsoluteSize
	self:applyFit(size.y)
end

function ExpandableTextArea:willUnmount()
	self.isMounted = false
end

function ExpandableTextArea:render()
	assert(validateProps(self.props))
	local descriptionText = self.props.Text
	local position = self.props.Position
	local compactNumberOfLines = self.props.compactNumberOfLines
	local layoutOrder = self.props.LayoutOrder
	local width = self.props.width

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font
		local textSize = font.BaseSize * font.Body.RelativeSize
		local textFont = font.Body.Font
		local fullTextHeight = getTextHeight(descriptionText, textFont, textSize, self.state.frameWidth)

		local compactHeight = compactNumberOfLines * textSize + PATCHED_PADDING
		local compactSize = UDim2.new(1, 0, 0, compactHeight + PADDING_BOTTOM)
		local fullSize = UDim2.new(1, 0, 0, fullTextHeight + PADDING_BOTTOM)

		local canExpand = fullTextHeight > compactHeight
		local isExpanded = not canExpand or self.state.isExpanded

		local size = isExpanded and fullSize or compactSize
		local gradientHeight = isExpanded and 0 or GRADIENT_HEIGHT

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = layoutOrder,
			Position = position,
			Size = UDim2.new(width.Scale, width.Offset, 0, 0),
			[Roact.Ref] = self.ref,
			[Roact.Change.AbsoluteSize] = function(rbx)
				if self.state.frameWidth ~= rbx.AbsoluteSize.X then
					-- Wrapped in spawn in order to avoid issues if Roact connects changed signal before the Size
					-- prop is set in older versions of Roact (older than 1.0) In 1.0, this is fixed by deferring event
					-- handlers and setState calls until after the current update]]
					spawn(function()
						if self.isMounted then
							self:setState({
								frameWidth = rbx.AbsoluteSize.X,
							})
						end
					end)
				end
			end,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, SPACING_Y),
				[Roact.Change.AbsoluteContentSize] = function(rbx)
					self:applyFit(rbx.AbsoluteContentSize.y)
				end
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
					Size = fullSize,
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
						ImageColor3 = theme.BackgroundDefault.Color,
					},
					springOptions = GRADIENT_ANIMATION_SPRING_SETTINGS,
				})
			}),
			ButtonContainer = canExpand and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 30),
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
						Size = DOWN_ARROW_SIZE,
					}),
				}),
			})
		})
	end)
end

return ExpandableTextArea