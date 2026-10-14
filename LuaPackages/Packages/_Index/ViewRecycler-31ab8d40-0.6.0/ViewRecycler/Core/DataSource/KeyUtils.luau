export type GetItemKey<T> = (value: T, index: number) -> string

local ItemKeyRegistry = require(script.Parent.ItemKeyRegistry)

local function validateUnique(keys: { string }, context: string)
	local seen = {}
	local keysMustBeStringsError = `{context}: keys must be strings`
	for _, key in keys do
		assert(type(key) == "string", keysMustBeStringsError)
		if seen[key] ~= nil then
			assert(false, `{context}: duplicate key "{key}"`)
		end
		seen[key] = true
	end
	return seen
end

local function keysFor<T>(values: { T }, getItemKey: GetItemKey<T>?): ({ string }, { [string]: boolean })
	local keys = table.create(#values)
	for index, value in values do
		keys[index] = if getItemKey ~= nil then getItemKey(value, index) else ItemKeyRegistry.generatedKey()
	end
	return keys, validateUnique(keys, "DataSource")
end

return {
	validateUnique = validateUnique,
	keysFor = keysFor,
}
