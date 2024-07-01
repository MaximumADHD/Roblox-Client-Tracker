--!strict
-- polyfill for https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/instanceof

-- FIXME Luau: typing class as Object gives: Type '{ @metatable {| __call: <a>(a, ...any) -> Error, __tostring: <b, c>({+ message: b, name: c +}) -> string |}, Error }' could not be converted into 'table'
return function(tbl: any, class: any): boolean
	if _G.__DEV__ then
		assert(typeof(class) == "table", "Received a non-table as the second argument for instanceof")
	end

	if typeof(tbl) ~= "table" then
		return false
	end

	local ok, hasNew = pcall(function()
		return class.new ~= nil and tbl.new == class.new
	end)
	if ok and hasNew then
		return true
	end

	local seen = { tbl = true }

	while tbl and typeof(tbl) == "table" do
		tbl = getmetatable(tbl)
		if typeof(tbl) == "table" then
			tbl = tbl.__index

			if tbl == class then
				return true
			end
		end

		-- if we still have a valid table then check against seen
		if typeof(tbl) == "table" then
			if seen[tbl] then
				return false
			end
			seen[tbl] = true
		end
	end

	return false
end
