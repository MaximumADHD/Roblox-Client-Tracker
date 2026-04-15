--[[
	Split a line of text with various link placeholders into a Frame containing TextLabels and LinkTexts. This will replace TextWithInlineLink since it will provide the ability to replace various link placeholders with the corresponding links.
	Required Props:
		Vector2 AbsoluteSize: Current size of the component, from withAbsoluteSizeAndPosition
		Vector2 AbsolutePosition: Current position of the component, from withAbsoluteSizeAndPosition
		any WrapperProps: Wrapper props from withAbsoluteSizeAndPosition
		UDim2 Size: The size of this component.
		string Text: The text to search for link placeholders and display
		TextPropsTable TextProps: A table of styling props for the displayed text
		table LinkMap: A table where the outermost element is a string representing the LinkPlaceholder, which points to an inner table containing the LinkCallback and LinkText
	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Enum.HorizontalAlignment HorizontalAlignment: The horizontal alignment of the component
		number LayoutOrder: The layout order of the component
]]

local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Cryo = require(Framework.Parent.Cryo)
local Dash = require(Framework.Parent.Dash)
local withAbsoluteSize = require(Framework.Wrappers.withAbsoluteSize)
local Types = require(Framework.Types)

local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local LinkText = require(Framework.UI.Components.LinkText)
local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)
local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

local TextWithLinks = Roact.PureComponent:extend("TextWithLinks")

type TextPropsTable = {
	TextSize: number,
	Font: Enum.Font,
}

type LineElementTable = {
	width: number,
	height: number,
	items: Types.Record<string, Types.RoactElement>,
}

type LinkTable = {
	LinkCallback: () -> (),
	LinkText: string,
}

type _InteralTextWithLinksProps = {
	AbsoluteSize: Vector2, -- From withAbsoluteSizeAndPosition
	AbsolutePosition: Vector2, -- From withAbsoluteSizeAndPosition
	Stylizer: any,
	WrapperProps: any?, -- From withAbsoluteSize
}

type _ExternalTextWithLinksProps = {
	HorizontalAlignment: Enum.HorizontalAlignment,
	LayoutOrder: number,
	LinkMap: Types.Record<string, LinkTable>, -- LinkMap should be a table where the outermost element is a string representing the LinkPlaceholder, which points to an inner table containing the LinkCallback and LinkText
	Size: UDim2,
	Text: string,
	TextProps: TextPropsTable,
}

type TextWithLinksProps = _InteralTextWithLinksProps & _ExternalTextWithLinksProps

function TextWithLinks:init()
	local props: TextWithLinksProps = self.props

	self.lines = {} -- A table of rows that stores all of the TextLabel and LinkText components
	self.maxWidth = if props.AbsoluteSize then props.AbsoluteSize.X else 0 -- The width of the component, helps us determine when to wrap a component to the next line
	self.currentColumnIndex = 1 -- The current column index in the current row
	self.lineOrder = LayoutOrderIterator.new() -- Helps us assign the layout order of components within each row
	self.frameHeight = 0 -- Height of the component
	self.previousLineWrapped = nil -- Whether or not the previous component wrapped to the next line
end

-- Measures whether or not a component should be added to the current row or if a new row needs to be created
function TextWithLinks:measureAndBreakLineIfNeeded(text: string)
	local textProps: TextPropsTable = self.props.TextProps
	local maxWidth: number = self.maxWidth
	local lines: Types.Array<LineElementTable> = self.lines
	local previousLineWrapped: boolean? = self.previousLineWrapped

	local size = TextService:GetTextSize(text, textProps.TextSize, textProps.Font, Vector2.new(maxWidth, math.huge))
	-- Workaround for an issue with GetTextSize where it rounds the sub-pixel value it returns
	-- to the nearest pixel rather than rounding up, causing 1px of overflow in some cases
	size = size + Vector2.new(1, 0)

	-- Whether this text alone would need to wrap
	local textWraps = size.Y > textProps.TextSize

	local lineWidth = 0
	if #lines > 0 then
		lineWidth = lines[#lines].width
	end

	-- Whether this text appended to the current line would cause overflow
	local textWouldOverflow = lineWidth + size.X > maxWidth

	if previousLineWrapped or #lines == 0 or textWraps or textWouldOverflow then
		local lineHeight = textWraps and size.Y or textProps.TextSize

		table.insert(lines, {
			width = size.X,
			height = lineHeight,
			items = {},
		})
		local currentFrameHeight = self.frameHeight
		self.lineOrder = LayoutOrderIterator.new()
		self.frameHeight = currentFrameHeight + 1
		self.currentColumnIndex = 1
	else
		lines[#lines].width = lineWidth + size.X
	end
	previousLineWrapped = textWraps

	return size
end

-- Add a component to the current row
function TextWithLinks:appendToLine(val: Types.RoactElement)
	local lines: Types.Array<LineElementTable> = self.lines

	local line: LineElementTable = lines[#lines]
	local keyToUse = tostring(self.currentColumnIndex)
	line.items[keyToUse] = val

	self.currentColumnIndex = self.currentColumnIndex + 1
end

-- Add some text in a text label
function TextWithLinks:appendTextLabel(text: string)
	if #text == 0 then
		return
	end

	local size = self:measureAndBreakLineIfNeeded(text)
	local textProps: TextPropsTable = self.props.TextProps

	self:appendToLine(Roact.createElement(
		TextLabel,
		Cryo.Dictionary.join({
			Text = text,
			Size = UDim2.new(0, size.X, 0, size.Y),
			LayoutOrder = self.lineOrder:getNextOrder(),
			TextWrapped = true,
		}, textProps)
	))
end

-- Add inline text using LinkText
function TextWithLinks:appendLink(linkText: string, linkCallback: () -> ())
	local size = self:measureAndBreakLineIfNeeded(linkText)
	local textProps = self.props.TextProps
	local style = self.props.Stylizer

	self:appendToLine(Roact.createElement(LinkText, {
		-- This component does not support wrapping, so truncate if the text is too long
		Size = UDim2.new(0, size.X, 0, textProps.TextSize),
		TextTruncate = Enum.TextTruncate.AtEnd,
		LayoutOrder = self.lineOrder:getNextOrder(),
		OnClick = linkCallback,
		Text = linkText,
		Style = {
			TextColor = style.TextColor,
			TextSize = textProps.TextSize,
			Font = textProps.Font,
		},
	}))
end

function TextWithLinks:render()
	local props: TextWithLinksProps = self.props
	local text = props.Text
	local linkMap = props.LinkMap

	local layoutOrder = props.LayoutOrder
	local horizontalAlignment = props.HorizontalAlignment
	local wrapperProps = props.WrapperProps

	-- Reset the layout of the components upon render since the size of the component could have changed
	self.lines = {}
	self.maxWidth = if props.AbsoluteSize then props.AbsoluteSize.X else 0
	self.currentColumnIndex = 1
	self.lineOrder = LayoutOrderIterator.new()
	self.frameHeight = 0
	self.previousLineWrapped = nil

	-- Go through the text and look for link placeholders to replace. Then add the corresponding component to lines
	local pos = 1
	while true do
		local startPos
		local endPos
		local linkText: string
		local linkCallback: () -> ()

		for thisLinkPlaceholder, thisLinkObject in pairs(linkMap) do
			local thisLinkText = thisLinkObject.LinkText
			local thisLinkCallback = thisLinkObject.LinkCallback
			local thisStartPos
			local thisEndPos

			thisStartPos, thisEndPos = string.find(text, thisLinkPlaceholder, pos, true)
			if startPos == nil then
				startPos = thisStartPos
				endPos = thisEndPos
				linkText = thisLinkText
				linkCallback = thisLinkCallback
			else
				if thisStartPos and thisStartPos < startPos then
					startPos = thisStartPos
					endPos = thisEndPos
					linkText = thisLinkText
					linkCallback = thisLinkCallback
				end
			end
		end

		-- No (more) link placeholders found
		if startPos == nil then
			break
		end

		-- Add any unconsumed text up to this link
		self:appendTextLabel(string.sub(text, pos, startPos - 1))

		self:appendLink(linkText, linkCallback)

		-- Continue searching for more link placeholders after this one
		pos = endPos + 1
	end

	-- Append any remaining text
	self:appendTextLabel(string.sub(text, pos, #text))

	local lineElements = {}
	local rowLayoutOrder = LayoutOrderIterator.new()

	-- Create a Pane for each row
	for i, line in ipairs(self.lines) do
		lineElements[tostring(i)] = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = rowLayoutOrder:getNextOrder(),
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = horizontalAlignment,
		}, line.items)
	end

	-- Create a Pane that houses all of the rows
	return Roact.createElement(
		Pane,
		Dash.join({
			Layout = Enum.FillDirection.Vertical,
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = layoutOrder,
			HorizontalAlignment = horizontalAlignment,
			Size = props.Size,
		}, wrapperProps),
		lineElements
	)
end

TextWithLinks = withContext({
	Stylizer = ContextServices.Stylizer,
})(TextWithLinks)

return withAbsoluteSize(TextWithLinks)
