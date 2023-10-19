-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/get-fields-with-directives.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import types
-- local DocumentNode = graphqlModule.DocumentNode
-- local ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
-- local ObjectTypeExtensionNode = graphqlModule.ObjectTypeExtensionNode
-- local InputObjectTypeDefinitionNode = graphqlModule.InputObjectTypeDefinitionNode
-- local InputObjectTypeExtensionNode = graphqlModule.InputObjectTypeExtensionNode
type DocumentNode = graphqlModule.DocumentNode
type ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
type ObjectTypeExtensionNode = graphqlModule.ObjectTypeExtensionNode
type InputObjectTypeDefinitionNode = graphqlModule.InputObjectTypeDefinitionNode
type InputObjectTypeExtensionNode = graphqlModule.InputObjectTypeExtensionNode
-- ROBLOX deviation END
local valueFromASTUntyped = graphqlModule.valueFromASTUntyped
-- ROBLOX deviation START: import type
-- local DirectiveUsage = require(script.Parent["types.js"]).DirectiveUsage
local typesModule = require(script.Parent.types)
type DirectiveUsage = typesModule.DirectiveUsage
-- ROBLOX deviation END
export type TypeAndFieldToDirectives = { [string]: Array<DirectiveUsage> }
type Options = { includeInputTypes: boolean? }
type SelectedNodes =
	ObjectTypeDefinitionNode
	| ObjectTypeExtensionNode
	| InputObjectTypeDefinitionNode
	| InputObjectTypeExtensionNode
local function getFieldsWithDirectives(documentNode: DocumentNode, options_: Options?): TypeAndFieldToDirectives
	local options: Options = if options_ ~= nil then options_ else {}
	local result: TypeAndFieldToDirectives = {}
	local selected = { "ObjectTypeDefinition", "ObjectTypeExtension" }
	if Boolean.toJSBoolean(options.includeInputTypes) then
		-- ROBLOX deviation START: Array.spread not available
		-- selected = Array.concat({}, Array.spread(selected), { "InputObjectTypeDefinition", "InputObjectTypeExtension" })
		selected = Array.concat({}, selected, { "InputObjectTypeDefinition", "InputObjectTypeExtension" })
		-- ROBLOX deviation END
	end
	local allTypes = Array.filter(documentNode.definitions, function(obj)
		return Array.includes(selected, obj.kind) --[[ ROBLOX CHECK: check if 'selected' is an Array ]]
	end) --[[ ROBLOX CHECK: check if 'documentNode.definitions' is an Array ]] :: Array<SelectedNodes>
	for _, type_ in allTypes do
		local typeName = type_.name.value
		if
			type_.fields == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		then
			continue
		end
		-- ROBLOX deviation START: need cast
		-- for _, field in type_.fields do
		for _, field in type_.fields :: Array<any> do
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix .length conversion
			-- 			if
			-- 				Boolean.toJSBoolean(if Boolean.toJSBoolean(field.directives)
			-- 					then field.directives.length
			-- 						> 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
			-- 					else field.directives)
			-- 			then
			if Boolean.toJSBoolean(field.directives) and #field.directives > 0 then
				-- ROBLOX deviation END
				local fieldName = field.name.value
				local key = ("%s.%s"):format(tostring(typeName), tostring(fieldName))
				local directives: Array<DirectiveUsage> = Array.map(field.directives, function(d)
					return {
						name = d.name.value,
						-- ROBLOX deviation START: reduce function needs explicit param type
						-- args = Array.reduce(Boolean.toJSBoolean(d.arguments) and d.arguments or {}, function(prev, arg)
						args = Array.reduce(
							Boolean.toJSBoolean(d.arguments) and d.arguments or {},
							function(prev: { [string]: any }, arg)
								-- ROBLOX deviation END
								return Object.assign(
									{},
									prev,
									-- ROBLOX deviation START: add second param - it should be optional
									-- { [tostring(arg.name.value)] = valueFromASTUntyped(arg.value) }
									{
										[arg.name.value] = valueFromASTUntyped(
											arg.value,
											-- ROBLOX deviation START: second arg should be optional
											nil :: any
											-- ROBLOX deviation END
										),
									}
									-- ROBLOX deviation END
								)
								-- ROBLOX deviation START: needs cast
								-- end, {}),--[[ ROBLOX CHECK: check if 'd.arguments || []' is an Array ]]
							end,
							{} :: { [string]: any }
						),
						-- ROBLOX deviation END
					}
				end) --[[ ROBLOX CHECK: check if 'field.directives' is an Array ]]
				result[tostring(key)] = directives
			end
		end
	end
	return result
end
exports.getFieldsWithDirectives = getFieldsWithDirectives
return exports
