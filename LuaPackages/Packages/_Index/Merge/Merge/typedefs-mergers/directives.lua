-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/directives.ts
type void = nil --[[ ROBLOX FIXME: adding `void` type alias to make it easier to use Luau `void` equivalent when supported ]]
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types
-- local ArgumentNode = graphqlModule.ArgumentNode
-- local DirectiveNode = graphqlModule.DirectiveNode
-- local DirectiveDefinitionNode = graphqlModule.DirectiveDefinitionNode
-- local ListValueNode = graphqlModule.ListValueNode
-- local NameNode = graphqlModule.NameNode
type ArgumentNode = graphqlModule.ArgumentNode
type DirectiveNode = graphqlModule.DirectiveNode
type DirectiveDefinitionNode = graphqlModule.DirectiveDefinitionNode
type ListValueNode = graphqlModule.ListValueNode
type NameNode = graphqlModule.NameNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix property name
-- local print_ = graphqlModule.print_
local print_ = graphqlModule.print
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["merge-typedefs.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
-- ROBLOX deviation START: import from Packages
-- local isSome = require(Packages["@graphql-tools"].utils).isSome
local isSome = require(Packages.Utils).isSome
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional type
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: predeclare variable
local deduplicateLists
-- ROBLOX deviation END
local function directiveAlreadyExists(
	directivesArr: ReadonlyArray<DirectiveNode>,
	otherDirective: DirectiveNode
): boolean
	-- ROBLOX deviation START: simplify double negation
	-- return not not Boolean.toJSBoolean(Array.find(directivesArr, function(directive)
	return Boolean.toJSBoolean(Array.find(directivesArr, function(directive)
		-- ROBLOX deviation END
		return directive.name.value == otherDirective.name.value
	end) --[[ ROBLOX CHECK: check if 'directivesArr' is an Array ]])
end
local function nameAlreadyExists(name: NameNode, namesArr: ReadonlyArray<NameNode>): boolean
	return Array.some(namesArr, function(ref0)
		local value = ref0.value
		return value == name.value
	end) --[[ ROBLOX CHECK: check if 'namesArr' is an Array ]]
end
local function mergeArguments(
	-- ROBLOX deviation START: replace unhandled type
	-- a1: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly ArgumentNode[] ]],
	-- a2: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly ArgumentNode[] ]]
	-- ROBLOX deviation END
	a1: Array<ArgumentNode> --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly ArgumentNode[] ]],
	a2: Array<ArgumentNode> --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly ArgumentNode[] ]]
): Array<ArgumentNode>
	-- ROBLOX deviation START: remove array.spread
	-- local result: Array<ArgumentNode> = Array.concat({}, Array.spread(a2))
	local result: Array<ArgumentNode> = Array.concat({}, a2)
	-- ROBLOX deviation END
	for _, argument in a1 do
		local existingIndex = Array.findIndex(result, function(a)
			return a.name.value == argument.name.value
		end) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
		if
			existingIndex
			> -1 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
		then
			-- ROBLOX deviation START: remove tostring
			-- local existingArg = result[tostring(existingIndex)]
			local existingArg = result[existingIndex]
			-- ROBLOX deviation END
			if existingArg.value.kind == "ListValue" then
				local source = (existingArg.value :: any).values
				local target = (argument.value :: ListValueNode).values; -- merge values of two lists
				(existingArg.value :: any).values = deduplicateLists(source, target, function(targetVal, source)
					local value = (targetVal :: any).value
					return not Boolean.toJSBoolean(value)
						-- ROBLOX deviation START: remove toJSBoolean
						-- or not Boolean.toJSBoolean(Array.some(source, function(sourceVal: any)
						-- 	return sourceVal.value == value
						-- 	end) --[[ ROBLOX CHECK: check if 'source' is an Array ]])
						or not Array.some(source, function(sourceVal: any)
							return sourceVal.value == value
						end)
					-- ROBLOX deviation END
				end)
			else
				(existingArg :: any).value = argument.value
			end
		else
			table.insert(result, argument) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
		end
	end
	return result
end
local function deduplicateDirectives(directives: ReadonlyArray<DirectiveNode>): Array<DirectiveNode>
	return Array.filter(
		-- ROBLOX deviation START: add return type
		-- Array.map(directives, function(directive, i, all)
		Array.map(directives, function(directive, i, all): DirectiveNode?
			-- ROBLOX deviation END
			local firstAt = Array.findIndex(all, function(d)
				return d.name.value == directive.name.value
			end) --[[ ROBLOX CHECK: check if 'all' is an Array ]]
			if firstAt ~= i then
				-- ROBLOX deviation START: remove tostring
				-- local dup = all[tostring(firstAt)];
				local dup = all[firstAt];
				-- ROBLOX deviation END
				(directive :: any).arguments = mergeArguments(directive.arguments :: any, dup.arguments :: any)
				return nil
			end
			return directive
		end), --[[ ROBLOX CHECK: check if 'directives' is an Array ]]
		isSome
		-- ROBLOX deviation START: explicit cast
		-- )
	) :: Array<DirectiveNode>
	-- ROBLOX deviation END
end
local function mergeDirectives(
	d1_: ReadonlyArray<DirectiveNode>?,
	d2_: ReadonlyArray<DirectiveNode>?,
	config: Config?
): Array<DirectiveNode>
	local d1: ReadonlyArray<DirectiveNode> = if d1_ ~= nil then d1_ else {}
	local d2: ReadonlyArray<DirectiveNode> = if d2_ ~= nil then d2_ else {}
	-- ROBLOX deviation START: remove toJsBoolean
	-- local reverseOrder: boolean | nil = if Boolean.toJSBoolean(config) then config.reverseDirectives else config
	local reverseOrder: boolean | nil = if config then config.reverseDirectives else config
	-- ROBLOX deviation END
	local asNext = if Boolean.toJSBoolean(reverseOrder) then d1 else d2
	-- ROBLOX deviation START: explicit cast
	-- local asFirst = if Boolean.toJSBoolean(reverseOrder) then d2 else d1
	local asFirst: ReadonlyArray<DirectiveNode> = if Boolean.toJSBoolean(reverseOrder) then d2 else d1
	-- ROBLOX deviation END
	-- ROBLOX deviation START: remove array.spread
	-- local result = deduplicateDirectives(Array.concat({}, Array.spread(asNext)))
	local result = deduplicateDirectives(Array.concat({}, asNext))
	-- ROBLOX deviation END
	for _, directive in asFirst do
		if Boolean.toJSBoolean(directiveAlreadyExists(result, directive)) then
			local existingDirectiveIndex = Array.findIndex(result, function(d)
				return d.name.value == directive.name.value
			end) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
			-- ROBLOX deviation START: remove tostring
			-- local existingDirective = result[tostring(existingDirectiveIndex)];
			-- (result[tostring(existingDirectiveIndex)] :: any).arguments = mergeArguments(
			local existingDirective = result[existingDirectiveIndex];
			(result[existingDirectiveIndex] :: any).arguments = mergeArguments(
				-- ROBLOX deviation END
				Boolean.toJSBoolean(directive.arguments) and directive.arguments or {},
				Boolean.toJSBoolean(existingDirective.arguments) and existingDirective.arguments or {}
			)
		else
			table.insert(result, directive) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
		end
	end
	return result
end
exports.mergeDirectives = mergeDirectives
-- ROBLOX deviation START: replace void type union
-- local function validateInputs(node: DirectiveDefinitionNode, existingNode: DirectiveDefinitionNode): void | never
local function validateInputs(node: DirectiveDefinitionNode, existingNode: DirectiveDefinitionNode): (...never)
	-- ROBLOX deviation END
	local printedNode = print_(Object.assign({}, node, { description = Object.None }))
	local printedExistingNode = print_(Object.assign({}, existingNode, { description = Object.None })) -- eslint-disable-next-line
	-- ROBLOX deviation START: use pattern and gsub instead of regex
	-- local leaveInputs = RegExp.new("(directive @w*d*)|( on .*$)", "g")
	-- local sameArguments = printedNode:replace(leaveInputs, "") == printedExistingNode:replace(leaveInputs, "")
	local leaveInputs1 = "directive @w*d*"
	local leaveInputs2 = " on .*$"
	local replaced1 = printedNode:gsub(leaveInputs1, ""):gsub(leaveInputs2, "")
	local replaced2 = printedExistingNode:gsub(leaveInputs1, ""):gsub(leaveInputs2, "")
	local sameArguments = replaced1 == replaced2
	-- ROBLOX deviation END
	if not Boolean.toJSBoolean(sameArguments) then
		error(
			Error.new(
				('Unable to merge GraphQL directive "%s". \nExisting directive:  \n\t%s \nReceived directive: \n\t%s'):format(
					tostring(node.name.value),
					tostring(printedExistingNode),
					tostring(printedNode)
				)
			)
		)
	end
end
local function mergeDirective(
	node: DirectiveDefinitionNode,
	existingNode: DirectiveDefinitionNode?
): DirectiveDefinitionNode
	-- ROBLOX deviation START: remove toJSBoolean
	-- if Boolean.toJSBoolean(existingNode) then
	if existingNode then
		-- ROBLOX deviation END
		validateInputs(node, existingNode)
		return Object.assign({}, node, {
			locations = Array.concat(
				{},
				-- ROBLOX deviation START: remove Array.spread, toJSBoolean
				-- Array.spread(existingNode.locations),
				-- Array.spread(Array.filter(node.locations, function(name)
				-- 	return not Boolean.toJSBoolean(nameAlreadyExists(name, existingNode.locations))
				-- end) --[[ ROBLOX CHECK: check if 'node.locations' is an Array ]])
				existingNode.locations,
				Array.filter(node.locations, function(name)
					return not nameAlreadyExists(name, existingNode.locations)
				end)
				-- ROBLOX deviation END
			),
		})
	end
	return node
end
exports.mergeDirective = mergeDirective
function deduplicateLists<T>(
	-- ROBLOX deviation START: replace unhandled types
	-- source: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly T[] ]],
	-- target: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly T[] ]],
	-- filterFn: (
	-- 	val: T,
	-- 	source: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly T[] ]]
	-- ) -> boolean
	source: Array<T> --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly T[] ]],
	target: Array<T> --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly T[] ]],
	filterFn: (
		val: T,
		source: Array<T> --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly T[] ]]
	) -> boolean
	-- ROBLOX deviation END
): Array<T>
	return Array.concat(
		source,
		Array.filter(target, function(val)
			return filterFn(val, source)
		end) --[[ ROBLOX CHECK: check if 'target' is an Array ]]
	) --[[ ROBLOX CHECK: check if 'source' is an Array ]]
end
return exports
