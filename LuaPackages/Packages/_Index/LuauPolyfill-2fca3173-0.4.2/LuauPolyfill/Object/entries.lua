--!strict
local types = require(script.Parent.Parent.types)
type Array<T> = types.Array<T>
type Map<K, V> = types.Map<K, V>
type Tuple<T, V> = types.Tuple<T, V>

return function<T>(value: string | { [string]: T } | Array<T> | Map<any, T>): Array<Tuple<string, T>>
	assert(value :: any ~= nil, "cannot get entries from a nil value")
	local valueType = typeof(value)

	local entries: Array<Tuple<string, T>> = {}
	if valueType == "table" then
		for key, keyValue in pairs(value :: { [string]: T } | Array<T>) do
			-- Luau FIXME: Luau should see entries as Array<any>, given object is [string]: any, but it sees it as Array<Array<string>> despite all the manual annotation
			table.insert(entries, { key, keyValue })
		end
	elseif valueType == "string" then
		-- TODO: should we be using utf8.len?
		for i = 1, string.len(value :: string) do
			entries[i] = { tostring(i), string.sub(value :: string, i, i) }
		end
	end

	return entries
end
