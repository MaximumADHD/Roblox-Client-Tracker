-- Split the input string according to the separator pattern into at most limit
-- pieces. If the separator is nil, it defaults to consecutive whitespace (%s+).
-- If the limit isn't defined, it will split the string into as many pieces as
-- it finds.
-- Note: There is now a string.split function built into Luau though it isn't an
-- exact replacement for this.
local function StringSplit(input, separator, limit)
	if #input == 0 then
		if string.find(input, separator) then
			return {}
		else
			return {""}
		end
	end
	if not limit then
		limit = -1
	end
	if limit == 1 then
		return {input}
	end
	if not separator then
		separator = "%s+"
	end
	local start, stop = string.find(input, separator)
	if not start then
		return {input}
	end
	-- special case, delimiter resolved to ""
	if stop < 1 then
		start, stop = string.find(string.sub(input, 2), separator)
		start = start + 1
		stop = stop + 1
	end
	local first = string.sub(input, 1, start - 1)
	local rest = string.sub(input, stop + 1)
	-- special case, non empty pattern found at the end
	if #rest == 0 and stop >= start then
		return {first, rest}
	end
	local items = StringSplit(rest, separator, limit - 1)
	table.insert(items, 1, first)
	return items
end

return StringSplit
