--!strict
type Table = { [any]: any }
type Array<T> = { [number]: T }

return function(value: Table | Array<any> | string): Array<any>
	if value == nil then
		error("cannot extract values from a nil value")
	end
	local valueType = typeof(value)

	local array = {}
	if valueType == "table" then
		for _, keyValue in pairs(value :: Table) do
			table.insert(array, keyValue)
		end
	elseif valueType == "string" then
		for i = 1, (value :: string):len() do
			array[i] = (value :: string):sub(i, i)
		end
	end

	return array
end
