local TextService = game:GetService("TextService")

local Text = {}

--[[
	Kill these truncate functions once we have official support for text truncation
]]

--Constants
local HUGE = 10000
local INFINITE_WIDTH = Vector2.new(HUGE, HUGE) -- Text prioritizes width vs height when given both

-- Wrapper function for GetTextSize with infinite bounds
function Text.GetTextBounds(text, font, fontSize, bounds)
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

-- Remove whitespace from the beginning of the string
function Text.TrimLeading(str)
	if type(str) ~= "string" then
		error(string.format("Text.TrimTrailing called on non-string type %s.", type(str)), 2)
	end

	return str:gsub("^%s+" , "")
end

-- Remove whitespace from the end of the string
function Text.TrimTrailing(str)
	if type(str) ~= "string" then
		error(string.format("Text.TrimTrailing called on non-string type %s.", type(str)), 2)
	end

	return str:gsub("%s+$" , "")
end

-- Remove whitespace from the beginning and end of the string
function Text.Trim(str)
	if type(str) ~= "string" then
		error(string.format("Text.Trim called on non-string type %s.", type(str)), 2)
	end

	return str:gsub("^%s+" , ""):gsub("%s+$" , "")
end

-- Replace multiple whitespace with one; remove leading and trailing whitespace
function Text.SpaceNormalize(str)
	if type(str) ~= "string" then
		error(string.format("Text.SpaceNormalize called on non-string type %s.", type(str)), 2)
	end

	return str:gsub("%s+", " "):gsub("^%s+" , ""):gsub("%s+$" , "")
end

-- Splits a string by the provided pattern into a table. The pattern is interpreted as plain text.
function Text.Split(str, pattern)
	if type(str) ~= "string" then
		error(string.format("Text.Split called on non-string type %s.", type(str)), 2)
	elseif type(pattern) ~= "string" then
		error(string.format("Text.Split called with a pattern that is non-string type %s.", type(pattern)), 2)
	elseif pattern == "" then
		error("Text.Split called with an empty pattern.", 2)
	end

	local result = {}
	local currentPosition = 1

	while true do
		local patternStart, patternEnd = string.find(str, pattern, currentPosition, true)
		if not patternStart or not patternEnd then break end
		table.insert(result, string.sub(str, currentPosition, patternStart - 1))
		currentPosition = patternEnd + 1
	end

	table.insert(result, string.sub(str, currentPosition, string.len(str)))

	return result
end

return Text