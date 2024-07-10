--!strict
-- Useful for making keys for React components without using indices.
-- If you ever want to use an index in a React name, use this instead.
local function createUniqueKey(): (string) -> string
	local names = {}

	return function(name)
		if names[name] == nil then
			names[name] = 1
			return name
		else
			-- Edge case in case of:
			-- uniqueKey("foo") -- foo
			-- uniqueKey("foo_2") -- foo_2
			-- uniqueKey("foo") -- foo_2 (clash)
			while true do
				names[name] += 1
				local finalName = `{name}_{names[name]}`

				if names[finalName] == nil then
					return finalName
				end
			end
		end
	end
end

return createUniqueKey
