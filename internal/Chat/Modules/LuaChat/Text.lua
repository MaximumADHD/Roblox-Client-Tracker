local Text = {}
local TextService = game:GetService("TextService")

--[[
	Kill these truncate functions once we have official support for text truncation
]]


--Constants
local HUGE = 10000
local INFINITE_WIDTH = Vector2.new(HUGE, HUGE) -- Text prioritizes width vs height when given both

-- Wrapper function for GetTextSize with infinite bounds
function Text.GetTextBounds(text, font, fontSize, bounds)
	if settings():GetFFlag("TextMeasureTemporaryPatch") then
		local ret = TextService:GetTextSize(text, fontSize, font, bounds) + Vector2.new(1, 1)
		return ret
	end
	-- bonus 1px cause sometimes last char is cut off. that's a (documented) bug for another day
	local ret = TextService:GetTextSize(text, fontSize, font, bounds) + Vector2.new(1, 0)
	return ret
end

function Text.GetTextWidth(text, font, fontSize)
	return Text.GetTextBounds(text, font, fontSize, INFINITE_WIDTH).X
end

function Text.GetTextHeight(text, font, fontSize, widthCap)
	return Text.GetTextBounds(text, font, fontSize, Vector2.new(widthCap, HUGE)).Y
end

function Text.Truncate(text, font, fontSize, widthInPixels, overflowMarker)
	overflowMarker = overflowMarker or ""

	if Text.GetTextWidth(text, font, fontSize) > widthInPixels then
		-- A binary search may be more efficient
		for len = #text, 1, -1 do
			local newText = string.sub(text, 1, len) .. overflowMarker
			if Text.GetTextWidth(newText, font, fontSize) <= widthInPixels then
				return newText
			end
		end
	else -- No truncation needed
		return text
	end

	return ""
end

function Text.TruncateTextLabel(textLabel, overflowMarker)
	textLabel.Text = Text.Truncate(textLabel.Text, textLabel.Font,
			textLabel.TextSize, textLabel.AbsoluteSize.X, overflowMarker)
end

function Text.SendPreprocess(inputText)
	if inputText == "/shrug" then
		return "?\\_(?)_/?"
	end

	-- Future chat commands will go here

	return inputText
end

--[[
	Trims the string.
]]
function Text.Trim(input)
  return (input:gsub("^%s*(.-)%s*$", "%1"))
end

--[[
	Trims the string from the right side.
	The following more obvious implementation is generally not
	as efficient, particularly for long strings since Lua pattern matching
	starts at the left (though in special cases it is more efficient).
	Related discussion on p.197 of book "Beginning Lua Programming".
	function rtrim(s) return (s:gsub("%s*$", "")) end
]]
function Text.RightTrim(input)
	local inputEnd = #input
	while inputEnd > 0 and input:find("^%s", inputEnd) do
		inputEnd = inputEnd - 1
    end
	return input:sub(1, inputEnd)
end

--[[
	Trims the string from the left side.
]]
function Text.LeftTrim(input)
  return (input:gsub("^%s*", ""))
end

return Text