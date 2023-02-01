-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/__tests__/multi-base.js
local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local beforeAll = JestGlobals.beforeAll

local afterAll = JestGlobals.afterAll

local document = require(Packages.DomTestingLibrary).document

local React = require(Packages.React)
local render = require(script.Parent.Parent).render

-- these are created once per test suite and reused for each case
local treeA, treeB
beforeAll(function()
	treeA = Instance.new("Frame")
	treeB = Instance.new("Frame")
	treeA.Parent = document
	treeB.Parent = document
end)

afterAll(function()
	treeA.Parent = nil
	treeB.Parent = nil
end)

test("baseElement isolates trees from one another", function()
	local getByTextInA =
		render(React.createElement("TextLabel", { Text = "Jekyll" }), { baseElement = treeA }).getByText
	local getByTextInB = render(React.createElement("TextLabel", { Text = "Hyde" }), { baseElement = treeB }).getByText

	expect(function()
		return getByTextInA("Jekyll")
	end).never.toThrow("Unable to find an element with the text: Jekyll.")

	expect(function()
		return getByTextInB("Jekyll")
	end).toThrow("Unable to find an element with the text: Jekyll.")

	expect(function()
		return getByTextInA("Hyde")
	end).toThrow("Unable to find an element with the text: Hyde.")

	expect(function()
		return getByTextInB("Hyde")
	end).never.toThrow("Unable to find an element with the text: Hyde.")
end)
-- https://github.com/testing-library/eslint-plugin-testing-library/issues/188
--[[
		eslint
  		testing-library/prefer-screen-queries: "off",
	]]
return {}
