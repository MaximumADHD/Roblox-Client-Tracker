-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/@graphql-tools/links@8.3.12/packages/utils/src/mergeDeep.ts
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local function isObject(item: any): boolean
	return typeof(item) == "table" and not (Array.isArray(item) and #item > 0)
end

local function mergeDeep(sources: Array<any>, respectPrototype: boolean?)
	local target = sources[1] or {}
	local output = {}

	for _, source in sources do
		if isObject(target) and isObject(source) then
			for key, value in source :: Object do
				if type(value) == "table" then
					if output[key] == nil then
						Object.assign(output, {
							[key] = value,
						})
					else
						output[key] = mergeDeep({ output[key], value }, respectPrototype)
					end
				else
					Object.assign(output, {
						[key] = value,
					})
				end
			end
		end
	end

	return output
end

return mergeDeep
