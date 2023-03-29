-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/heal.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
-- ROBLOX deviation START: not needed
-- local Object = LuauPolyfill.Object
-- ROBLOX deviation END
local console = LuauPolyfill.console
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLDirective = graphqlModule.GraphQLDirective
-- local GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- local GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
type GraphQLDirective = graphqlModule.GraphQLDirective
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
-- ROBLOX deviation END
local GraphQLList = graphqlModule.GraphQLList
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLNamedType = graphqlModule.GraphQLNamedType
-- ROBLOX deviation END
local GraphQLNonNull = graphqlModule.GraphQLNonNull
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLType = graphqlModule.GraphQLType
-- local GraphQLUnionType = graphqlModule.GraphQLUnionType
type GraphQLType = graphqlModule.GraphQLType
type GraphQLUnionType = graphqlModule.GraphQLUnionType
-- ROBLOX deviation END
local isNamedType = graphqlModule.isNamedType
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local GraphQLInputType = graphqlModule.GraphQLInputType
-- local GraphQLOutputType = graphqlModule.GraphQLOutputType
type GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLInputType = graphqlModule.GraphQLInputType
type GraphQLOutputType = graphqlModule.GraphQLOutputType
-- ROBLOX deviation END
local isObjectType = graphqlModule.isObjectType
local isInterfaceType = graphqlModule.isInterfaceType
local isUnionType = graphqlModule.isUnionType
local isInputObjectType = graphqlModule.isInputObjectType
local isLeafType = graphqlModule.isLeafType
local isListType = graphqlModule.isListType
local isNonNullType = graphqlModule.isNonNullType -- Update any references to named schema types that disagree with the named
-- ROBLOX deviation START: add additional types
type Object = LuauPolyfill.Object
type Map<K, V> = LuauPolyfill.Map<K, V>
type ReadonlyArray<T> = Array<T>
type GraphQLInputField = graphqlModule.GraphQLInputField
type GraphQLField<TSource, TContext, TArgs> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
type GraphQLList<T> = any
type GraphQLNonNull<T> = any
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local Map = LuauPolyfill.Map
local String = LuauPolyfill.String
-- ROBLOX deviation END
-- ROBLOX deviation START: add predeclared variables
local healTypes
-- ROBLOX deviation END
-- types found in schema.getTypeMap().
--
-- healSchema and its callers (visitSchema/visitSchemaDirectives) all modify the schema in place.
-- Therefore, private variables (such as the stored implementation map and the proper root types)
-- are not updated.
--
-- If this causes issues, the schema could be more aggressively healed as follows:
--
-- healSchema(schema);
-- const config = schema.toConfig()
-- const healedSchema = new GraphQLSchema({
--   ...config,
--   query: schema.getType('<desired new root query type name>'),
--   mutation: schema.getType('<desired new root mutation type name>'),
--   subscription: schema.getType('<desired new root subscription type name>'),
-- });
--
-- One can then also -- if necessary --  assign the correct private variables to the initial schema
-- as follows:
-- Object.assign(schema, healedSchema);
--
-- These steps are not taken automatically to preserve backwards compatibility with graphql-tools v4.
-- See https://github.com/ardatan/graphql-tools/issues/1462
--
-- They were briefly taken in v5, but can now be phased out as they were only required when other
-- areas of the codebase were using healSchema and visitSchema more extensively.
--
local function healSchema(schema: GraphQLSchema): GraphQLSchema
	-- ROBLOX deviation START: needs cast
	-- healTypes(schema:getTypeMap(), schema:getDirectives())
	healTypes(schema:getTypeMap() :: Map<any, any>, schema:getDirectives())
	-- ROBLOX deviation END
	return schema
end
exports.healSchema = healSchema
-- ROBLOX deviation START: predeclare function
-- local function healTypes(
function healTypes(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: use Map instead of Record
	-- originalTypeMap: Record<string, GraphQLNamedType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]>,
	originalTypeMap: Map<string, GraphQLNamedType | nil>,
	-- ROBLOX deviation END
	directives: ReadonlyArray<GraphQLDirective>
)
	-- ROBLOX deviation START: add predeclared variables
	local healNamedType
	local healFields
	local healInterfaces
	local healInputFields
	local healUnderlyingTypes
	local healType: <T>(T) -> (GraphQLType | nil)
	-- ROBLOX deviation END
	-- ROBLOX deviation START: move implementation after the function declarations
	-- 	local actualNamedTypeMap: Record<string, GraphQLNamedType> = Object.create(nil) -- If any of the .name properties of the GraphQLNamedType objects in
	-- 	-- schema.getTypeMap() have changed, the keys of the type map need to
	-- 	-- be updated accordingly.
	-- 	for typeName in originalTypeMap do
	-- 		local namedType = originalTypeMap[tostring(typeName)]
	-- 		if
	-- 			Boolean.toJSBoolean(
	-- 				namedType == nil --[[ ROBLOX CHECK: loose equality used upstream ]] or typeName:startsWith("__")
	-- 			)
	-- 		then
	-- 			continue
	-- 		end
	-- 		local actualName = namedType.name
	-- 		if Boolean.toJSBoolean(actualName:startsWith("__")) then
	-- 			continue
	-- 		end
	-- 		if
	-- 			actualNamedTypeMap[tostring(actualName)] ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	-- 		then
	-- 			console.warn(
	-- 				("Duplicate schema type name %s found; keeping the existing one found in the schema"):format(
	-- 					tostring(actualName)
	-- 				)
	-- 			)
	-- 			continue
	-- 		end
	-- 		actualNamedTypeMap[tostring(actualName)] = namedType -- Note: we are deliberately leaving namedType in the schema by its
	-- 		-- original name (which might be different from actualName), so that
	-- 		-- references by that name can be healed.
	-- 	end -- Now add back every named type by its actual name.
	-- 	for typeName in actualNamedTypeMap do
	-- 		local namedType = actualNamedTypeMap[tostring(typeName)]
	-- 		originalTypeMap[tostring(typeName)] = namedType
	-- 	end -- Directive declaration argument types can refer to named types.
	-- 	for _, decl in directives do
	-- 		decl.args = Array.filter(decl.args, function(arg)
	-- 			arg.type = healType(arg.type) :: GraphQLInputType
	-- 			return arg.type ~= nil
	-- 		end) --[[ ROBLOX CHECK: check if 'decl.args' is an Array ]]
	-- 	end
	-- 	for typeName in originalTypeMap do
	-- 		local namedType = originalTypeMap[tostring(typeName)] -- Heal all named types, except for dangling references, kept only to redirect.
	-- 		if
	-- 			not Boolean.toJSBoolean(typeName:startsWith("__"))
	-- 			and Array.indexOf(Object.keys(actualNamedTypeMap), tostring(typeName)) ~= -1
	-- 		then
	-- 			if
	-- 				namedType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	-- 			then
	-- 				healNamedType(namedType)
	-- 			end
	-- 		end
	-- 	end
	-- 	for typeName in originalTypeMap do
	-- 		if
	-- 			not Boolean.toJSBoolean(typeName:startsWith("__"))
	-- 			and not (Array.indexOf(Object.keys(actualNamedTypeMap), tostring(typeName)) ~= -1)
	-- 		then
	-- 			originalTypeMap[tostring(typeName)] = nil
	-- 		end
	-- 	end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: predeclare function and explicit type
	-- local function healNamedType(type_)
	function healNamedType(type_: GraphQLNamedType)
		-- ROBLOX deviation END
		if Boolean.toJSBoolean(isObjectType(type_)) then
			-- ROBLOX deviation START: needs cast
			-- 			healFields(type_)
			-- 			healInterfaces(type_)
			healFields(type_ :: GraphQLObjectType)
			healInterfaces(type_ :: GraphQLObjectType)
			-- ROBLOX deviation END
			return
		elseif Boolean.toJSBoolean(isInterfaceType(type_)) then
			-- ROBLOX deviation START: needs cast
			-- healFields(type_)
			healFields(type_ :: GraphQLInterfaceType)
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix 'in' expression conversion
			-- if Array.indexOf(Object.keys(type_), "getInterfaces") ~= -1 then
			if (type_ :: Object).getInterfaces ~= nil then
				-- ROBLOX deviation END
				-- ROBLOX deviation START: needs cast
				-- healInterfaces(type_)
				healInterfaces(type_ :: GraphQLInterfaceType)
				-- ROBLOX deviation END
			end
			return
		elseif Boolean.toJSBoolean(isUnionType(type_)) then
			-- ROBLOX deviation START: needs cast
			-- healUnderlyingTypes(type_)
			healUnderlyingTypes(type_ :: GraphQLUnionType)
			-- ROBLOX deviation END
			return
		elseif Boolean.toJSBoolean(isInputObjectType(type_)) then
			-- ROBLOX deviation START: needs cast
			-- healInputFields(type_)
			healInputFields(type_ :: GraphQLInputObjectType)
			-- ROBLOX deviation END
			return
		elseif Boolean.toJSBoolean(isLeafType(type_)) then
			return
		end
		-- ROBLOX deviation START: cast to any
		-- error(Error.new(("Unexpected schema type: %s"):format(tostring(type_ :: string))))
		error(Error.new(("Unexpected schema type: %s"):format(tostring(type_ :: any))))
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: predeclare function and explicit type
	-- local function healFields(type_)
	function healFields(type_: GraphQLObjectType | GraphQLInterfaceType)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: needs cast
		-- local fieldMap = type_:getFields()
		local fieldMap = (type_ :: GraphQLObjectType):getFields()
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fieldMap is a Map
		-- for _, ref in Object.entries(fieldMap) do
		for _, ref in fieldMap:entries() do
			-- ROBLOX deviation END
			-- ROBLOX deviation START: needs cast
			-- local key, field = table.unpack(ref, 1, 2)
			local key = ref[1] :: string
			local field = ref[2] :: GraphQLField<any, any, any>
			-- ROBLOX deviation END
			Array.filter(
				Array.map(field.args, function(arg)
					arg.type = healType(arg.type) :: GraphQLInputType
					return if arg.type == nil then nil else arg
				end), --[[ ROBLOX CHECK: check if 'field.args' is an Array ]]
				-- ROBLOX deviation START: use toJSBoolean
				-- Boolean
				Boolean.toJSBoolean
				-- ROBLOX deviation END
			)
			field.type = healType(field.type) :: GraphQLOutputType
			if field.type == nil then
				fieldMap[tostring(key)] = nil
			end
		end
	end
	-- ROBLOX deviation START: predeclare function and explicit type
	-- local function healInterfaces(type_)
	function healInterfaces(type_: GraphQLObjectType | GraphQLInterfaceType)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fix 'in' expression conversion
		-- if Array.indexOf(Object.keys(type_), "getInterfaces") ~= -1 then
		if (type_ :: Object).getInterfaces ~= nil then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: needs cast
			-- local interfaces = type_:getInterfaces() :: Array<GraphQLInterfaceType>
			local interfaces = (type_ :: Object):getInterfaces() :: Array<GraphQLInterfaceType>
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix unhandled conversion
			-- 			table.insert(
			-- 				interfaces,
			-- 				error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...interfaces.splice(0).map(iface => (healType(iface) as any)).filter(Boolean) ]]
			-- 			) --[[ ROBLOX CHECK: check if 'interfaces' is an Array ]]
			interfaces = Array.concat(
				interfaces,
				Array.filter(
					Array.map(Array.splice(interfaces, 1), function(iface)
						return healType(iface) :: any
					end),
					Boolean.toJSBoolean
				)
			)
			-- ROBLOX deviation END
		end
	end
	-- ROBLOX deviation START: predeclare function and explicit type
	-- local function healInputFields(type_)
	function healInputFields(type_: GraphQLInputObjectType)
		-- ROBLOX deviation END
		local fieldMap = type_:getFields()
		-- ROBLOX deviation START: fieldMap is a Map
		-- for _, ref in Object.entries(fieldMap) do
		for _, ref in fieldMap:entries() do
			-- ROBLOX deviation END
			-- ROBLOX deviation START: needs cast
			-- local key, field = table.unpack(ref, 1, 2)
			local key = ref[1] :: string
			local field = ref[2] :: GraphQLInputField
			-- ROBLOX deviation END
			field.type = healType(field.type) :: GraphQLInputType
			if field.type == nil then
				fieldMap[tostring(key)] = nil
			end
		end
	end
	-- ROBLOX deviation START: predeclare function and explicit type
	-- local function healUnderlyingTypes(type_)
	function healUnderlyingTypes(type_: GraphQLUnionType)
		-- ROBLOX deviation END
		local types = type_:getTypes() :: Array<GraphQLObjectType>
		-- ROBLOX deviation START: fix unhandled conversion
		-- 		table.insert(
		-- 			types,
		-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...types.splice(0).map(t => (healType(t) as any)).filter(Boolean) ]]
		-- 		) --[[ ROBLOX CHECK: check if 'types' is an Array ]]
		types = Array.concat(
			types,
			Array.filter(
				Array.map(Array.splice(types, 1), function(t)
					return healType(t) :: any
				end),
				Boolean.toJSBoolean
			)
		)
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: predeclare function
	-- local function healType<T>(
	function healType<T>(
		-- ROBLOX deviation END
		-- ROBLOX deviation START: explicit type
		-- type_
		type_: T
		-- ROBLOX deviation END
	): GraphQLType | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
		-- Unwrap the two known wrapper types
		if Boolean.toJSBoolean(isListType(type_)) then
			-- ROBLOX deviation START: needs cast
			-- local healedType = healType(type_.ofType)
			local healedType = healType((type_ :: GraphQLList<any>).ofType)
			-- ROBLOX deviation END
			return if healedType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				then GraphQLList.new(healedType)
				else nil
		elseif Boolean.toJSBoolean(isNonNullType(type_)) then
			-- ROBLOX deviation START: needs cast
			-- local healedType = healType(type_.ofType)
			local healedType = healType((type_ :: GraphQLNonNull<any>).ofType)
			-- ROBLOX deviation END
			return if healedType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				then GraphQLNonNull.new(healedType)
				else nil
		elseif Boolean.toJSBoolean(isNamedType(type_)) then
			-- If a type annotation on a field or an argument or a union member is
			-- any `GraphQLNamedType` with a `name`, then it must end up identical
			-- to `schema.getType(name)`, since `schema.getTypeMap()` is the source
			-- of truth for all named schema types.
			-- Note that new types can still be simply added by adding a field, as
			-- the official type will be undefined, not null.
			-- ROBLOX deviation START: needs cast
			-- local officialType = originalTypeMap[tostring(type_.name)]
			local officialType = originalTypeMap:get((type_ :: any).name)
			-- ROBLOX deviation END
			if
				Boolean.toJSBoolean(if Boolean.toJSBoolean(officialType) then type_ ~= officialType else officialType)
			then
				-- ROBLOX deviation START: needs additional cast
				-- return officialType :: T
				return (officialType :: any) :: T
				-- ROBLOX deviation END
			end
		end
		return type_
	end
	-- ROBLOX deviation START: add moved implementation after the function declarations
	local actualNamedTypeMap: Map<string, GraphQLNamedType> = Map.new()

	-- If any of the .name properties of the GraphQLNamedType objects in
	-- schema.getTypeMap() have changed, the keys of the type map need to
	-- be updated accordingly.
	for _, ref in originalTypeMap do
		local typeName = table.unpack(ref)
		local namedType = originalTypeMap:get(typeName)
		if namedType == nil or String.startsWith(typeName, "__") then
			continue
		end
		-- ROBLOX FIXME Luau:should narrow type
		local actualName = (namedType :: GraphQLNamedType).name
		if String.startsWith(actualName, "__") then
			continue
		end
		if actualNamedTypeMap:get(actualName) ~= nil then
			console.warn(
				("Duplicate schema type name %s found; keeping the existing one found in the schema"):format(actualName)
			)
			continue
		end
		actualNamedTypeMap:set(actualName, namedType :: GraphQLNamedType)

		-- Note: we are deliberately leaving namedType in the schema by its
		-- original name (which might be different from actualName), so that
		-- references by that name can be healed.
	end

	-- Now add back every named type by its actual name.
	for _, ref in actualNamedTypeMap do
		local typeName = table.unpack(ref)
		local namedType = actualNamedTypeMap:get(typeName)
		originalTypeMap:set(typeName, namedType)
	end

	-- Directive declaration argument types can refer to named types.
	for _, decl in directives do
		decl.args = Array.filter(decl.args, function(arg)
			arg.type = healType(arg.type) :: GraphQLInputType
			return arg.type ~= nil
		end)
	end

	for _, ref in originalTypeMap do
		local typeName = table.unpack(ref)
		local namedType = originalTypeMap:get(typeName)

		-- Heal all named types, except for dangling references, kept only to redirect.
		if not String.startsWith(typeName, "__") and Array.indexOf(actualNamedTypeMap:keys(), typeName) ~= -1 then
			if namedType ~= nil then
				healNamedType(namedType)
			end
		end
	end

	for _, ref in originalTypeMap do
		local typeName = table.unpack(ref)
		if not String.startsWith(typeName, "__") and not (Array.indexOf(actualNamedTypeMap:keys(), typeName) ~= -1) then
			originalTypeMap:set(typeName, nil)
		end
	end
	-- ROBLOX deviation END
end
exports.healTypes = healTypes
return exports
