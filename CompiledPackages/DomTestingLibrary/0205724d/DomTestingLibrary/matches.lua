-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/matches.ts
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
local String = LuauPolyfill.String
local instanceOf = LuauPolyfill.instanceof
type Object = LuauPolyfill.Object

local RegExp = require(Packages.LuauRegExp)
type RegExp = RegExp.RegExp

local exports = {}

-- ROBLOX deviation START : predefine variables
local matchRegExp
-- ROBLOX deviation END

local typesModule = require(script.Parent.types)
type Matcher = typesModule.Matcher
type NormalizerFn = typesModule.NormalizerFn
type NormalizerOptions = typesModule.NormalizerOptions
type DefaultNormalizerOptions = typesModule.DefaultNormalizerOptions

local function assertNotNullOrUndefined<T>(
	matcher: T
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ asserts matcher is NonNullable<T> ]]
	if matcher == nil then
		error(Error.new(
			-- eslint-disable-next-line @typescript-eslint/restrict-template-expressions -- implicitly converting `T` to `string`
			("It looks like %s was passed instead of a matcher. Did you do something like getByText(%s)?"):format(
				tostring(matcher),
				tostring(matcher)
			)
		))
	end
	return true
end

local function fuzzyMatches(
	textToMatch: string | nil,
	node: Instance | nil,
	matcher: Matcher | nil,
	normalizer: NormalizerFn
)
	if typeof(textToMatch) ~= "string" then
		return false
	end
	assertNotNullOrUndefined(matcher)

	local normalizedText = normalizer(
		textToMatch :: string --[[ ROBLOX FIXME Luau: already checked it's not nil ]]
	)

	if typeof(matcher) == "string" or typeof(matcher) == "number" then
		return normalizedText:lower():find(tostring(matcher):lower()) ~= nil
	elseif typeof(matcher) == "function" then
		return matcher(normalizedText, node)
	else
		return matchRegExp(
			matcher :: RegExp, --[[ ROBLOX FIXME Luau: type should be known ]]
			normalizedText
		)
	end
end

local function matches(
	textToMatch: string | nil,
	node: Instance | nil,
	matcher: Matcher | nil,
	normalizer: NormalizerFn
)
	if typeof(textToMatch) ~= "string" then
		return false
	end

	assertNotNullOrUndefined(matcher)

	local normalizedText = normalizer(textToMatch :: string) --[[ ROBLOX FIXME Luau: already checked it's not nil ]]
	if
		-- ROBLOX deviation START: instanceof Function
		typeof(matcher) == "function"
		-- ROBLOX deviation END: instanceof Function
	then
		return matcher(normalizedText, node)
	elseif instanceOf(matcher, RegExp) then
		return matchRegExp(
			matcher :: RegExp, --[[ ROBLOX FIXME Luau: type should be known ]]
			normalizedText
		)
	else
		return normalizedText == tostring(matcher)
	end
end

local function getDefaultNormalizer(ref_: DefaultNormalizerOptions?): NormalizerFn
	local ref = (if ref_ == nil then {} else ref_) :: DefaultNormalizerOptions
	local trim, collapseWhitespace =
		if ref.trim == nil then true else ref.trim,
		if ref.collapseWhitespace == nil then true else ref.collapseWhitespace

	return function(text)
		local normalizedText = text
		normalizedText = if trim then String.trim(normalizedText) else normalizedText
		normalizedText = if collapseWhitespace then normalizedText:gsub("%s+", " ") else normalizedText
		return normalizedText
	end
end

--[[*
 * Constructs a normalizer to pass to functions in matches.js
 * @param {boolean|undefined} trim The user-specified value for `trim`, without
 * any defaulting having been applied
 * @param {boolean|undefined} collapseWhitespace The user-specified value for
 * `collapseWhitespace`, without any defaulting having been applied
 * @param {Function|undefined} normalizer The user-specified normalizer
 * @returns {Function} A normalizer
 ]]
local function makeNormalizer(ref: NormalizerOptions)
	local trim, collapseWhitespace, normalizer = ref.trim, ref.collapseWhitespace, ref.normalizer

	if not normalizer then
		-- No custom normalizer specified. Just use default.
		return getDefaultNormalizer({ trim = trim, collapseWhitespace = collapseWhitespace })
	end

	if trim ~= nil or collapseWhitespace ~= nil then
		-- They've also specified a value for trim or collapseWhitespace
		error(
			Error.new(
				"trim and collapseWhitespace are not supported with a normalizer. "
					.. "If you want to use the default trim and collapseWhitespace logic in your normalizer, "
					.. 'use "getDefaultNormalizer({trim, collapseWhitespace})" and compose that into your normalizer'
			)
		)
	end

	-- ROBLOX FIXME Luau: should know it's not nil (checked earlier)
	return normalizer :: NormalizerFn
end

function matchRegExp(matcher: RegExp, text: string)
	local match = matcher:test(text)
	-- ROBLOX deviation START: global flag not available. Property exists.
	-- if
	-- 	matcher.global and matcher.lastIndex ~= 1 -- ROBLOX deviation: index starts at 1
	-- then
	-- 	console.warn(
	-- 		"To match all elements we had to reset the lastIndex of the RegExp because the global flag is enabled. We encourage to remove the global flag from the RegExp."
	-- 	)
	-- 	matcher.lastIndex = 1
	-- end
	-- ROBLOX deviation END
	return match
end

exports.fuzzyMatches = fuzzyMatches
exports.matches = matches
exports.getDefaultNormalizer = getDefaultNormalizer
exports.makeNormalizer = makeNormalizer

return exports
