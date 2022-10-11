-- ROBLOX upstream: https://github.com/apollographql/graphql-tag/blob/v2.12.3/src/index.ts

local rootWorkspace = script.Parent.Parent

local GraphQLModule = require(rootWorkspace.GraphQL)
local parseModule = GraphQLModule.parse
type DocumentNode = GraphQLModule.DocumentNode
type DefinitionNode = GraphQLModule.DefinitionNode
type FragmentDefinitionNode = GraphQLModule.FragmentDefinitionNode
-- ROBLOX todo: export Location from graphql-lua when it is exported
-- type Location = GraphQLModule.Location
type Location = { [string]: any }
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Map = LuauPolyfill.Map
local Set = LuauPolyfill.Set
local String = LuauPolyfill.String
local Object = LuauPolyfill.Object
local Array = LuauPolyfill.Array
local console = LuauPolyfill.console

type Array<T> = LuauPolyfill.Array<T>
type Map<K, V> = LuauPolyfill.Map<K, V>
type Set<T> = LuauPolyfill.Set<T>
type Record<T, U> = { [T]: U }

local docCache = Map.new(nil) :: Map<string, DocumentNode>
local fragmentSourceMap = Map.new(nil) :: Map<string, Set<string>>
local printFragmentWarnings = true
local experimentalFragmentVariables = false
local function normalize(string_: string): string
	local strippedString = string_:gsub(",+%s+", " ")
	return String.trim(strippedString)
end

local function cacheKeyFromLoc(loc: Location): string
	return normalize(loc.source.body:sub(loc.start, loc._end))
end

local function processFragments(ast: DocumentNode)
	local seenKeys = Set.new(nil)
	local definitions: Array<DefinitionNode> = {}

	for i = 1, #ast.definitions do
		local fragmentDefinition = ast.definitions[i]
		if fragmentDefinition.kind == "FragmentDefinition" then
			-- ROBLOX deviation: type narrowing isnt narrowing down to FragmentDefinitionNode type
			local fragmentDefinitionNode = fragmentDefinition :: FragmentDefinitionNode
			local fragmentName = fragmentDefinitionNode.name.value
			local sourceKey = cacheKeyFromLoc((fragmentDefinitionNode.loc :: any) :: Location)

			-- We know something about this fragment
			local sourceKeySet = fragmentSourceMap:get(fragmentName) :: Set<string>
			if sourceKeySet and not sourceKeySet:has(sourceKey) then
				-- this is a problem because the app developer is trying to register another fragment with
				-- the same name as one previously registered. So, we tell them about it.
				if printFragmentWarnings then
					console.warn(
						"Warning: fragment with name "
							.. fragmentName
							.. " already exists.\n"
							.. "graphql-tag enforces all fragment names across your application to be unique; read more about\n"
							.. "this in the docs: http://dev.apollodata.com/core/fragments.html#unique-names"
					)
				end
			elseif not sourceKeySet then
				-- ROBLOX FIXME Luau: needs type states/control flow
				sourceKeySet = Set.new() :: Set<string>
				-- ROBLOX FIXME Luau: seems to ignore the fact that sourceKey is now not nil
				fragmentSourceMap:set(fragmentName, (sourceKeySet :: any) :: Set<string>)
			end
			sourceKeySet:add(sourceKey)
			if not seenKeys:has(sourceKey) then
				seenKeys:add(sourceKey)
				table.insert(definitions, fragmentDefinitionNode)
			end
		else
			table.insert(definitions, fragmentDefinition)
		end
	end
	return Object.assign({}, ast, { definitions = definitions })
end

local function stripLoc(doc: DocumentNode): DocumentNode
	local workSet = Set.new(nil)
	for i = 1, #workSet do
		local node = workSet[i]
		if node.loc then
			workSet:delete(node.loc)
		end
		for u = 1, #Object.keys(node) do
			local key = Object.keys(node)[u]
			local value = node[tostring(key)]
			if value and typeof(value) == "table" and not Array.isArray(value) then
				workSet:add(value)
			end
		end
	end

	local loc = (doc.loc :: any) :: Record<string, any>
	if loc then
		loc.startToken = nil
		loc.endToken = nil
	end
	return doc
end

local function parseDocument(source: string): DocumentNode
	local cacheKey = normalize(source)

	if not docCache:has(cacheKey) then
		local parsed = parseModule(source, {
			experimentalFragmentVariables = experimentalFragmentVariables,
		})

		if not parsed or parsed.kind ~= "Document" then
			error("Not a valid GraphQL document.")
		end

		docCache:set(
			cacheKey,
			-- check that all "new" fragments inside the documents are consistent with
			-- existing fragments of the same name
			stripLoc(processFragments(parsed))
		)
	end
	return docCache:get(cacheKey) :: DocumentNode
end

--ROBLOX deviation: we are not dealing with fragmentation
local function gql(literals: string): DocumentNode
	if typeof(literals) == "string" then
		return parseDocument(literals)
	end
	error(
		"graphql-tag-lua does not currently support non-strings or Fragments. Please file an issue or PR if you need this feature added."
	)
end
--[[ export function gql(
  literals: string | readonly string[],
  ...args: any[]
) {
  if (typeof literals === 'string') {
    literals = [literals];
  }
  let result = literals[0];
  args.forEach((arg, i) => {
    if (arg && arg.kind === 'Document') {
      result += arg.loc.source.body;
    } else {
      result += arg;
    }
    result += literals[i + 1];
  });
  return parseDocument(result);
} ]]

function resetCaches(): ()
	docCache:clear()
	fragmentSourceMap:clear()
end

function disableFragmentWarnings(): ()
	printFragmentWarnings = false
end

function enableExperimentalFragmentVariables(): ()
	experimentalFragmentVariables = true
end

function disableExperimentalFragmentVariables(): ()
	experimentalFragmentVariables = false
end

local extras = {
	gql = gql,
	resetCaches = resetCaches,
	disableFragmentWarnings = disableFragmentWarnings,
	enableExperimentalFragmentVariables = enableExperimentalFragmentVariables,
	disableExperimentalFragmentVariables = disableExperimentalFragmentVariables,
}
return {
	default = gql,
	gql = gql,
	resetCaches = extras.resetCaches,
	disableFragmentWarnings = extras.disableFragmentWarnings,
	enableExperimentalFragmentVariables = extras.enableExperimentalFragmentVariables,
	disableExperimentalFragmentVariables = extras.disableExperimentalFragmentVariables,
}
