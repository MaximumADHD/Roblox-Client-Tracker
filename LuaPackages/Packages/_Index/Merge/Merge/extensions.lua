-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/extensions.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Readonly<T> = T --[[ ROBLOX TODO: TS 'Readonly' built-in type is not available in Luau ]]
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- local GraphQLEnumType = graphqlModule.GraphQLEnumType
type GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLEnumType = graphqlModule.GraphQLEnumType
-- ROBLOX deviation END
-- ROBLOX deviation START: import from Packages
-- local graphqlToolsUtilsModule = require(Packages["@graphql-tools"].utils)
local graphqlToolsUtilsModule = require(Packages.Utils)
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type
-- local ExtensionsObject = graphqlToolsUtilsModule.ExtensionsObject
-- local Maybe = graphqlToolsUtilsModule.Maybe
type ExtensionsObject = graphqlToolsUtilsModule.ExtensionsObject
type Maybe<T> = graphqlToolsUtilsModule.Maybe<T>
-- ROBLOX deviation END
local mergeDeep = graphqlToolsUtilsModule.mergeDeep
-- ROBLOX deviation START: import as type
-- local SchemaExtensions = graphqlToolsUtilsModule.SchemaExtensions
type SchemaExtensions = graphqlToolsUtilsModule.SchemaExtensions
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- exports.extractExtensionsFromSchema =
-- 	require(Packages["@graphql-tools"].utils).extractExtensionsFromSchema
exports.extractExtensionsFromSchema = require(Packages.Utils).extractExtensionsFromSchema
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type PossibleTypeExtensions = graphqlToolsUtilsModule.PossibleTypeExtensions
type GraphQLField<TSource, TContext, TArgs> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
-- ROBLOX deviation END
local function mergeExtensions(extensions: Array<SchemaExtensions>): SchemaExtensions
	return mergeDeep(extensions)
end
exports.mergeExtensions = mergeExtensions
local function applyExtensionObject(
	-- ROBLOX deviation START: workaround for narrowing type later
	-- obj: Maybe<{ extensions: Maybe<Readonly<Record<string, any>>> }>,
	obj_: Maybe<{ extensions: Maybe<Readonly<Record<string, any>>> }>,
	-- ROBLOX deviation END
	extensions: ExtensionsObject
)
	-- ROBLOX deviation START: workaround for narrowing type
	-- if not Boolean.toJSBoolean(obj) then
	-- 	return
	-- end
	if not obj_ then
		return
	end
	local obj = obj_ :: Readonly<Record<string, any>>
	-- ROBLOX deviation END
	obj.extensions = mergeDeep({
		Boolean.toJSBoolean(obj.extensions) and obj.extensions or {},
		Boolean.toJSBoolean(extensions) and extensions or {},
	})
end
local function applyExtensions(schema: GraphQLSchema, extensions: SchemaExtensions): GraphQLSchema
	applyExtensionObject(schema, extensions.schemaExtensions)
	for _, ref in Object.entries(Boolean.toJSBoolean(extensions.types) and extensions.types or {}) do
		-- ROBLOX deviation START: explicit cast
		-- local typeName, data = table.unpack(ref, 1, 2)
		local typeName = ref[1] :: string
		local data = ref[2] :: { extensions: ExtensionsObject } & PossibleTypeExtensions
		-- ROBLOX deviation END
		local type_ = schema:getType(typeName)
		if Boolean.toJSBoolean(type_) then
			applyExtensionObject(type_, data.extensions)
			if data.type == "object" or data.type == "interface" then
				-- ROBLOX deviation START: explicit cast
				-- for _, ref in Object.entries(data.fields) do
				for _, ref in Object.entries((data :: any).fields) do
					-- ROBLOX deviation END
					-- ROBLOX deviation START: explicit cast
					-- local fieldName, fieldData = table.unpack(ref, 1, 2)
					local fieldName = ref[1] :: string
					local fieldData = ref[2] :: {
						extensions: ExtensionsObject,
						arguments: Record<string, ExtensionsObject>,
					}
					-- ROBLOX deviation END
					-- ROBLOX deviation START: getFields returns a map
					-- local field = (type_ :: GraphQLObjectType):getFields()[tostring(fieldName)]
					local field = (type_ :: GraphQLObjectType):getFields():get(fieldName)
					-- ROBLOX deviation END
					if Boolean.toJSBoolean(field) then
						applyExtensionObject(field, fieldData.extensions)
						for _, ref in Object.entries(fieldData.arguments) do
							local arg, argData = table.unpack(ref, 1, 2)
							applyExtensionObject(
								-- ROBLOX deviation START: explicit casts
								-- Array.find(field.args, function(a)
								-- 	return a.name == arg
								-- end), --[[ ROBLOX CHECK: check if 'field.args' is an Array ]]
								-- argData
								Array.find((field :: GraphQLField<any, any, any>).args, function(a)
									return a.name == arg
								end),
								(argData :: any) :: ExtensionsObject
								-- ROBLOX deviation END
							)
						end
					end
				end
			elseif data.type == "input" then
				-- ROBLOX deviation START: explicit cast
				-- for _, ref in Object.entries(data.fields) do
				for _, ref in Object.entries((data :: any).fields) do
					-- ROBLOX deviation END
					local fieldName, fieldData = table.unpack(ref, 1, 2)
					-- ROBLOX deviation START: getFields returns a map
					-- local field = (type_ :: GraphQLObjectType):getFields()[tostring(fieldName)]
					local field = (type_ :: GraphQLObjectType):getFields():get(fieldName)
					-- ROBLOX deviation END
					-- ROBLOX deviation START: explicit cast
					-- applyExtensionObject(field, fieldData.extensions)
					applyExtensionObject(
						field,
						(fieldData :: {
							extensions: ExtensionsObject,
						}).extensions
					)
					-- ROBLOX deviation END
				end
			elseif data.type == "enum" then
				-- ROBLOX deviation START: explicit cast
				-- for _, ref in Object.entries(data.values) do
				for _, ref in Object.entries((data :: any).values) do
					-- ROBLOX deviation END
					local valueName, valueData = table.unpack(ref, 1, 2)
					local value = (type_ :: GraphQLEnumType):getValue(valueName)
					-- ROBLOX deviation START: explicit cast
					-- applyExtensionObject(value, valueData)
					applyExtensionObject(value, valueData :: ExtensionsObject)
					-- ROBLOX deviation END
				end
			end
		end
	end
	return schema
end
exports.applyExtensions = applyExtensions
return exports
