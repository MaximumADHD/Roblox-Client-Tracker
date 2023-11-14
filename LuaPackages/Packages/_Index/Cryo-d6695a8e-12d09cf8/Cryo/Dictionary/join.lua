local None = require(script.Parent.Parent.None)

--[[
	Combine a number of dictionary-like tables into a new table.

	Keys specified in later tables will overwrite keys in previous tables.

	Use `Cryo.None` as a value to remove a key. This is necessary because
	Lua does not distinguish between a value not being present in a table and a
	value being `nil`.
]]
local function join(...)
	local argCount = select("#", ...)
	if argCount == 0 then
		return {}
	elseif argCount == 1 then
		local new = table.clone(...)
		setmetatable(new, nil) -- We don't want cloned metatables
		return new
	end

	local new = table.clone(select(1, ...))
	setmetatable(new, nil) -- We don't want cloned metatables

	for i = 2, argCount do
		local source = select(i, ...)

		for key, value in pairs(source) do
			if value == None then
				new[key] = nil
			else
				new[key] = value
			end
		end
	end

	return new
end

return join
