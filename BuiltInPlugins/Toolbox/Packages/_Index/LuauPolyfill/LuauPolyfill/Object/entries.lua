type Object = { [string]: any }
local Array = require(script.Parent.Parent.Array)
type Array<T> = Array.Array<T>

return function(value: string | Object | Array<any> | nil): Array<any>
	if value == nil then
		error("cannot get entries from a nil value")
	end
	local valueType = typeof(value)

	local entries = {}
	if valueType == "table" then
		for key, keyValue in pairs(value :: Object) do
			table.insert(entries, { key, keyValue })
		end
	elseif valueType == "string" then
		for i = 1, string.len(value :: string) do
			entries[i] = { tostring(i), string.sub(value :: string, i, i) }
		end
	end

	return entries
end
