local Text = {}

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