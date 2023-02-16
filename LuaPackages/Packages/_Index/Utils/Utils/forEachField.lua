-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/forEachField.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation START: not needed
-- local Boolean = LuauPolyfill.Boolean
-- ROBLOX deviation END
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local getNamedType = graphqlModule.getNamedType
-- ROBLOX deviation START: import type
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
local isObjectType = graphqlModule.isObjectType
-- ROBLOX deviation START: import type
-- local IFieldIteratorFn = require(script.Parent["Interfaces.js"]).IFieldIteratorFn
local interfacesModule = require(script.Parent.Interfaces)
type IFieldIteratorFn = interfacesModule.IFieldIteratorFn
-- ROBLOX deviation END
-- ROBLOX deviation START: additional imports
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLField<TSource, TContext, TArgs> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
local String = LuauPolyfill.String
-- ROBLOX deviation END
local function forEachField(schema: GraphQLSchema, fn: IFieldIteratorFn): ()
	local typeMap = schema:getTypeMap()
	-- ROBLOX deviation START: typeMap is a Map
	-- for typeName in typeMap do
	for _, ref in typeMap do
		local typeName = ref[1]
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use Map
		-- local type_ = typeMap[tostring(typeName)] -- TODO: maybe have an option to include these?
		local type_ = typeMap:get(typeName)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fix .startsWith conversion
		-- 		if
		-- 			Boolean.toJSBoolean(
		-- 				not Boolean.toJSBoolean(getNamedType(type_).name:startsWith("__")) and isObjectType(type_)
		-- 			)
		-- 		then
		if not String.startsWith(getNamedType(type_).name, "__") and isObjectType(type_) then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: needs cast
			-- local fields = type_:getFields()
			-- ROBLOX FIXME Luau: type is not narrowed
			local fields = (type_ :: GraphQLObjectType):getFields()
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fields is a Map
			-- for fieldName in fields do
			for _, ref in fields do
				local fieldName = ref[1]
				-- ROBLOX deviation END
				-- ROBLOX deviation START: use Map
				-- local field = fields[tostring(fieldName)]
				local field = fields:get(fieldName) :: GraphQLField<any, any, any>
				-- ROBLOX deviation END
				fn(field, typeName, fieldName)
			end
		end
	end
end
exports.forEachField = forEachField
return exports
