local ELLIPSIS_CHAR = utf8.char(0x2026)

--[[
	text : string
		The string to truncate
	maxWidth : int
		Width in pixels of the area the truncated string will be rendered in
	getTextWidth : string -> int
		Get the size in pixels of the given string when rendered in the target area
		(i.e. should consider the target area's font)
	suffixLength : int?
		Truncation is implemented as:
		[as much of the start of the string as we can fit] ellipsis [suffixLength amount of chars from end of string]
		So "some_long_filename.png" with suffixLength = 6 could look like "so...me.png" or "some_long_f...me.png"
		Depending on maxWidth
]]
return function(text, maxWidth, getTextWidth, suffixLength)
	suffixLength = suffixLength or 7

	-- Nothing we can do to make the text fit
	if maxWidth <= 0 then
		return ""
	end

	-- If the string is already short enough to fit, then we don't need to truncate it, just return as-is
	if getTextWidth(text) <= maxWidth then
		return text
	end

	local suffix = ELLIPSIS_CHAR
	if suffixLength > 0 then
		-- Attempt to take the suffix from the input text
		-- Only use the full string if it fits
		-- Otherwise we'll fallback to just using the ellipsis
		local maybeSuffix = suffix .. text:sub(-suffixLength)
		if getTextWidth(maybeSuffix) < maxWidth then
			suffix = maybeSuffix
		end
	end

	-- Work out how much space is left for the prefix of the input text to fit in
	-- If there isn't any then nothing we can do
	local remainingWidth = maxWidth - getTextWidth(suffix)
	if remainingWidth <= 0 then
		return ""
	end

	-- We only want to select the prefix from the substring that wasn't used for the suffix
	local remainingText = text:sub(1, -utf8.len(suffix))
	local remainingTextLength = #remainingText

	-- Advance through remainingText, looking for how much we can take from it and still fit within remainingWidth
	local prefix = ""
	local prefixLength = 0
	repeat
		prefixLength = prefixLength + 1
		if prefixLength > remainingTextLength then
			-- This shouldn't happen as it means we're taking the full string, putting an ellipsis in the middle
			-- and it's still small enough to fit within maxWidth
			-- Should have been caught by the first getTextWidth(text) <= maxWidth check
			return text
		end

		local testText = text:sub(1, prefixLength)
		-- Either we've gone 1 character too far, so use the previous known safe string
		-- Or we've not gone far enough, so this is a potential candidate
		if getTextWidth(testText) > remainingWidth then
			break
		else
			prefix = testText
		end
	until false

	return prefix .. suffix
end
