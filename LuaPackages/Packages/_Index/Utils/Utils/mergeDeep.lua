-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/mergeDeep.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
-- ROBLOX deviation START: add additional import
type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation END
local exports = {}
-- ROBLOX deviation START: add jsHelpersMethods
local jsHelpers = require(Packages.Utils.jsHelpers)
local isSymbol = jsHelpers.isSymbol
-- ROBLOX deviation END
-- ROBLOX deviation START: predeclare variable
local isObject
-- ROBLOX deviation END
-- ROBLOX deviation START: not used
-- local isSome = require(script.Parent["helpers.js"]).isSome
-- ROBLOX deviation END
type BoxedTupleTypes<T> = any --[[ ROBLOX FIXME: Luau types cannot be used for indexing. ]] --[=[ Upstream: { [P in keyof T]: [T[P]] }[Exclude<keyof T, keyof any[]>] ]=]
type UnionToIntersection<U> = any --[[ ROBLOX TODO: Unhandled node for type: TSConditionalType ]] --[[ (U extends any ? (k: U) => void : never) extends (k: infer I) => void ? I : never ]]
type UnboxIntersection<T> = any --[[ ROBLOX TODO: Unhandled node for type: TSConditionalType ]] --[[ T extends {
  0: infer U;
} ? U : never ]]
local function mergeDeep<S>(
	sources: S,
	respectPrototype_: boolean?
): UnboxIntersection<UnionToIntersection<BoxedTupleTypes<S>>> & any
	local respectPrototype: boolean = if respectPrototype_ ~= nil then respectPrototype_ else false
	-- ROBLOX deviation START: fix implementation and cast types
	-- 	local target = Boolean.toJSBoolean(sources[
	-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
	-- 	])
	-- 			and sources[1]
	-- 		or {}
	local target = if Boolean.toJSBoolean(((sources :: any) :: Array<any>)[1])
		then ((sources :: any) :: Array<any>)[1]
		else {}
	-- ROBLOX deviation END
	local output = {}
	-- ROBLOX deviation START: respectPrototype not supported, using default behavior
	-- 	if Boolean.toJSBoolean(respectPrototype) then
	-- 		Object.setPrototypeOf(output, Object.create(Object.getPrototypeOf(target)))
	-- 	end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: cast types
	-- for _, source in sources do
	for _, source in (sources :: any) :: Array<any> do
		-- ROBLOX deviation END
		if
			Boolean.toJSBoolean((function()
				local ref = isObject(target)
				return if Boolean.toJSBoolean(ref) then isObject(source) else ref
			end)())
		then
			-- ROBLOX deviation START: respectPrototype not supported, using default behavior
			-- 			if Boolean.toJSBoolean(respectPrototype) then
			-- 				local outputPrototype = Object.getPrototypeOf(output)
			-- 				local sourcePrototype = Object.getPrototypeOf(source)
			-- 				if Boolean.toJSBoolean(sourcePrototype) then
			-- 					for _, key in Object.getOwnPropertyNames(sourcePrototype) do
			-- 						local descriptor = Object.getOwnPropertyDescriptor(sourcePrototype, key)
			-- 						if Boolean.toJSBoolean(isSome(descriptor)) then
			-- 							Object.defineProperty(outputPrototype, key, descriptor)
			-- 						end
			-- 					end
			-- 				end
			-- 			end
			-- ROBLOX deviation END
			for key in source do
				-- ROBLOX deviation START: add continue if symbol because for..in in JS does not iterate Symbol keys
				if isSymbol(key) then
					continue
				end
				-- ROBLOX deviation END
				if Boolean.toJSBoolean(isObject(source[tostring(key)])) then
					if not (Array.indexOf(Object.keys(output), tostring(key)) ~= -1) then
						Object.assign(output, { [tostring(key)] = source[tostring(key)] })
					else
						-- ROBLOX deviation START: cannot cast to S from Array
						-- 						output[tostring(key)] =
						-- 							mergeDeep({ output[tostring(key)], source[tostring(key)] } :: S, respectPrototype)
						output[key] = mergeDeep(({ output[key], source[key] } :: any) :: S, respectPrototype)
						-- ROBLOX deviation END
					end
				else
					Object.assign(output, { [tostring(key)] = source[tostring(key)] })
				end
			end
		end
	end
	return output
end
exports.mergeDeep = mergeDeep
-- ROBLOX deviation START: predeclared function
-- local function isObject(item: any): boolean
function isObject(item: any): boolean
	-- ROBLOX deviation END
	-- ROBLOX deviation START: simplify and fix Array.length check
	-- 	local ref = if Boolean.toJSBoolean(item) then typeof(item) == "table" else item
	-- 	return if Boolean.toJSBoolean(ref) then not Boolean.toJSBoolean(Array.isArray(item)) else ref
	return Boolean.toJSBoolean(item) and typeof(item) == "table" and not (Array.isArray(item) and #item > 0)
	-- ROBLOX deviation END
end
return exports
