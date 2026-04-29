--[[
	An estimate for the "widest" character to check forced
	text wrapping behavior for. There's not a great way to
	derive this value other than GetTextBoundsAsync. This
	is used when checking series of characters with no
	whitespace / wrapping breaks.
]]
local WIDEST_CHAR_HEIGHT_TO_WIDTH_RATIO = 1.4

local function charAt(text: string, position: number): string
	return text:sub(position, position)
end

--[[
	This function is a utility for estimating the position of a cursor
	within a multi-line textbox. To achieve scrolling behavior with a TextBox,
	due to engine limitations we need to manually calculate the CanvasPosition
	of a ScrollingFrame and apply this based on where the CursorPosition is.

	The behavior for line-wrapping in TextBox is not exposed to developers,
	and using :GetTextBoundsAsync only works in full blocks of text. We want
	to determine bounds based on a cursor position in the middle of a block of
	text.

	See this PR (https://github.com/Roblox/foundation/pull/850) for more information 
]]
local function truncateTextToCursor(textBox: TextBox): string
	local cursorPosition = textBox.CursorPosition
	if cursorPosition == -1 then
		return ""
	end

	local text = textBox.Text
	local textHeight = textBox.TextSize * textBox.LineHeight

	--[[
		As long as this does not allow for more characters than the minimum amount that
		could be on one line (a line full of W or M for example), we are ok.
	]]
	local largestCharacterWidth = textHeight / WIDEST_CHAR_HEIGHT_TO_WIDTH_RATIO
	local maxLookAhead = textBox.AbsoluteSize.X / largestCharacterWidth

	--[[
		Figure out where the cursor is in the canvas.
		This requires checking text bounds with an estimation of where the word line breaks are.

		Only some langauges break text up this way, but it's not possible to determine
		this behavior mid-text from an engine-level.

		For suuuper long words, Roblox automatically wraps if it doesn't detect whitespace.
		In this case, just target the exact cursor position.
	]]
	local maxLookAheadPosition = cursorPosition + maxLookAhead
	local nextNewline = string.find(text, "\n", cursorPosition) or math.huge
	local nextSpace = string.find(text, "[ \t\f\v]", cursorPosition) or math.huge
	local truncateEnd = math.min(nextNewline - 1, nextSpace, #text)
	local isWithinNewlines = charAt(text, cursorPosition):match("\n")
		and (charAt(text, cursorPosition - 1):match("\n") or cursorPosition == 1)

	if isWithinNewlines then
		-- Handles series of newlines --
		truncateEnd = cursorPosition - 1
	elseif truncateEnd > maxLookAheadPosition then
		--[[
			In cases where it's not possible to optimize for accurate text-wrapping
			behavior approximation, just use the current cursor position.
			
			This is likely to have issues in some cases with languages that factor in
			whitespace when determining text wrapping behavior.
		]]
		truncateEnd = cursorPosition
	end

	-- TextArea needs to support all UTF8 characters
	return utf8.char(utf8.codepoint(text, 1, truncateEnd))
end

return truncateTextToCursor
