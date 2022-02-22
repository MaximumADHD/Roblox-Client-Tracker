local function startsWith(value: string, substring: string, position: number?): boolean
	if substring:len() == 0 then
		return true
	end
	if position == nil or position < 1 then
		position = 1
	end
	if position > value:len() then
		return false
	end
	-- FIXME: workaround for Luau issue https://jira.rbx.com/browse/CLI-40887
	local _position: number = position or 1
	return value:find(substring, _position, true) == _position
end

return startsWith
