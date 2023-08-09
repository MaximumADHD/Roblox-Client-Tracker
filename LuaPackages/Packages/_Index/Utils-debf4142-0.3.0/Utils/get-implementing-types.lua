-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/get-implementing-types.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
local isObjectType = graphqlModule.isObjectType
-- ROBLOX deviation START: add additional types
type GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation END
local function getImplementingTypes(interfaceName: string, schema: GraphQLSchema): Array<string>
	local allTypesMap = schema:getTypeMap()
	local result: Array<string> = {}
	-- ROBLOX deviation START: iterate Map
	-- for graphqlTypeName in allTypesMap do
	for _, ref in allTypesMap do
		local graphqlTypeName = table.unpack(ref)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use Map
		-- local graphqlType = allTypesMap[tostring(graphqlTypeName)]
		local graphqlType = allTypesMap:get(graphqlTypeName)
		-- ROBLOX deviation END
		if Boolean.toJSBoolean(isObjectType(graphqlType)) then
			-- ROBLOX deviation START: needs cast
			-- local allInterfaces = graphqlType:getInterfaces()
			-- ROBLOX FIXME Luau: should narrow type
			local allInterfaces = (graphqlType :: GraphQLObjectType):getInterfaces()
			-- ROBLOX deviation END
			if
				Boolean.toJSBoolean(Array.find(allInterfaces, function(int)
					return int.name == interfaceName
				end) --[[ ROBLOX CHECK: check if 'allInterfaces' is an Array ]])
			then
				-- ROBLOX deviation START: needs cast
				-- table.insert(result, graphqlType.name) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
				table.insert(result, (graphqlType :: GraphQLObjectType).name)
				-- ROBLOX deviation END
			end
		end
	end
	return result
end
exports.getImplementingTypes = getImplementingTypes
return exports
