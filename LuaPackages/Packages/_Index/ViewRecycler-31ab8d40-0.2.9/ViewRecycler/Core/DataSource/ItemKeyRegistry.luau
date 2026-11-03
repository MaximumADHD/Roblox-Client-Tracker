export type GetItemKey<T> = (value: T, index: number) -> string
export type Snapshot = { [string]: boolean }

export type Registry<T> = {
	claim: (value: T, index: number) -> string,
	assertPreserved: (key: string, value: T, index: number) -> (),
	release: (key: string) -> (),
	replace: (evictedKey: string, value: T, index: number) -> string,
	rebuild: (values: { T }) -> { string },
	clear: () -> (),
	snapshot: () -> Snapshot,
	restore: (snapshot: Snapshot) -> (),
}

local nextGeneratedKey = 0

local function generatedKey(): string
	nextGeneratedKey += 1
	return `view-recycler:{nextGeneratedKey}`
end

local function createItemKeyRegistry<T>(getItemKey: GetItemKey<T>?, context: string): Registry<T>
	local liveKeys: { [string]: boolean } = {}
	local keysMustBeStringsError = `{context}: keys must be strings`
	local setItemPreservesKeyError = `{context}: setItem must preserve the existing key`

	local function resolve(value: T, index: number): string
		local key = if getItemKey ~= nil then getItemKey(value, index) else generatedKey()
		assert(type(key) == "string", keysMustBeStringsError)
		return key
	end

	local function claim(value: T, index: number): string
		local key = resolve(value, index)
		if liveKeys[key] ~= nil then
			assert(false, `{context}: duplicate key "{key}"`)
		end
		liveKeys[key] = true
		return key
	end

	local function replace(evictedKey: string, value: T, index: number): string
		local key = resolve(value, index)
		if liveKeys[evictedKey] == nil then
			assert(false, `{context}: cannot replace missing key "{evictedKey}"`)
		end
		if key ~= evictedKey and liveKeys[key] ~= nil then
			assert(false, `{context}: duplicate key "{key}"`)
		end
		if key ~= evictedKey then
			liveKeys[evictedKey] = nil
			liveKeys[key] = true
		end
		return key
	end

	local function rebuild(values: { T }): { string }
		local nextKeys = table.create(#values)
		local nextLiveKeys: { [string]: boolean } = {}
		for index, value in values do
			local key = resolve(value, index)
			if nextLiveKeys[key] ~= nil then
				assert(false, `{context}: duplicate key "{key}"`)
			end
			nextKeys[index] = key
			nextLiveKeys[key] = true
		end
		liveKeys = nextLiveKeys
		return nextKeys
	end

	return {
		claim = claim,
		assertPreserved = function(key, value, index)
			if getItemKey ~= nil then
				assert(resolve(value, index) == key, setItemPreservesKeyError)
			end
		end,
		release = function(key)
			if liveKeys[key] == nil then
				assert(false, `{context}: cannot release missing key "{key}"`)
			end
			liveKeys[key] = nil
		end,
		replace = replace,
		rebuild = rebuild,
		clear = function()
			liveKeys = {}
		end,
		snapshot = function()
			return table.clone(liveKeys)
		end,
		restore = function(snapshot)
			liveKeys = table.clone(snapshot)
		end,
	}
end

return {
	create = createItemKeyRegistry,
	generatedKey = generatedKey,
}
