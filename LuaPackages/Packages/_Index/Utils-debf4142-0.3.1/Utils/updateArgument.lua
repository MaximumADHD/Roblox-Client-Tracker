-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/updateArgument.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import types
-- local GraphQLInputType = graphqlModule.GraphQLInputType
-- local ArgumentNode = graphqlModule.ArgumentNode
-- local VariableDefinitionNode = graphqlModule.VariableDefinitionNode
type GraphQLInputType = graphqlModule.GraphQLInputType
type ArgumentNode = graphqlModule.ArgumentNode
type VariableDefinitionNode = graphqlModule.VariableDefinitionNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: fix import
-- local astFromType = require(script.Parent["astFromType.js"]).astFromType
local astFromType = require(script.Parent.astFromType).astFromType
-- ROBLOX deviation END
local function updateArgument(
	argumentNodes: Record<string, ArgumentNode>,
	variableDefinitionsMap: Record<string, VariableDefinitionNode>,
	variableValues: Record<string, any>,
	argName: string,
	varName: string,
	-- ROBLOX deviation START: add explicit typing
	-- type_,
	type_: GraphQLInputType,
	-- ROBLOX deviation END
	value: any
): ()
	argumentNodes[tostring(argName)] = {
		kind = Kind.ARGUMENT,
		name = { kind = Kind.NAME, value = argName },
		value = { kind = Kind.VARIABLE, name = { kind = Kind.NAME, value = varName } },
	}
	variableDefinitionsMap[tostring(varName)] = {
		kind = Kind.VARIABLE_DEFINITION,
		variable = { kind = Kind.VARIABLE, name = { kind = Kind.NAME, value = varName } },
		type = astFromType(type_),
	}
	if value ~= nil then
		variableValues[tostring(varName)] = value
		return
	end -- including the variable in the map with value of `undefined`
	-- will actually be translated by graphql-js into `null`
	-- see https://github.com/graphql/graphql-js/issues/2533
	if Array.indexOf(Object.keys(variableValues), tostring(varName)) ~= -1 then
		variableValues[tostring(varName)] = nil
	end
end
exports.updateArgument = updateArgument
local function createVariableNameGenerator(
	variableDefinitionMap: Record<string, VariableDefinitionNode>
): (argName: string) -> string
	local varCounter = 0
	return function(argName: string): string
		local varName: string
		repeat
			-- ROBLOX deviation START: simplify
			-- varName = ("_v%s_%s"):format(
			-- 	tostring(tostring((function()
			-- 		local ref = varCounter
			-- 		varCounter += 1
			-- 		return ref
			-- 	end)())),
			-- 	tostring(argName)
			-- )
			varName = ("_v%s_%s"):format(tostring(varCounter), argName)
			varCounter += 1
		-- ROBLOX deviation END
		until not (Array.indexOf(Object.keys(variableDefinitionMap), tostring(varName)) ~= -1)
		return varName
	end
end
exports.createVariableNameGenerator = createVariableNameGenerator
return exports
