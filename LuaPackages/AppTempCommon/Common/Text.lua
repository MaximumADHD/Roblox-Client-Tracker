local EngineFeatureTextBoundsRoundUp = game:GetEngineFeature("TextBoundsRoundUp")

local TextService = game:GetService("TextService")

local Text = {}

-- FYI: Any number greater than 2^30 will make TextService:GetTextSize give invalid results
local MAX_BOUND = 10000

-- Remove with EngineFeatureTextBoundsRoundUp
Text._TEMP_PATCHED_PADDING = Vector2.new(0, 0)

if not EngineFeatureTextBoundsRoundUp then
	Text._TEMP_PATCHED_PADDING = Vector2.new(2, 2)
end

-- Wrapper function for GetTextSize
function Text.GetTextBounds(text, font, fontSize, bounds)
	return TextService:GetTextSize(text, fontSize, font, bounds) + Text._TEMP_PATCHED_PADDING
end

function Text.GetTextWidth(text, font, fontSize)
	return Text.GetTextBounds(text, font, fontSize, Vector2.new(MAX_BOUND, MAX_BOUND)).X
end

function Text.GetTextHeight(text, font, fontSize, widthCap)
	return Text.GetTextBounds(text, font, fontSize, Vector2.new(widthCap, MAX_BOUND)).Y
end

-- TODO(CLIPLAYEREX-391): Kill these truncate functions once we have official support for text truncation
function Text.Truncate(text, font, fontSize, widthInPixels, overflowMarker)
	overflowMarker = overflowMarker or ""

	if Text.GetTextWidth(text, font, fontSize) > widthInPixels then
		-- A binary search may be more efficient
		local lastText = ""
		for _, stopIndex in utf8.graphemes(text) do
			local newText = string.sub(text, 1, stopIndex) .. overflowMarker
			if Text.GetTextWidth(newText, font, fontSize) > widthInPixels then
				return lastText
			end
			lastText = newText
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

-- Remove whitespace from the beginning and end of the string
function Text.Trim(str)
	if type(str) ~= "string" then
		error(string.format("Text.Trim called on non-string type %s.", type(str)), 2)
	end
	return (str:gsub("^%s*(.-)%s*$", "%1"))
end

-- Remove whitespace from the end of the string
function Text.RightTrim(str)
	if type(str) ~= "string" then
		error(string.format("Text.RightTrim called on non-string type %s.", type(str)), 2)
	end
	return (str:gsub("%s+$", ""))
end

-- Remove whitespace from the beginning of the string
function Text.LeftTrim(str)
	if type(str) ~= "string" then
		error(string.format("Text.LeftTrim called on non-string type %s.", type(str)), 2)
	end
	return (str:gsub("^%s+", ""))
end

-- Replace multiple whitespace with one; remove leading and trailing whitespace
function Text.SpaceNormalize(str)
	if type(str) ~= "string" then
		error(string.format("Text.SpaceNormalize called on non-string type %s.", type(str)), 2)
	end
	return (str:gsub("%s+", " "):gsub("^%s+" , ""):gsub("%s+$" , ""))
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