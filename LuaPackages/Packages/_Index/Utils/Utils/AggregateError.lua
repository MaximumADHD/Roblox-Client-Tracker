-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/AggregateError.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation START: add additional types
type Error = LuauPolyfill.Error
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local Error = LuauPolyfill.Error
-- ROBLOX deviation END
local exports = {}
-- Backwards compability for old versions of TypeScript
type AggregateError = Error & { errors: Array<any> }
-- ROBLOX deviation START: commenting not required code
-- type AggregateErrorConstructor = {
-- 	__unhandledIdentifier__: nil, --[[ ROBLOX TODO: Unhandled node for type: TSConstructSignatureDeclaration ]] --[[ new (errors: Iterable<any>, message?: string): AggregateError; ]]
-- 	__unhandledIdentifier__: nil, --[[ ROBLOX TODO: Unhandled node for type: TSCallSignatureDeclaration ]] --[[ (errors: Iterable<any>, message?: string): AggregateError; ]]
-- 	prototype: AggregateError,
-- }
type AggregateErrorConstructor = (_self: any, errors: Array<any>, message: string?) -> AggregateErrorClass
-- ROBLOX deviation END
local AggregateErrorImpl: AggregateErrorConstructor
-- ROBLOX deviation START: no need to check. Adding do block to keep indentation and moving types out of the block
-- if typeof(AggregateError) == "undefined" then
-- 	type AggregateErrorClass = Error & { errors: Array<any> }
-- 	type AggregateErrorClass_statics = {
-- 		new: (errors: Array<any>, message_: string?) -> AggregateErrorClass,
-- 	}
type AggregateErrorClass = Error & { errors: Array<any> }
type AggregateErrorClass_statics = {
	new: (errors: Array<any>, message_: string?) -> AggregateErrorClass,
}
local AggregateErrorClass
do
	-- ROBLOX deviation END
	-- ROBLOX deviation START: predeclare variable
	-- 	local AggregateErrorClass = (
	-- 		setmetatable({}, { __index = Error }) :: any
	-- 	) :: AggregateErrorClass & AggregateErrorClass_statics;
	AggregateErrorClass = (
		setmetatable({}, { __index = Error }) :: any
	) :: AggregateErrorClass & AggregateErrorClass_statics;
	-- ROBLOX deviation END
	(AggregateErrorClass :: any).__index = AggregateErrorClass
	function AggregateErrorClass.new(errors: Array<any>, message_: string?): AggregateErrorClass
		-- ROBLOX deviation START: fix super implementation
		-- local self = setmetatable({}, AggregateErrorClass) --[[ ROBLOX TODO: super constructor may be used ]]
		-- ROBLOX deviation END
		local message: string = if message_ ~= nil then message_ else ""
		-- ROBLOX deviation START: add fixed self implementation
		local self = (setmetatable(Error.new(message), AggregateErrorClass) :: any) :: AggregateErrorClass
		-- ROBLOX deviation END
		self.errors = errors
		-- ROBLOX deviation START: fix super implementation - line not needed
		-- (error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: Super ]] --[[ super ]])(message)
		-- ROBLOX deviation END
		self.name = "AggregateError"
		-- ROBLOX deviation START: classes are not function in Lua, we pass the constructor instead
		-- Error:captureStackTrace(self, AggregateErrorClass)
		Error.captureStackTrace((self :: any) :: Error, AggregateErrorClass.new)
		-- ROBLOX deviation END
		return (self :: any) :: AggregateErrorClass
	end
	-- ROBLOX deviation START: add self param
	-- AggregateErrorImpl = function(errors: Array<any>, message: string?)
	AggregateErrorImpl = function(self, errors: Array<any>, message: string?)
		-- ROBLOX deviation END
		return AggregateErrorClass.new(errors, message)
	end :: AggregateErrorConstructor
	-- ROBLOX deviation START: condition never met
	-- else
	-- 	AggregateErrorImpl = AggregateError
	-- end
end
-- ROBLOX deviation END
-- ROBLOX deviation START: fix implementation
-- exports.AggregateError = AggregateErrorImpl
exports.AggregateError = (
	setmetatable(AggregateErrorClass, {
		__call = AggregateErrorImpl,
	}) :: any
) :: typeof(AggregateErrorClass)
-- ROBLOX deviation END
local function isAggregateError(
	-- ROBLOX deviation START: needs explicit param type
	-- error_
	error_: Error
	-- ROBLOX deviation END
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ error is AggregateError ]]
	return Array.indexOf(Object.keys(error_), "errors") ~= -1 and Array.isArray(error_["errors"])
end
exports.isAggregateError = isAggregateError
return exports
