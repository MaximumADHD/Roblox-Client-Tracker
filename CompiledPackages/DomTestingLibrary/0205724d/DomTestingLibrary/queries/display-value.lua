-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/queries/display-value.ts
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Object = LuauPolyfill.Object

local querySelectorAll = require(script.Parent.Parent.jsHelpers.querySelectors).querySelectorAll

local exports = {}

local wrapAllByQueryWithSuggestion = require(script.Parent.Parent["query-helpers"]).wrapAllByQueryWithSuggestion
local checkContainerType = require(script.Parent.Parent.helpers).checkContainerType
local typesModule = require(script.Parent.Parent.types)
type AllByBoundAttribute = typesModule.AllByBoundAttribute
type GetErrorFunction<Argument = any> = typesModule.GetErrorFunction<Argument>
type Matcher = typesModule.Matcher
type MatcherOptions = typesModule.MatcherOptions
local all_utilsModule = require(script.Parent["all-utils"])
local _getNodeText = all_utilsModule.getNodeText
local matches = all_utilsModule.matches
local fuzzyMatches = all_utilsModule.fuzzyMatches
local makeNormalizer = all_utilsModule.makeNormalizer
local buildQueries = all_utilsModule.buildQueries

local queryAllByDisplayValue: AllByBoundAttribute
function queryAllByDisplayValue(container, value, ref_)
	local ref = (if ref_ == nil then {} else ref_) :: Object

	local exact, collapseWhitespace, trim, normalizer =
		if ref.exact == nil then true else ref.exact, ref.collapseWhitespace, ref.trim, ref.normalizer
	checkContainerType(container)
	local matcher = if exact then matches else fuzzyMatches
	local matchNormalizer = makeNormalizer({
		collapseWhitespace = collapseWhitespace,
		trim = trim,
		normalizer = normalizer,
	})
	return Array.filter(querySelectorAll(container, { "TextBox" }), function(node)
		-- ROBLOX deviation: only Textbox is available
		-- if node.tagName == "SELECT" then
		-- 	local selectedOptions = Array.filter(
		-- 		Array.from((node :: HTMLSelectElement).options),
		-- 		function(option)
		-- 			return option.selected
		-- 		end
		-- 	) --[[ ROBLOX CHECK: check if 'Array.from((node as HTMLSelectElement).options)' is an Array ]]
		-- 	return Array.some(selectedOptions, function(optionNode)
		-- 		return matcher(getNodeText(optionNode), optionNode, value, matchNormalizer)
		-- 	end) --[[ ROBLOX CHECK: check if 'selectedOptions' is an Array ]]
		-- else
		return matcher((node :: TextBox).Text, node, value, matchNormalizer)
		-- end
		-- ROBLOX deviation end
	end)
end

local getMultipleError: GetErrorFunction<unknown>
function getMultipleError(c, value)
	return ("Found multiple elements with the display value: %s."):format(tostring(value))
end

local getMissingError: GetErrorFunction<unknown>
function getMissingError(c, value)
	return ("Unable to find an element with the display value: %s."):format(tostring(value))
end

local queryAllByDisplayValueWithSuggestions =
	wrapAllByQueryWithSuggestion(queryAllByDisplayValue, debug.info(queryAllByDisplayValue, "n"), "queryAll")
-- ROBLOX deviation START: buildQueries returns a list
local queryByDisplayValue, getAllByDisplayValue, getByDisplayValue, findAllByDisplayValue, findByDisplayValue =
	buildQueries(queryAllByDisplayValue, getMultipleError, getMissingError)
--ROBLOX deviation END
exports.queryByDisplayValue = queryByDisplayValue
exports.queryAllByDisplayValue = queryAllByDisplayValueWithSuggestions
exports.getByDisplayValue = getByDisplayValue
exports.getAllByDisplayValue = getAllByDisplayValue
exports.findAllByDisplayValue = findAllByDisplayValue
exports.findByDisplayValue = findByDisplayValue

return exports
