-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/extractExtensionsFromSchema.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local exports = {}
-- ROBLOX deviation START: fix import
-- local mapSchema = require(script.Parent["mapSchema.js"]).mapSchema
local mapSchema = require(script.Parent.mapSchema).mapSchema
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLFieldConfig = graphqlModule.GraphQLFieldConfig
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLFieldConfig<TSource, TContext, TArgs = { [string]: any }> = graphqlModule.GraphQLFieldConfig<
	TSource,
	TContext,
	TArgs
>
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local typesJsModule = require(script.Parent["types.js"])
local typesJsModule = require(script.Parent.types)
-- ROBLOX deviation END
-- ROBLOX deviation START: import as types instead of locals
-- local EnumTypeExtensions = typesJsModule.EnumTypeExtensions
-- local InputTypeExtensions = typesJsModule.InputTypeExtensions
-- local ObjectTypeExtensions = typesJsModule.ObjectTypeExtensions
-- local SchemaExtensions = typesJsModule.SchemaExtensions
type EnumTypeExtensions = typesJsModule.EnumTypeExtensions
type InputTypeExtensions = typesJsModule.InputTypeExtensions
type ObjectTypeExtensions = typesJsModule.ObjectTypeExtensions
type SchemaExtensions = typesJsModule.SchemaExtensions
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local MapperKind = require(script.Parent["Interfaces.js"]).MapperKind
local MapperKind = require(script.Parent.Interfaces).MapperKind
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
type Object = LuauPolyfill.Object
-- ROBLOX deviation END
local function extractExtensionsFromSchema(schema: GraphQLSchema): SchemaExtensions
	local result: SchemaExtensions = {
		schemaExtensions = Boolean.toJSBoolean(schema.extensions) and schema.extensions or {},
		types = {},
	}
	mapSchema(schema, {
		[tostring(MapperKind.OBJECT_TYPE)] = function(type_)
			result.types[tostring(type_.name)] = {
				fields = {},
				type = "object",
				extensions = Boolean.toJSBoolean(type_.extensions) and type_.extensions or {},
				-- ROBLOX deviation START: cast type
				-- }
			} :: Object
			-- ROBLOX deviation END
			return type_
		end,
		[tostring(MapperKind.INTERFACE_TYPE)] = function(type_)
			result.types[tostring(type_.name)] = {
				fields = {},
				type = "interface",
				-- ROBLOX deviation START: simplify
				-- extensions = Boolean.toJSBoolean(type_.extensions) and type_.extensions or {},
				extensions = if Boolean.toJSBoolean(type_.extensions) then type_.extensions else {},
				-- ROBLOX deviation END
				-- ROBLOX deviation START: cast type
				-- }
			} :: Object
			-- ROBLOX deviation END
			return type_
		end,
		[tostring(MapperKind.FIELD)] = function(field, fieldName, typeName)
			-- ROBLOX deviation START: cast to any
			-- (result.types[tostring(typeName)] :: ObjectTypeExtensions).fields[tostring(fieldName)] = {
			((result.types[typeName] :: any) :: ObjectTypeExtensions).fields[fieldName] = {
				-- ROBLOX deviation END
				arguments = {},
				-- ROBLOX deviation START: simplify
				-- extensions = Boolean.toJSBoolean(field.extensions) and field.extensions or {},
				extensions = if Boolean.toJSBoolean(field.extensions) then field.extensions else {},
				-- ROBLOX deviation END
			}
			local args = (field :: GraphQLFieldConfig<any, any>).args
			if
				args ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then
				-- ROBLOX deviation START: args is a map
				-- for argName in args do
				for _, ref in args do
					local argName = table.unpack(ref);
					-- ROBLOX deviation END
					-- ROBLOX deviation START: cast to any
					-- (result.types[tostring(typeName)] :: ObjectTypeExtensions).fields[tostring(fieldName)].arguments[tostring(
					((result.types[typeName] :: any) :: ObjectTypeExtensions).fields[fieldName].arguments[
						tostring(
							-- ROBLOX deviation END
							argName
						)
					] = Boolean.toJSBoolean(
						args[tostring(argName)].extensions
					) and args[tostring(argName)].extensions or {}
				end
			end
			return field
			-- ROBLOX deviation START: cast to any
			-- end,
		end :: any,
		-- ROBLOX deviation END
		[tostring(MapperKind.ENUM_TYPE)] = function(type_)
			result.types[tostring(type_.name)] = {
				values = {},
				type = "enum",
				extensions = Boolean.toJSBoolean(type_.extensions) and type_.extensions or {},
				-- ROBLOX deviation START: cast type
				-- }
			} :: Object
			-- ROBLOX deviation END
			return type_
		end,
		[tostring(MapperKind.ENUM_VALUE)] = function(value, typeName, _schema, valueName)
			-- ROBLOX deviation START: cast to any
			-- (result.types[tostring(typeName)] :: EnumTypeExtensions).values[tostring(valueName)] = Boolean.toJSBoolean(
			((result.types[typeName] :: any) :: EnumTypeExtensions).values[valueName] = Boolean.toJSBoolean(
				-- ROBLOX deviation END
				value.extensions
			)
					and value.extensions
				or {}
			return value
			-- ROBLOX deviation START: cast to any
			-- end,
		end :: any,
		-- ROBLOX deviation END
		[tostring(MapperKind.SCALAR_TYPE)] = function(type_)
			result.types[tostring(type_.name)] = {
				type = "scalar",
				extensions = Boolean.toJSBoolean(type_.extensions) and type_.extensions or {},
				-- ROBLOX deviation START: cast type
				-- }
			} :: Object
			-- ROBLOX deviation END
			return type_
		end,
		[tostring(MapperKind.UNION_TYPE)] = function(type_)
			result.types[tostring(type_.name)] = {
				type = "union",
				extensions = Boolean.toJSBoolean(type_.extensions) and type_.extensions or {},
				-- ROBLOX deviation START: cast type
				-- }
			} :: Object
			-- ROBLOX deviation END
			return type_
		end,
		[tostring(MapperKind.INPUT_OBJECT_TYPE)] = function(type_)
			result.types[tostring(type_.name)] = {
				fields = {},
				type = "input",
				extensions = Boolean.toJSBoolean(type_.extensions) and type_.extensions or {},
				-- ROBLOX deviation START: cast type
				-- }
			} :: Object
			-- ROBLOX deviation END
			return type_
		end,
		[tostring(MapperKind.INPUT_OBJECT_FIELD)] = function(field, fieldName, typeName)
			-- ROBLOX deviation START: cast to any
			-- (result.types[tostring(typeName)] :: InputTypeExtensions).fields[tostring(fieldName)] =
			((result.types[typeName] :: any) :: InputTypeExtensions).fields[fieldName] =
				-- ROBLOX deviation END
				{ extensions = Boolean.toJSBoolean(field.extensions) and field.extensions or {} }
			return field
			-- ROBLOX deviation START: cast types
			-- 		end,
			-- 	})
		end :: any,
	} :: Object --[[ SchemaMapper ]])
	-- ROBLOX deviation END
	return result
end
exports.extractExtensionsFromSchema = extractExtensionsFromSchema
return exports
