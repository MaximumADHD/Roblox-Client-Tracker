-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/isDocumentNode.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation START: not needed
-- local Array = LuauPolyfill.Array
-- ROBLOX deviation END
local Boolean = LuauPolyfill.Boolean
-- ROBLOX deviation START: not needed
-- local Object = LuauPolyfill.Object
-- ROBLOX deviation END
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local DocumentNode = graphqlModule.DocumentNode
type DocumentNode = graphqlModule.DocumentNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
local function isDocumentNode(
	object: any
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ object is DocumentNode ]]
	-- ROBLOX deviation START: fix shadowing variable and simplify
	-- 	local ref = if Boolean.toJSBoolean(object) then typeof(object) == "table" else object
	-- 	local ref = if Boolean.toJSBoolean(ref)
	-- 		then Array.indexOf(Object.keys(object), "kind") ~= -1
	-- 		else ref
	-- 	return if Boolean.toJSBoolean(ref) then object.kind == Kind.DOCUMENT else ref
	return Boolean.toJSBoolean(object)
		and typeof(object) == "table"
		and Boolean.toJSBoolean(object.kind)
		and object.kind == Kind.DOCUMENT
	-- ROBLOX deviation END
end
exports.isDocumentNode = isDocumentNode
return exports
