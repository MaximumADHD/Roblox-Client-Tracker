local function startsWith(
	value: string,
	substring: string,
	position: number?
):boolean
	if substring:len() == 0 then
		return true
	end
	if position == nil or position < 1 then
		position = 1
	end
	if position > value:len() then
		return false
	end
	return value:find(substring, position, true) == position
end

return startsWith
