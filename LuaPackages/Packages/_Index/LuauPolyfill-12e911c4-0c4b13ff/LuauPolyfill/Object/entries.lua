--!strict
type Object = { [string]: any }
local Array = require(script.Parent.Parent.Array)
type Array<T> = Array.Array<T>
type Tuple<T, V> = Array<T | V>

return function(value: string | Object | Array<any>): Array<any>
	assert(value :: any ~= nil, "cannot get entries from a nil value")
	local valueType = typeof(value)

	local entries: Array<Tuple<string, any>> = {}
	if valueType == "table" then
		for key, keyValue in pairs(value :: Object) do
			-- Luau FIXME: Luau should see entries as Array<any>, given object is [string]: any, but it sees it as Array<Array<string>> despite all the manual annotation
			table.insert(entries, { key :: string, keyValue :: any })
		end
	elseif valueType == "string" then
		for i = 1, string.len(value :: string) do
			entries[i] = { tostring(i), string.sub(value :: string, i, i) }
		end
	end

	return entries
end
