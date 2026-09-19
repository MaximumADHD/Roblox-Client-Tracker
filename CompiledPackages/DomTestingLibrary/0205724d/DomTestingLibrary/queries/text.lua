-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/queries/text.ts
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local querySelectorsModule = require(script.Parent.Parent.jsHelpers.querySelectors)
local matchesInstance = querySelectorsModule.matches
local querySelectorAll = querySelectorsModule.querySelectorAll

local exports = {}

local wrapAllByQueryWithSuggestion = require(script.Parent.Parent["query-helpers"]).wrapAllByQueryWithSuggestion
local checkContainerType = require(script.Parent.Parent.helpers).checkContainerType
local typesModule = require(script.Parent.Parent.types)
type AllByText<T = Instance> = typesModule.AllByText<T>
type GetErrorFunction<Argument = any> = typesModule.GetErrorFunction<Argument>
type SelectorMatcherOptions = typesModule.SelectorMatcherOptions
type Matcher = typesModule.Matcher
local all_utilsModule = require(script.Parent["all-utils"])
local fuzzyMatches = all_utilsModule.fuzzyMatches
local matches = all_utilsModule.matches
local makeNormalizer = all_utilsModule.makeNormalizer
local getNodeText = all_utilsModule.getNodeText
local buildQueries = all_utilsModule.buildQueries
local getConfig = all_utilsModule.getConfig

local queryAllByText: AllByText
function queryAllByText(container, text, ref_)
	local ref = (if ref_ == nil then {} else ref_) :: SelectorMatcherOptions
	local selector, exact, collapseWhitespace, trim, ignore, normalizer =
		if ref.selector == nil then { "." } else ref.selector,
		if ref.exact == nil then true else ref.exact,
		ref.collapseWhitespace,
		ref.trim,
		if ref.ignore == nil then getConfig().defaultIgnore else ref.ignore,
		ref.normalizer

	checkContainerType(container)
	local matcher = if exact then matches else fuzzyMatches
	local matchNormalizer = makeNormalizer({
		collapseWhitespace = collapseWhitespace,
		trim = trim,
		normalizer = normalizer,
	})
	local baseArray: Array<Instance> = {}
	-- ROBLOX deviation START: matching to Instance.ClassName using pattern
	if matchesInstance(container, selector) then
		baseArray = { container }
	end
	-- ROBLOX deviation END

	return Array.filter(
		Array.filter(
			Array.concat({}, baseArray, querySelectorAll(container, selector)),
			-- TODO: `matches` according lib.dom.d.ts can get only `string` but according our code it can handle also boolean :)
			function(node)
				-- ROBLOX deviation START: ignore is an Array in Lua version
				return not (#ignore > 0) or not matchesInstance(node, ignore)
				-- ROBLOX deviation END
			end
		),
		function(node)
			return matcher(getNodeText(node), node, text, matchNormalizer)
		end
	)
end

local getMultipleError: GetErrorFunction<unknown>
function getMultipleError(c, text)
	return ("Found multiple elements with the text: %s"):format(tostring(text))
end
local getMissingError: GetErrorFunction
function getMissingError(c, text: Matcher, options_: SelectorMatcherOptions?)
	local options = (if options_ == nil then {} else options_) :: SelectorMatcherOptions
	local collapseWhitespace, trim, normalizer = options.collapseWhitespace, options.trim, options.normalizer
	local matchNormalizer = makeNormalizer({
		collapseWhitespace = collapseWhitespace,
		trim = trim,
		normalizer = normalizer,
	})
	local normalizedText = matchNormalizer(tostring(text))
	local isNormalizedDifferent = normalizedText ~= tostring(text)
	return ("Unable to find an element with the text: %s. This could be because the text is broken up by multiple elements. In this case, you can provide a function for your text matcher to make your matcher more flexible."):format(
		tostring(
			if isNormalizedDifferent then ("%s (normalized from '%s')"):format(normalizedText, tostring(text)) else text
		)
	)
end
local queryAllByTextWithSuggestions =
	wrapAllByQueryWithSuggestion(queryAllByText, debug.info(queryAllByText, "n"), "queryAll")

-- ROBLOX deviation START: buildQueries returns a list
local queryByText, getAllByText, getByText, findAllByText, findByText =
	buildQueries(queryAllByText, getMultipleError, getMissingError)
-- ROBLOX deviation END

exports.queryByText = queryByText
exports.queryAllByText = queryAllByTextWithSuggestions
exports.getByText = getByText
exports.getAllByText = getAllByText
exports.findAllByText = findAllByText
exports.findByText = findByText
return exports
