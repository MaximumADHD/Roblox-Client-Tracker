-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/query-helpers.ts
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local String = LuauPolyfill.String
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local querySelectorAll = require(script.Parent.jsHelpers.querySelectors).querySelectorAll

local exports = {}

-- ROBLOX deviation START: properties for matchers
local matchAsProperties = {
	"PlaceholderText",
}
-- ROBLOX deviation END

local typesModule = require(script.Parent.types)
type GetErrorFunction<Argument = any> = typesModule.GetErrorFunction<Argument>
type Matcher = typesModule.Matcher
type MatcherOptions = typesModule.MatcherOptions
type QueryMethod<Argument, Return> = typesModule.QueryMethod<Argument, Return>
type Variant = typesModule.Variant
type WaitForOptions = typesModule.waitForOptions
type WithSuggest = typesModule.WithSuggest
local getSuggestedQuery = require(script.Parent.suggestions).getSuggestedQuery

local matchesModule = require(script.Parent.matches)
local fuzzyMatches = matchesModule.fuzzyMatches
local matches = matchesModule.matches
local makeNormalizer = matchesModule.makeNormalizer
local waitFor = require(script.Parent["wait-for"]).waitFor
local getConfig = require(script.Parent.config).getConfig

-- ROBLOX deviation START: helper fn
local getNodeTestId = require(script.Parent["get-node-test-id"]).getNodeTestId
-- ROBLOX deviation END

local function getElementError(message: string | nil, container: Instance)
	return getConfig().getElementError(message, container)
end

local function getMultipleElementsFoundError(message: string, container: Instance)
	return getElementError(
		("%s\n\n(If this is intentional, then use the `*AllBy*` variant of the query (like `queryAllByText`, `getAllByText`, or `findAllByText`))."):format(
			message
		),
		container
	)
end

local function queryAllByAttribute(
	attribute: string,
	container: Instance,
	text: Matcher,
	ref_: MatcherOptions?
): Array<Instance>
	local ref = (if ref_ == nil then {} else ref_) :: MatcherOptions
	local exact, collapseWhitespace, trim, normalizer =
		if ref.exact == nil then true else ref.exact, ref.collapseWhitespace, ref.trim, ref.normalizer
	local matcher = (if exact ~= nil then matches else fuzzyMatches) :: typeof(matches)
	local matchNormalizer = makeNormalizer({
		collapseWhitespace = collapseWhitespace,
		trim = trim,
		normalizer = normalizer,
	})
	-- ROBLOX deviation START: we need to verify the property exists in Instance or errors
	local function getProperty(node: Instance, property: string): any
		local ok, res = pcall(function()
			return (node :: any)[property]
		end)
		return if not ok then nil else res
	end
	-- ROBLOX deviation END

	return Array.filter(
		querySelectorAll(
			container,
			{ attribute },
			if Array.includes(matchAsProperties, attribute)
				then "property"
				-- ROBLOX deviation START: needs cast to string
				-- else if getConfig().testIdAttribute == attribute then "tag" else "attribute"
				else if (getConfig().testIdAttribute :: string) == attribute then "tag" else "attribute"
			-- ROBLOX deviation END
		),
		function(node: Instance)
			return matcher(
				-- ROBLOX deviation START: we need to access values as properties, attributes or tags
				if Array.includes(matchAsProperties, attribute)
					then getProperty(node, attribute)
					elseif (getConfig().testIdAttribute :: string) == attribute then getNodeTestId(node)
					else node:GetAttribute(attribute),
				-- ROBLOX deviation END
				node,
				text,
				matchNormalizer
			)
		end
	)
end

local function queryByAttribute(attribute: string, container: Instance, text: Matcher, options: MatcherOptions?)
	local els = queryAllByAttribute(attribute, container, text, options)
	if #els > 1 then
		error(
			getMultipleElementsFoundError(
				("Found multiple elements by [%s=%s]"):format(attribute, tostring(text)),
				container
			)
		)
	end
	return if els[1] then els[1] else nil
end

-- this accepts a query function and returns a function which throws an error
-- if more than one elements is returned, otherwise it returns the first
-- element or null
local function makeSingleQuery<Argument>(
	allQuery: QueryMethod<Argument, Array<Instance>>,
	getMultipleError: GetErrorFunction<Argument>
)
	return function(container: Instance, ...: Argument)
		local els = allQuery(container, ...)
		if #els > 1 then
			local elementStrings = Array.join(
				Array.map(els, function(element)
					return getElementError(nil, element).message
				end),
				"\n\n"
			)
			error(getMultipleElementsFoundError(
				([[%s

Here are the matching elements:

%s]]):format(tostring(getMultipleError(container, ...)), elementStrings),
				container
			))
		end
		return if els[1] then els[1] else nil
	end
end

local function getSuggestionError(suggestion: { toString: (self: any) -> string }, container: Instance)
	return getConfig().getElementError(
		([[A better query is available, try this:
%s
]]):format(suggestion:toString()),
		container
	)
end

-- this accepts a query function and returns a function which throws an error
-- if an empty list of elements is returned
local function makeGetAllQuery<Argument>(
	allQuery: (container: Instance, ...Argument) -> Array<Instance>,
	getMissingError: GetErrorFunction<Argument>
)
	return function(container: Instance, ...: Argument)
		local els = allQuery(container, ...)
		if #els == 0 then
			error(getConfig().getElementError(getMissingError(container, ...), container))
		end
		return els
	end :: typeof(allQuery)
end

-- this accepts a getter query function and returns a function which calls
-- waitFor and passing a function which invokes the getter.
local function makeFindQuery<QueryFor>(getter: (container: Instance, text: Matcher, options: MatcherOptions) -> QueryFor)
	return function(container: Instance, text: Matcher, options: MatcherOptions, waitForOptions: WaitForOptions)
		return waitFor(function()
			return getter(container, text, options)
		end, Object.assign({}, { container = container }, waitForOptions))
	end
end

local function wrapSingleQueryWithSuggestion<Argument>(
	query: (container: Instance, ...any) -> Instance?,
	queryAllByName: string,
	variant: Variant
)
	return function(container: Instance, ...: Argument)
		local args = { ... }
		local element = query(container, ...)
		local ref = (if args[#args] == nil then {} else args[#args]) :: WithSuggest
		local suggest = if typeof(ref) ~= "table" or ref.suggest == nil
			then getConfig().throwSuggestions
			else ref.suggest

		if element and suggest then
			local suggestion = getSuggestedQuery(element, variant)
			if suggestion ~= nil and not String.endsWith(queryAllByName, suggestion.queryName :: string) then
				error(getSuggestionError(suggestion, container))
			end
		end

		return element
	end :: typeof(query)
end

local function wrapAllByQueryWithSuggestion<
	-- We actually want `Arguments extends [args: ...unknown[], options?: Options]`
	-- But that's not supported by TS so we have to `@ts-expect-error` every callsite
	Argument
>(
	query: (
		container: Instance,
		...any
	) -> Array<Instance>,
	queryAllByName: string,
	variant: Variant
)
	return function(container: Instance, ...: Argument)
		local args = { ... }
		local els = query(container, ...)

		local ref = (if args[#args] == nil then {} else args[#args]) :: WithSuggest
		local suggest = if ref.suggest == nil then getConfig().throwSuggestions else ref.suggest

		if #els ~= 0 and suggest then
			-- get a unique list of all suggestion messages.  We are only going to make a suggestion if
			-- all the suggestions are the same
			local uniqueSuggestionMessages = Array.concat(
				{},
				Array.from(Set.new(Array.map(els, function(element)
					local suggestion = getSuggestedQuery(element, variant)
					return (if suggestion ~= nil then suggestion.toString() else suggestion) :: string
				end)))
			) :: Array<any>
			if
				-- only want to suggest if all the els have the same suggestion.
				#uniqueSuggestionMessages == 1
				and not String.endsWith(queryAllByName, (getSuggestedQuery(els[1], variant) :: any).queryName :: string)
			then
				error(getSuggestionError(uniqueSuggestionMessages[1], container))
			end
		end
		return els
	end :: typeof(query)
end

-- TODO: This deviates from the published declarations
-- However, the implementation always required a dyadic (after `container`) not variadic `queryAllBy` considering the implementation of `makeFindQuery`
-- This is at least statically true and can be verified by accepting `QueryMethod<Arguments, HTMLElement[]>`
local function buildQueries(
	queryAllBy: QueryMethod<{ matcher: Matcher, options: MatcherOptions }, Array<Instance>>,
	getMultipleError: GetErrorFunction<{ matcher: Matcher, options: MatcherOptions }>,
	getMissingError: GetErrorFunction<{ matcher: Matcher, options: MatcherOptions }>
)
	local queryBy = wrapSingleQueryWithSuggestion(
		makeSingleQuery(queryAllBy, getMultipleError),
		debug.info(queryAllBy, "n"),
		"query"
	)
	local getAllBy = makeGetAllQuery(queryAllBy, getMissingError)

	local getBy = makeSingleQuery(getAllBy, getMultipleError)
	local getByWithSuggestions = wrapSingleQueryWithSuggestion(getBy, debug.info(queryAllBy, "n"), "get")
	local getAllWithSuggestions =
		wrapAllByQueryWithSuggestion(getAllBy, debug.info(queryAllBy, "n"):gsub("query", "get"), "getAll")

	local findAllBy = makeFindQuery(wrapAllByQueryWithSuggestion(getAllBy, debug.info(queryAllBy, "n"), "findAll"))
	local findBy = makeFindQuery(wrapSingleQueryWithSuggestion(getBy, debug.info(queryAllBy, "n"), "find"))

	-- ROBLOX deviation START: return list instead of an array
	return queryBy, getAllWithSuggestions, getByWithSuggestions, findAllBy, findBy
	-- ROBLOX deviation END
end

exports.getElementError = getElementError
exports.wrapAllByQueryWithSuggestion = wrapAllByQueryWithSuggestion
exports.wrapSingleQueryWithSuggestion = wrapSingleQueryWithSuggestion
exports.getMultipleElementsFoundError = getMultipleElementsFoundError
exports.queryAllByAttribute = queryAllByAttribute
exports.queryByAttribute = queryByAttribute
exports.makeSingleQuery = makeSingleQuery
exports.makeGetAllQuery = makeGetAllQuery
exports.makeFindQuery = makeFindQuery
exports.buildQueries = buildQueries

return exports
