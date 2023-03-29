-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/prune.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
type Array<T> = LuauPolyfill.Array<T>
type Map<T, U> = LuauPolyfill.Map<T, U>
type Set<T> = LuauPolyfill.Set<T>
type Extract<T, U> = any --[[ ROBLOX TODO: TS 'Extract' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
local getNamedType = graphqlModule.getNamedType
local isObjectType = graphqlModule.isObjectType
local isInterfaceType = graphqlModule.isInterfaceType
local isUnionType = graphqlModule.isUnionType
local isInputObjectType = graphqlModule.isInputObjectType
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLFieldMap = graphqlModule.GraphQLFieldMap
type GraphQLFieldMap<TSource, TContext> = graphqlModule.GraphQLFieldMap<TSource, TContext>
-- ROBLOX deviation END
local isSpecifiedScalarType = graphqlModule.isSpecifiedScalarType
local isScalarType = graphqlModule.isScalarType
local isEnumType = graphqlModule.isEnumType
-- ROBLOX deviation START: import as type instead of local
-- local ASTNode = graphqlModule.ASTNode
type ASTNode = graphqlModule.ASTNode
-- ROBLOX deviation END
-- ROBLOX deviation START: import from proper paths
-- local PruneSchemaOptions = require(script.Parent["types.js"]).PruneSchemaOptions
-- local mapSchema = require(script.Parent["mapSchema.js"]).mapSchema
-- local MapperKind = require(script.Parent["Interfaces.js"]).MapperKind
-- local getRootTypes = require(script.Parent["rootTypes.js"]).getRootTypes
-- local getImplementingTypes = require(script.Parent["get-implementing-types.js"]).getImplementingTypes
local typesJsModule = require(script.Parent.types)
type PruneSchemaOptions = typesJsModule.PruneSchemaOptions
local mapSchema = require(script.Parent.mapSchema).mapSchema
local MapperKind = require(script.Parent.Interfaces).MapperKind
local getRootTypes = require(script.Parent.rootTypes).getRootTypes
local getImplementingTypes = require(script.Parent["get-implementing-types"]).getImplementingTypes
-- ROBLOX deviation END
-- ROBLOX deviation START: additional imports
local String = LuauPolyfill.String
type Object = LuauPolyfill.Object
type GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLUnionType = graphqlModule.GraphQLUnionType
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLEnumType = graphqlModule.GraphQLEnumType
type GraphQLField<TSource, TContext, TArgs = any> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
-- ROBLOX deviation END
-- ROBLOX deviation START: add predefined functions
local visitSchema
local visitQueue
local getDirectivesArgumentsTypeNames
-- ROBLOX deviation END
--[[*
 * Prunes the provided schema, removing unused and empty types
 * @param schema The schema to prune
 * @param options Additional options for removing unused types from the schema
 ]]
local function pruneSchema(schema: GraphQLSchema, options_: PruneSchemaOptions?): GraphQLSchema
	local options: PruneSchemaOptions = if options_ ~= nil then options_ else {}
	local skipEmptyCompositeTypePruning, skipEmptyUnionPruning, skipPruning, skipUnimplementedInterfacesPruning, skipUnusedTypesPruning =
		options.skipEmptyCompositeTypePruning,
		options.skipEmptyUnionPruning,
		options.skipPruning,
		options.skipUnimplementedInterfacesPruning,
		options.skipUnusedTypesPruning
	local prunedTypes: Array<string> = {} -- Pruned types during mapping
	local prunedSchema: GraphQLSchema = schema
	repeat
		local visited = visitSchema(prunedSchema) -- Custom pruning  was defined, so we need to pre-emptively revisit the schema accounting for this
		-- ROBLOX deviation START: remove toJSBoolean
		-- if Boolean.toJSBoolean(skipPruning) then
		if skipPruning then
			-- ROBLOX deviation END
			local revisit = {}
			-- ROBLOX deviation START: getTypeMap returns a Map instead of object
			-- for typeName in prunedSchema:getTypeMap() do
			for _, entry in prunedSchema:getTypeMap() do
				local typeName = entry[1]
				-- ROBLOX deviation END
				-- ROBLOX deviation START: use String.startsWith
				-- if Boolean.toJSBoolean(typeName:startsWith("__")) then
				if String.startsWith(typeName, "__") then
					-- ROBLOX deviation END
					continue
				end
				local type_ = prunedSchema:getType(typeName) -- if we want to skip pruning for this type, add it to the list of types to revisit
				-- ROBLOX deviation START: simplify
				-- if Boolean.toJSBoolean(if Boolean.toJSBoolean(type_) then skipPruning(type_) else type_) then
				if type_ and skipPruning(type_) then
					-- ROBLOX deviation END
					table.insert(revisit, typeName) --[[ ROBLOX CHECK: check if 'revisit' is an Array ]]
				end
			end
			visited = visitQueue(revisit, prunedSchema, visited) -- visit again
		end
		prunedTypes = {}
		prunedSchema = mapSchema(prunedSchema, {
			-- ROBLOX deviation START: explicitly type return value
			-- [tostring(MapperKind.TYPE)] = function(type_)
			[MapperKind.TYPE :: "MapperKind.TYPE"] = function(type_: GraphQLNamedType): GraphQLNamedType | nil
				-- ROBLOX deviation END
				if
					not Boolean.toJSBoolean(visited:has(type_.name))
					and not Boolean.toJSBoolean(isSpecifiedScalarType(type_))
				then
					if
						-- ROBLOX deviation START: simplify condition and fix shadowing refs
						-- 						Boolean.toJSBoolean((function()
						-- 							local ref = isUnionType(type_)
						-- 							local ref = Boolean.toJSBoolean(ref) and ref or isInputObjectType(type_)
						-- 							local ref = Boolean.toJSBoolean(ref) and ref or isInterfaceType(type_)
						-- 							local ref = Boolean.toJSBoolean(ref) and ref or isObjectType(type_)
						-- 							return Boolean.toJSBoolean(ref) and ref or isScalarType(type_)
						-- 						end)())
						isUnionType(type_)
						or isInputObjectType(type_)
						or isInterfaceType(type_)
						or isObjectType(type_)
						or isScalarType(type_)
						-- ROBLOX deviation END
					then
						-- skipUnusedTypesPruning: skip pruning unused types
						if Boolean.toJSBoolean(skipUnusedTypesPruning) then
							return type_
						end -- skipEmptyUnionPruning: skip pruning empty unions
						if
							-- ROBLOX deviation START: simplify condition and fix shadowing refs & getTypes returns a Map
							-- 							Boolean.toJSBoolean((function()
							-- 								local ref = isUnionType(type_)
							-- 								local ref = if Boolean.toJSBoolean(ref) then skipEmptyUnionPruning else ref
							-- 								return if Boolean.toJSBoolean(ref)
							-- 									then not Boolean.toJSBoolean(Object.keys(type_:getTypes()).length)
							-- 									else ref
							-- 							end)())
							isUnionType(type_)
							and skipEmptyUnionPruning
							and not Boolean.toJSBoolean(
								#(type_ :: GraphQLUnionType).getTypes(type_ :: GraphQLUnionType)
							)
							-- ROBLOX deviation END
						then
							return type_
						end
						if
							-- ROBLOX deviation START: smiplify condition and fix shadowing refs
							-- 							Boolean.toJSBoolean((function()
							-- 								local ref = isInputObjectType(type_)
							-- 								local ref = Boolean.toJSBoolean(ref) and ref or isInterfaceType(type_)
							-- 								return Boolean.toJSBoolean(ref) and ref or isObjectType(type_)
							-- 							end)())
							isInputObjectType(type_)
							or isInterfaceType(type_)
							or isObjectType(type_)
							-- ROBLOX deviation END
						then
							-- skipEmptyCompositeTypePruning: skip pruning object types or interfaces with no fields
							-- ROBLOX deviation START: simplify if condition and fix shadowing refs and getFields returns a Map
							-- 							if
							-- 								Boolean.toJSBoolean(
							-- 									if Boolean.toJSBoolean(skipEmptyCompositeTypePruning)
							-- 										then not Boolean.toJSBoolean(Object.keys(type_:getFields()).length)
							-- 										else skipEmptyCompositeTypePruning
							-- 								)
							local type__ = type_ :: GraphQLInputObjectType | GraphQLInterfaceType | GraphQLObjectType
							if
								skipEmptyCompositeTypePruning
								and not Boolean.toJSBoolean(#(type__ :: any).getFields(type__):keys())
								-- ROBLOX deviation END
							then
								return type_
							end
						end -- skipUnimplementedInterfacesPruning: skip pruning interfaces that are not implemented by any other types
						-- ROBLOX deviation START: simplify if condition and fix shadowing refs
						-- 						if
						-- 							Boolean.toJSBoolean((function()
						-- 								local ref = isInterfaceType(type_)
						-- 								return if Boolean.toJSBoolean(ref) then skipUnimplementedInterfacesPruning else ref
						-- 							end)())
						if
							isInterfaceType(type_) and skipUnimplementedInterfacesPruning
							-- ROBLOX deviation END
						then
							return type_
						end
					end
					table.insert(prunedTypes, type_.name) --[[ ROBLOX CHECK: check if 'prunedTypes' is an Array ]]
					visited:delete(type_.name)
					-- ROBLOX deviation START: use Object.None as null
					-- return nil
					return Object.None
					-- ROBLOX deviation END
				end
				return type_
			end,
		})
	-- ROBLOX deviation START: .length is not a table property in Luau
	-- until not Boolean.toJSBoolean(prunedTypes.length) -- Might have empty types and need to prune again
	until #prunedTypes == 0 -- Might have empty types and need to prune again
	-- ROBLOX deviation END
	return prunedSchema
end
exports.pruneSchema = pruneSchema
-- ROBLOX deviation START: predeclared function
-- local function visitSchema(schema: GraphQLSchema): Set<string>
function visitSchema(schema: GraphQLSchema): Set<string>
	-- ROBLOX deviation END
	local queue: Array<string> = {} -- queue of nodes to visit
	-- Grab the root types and start there
	for _, type_ in getRootTypes(schema) do
		table.insert(queue, type_.name) --[[ ROBLOX CHECK: check if 'queue' is an Array ]]
	end
	return visitQueue(queue, schema)
end
-- ROBLOX deviation START: predeclared function
-- local function visitQueue(queue: Array<string>, schema: GraphQLSchema, visited_: Set<string>?): Set<string>
function visitQueue(queue: Array<string>, schema: GraphQLSchema, visited_: Set<string>?): Set<string>
	-- ROBLOX deviation END
	local visited: Set<string> = if visited_ ~= nil then visited_ else Set.new()
	-- Interfaces encountered that are field return types need to be revisited to add their implementations
	local revisit: Map<string, boolean> = Map.new() -- Navigate all types starting with pre-queued types (root types)
	-- ROBLOX deviation START: .length is not a table property in Luau
	-- while Boolean.toJSBoolean(queue.length) do
	while #queue ~= 0 do
		-- ROBLOX deviation END
		local typeName = table.remove(queue) --[[ ROBLOX CHECK: check if 'queue' is an Array ]] :: string -- Skip types we already visited unless it is an interface type that needs revisiting
		if
			-- ROBLOX deviation START: simplify
			-- 			Boolean.toJSBoolean((function()
			-- 				local ref = visited:has(typeName)
			-- 				return if Boolean.toJSBoolean(ref) then revisit[tostring(typeName)] ~= true else ref
			-- 			end)())
			visited:has(typeName) and revisit[typeName] ~= true
			-- ROBLOX deviation END
		then
			continue
		end
		local type_ = schema:getType(typeName)
		-- ROBLOX deviation START: extra check to satisfy analyze
		-- if Boolean.toJSBoolean(type_) then
		if Boolean.toJSBoolean(type_) and type_ then
			-- ROBLOX deviation END
			-- Get types for union
			if Boolean.toJSBoolean(isUnionType(type_)) then
				-- ROBLOX deviation START: roblox/js-to-lua issue #333
				-- 				table.insert(
				-- 					queue,
				-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...type.getTypes().map(type => type.name) ]]
				-- 				) --[[ ROBLOX CHECK: check if 'queue' is an Array ]]
				queue = Array.concat(
					queue,
					Array.map((type_ :: GraphQLUnionType):getTypes(), function(type_)
						return type_.name
					end)
				)
				-- ROBLOX deviation END
			end -- If it is an interface and it is a returned type, grab all implementations so we can use proper __typename in fragments
			if
				-- ROBLOX deviation START: simplify
				-- 				Boolean.toJSBoolean((function()
				-- 					local ref = isInterfaceType(type_)
				-- 					return if Boolean.toJSBoolean(ref) then revisit[tostring(typeName)] == true else ref
				-- 				end)())
				isInterfaceType(type_) and revisit[typeName] == true
				-- ROBLOX deviation END
			then
				-- ROBLOX deviation START: roblox/js-to-lua issue #333
				-- 				table.insert(
				-- 					queue,
				-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...getImplementingTypes(type.name, schema) ]]
				-- 				) --[[ ROBLOX CHECK: check if 'queue' is an Array ]] -- No need to revisit this interface again
				queue = Array.concat(queue, getImplementingTypes(type_.name, schema))
				-- ROBLOX deviation END
				revisit[tostring(typeName)] = false
			end
			if Boolean.toJSBoolean(isEnumType(type_)) then
				-- Visit enum values directives argument types
				-- ROBLOX deviation START: roblox/js-to-lua issue #333
				-- 				table.insert(
				-- 					queue,
				-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...type.getValues().flatMap(value => {
				--           if (value.astNode) {
				--             return getDirectivesArgumentsTypeNames(schema, value.astNode);
				--           }
				--
				--           return [];
				--         }) ]]
				-- 				) --[[ ROBLOX CHECK: check if 'queue' is an Array ]]
				queue = Array.concat(
					queue,
					Array.flatMap((type_ :: GraphQLEnumType):getValues(), function(value)
						if value.astNode then
							return getDirectivesArgumentsTypeNames(schema, value.astNode)
						end
						return {}
					end)
				)
				-- ROBLOX deviation END
			end -- Visit interfaces this type is implementing if they haven't been visited yet
			-- ROBLOX deviation START: fix implementation
			-- if Array.indexOf(Object.keys(type_), "getInterfaces") ~= -1 then
			if (type_ :: Object).getInterfaces ~= nil then
				-- ROBLOX deviation END
				-- Only pushes to queue to visit but not return types
				-- ROBLOX deviation START: roblox/js-to-lua issue #333
				-- 				table.insert(
				-- 					queue,
				-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...type.getInterfaces().map(iface => iface.name) ]]
				-- 				) --[[ ROBLOX CHECK: check if 'queue' is an Array ]]
				queue = Array.concat(
					queue,
					Array.map((type_ :: Object):getInterfaces(), function(iface)
						return iface.name
					end)
				)
				-- ROBLOX deviation END
			end -- If the type has fields visit those field types
			-- ROBLOX deviation START: fix implementation
			-- if Array.indexOf(Object.keys(type_), "getFields") ~= -1 then
			if (type_ :: Object).getFields ~= nil then
				-- ROBLOX deviation END
				-- ROBLOX deviation START: no type assertions in Luau. "getFields" is guaranteed by the above check
				-- local fields = type_:getFields() :: GraphQLFieldMap<any, any>
				local fields = (type_ :: Object):getFields() :: GraphQLFieldMap<any, any>
				-- ROBLOX deviation END
				-- ROBLOX deviation START: fields is a Map
				-- local entries = Object.entries(fields)
				local entries = fields:entries()
				-- ROBLOX deviation END
				-- ROBLOX deviation START: .length is not a table property in Luau
				-- if not Boolean.toJSBoolean(entries.length) then
				if #entries == 0 then
					-- ROBLOX deviation END
					continue
				end
				for _, ref in entries do
					-- ROBLOX deviation START: cast to appropriate type and wrong for of conversion roblox/js-to-lua issue #916
					-- local field = ref[1]
					local field = ref[2] :: GraphQLField<any, any>
					-- ROBLOX deviation END
					if Boolean.toJSBoolean(isObjectType(type_)) then
						-- Visit arg types and arg directives arguments types
						-- ROBLOX deviation START: roblox/js-to-lua issue #333
						-- 						table.insert(
						-- 							queue,
						-- 							error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...field.args.flatMap(arg => {
						--               const typeNames = [getNamedType(arg.type).name];
						--
						--               if (arg.astNode) {
						--                 typeNames.push(...getDirectivesArgumentsTypeNames(schema, arg.astNode));
						--               }
						--
						--               return typeNames;
						--             }) ]]
						-- 						) --[[ ROBLOX CHECK: check if 'queue' is an Array ]]
						queue = Array.concat(
							queue,
							Array.flatMap(field.args, function(arg)
								local typeNames = { getNamedType(arg.type).name }
								if arg.astNode then
									typeNames =
										Array.concat(typeNames, getDirectivesArgumentsTypeNames(schema, arg.astNode))
								end
								return typeNames
							end)
						)
						-- ROBLOX deviation END
					end
					local namedType = getNamedType(field.type)
					table.insert(queue, namedType.name) --[[ ROBLOX CHECK: check if 'queue' is an Array ]]
					if Boolean.toJSBoolean(field.astNode) then
						-- ROBLOX deviation START: roblox/js-to-lua issue #333
						-- table.insert(
						-- 							queue,
						-- 							error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...getDirectivesArgumentsTypeNames(schema, field.astNode) ]]
						-- 						) --[[ ROBLOX CHECK: check if 'queue' is an Array ]]
						queue = Array.concat(queue, getDirectivesArgumentsTypeNames(schema, field.astNode))
						-- ROBLOX deviation END
					end -- Interfaces returned on fields need to be revisited to add their implementations
					if
						-- ROBLOX deviation START: simplify and fix `in` operator conversion for Map
						-- 						Boolean.toJSBoolean((function()
						-- 							local ref = isInterfaceType(namedType)
						-- 							return if Boolean.toJSBoolean(ref)
						-- 								then not (Array.indexOf(Object.keys(revisit), tostring(namedType.name)) ~= -1)
						-- 								else ref
						-- 						end)())
						isInterfaceType(namedType) and not (revisit:has(namedType.name))
						-- ROBLOX deviation END
					then
						revisit[tostring(namedType.name)] = true
					end
				end
			end
			if Boolean.toJSBoolean(type_.astNode) then
				-- ROBLOX deviation START: roblox/js-to-lua issue #333
				-- 				table.insert(
				-- 					queue,
				-- 					error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...getDirectivesArgumentsTypeNames(schema, type.astNode) ]]
				-- 				) --[[ ROBLOX CHECK: check if 'queue' is an Array ]]
				queue = Array.concat(queue, getDirectivesArgumentsTypeNames(schema, type_.astNode))
				-- ROBLOX deviation END
			end
			visited:add(typeName) -- Mark as visited (and therefore it is used and should be kept)
		end
	end
	return visited
end
-- ROBLOX deviation START: predeclared function
-- local function getDirectivesArgumentsTypeNames(schema: GraphQLSchema, astNode: Extract<ASTNode, { directives: any? }>)
function getDirectivesArgumentsTypeNames(schema: GraphQLSchema, astNode: Extract<ASTNode, { directives: any? }>)
	-- ROBLOX deviation END
	-- ROBLOX deviation START: fix implementation
	-- 	return (if astNode.directives ~= nil then astNode.directives else {}):flatMap(function(directive)
	-- 		local ref = error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: OptionalMemberExpression when optional property is not true ]] --[[ schema.getDirective(directive.name.value)?.args.map ]]
	-- 		local ref = if ref ~= nil
	-- 			then ref(function(arg)
	-- 				return getNamedType(arg.type).name
	-- 			end)
	-- 			else nil
	-- 		return if ref ~= nil then ref else {}
	return Array.flatMap(astNode.directives or {}, function(directive)
		local ref0 = schema:getDirective(directive.name.value)
		local ref1 = if typeof(ref0) == "table" then ref0.args else nil
		local ref2 = if ref1 ~= nil
			then Array.map(ref1, function(arg)
				return getNamedType(arg.type).name
			end)
			else nil
		return if ref2 ~= nil then ref2 else {}
		-- ROBLOX deviation END
	end)
end
return exports
