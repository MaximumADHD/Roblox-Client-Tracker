-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/forEachDefaultValue.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local getNamedType = graphqlModule.getNamedType
-- ROBLOX deviation START: import type
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
local isObjectType = graphqlModule.isObjectType
local isInputObjectType = graphqlModule.isInputObjectType
-- ROBLOX deviation START: import type
-- local IDefaultValueIteratorFn = require(script.Parent["Interfaces.js"]).IDefaultValueIteratorFn
local interfacesModule = require(script.Parent.Interfaces)
type IDefaultValueIteratorFn = interfacesModule.IDefaultValueIteratorFn
-- ROBLOX deviation END
-- ROBLOX deviation START: additional imports
local String = LuauPolyfill.String
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
type GraphQLField<TSource, TContext, TArgs = any> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
type GraphQLInputField = graphqlModule.GraphQLInputField
-- ROBLOX deviation END
local function forEachDefaultValue(schema: GraphQLSchema, fn: IDefaultValueIteratorFn): ()
	local typeMap = schema:getTypeMap()
	-- ROBLOX deviation START: typeMap is a Map
	-- for typeName in typeMap do
	for _, ref in typeMap do
		local typeName = ref[1]
		-- ROBLOX deviation END
		-- ROBLOX deviation START: typeMap is a Map
		-- local type_ = typeMap[tostring(typeName)]
		local type_ = typeMap:get(typeName)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use String.startsWith
		-- if not Boolean.toJSBoolean(getNamedType(type_).name:startsWith("__")) then
		if not String.startsWith(getNamedType(type_).name, "__") then
			-- ROBLOX deviation END
			if Boolean.toJSBoolean(isObjectType(type_)) then
				-- ROBLOX deviation START: cast needed
				-- local fields = type_:getFields()
				-- ROBLOX FIXME Luau: assertions are not available, should narrow type
				local fields = (type_ :: GraphQLObjectType):getFields()
				-- ROBLOX deviation END
				-- ROBLOX deviation START: fields is a Map
				-- for fieldName in fields do
				for _, ref in fields do
					local fieldName = ref[1]
					-- ROBLOX deviation END
					-- ROBLOX deviation START: fields is a Map
					-- local field = fields[tostring(fieldName)]
					local field = fields:get(fieldName) :: GraphQLField<any, any>
					-- ROBLOX deviation END
					for _, arg in field.args do
						arg.defaultValue = fn(arg.type, arg.defaultValue)
					end
				end
			elseif Boolean.toJSBoolean(isInputObjectType(type_)) then
				-- ROBLOX deviation START: cast needed
				-- local fields = type_:getFields()
				-- ROBLOX FIXME Luau: assertions are not available, should narrow type
				local fields = (type_ :: GraphQLInputObjectType):getFields()
				-- ROBLOX deviation END
				-- ROBLOX deviation START: fields is a Map
				-- for fieldName in fields do
				for _, ref in fields do
					local fieldName = ref[1]
					-- ROBLOX deviation END
					-- ROBLOX deviation START: fields is a Map
					-- local field = fields[tostring(fieldName)]
					local field = fields:get(fieldName) :: GraphQLInputField
					-- ROBLOX deviation END
					field.defaultValue = fn(field.type, field.defaultValue)
				end
			end
		end
	end
end
exports.forEachDefaultValue = forEachDefaultValue
return exports
