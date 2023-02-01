-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/matches.js
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console

local RegExp = require(Packages.LuauRegExp)

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local jest = JestGlobals.jest

local matchesModule = require(script.Parent.Parent.matches)
local fuzzyMatches = matchesModule.fuzzyMatches
local matches = matchesModule.matches

-- unit its for text match utils

local node = nil
local function normalizer(str)
	return str
end
test("matchers accept strings", function()
	expect(matches("ABC", node, "ABC", normalizer)).toBe(true)
	expect(fuzzyMatches("ABC", node, "ABC", normalizer)).toBe(true)
end)
test("matchers accept regex", function()
	expect(matches("ABC", node, RegExp("ABC"), normalizer)).toBe(true)
	expect(fuzzyMatches("ABC", node, RegExp("ABC"), normalizer)).toBe(true)
end)

-- https://stackoverflow.com/questions/1520800/why-does-a-regexp-with-global-flag-give-wrong-results
-- ROBLOX FIXME: global flag not available. Error: invalid regular expression flag g
test.skip("a regex with the global flag consistently (re-)finds a match", function()
	local regex = RegExp("ABC", "g")
	-- ROBLOX deviation START: workaround for jest.spyOn
	local originalFn = console.warn
	console.warn = jest.fn().mockImplementation()
	local spy = console.warn
	-- ROBLOX deviation END: workaround for jest.spyOn
	expect(matches("ABC", node, regex, normalizer)).toBe(true)
	expect(fuzzyMatches("ABC", node, regex, normalizer)).toBe(true)
	expect(spy).toBeCalledTimes(2)
	expect(spy).toHaveBeenCalledWith(
		"To match all elements we had to reset the lastIndex of the RegExp because the global flag is enabled. We encourage to remove the global flag from the RegExp."
	)
	-- ROBLOX deviation START: workaround for jest.spyOn
	console.warn = originalFn
	-- ROBLOX deviation END
end)
test("matchers accept functions", function()
	expect(matches("ABC", node, function(text)
		return text == "ABC"
	end, normalizer)).toBe(true)
	expect(fuzzyMatches("ABC", node, function(text)
		return text == "ABC"
	end, normalizer)).toBe(true)
end)
test("matchers return false if text to match is not a string", function()
	expect(matches(nil, node, "ABC", normalizer)).toBe(false)
	expect(fuzzyMatches(nil, node, "ABC", normalizer)).toBe(false)
end)
test("matchers throw on invalid matcher inputs", function()
	expect(function()
		return matches("ABC", node, nil, normalizer)
	end).toThrowError(
		-- ROBLOX deviation START: error message should match nil instead of null/undefined
		"It looks like nil was passed instead of a matcher. Did you do something like getByText(nil)?"
		-- ROBLOX deviation END
	)
	expect(function()
		return fuzzyMatches("ABC", node, nil, normalizer)
	end).toThrowError(
		-- ROBLOX deviation START: error message should match nil instead of null/undefined
		"It looks like nil was passed instead of a matcher. Did you do something like getByText(nil)?"
		-- ROBLOX deviation END
	)
end)
return {}
