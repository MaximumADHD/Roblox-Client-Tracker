local root = script.Parent
local Packages = root.Parent

local HttpServiceMock = require(Packages.HttpServiceMock)

local Expect = require(Packages.Expect)
local JestDiff = require(Packages.JestDiff)

type Request = HttpServiceMock.Request
type Response = HttpServiceMock.Response

local function returnTrue()
	return true
end

local function noColor(str: string): string
	return str
end

export type Matcher = {
	matches: (self: Matcher, request: Request) -> { success: boolean, reason: string? },
	name: string,
	_filter: (Request) -> (boolean, string?),
}
type MatcherStatic = {
	fromFilter: (filter: (Request) -> (boolean, string?)) -> Matcher,
	all: () -> Matcher,
	matching: ({ [string]: any }) -> Matcher,
}

local Matcher: Matcher & MatcherStatic = {} :: any
local MatcherMetatable = { __index = Matcher }

function Matcher.fromFilter(filter: (Request) -> (boolean, string?)): Matcher
	return setmetatable({
		name = "Anonymous matcher",
		_filter = filter,
	}, MatcherMetatable) :: any
end

function Matcher.all(): Matcher
	return Matcher.fromFilter(returnTrue)
end

function Matcher.matching(expectProperties): Matcher
	local asymmetricMatcher = Expect.objectContaining(expectProperties)
	function asymmetricMatcher:getExpectedType()
		return "table"
	end

	return Matcher.fromFilter(function(request)
		local success = asymmetricMatcher:asymmetricMatch(request)

		if success then
			return true
		end

		return false,
			JestDiff.diff(asymmetricMatcher, request, {
				aAnnotation = "Expected a request that matches",
				aColor = noColor,
				aIndicator = "-",
				bAnnotation = "Received request",
				bColor = noColor,
				bIndicator = "+",
				changeColor = noColor,
				changeLineTrailingSpaceColor = noColor,
				commonColor = noColor,
				commonLineTrailingSpaceColor = noColor,
				patchColor = noColor,
			})
	end)
end

function Matcher:matches(request: Request): { success: boolean, reason: string? }
	local success, reason = self._filter(request)
	if success then
		return { success = success }
	else
		return { success = success, reason = reason }
	end
end

return Matcher
