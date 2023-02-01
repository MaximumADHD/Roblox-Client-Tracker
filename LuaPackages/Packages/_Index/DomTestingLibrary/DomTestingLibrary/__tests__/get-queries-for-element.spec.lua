-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/get-queries-for-element.js
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local document = require(script.Parent.Parent.jsHelpers.document)

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local jest = JestGlobals.jest

local getQueriesForElement = require(script.Parent.Parent["get-queries-for-element"]).getQueriesForElement
local queries = require(script.Parent.Parent.queries)
test("uses default queries", function()
	local container = Instance.new("Frame")
	container.Parent = document
	local boundQueries = getQueriesForElement(container)
	-- ROBLOX deviation START: sorting keys, to ensure items match
	expect(Array.sort(Object.keys(boundQueries))).toEqual(Array.sort(Object.keys(queries)))
	-- ROBLOX deviation END
end)
test("accepts custom queries", function()
	local container = Instance.new("Frame")
	container.Parent = document
	local customQuery = jest.fn()
	local boundQueries = getQueriesForElement(container, Object.assign({}, queries, { customQuery = customQuery }))
	expect(boundQueries.customQuery).toBeDefined()
end)
test("binds functions to container", function()
	local container = Instance.new("Frame")
	container.Parent = document
	local mock = jest.fn()
	local function customQuery(element)
		return mock(element)
	end
	local boundQueries = getQueriesForElement(container, { customQuery = customQuery })
	boundQueries.customQuery()
	expect(mock).toHaveBeenCalledWith(container)
end)

return {}
