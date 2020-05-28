--[[
	Split a line of text with zero or more {link} placeholders into a Frame containing TextLabels and LinkButtons.
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)
local t = require(Libs.Framework.Util.Typecheck.t)

local LayoutOrderIterator = require(Plugin.Core.Util.LayoutOrderIterator)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local LinkText = require(Libs.Framework.UI).LinkText

local withTheme = ContextHelper.withTheme

local function TextWithInlineLink(props)
	assert(t.interface({
		text = t.string,
		onLinkClicked = t.callback,
		linkText = t.string,
		linkPlaceholder = t.string,
		maxWidth = t.positiveNumber,
		textProps = t.interface({
			TextSize = t.integer,
			Font = t.enum(Enum.Font)
		})
	})(props))

	return withTheme(function(theme)
		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local textProps = props.textProps
		local text = props.text
		local linkText = props.linkText
		local maxWidth = props.maxWidth
		local textSize = textProps.TextSize

		local lines = {}
		local lineOrder
		local previousLineWrapped

		local frameHeight = 0

		local function measureAndBreakLineIfNeeded(text)
			local size = TextService:GetTextSize(text, textProps.TextSize, textProps.Font, Vector2.new(maxWidth, math.huge))

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
					items = {
						Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Center
						})
					}
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

		local function appendTextLabel(text, xOffset)
			if #text == 0 then
				return nil
			end

			local size = measureAndBreakLineIfNeeded(text)

			appendToLine(Roact.createElement("TextLabel", Cryo.Dictionary.join({
				Text = text,
				Size = UDim2.new(0, size.X, 0, size.Y),
				LayoutOrder = lineOrder:getNextOrder(),
				TextWrapped = true
			}, textProps)))
		end

		local function appendLink()
			local size = measureAndBreakLineIfNeeded(linkText)

			appendToLine(Roact.createElement(LinkText, {
				-- This component does not support wrapping, so truncate if the text is too long
				Size = UDim2.new(0, size.X, 0, textSize),
				TextTruncate = Enum.TextTruncate.AtEnd,
				LayoutOrder = lineOrder:getNextOrder(),
				OnClick = props.onLinkClicked,
				Text = linkText,
				Style = {
					TextColor = theme.linkButton.textColor,
					TextSize = textProps.TextSize,
					Font = textProps.Font,
				},
			}))
		end

		local i = 1
		while true do
			local startPos
			local endPos

			startPos, endPos = string.find(text, props.linkPlaceholder, i, true)

			-- No (more) link placeholders found
			if startPos == nil then
				break
			end

			-- Add any unconsumed text up to this link
			appendTextLabel(string.sub(text, i, startPos - 1))

			appendLink()

			-- Continue searching for more link placeholders after this one
			i = endPos + 1
		end

		-- Append any remaining text
		appendTextLabel(string.sub(text, i, #text))

		local lineElements = {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center
			})
		}

		for i, line in ipairs(lines) do
			lineElements["line_" .. i] = Roact.createElement("Frame", {
				Size = UDim2.new(0, line.width, 0, line.height),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = i
			}, line.items)
		end

		return Roact.createElement("Frame", {
			Position = position,
			Size = UDim2.new(1, 0, 0, frameHeight),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, lineElements)
	end)
end

return TextWithInlineLink
