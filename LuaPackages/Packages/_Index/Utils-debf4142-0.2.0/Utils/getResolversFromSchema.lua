-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/getResolversFromSchema.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
-- ROBLOX deviation START: not needed
-- local Object = LuauPolyfill.Object
-- ROBLOX deviation END
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local GraphQLScalarType = graphqlModule.GraphQLScalarType
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
local isScalarType = graphqlModule.isScalarType
local isEnumType = graphqlModule.isEnumType
local isInterfaceType = graphqlModule.isInterfaceType
local isUnionType = graphqlModule.isUnionType
local isObjectType = graphqlModule.isObjectType
local isSpecifiedScalarType = graphqlModule.isSpecifiedScalarType
-- ROBLOX deviation START: import as type and fix import path
-- local IResolvers = require(script.Parent["Interfaces.js"]).IResolvers
local interfacesModule = require(script.Parent.Interfaces)
type IResolvers = interfacesModule.IResolvers
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type GraphQLScalarType = graphqlModule.GraphQLScalarType
type GraphQLEnumType = graphqlModule.GraphQLEnumType
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
type GraphQLUnionType = graphqlModule.GraphQLUnionType
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLField<TSource, TContext, TArgs> = graphqlModule.GraphQLField<TSource, TContext, TArgs>
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local String = LuauPolyfill.String
-- ROBLOX deviation END
local function getResolversFromSchema(
	schema: GraphQLSchema, -- Include default merged resolvers
	includeDefaultMergedResolver: boolean?
): IResolvers
	-- ROBLOX deviation START: Object.create isn't available
	-- local resolvers = Object.create(nil)
	local resolvers = {}
	-- ROBLOX deviation END
	local typeMap = schema:getTypeMap()
	-- ROBLOX deviation START: iterate Map
	-- for typeName in typeMap do
	for _, ref in typeMap do
		local typeName = ref[1]
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fix .startsWith conversion
		-- if not Boolean.toJSBoolean(typeName:startsWith("__")) then
		if not String.startsWith(typeName, "__") then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: use Map
			-- local type_ = typeMap[tostring(typeName)]
			local type_ = typeMap:get(typeName)
			-- ROBLOX deviation END
			if Boolean.toJSBoolean(isScalarType(type_)) then
				if not Boolean.toJSBoolean(isSpecifiedScalarType(type_)) then
					-- ROBLOX deviation START: needs cast
					-- local config = type_:toConfig()
					-- ROBLOX FIXME Luau: should narrow type
					local config = (type_ :: GraphQLScalarType):toConfig()
					-- ROBLOX deviation END
					config.astNode = nil -- avoid AST duplication elsewhere
					-- ROBLOX deviation START: add handling for self in methods
					local serialize = config.serialize
					local parseValue = config.parseValue
					local parseLiteral = config.parseLiteral

					if serialize then
						config.serialize = function(...)
							-- ROBLOX FIXME Luau: already checked it's not nil
							return (serialize :: any)(config, ...)
						end
					end
					if parseValue then
						config.parseValue = function(...)
							-- ROBLOX FIXME Luau: already checked it's not nil
							return (parseValue :: any)(config, ...)
						end
					end
					if parseLiteral then
						config.parseLiteral = function(...)
							-- ROBLOX FIXME Luau: already checked it's not nil
							return (parseLiteral :: any)(config, ...)
						end
					end
					-- ROBLOX deviation END
					resolvers[tostring(typeName)] = GraphQLScalarType.new(config)
				end
			elseif Boolean.toJSBoolean(isEnumType(type_)) then
				resolvers[tostring(typeName)] = {}
				-- ROBLOX deviation START: needs cast
				-- local values = type_:getValues()
				local values = (type_ :: GraphQLEnumType):getValues()
				-- ROBLOX deviation END
				for _, value in values do
					resolvers[tostring(typeName)][tostring(value.name)] = value.value
				end
			elseif Boolean.toJSBoolean(isInterfaceType(type_)) then
				-- ROBLOX deviation START: needs cast
				-- 				if
				-- 					type_.resolveType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				-- 				then
				if (type_ :: GraphQLInterfaceType).resolveType ~= nil then
					-- ROBLOX deviation END
					-- ROBLOX deviation START: needs cast
					-- resolvers[tostring(typeName)] = { __resolveType = type_.resolveType }
					resolvers[typeName] = { __resolveType = (type_ :: GraphQLInterfaceType).resolveType }
					-- ROBLOX deviation END
				end
			elseif Boolean.toJSBoolean(isUnionType(type_)) then
				-- ROBLOX deviation START: needs cast
				-- 				if
				-- 					type_.resolveType ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				-- 				then
				if (type_ :: GraphQLUnionType).resolveType ~= nil then
					-- ROBLOX deviation END
					-- ROBLOX deviation START: needs cast
					-- resolvers[tostring(typeName)] = { __resolveType = type_.resolveType }
					resolvers[typeName] = { __resolveType = (type_ :: GraphQLUnionType).resolveType }
					-- ROBLOX deviation END
				end
			elseif Boolean.toJSBoolean(isObjectType(type_)) then
				resolvers[tostring(typeName)] = {}
				-- ROBLOX deviation START: needs cast
				-- 				if
				-- 					type_.isTypeOf ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
				-- 				then
				if (type_ :: GraphQLObjectType).isTypeOf ~= nil then
					-- ROBLOX deviation END
					-- ROBLOX deviation START: needs cast
					-- resolvers[tostring(typeName)].__isTypeOf = type_.isTypeOf
					resolvers[typeName].__isTypeOf = (type_ :: GraphQLObjectType).isTypeOf
					-- ROBLOX deviation END
				end
				-- ROBLOX deviation START: needs cast
				-- local fields = type_:getFields()
				local fields = (type_ :: GraphQLObjectType):getFields()
				-- ROBLOX deviation END
				-- ROBLOX deviation START: iterate Map
				-- for fieldName in fields do
				for _, ref in fields do
					local fieldName = ref[1]
					-- ROBLOX deviation END
					-- ROBLOX deviation START: use Map
					-- local field = fields[tostring(fieldName)]
					local field = fields:get(fieldName) :: GraphQLField<any, any, any>
					-- ROBLOX deviation END
					if
						field.subscribe ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
					then
						resolvers[tostring(typeName)][tostring(fieldName)] = Boolean.toJSBoolean(
							resolvers[tostring(typeName)][tostring(fieldName)]
						) and resolvers[tostring(typeName)][tostring(fieldName)] or {}
						resolvers[tostring(typeName)][tostring(fieldName)].subscribe = field.subscribe
					end
					if
						field.resolve ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
						and (if typeof(field.resolve) == "table" then field.resolve.name else nil)
							~= "defaultFieldResolver"
					then
						local condition_ = if typeof(field.resolve) == "table" then field.resolve.name else nil
						if condition_ == "defaultMergedResolver" then
							if not Boolean.toJSBoolean(includeDefaultMergedResolver) then
								continue
							end
						elseif condition_ == "defaultFieldResolver" then
							continue
						end
						resolvers[tostring(typeName)][tostring(fieldName)] = Boolean.toJSBoolean(
							resolvers[tostring(typeName)][tostring(fieldName)]
						) and resolvers[tostring(typeName)][tostring(fieldName)] or {}
						resolvers[tostring(typeName)][tostring(fieldName)].resolve = field.resolve
					end
				end
			end
		end
	end
	return resolvers
end
exports.getResolversFromSchema = getResolversFromSchema
return exports
