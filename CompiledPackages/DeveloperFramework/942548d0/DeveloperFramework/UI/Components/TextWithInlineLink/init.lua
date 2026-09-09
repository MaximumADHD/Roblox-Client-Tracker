--[[
	(DEPRECATED)
	PLEASE USE TextWithLinks instead
	Split a line of text with zero or more {link} placeholders into a Frame containing TextLabels and LinkButtons.
]]

local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local Cryo = require(Framework.Parent.Cryo)

local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local LinkText = require(Framework.UI.Components.LinkText)
local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)

local t = require(Framework.Util.Typecheck.t)
local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()
local isRoact17 = require(Framework.Util.isRoact17)(Roact)

local TextWithInlineLink = Roact.PureComponent:extend("TextWithInlineLink")

function TextWithInlineLink:init()
	local props = self.props

	assert(t.interface({
		Text = t.string,
		OnLinkClicked = t.callback,
		LinkText = t.string,
		LinkPlaceholder = t.string,
		TextProps = t.interface({
			TextSize = t.integer,
			Font = t.enum(Enum.Font),
		}),
	})(props))
end

function TextWithInlineLink:render()
	local props = self.props
	local style = props.Stylizer

	local textProps = props.TextProps
	local text = props.Text
	local linkText = props.LinkText
	local maxWidth = props.MaxWidth
	local textSize = textProps.TextSize
	local layoutOrder = props.LayoutOrder
	local horizontalAlignment = props.HorizontalAlignment

	local lines = {}
	local lineOrder
	local previousLineWrapped

	local frameHeight = 0

	local function measureAndBreakLineIfNeeded(text)
		local size = TextService:GetTextSize(text, textProps.TextSize, textProps.Font, Vector2.new(maxWidth, math.huge))
		-- Workaround for an issue with GetTextSize where it rounds the sub-pixel value it returns
		-- to the nearest pixel rather than rounding up, causing 1px of overflow in some cases
		size = size + Vector2.new(1, 0)

		-- Whether this text alone would need to wrap
		local textWraps = size.Y > textSize

		local lineWidth = 0
		if #lines > 0 then
			lineWidth = lines[#lines].width
		end

		-- Whether this text appended to the current line would cause overflow
		local textWouldOverflow = lineWidth + size.X > maxWidth

		if previousLineWrapped or #lines == 0 or textWraps or textWouldOverflow then
			local lineHeight = textWraps and size.Y or textSize

			table.insert(lines, {
				width = size.X,
				height = lineHeight,
				items = {},
			})
			lineOrder = LayoutOrderIterator.new()
			frameHeight = frameHeight + lineHeight
		else
			lines[#lines].width = lineWidth + size.X
		end

		previousLineWrapped = textWraps

		return size
	end

	local function appendToLine(val)
		local line = lines[#lines]
		table.insert(line.items, val)
	end

	local function appendTextLabel(text)
		if #text == 0 then
			return
		end

		local size = measureAndBreakLineIfNeeded(text)
		local layoutOrder = lineOrder:getNextOrder()

		appendToLine(Roact.createElement(
			TextLabel,
			Cryo.Dictionary.join({
				key = if FFlagDevFrameworkFixMissingKeyErrors then tostring(layoutOrder) else nil,
				Text = text,
				Size = UDim2.new(0, size.X, 0, size.Y),
				LayoutOrder = layoutOrder,
				TextWrapped = true,
			}, textProps)
		))
	end

	local function appendLink()
		local size = measureAndBreakLineIfNeeded(linkText)
		local layoutOrder = lineOrder:getNextOrder()

		appendToLine(Roact.createElement(LinkText, {
			-- This component does not support wrapping, so truncate if the text is too long
			key = if FFlagDevFrameworkFixMissingKeyErrors and isRoact17 then tostring(layoutOrder) else nil,
			Size = UDim2.new(0, size.X, 0, textSize),
			TextTruncate = Enum.TextTruncate.AtEnd,
			LayoutOrder = layoutOrder,
			OnClick = props.OnLinkClicked,
			Text = linkText,
			Style = {
				TextColor = style.TextColor,
				TextSize = textProps.TextSize,
				Font = textProps.Font,
			},
		}))
	end

	local pos = 1
	while true do
		local startPos
		local endPos

		startPos, endPos = string.find(text, props.LinkPlaceholder, pos, true)

		-- No (more) link placeholders found
		if startPos == nil then
			break
		end

		-- Add any unconsumed text up to this link
		appendTextLabel(string.sub(text, pos, startPos - 1))

		appendLink()

		-- Continue searching for more link placeholders after this one
		pos = endPos + 1
	end

	-- Append any remaining text
	appendTextLabel(string.sub(text, pos, #text))

	local lineElements = {}

	for i, line in ipairs(lines) do
		lineElements["line_" .. i] = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = horizontalAlignment,
		}, line.items)
	end

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = layoutOrder,
		HorizontalAlignment = horizontalAlignment,
	}, lineElements)
end

TextWithInlineLink = withContext({
	Stylizer = ContextServices.Stylizer,
})(TextWithInlineLink)

return TextWithInlineLink
