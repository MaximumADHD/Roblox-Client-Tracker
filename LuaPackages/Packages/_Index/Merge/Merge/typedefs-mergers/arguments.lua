-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/arguments.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- ROBLOX deviation START: import as type
-- local InputValueDefinitionNode = require(Packages.GraphQL).InputValueDefinitionNode
local graphQLModule = require(Packages.GraphQL)
type InputValueDefinitionNode = graphQLModule.InputValueDefinitionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["index.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
-- ROBLOX deviation START: import from Packages
-- local graphqlToolsUtilsModule = require(Packages["@graphql-tools"].utils)
local graphqlToolsUtilsModule = require(Packages.Utils)
-- ROBLOX deviation END
local compareNodes = graphqlToolsUtilsModule.compareNodes
local isSome = graphqlToolsUtilsModule.isSome
-- ROBLOX deviation START: predeclare variables
local deduplicateArguments
-- ROBLOX deviation END
-- ROBLOX deviation START: add unavailable types
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
local function mergeArguments(
	args1: Array<InputValueDefinitionNode>,
	args2: Array<InputValueDefinitionNode>,
	config: Config?
): Array<InputValueDefinitionNode>
	-- ROBLOX deviation START: remove Array.spread
	-- local result = deduplicateArguments(
	-- 	Array.filter(Array.concat({}, Array.spread(args2), Array.spread(args1)), isSome)
	-- )
	local result = deduplicateArguments(Array.filter(Array.concat({}, args2, args1), isSome))
	-- ROBLOX deviation END
	-- ROBLOX deviation START: simplify
	-- if Boolean.toJSBoolean(if Boolean.toJSBoolean(config) then config.sort else config) then
	if config and config.sort then
		-- ROBLOX deviation END
		Array.sort(result, compareNodes) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
	end
	return result
end
exports.mergeArguments = mergeArguments
-- ROBLOX deviation START: function is predeclared
-- local function deduplicateArguments(
function deduplicateArguments(
	-- ROBLOX deviation END
	args: ReadonlyArray<InputValueDefinitionNode>
): Array<InputValueDefinitionNode>
	return Array.reduce(args, function(acc, current)
		local dup = Array.find(acc, function(arg)
			return arg.name.value == current.name.value
		end) --[[ ROBLOX CHECK: check if 'acc' is an Array ]]
		if not Boolean.toJSBoolean(dup) then
			return Array.concat(acc, { current }) --[[ ROBLOX CHECK: check if 'acc' is an Array ]]
		end
		return acc
	end, {}) --[[ ROBLOX CHECK: check if 'args' is an Array ]]
end
return exports
