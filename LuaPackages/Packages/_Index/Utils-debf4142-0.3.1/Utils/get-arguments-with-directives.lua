-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/get-arguments-with-directives.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- ROBLOX deviation START: fix import and import as type instead of local
-- local DirectiveUsage = require(script.Parent["types.js"]).DirectiveUsage
local typesModule = require(script.Parent.types)
type DirectiveUsage = typesModule.DirectiveUsage
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types instead of locals
-- local ASTNode = graphqlModule.ASTNode
-- local DocumentNode = graphqlModule.DocumentNode
type ASTNode = graphqlModule.ASTNode
type DocumentNode = graphqlModule.DocumentNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as type instead of local
-- local ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
type ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
-- ROBLOX deviation END
local valueFromASTUntyped = graphqlModule.valueFromASTUntyped
-- ROBLOX deviation START: add additional types
type FieldDefinitionNode = graphqlModule.FieldDefinitionNode
type InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
-- ROBLOX deviation END
local function isTypeWithFields(
	t: ASTNode
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ t is ObjectTypeDefinitionNode ]]
	return t.kind == Kind.OBJECT_TYPE_DEFINITION or t.kind == Kind.OBJECT_TYPE_EXTENSION
end
export type ArgumentToDirectives = { [string]: Array<DirectiveUsage> }
export type TypeAndFieldToArgumentDirectives = { [string]: ArgumentToDirectives }
local function getArgumentsWithDirectives(documentNode: DocumentNode): TypeAndFieldToArgumentDirectives
	local result: TypeAndFieldToArgumentDirectives = {}
	-- ROBLOX deviation START: cast type
	-- local allTypes = Array.filter(documentNode.definitions, isTypeWithFields) --[[ ROBLOX CHECK: check if 'documentNode.definitions' is an Array ]]
	local allTypes = Array.filter(documentNode.definitions, isTypeWithFields) :: Array<ObjectTypeDefinitionNode>
	-- ROBLOX deviation END
	for _, type_ in allTypes do
		if
			type_.fields == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		then
			continue
		end
		-- ROBLOX deviation START: cast type
		-- for _, field in type_.fields do
		for _, field in type_.fields :: Array<FieldDefinitionNode> do
			-- ROBLOX deviation END
			-- ROBLOX deviation START: cannot use .filter like this
			-- local ref = if typeof(field.arguments) == "table" then field.arguments.filter else nil
			local ref = if typeof(field.arguments) == "table" then field.arguments else nil
			-- ROBLOX deviation END
			local argsWithDirectives = if ref ~= nil
				-- ROBLOX deviation START: use Array.filter and fix getting Array.length
				-- then ref(function(arg)
				-- 					return if typeof(arg.directives) == "table" then arg.directives.length else nil
				then Array.filter(ref, function(arg)
					return Boolean.toJSBoolean(if typeof(arg.directives) == "table" then #arg.directives else nil)
					-- ROBLOX deviation END
				end)
				else nil
			if
				not Boolean.toJSBoolean(
					-- ROBLOX deviation START: fix getting Array.length
					-- if typeof(argsWithDirectives) == "table" then argsWithDirectives.length else nil
					if typeof(argsWithDirectives) == "table" then #argsWithDirectives else nil
					-- ROBLOX deviation END
				)
			then
				continue
			end
			result[tostring(("%s.%s"):format(tostring(type_.name.value), tostring(field.name.value)))] = {}
			local typeFieldResult =
				result[tostring(("%s.%s"):format(tostring(type_.name.value), tostring(field.name.value)))]
			-- ROBLOX deviation START: cast type
			-- for _, arg in argsWithDirectives do
			for _, arg in argsWithDirectives :: Array<InputValueDefinitionNode> do
				-- ROBLOX deviation END
				local directives: Array<DirectiveUsage> = Array.map(arg.directives :: any, function(d)
					return {
						name = d.name.value,
						args = Array.reduce(
							Boolean.toJSBoolean(d.arguments) and d.arguments or {},
							-- ROBLOX deviation START: cast to any
							-- function(prev, dArg)
							function(prev: any, dArg)
								-- ROBLOX deviation END
								return Object.assign({}, prev, {
									-- ROBLOX deviation START: cast to any
									-- [tostring(dArg.name.value)] = valueFromASTUntyped(dArg.value),
									[dArg.name.value] = valueFromASTUntyped(dArg.value, {} :: any),
									-- ROBLOX deviation END
								})
							end,
							{}
						),--[[ ROBLOX CHECK: check if 'd.arguments || []' is an Array ]]
					}
				end) --[[ ROBLOX CHECK: check if 'arg.directives!' is an Array ]]
				typeFieldResult[tostring(arg.name.value)] = directives
			end
		end
	end
	return result
end
exports.getArgumentsWithDirectives = getArgumentsWithDirectives
return exports
