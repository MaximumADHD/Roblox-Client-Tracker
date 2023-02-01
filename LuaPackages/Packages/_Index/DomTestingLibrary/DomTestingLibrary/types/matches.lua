-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/types/matches.d.ts
local Packages = script.Parent.Parent.Parent

local RegExp = require(Packages.LuauRegExp)
type RegExp = RegExp.RegExp

local exports = {}

-- ROBLOX deviation START: Package not available
-- type ARIARole = require(Packages["aria-query"]).ARIARole
type ARIARole = { [string]: any }
-- ROBLOX deviation END

export type MatcherFunction = (content: string, element: Instance?) -> boolean
export type Matcher = MatcherFunction | RegExp | number | string -- Get autocomplete for ARIARole union types, while still supporting another string

-- Get autocomplete for ARIARole union types, while still supporting another string
-- Ref: https://github.com/microsoft/TypeScript/issues/29729#issuecomment-505826972
export type ByRoleMatcher = ARIARole | MatcherFunction | {}

export type NormalizerFn = (text: string) -> string

export type NormalizerOptions = DefaultNormalizerOptions & { normalizer: NormalizerFn? }

export type MatcherOptions = {
	exact: boolean?,
	--[[* Use normalizer with getDefaultNormalizer instead ]]
	trim: boolean?,
	--[[* Use normalizer with getDefaultNormalizer instead ]]
	collapseWhitespace: boolean?,
	normalizer: NormalizerFn?,
	--[[* suppress suggestions for a specific query ]]
	suggest: boolean?,
}

export type Match = (textToMatch: string, node: Instance | nil, matcher: Matcher, options: MatcherOptions?) -> boolean

export type DefaultNormalizerOptions = { trim: boolean?, collapseWhitespace: boolean? }

export type getDefaultNormalizer = (options: DefaultNormalizerOptions?) -> NormalizerFn

-- N.B. Don't expose fuzzyMatches + matches here: they're not public API

return exports
