-- ROBLOX upstream: no upstream
local Packages = script.Parent.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local test = JestGlobals.test

local querySelectorsModule = require(script.Parent.Parent.querySelectors)
local querySelector = querySelectorsModule.querySelector
local querySelectorAll = querySelectorsModule.querySelectorAll

describe("querySelectorAll", function()
	test("gets all descendants when pattern is .", function()
		local div = Instance.new("Frame")
		local label1 = Instance.new("TextLabel")
		label1.Parent = div
		local button1 = Instance.new("TextButton")
		button1.Parent = div
		local label2 = Instance.new("TextLabel")
		label2.Parent = div
		local label3 = Instance.new("TextLabel")
		label3.Parent = div
		local elements = querySelectorAll(div, { "." })
		expect(#elements).toBe(4)
		expect(elements).toEqual({ label1, button1 :: any, label2, label3 })
	end)

	test("gets descendants matching array of patterns", function()
		local div = Instance.new("Frame")
		local label1 = Instance.new("TextLabel")
		label1.Parent = div
		local button1 = Instance.new("TextButton")
		button1.Parent = div
		local label2 = Instance.new("TextLabel")
		label2.Parent = div
		local label3 = Instance.new("TextLabel")
		label3.Parent = div
		expect(#querySelectorAll(div, { "TextLabel" })).toBe(3)
		expect(querySelectorAll(div, { "TextLabel" })).toEqual({ label1, label2, label3 })
		expect(#querySelectorAll(div, { "TextButton" })).toBe(1)
		expect(querySelectorAll(div, { "TextButton" })).toEqual({ button1 })
	end)
end)

describe("querySelector", function()
	test("gets first descendant when pattern is .", function()
		local div = Instance.new("Frame")
		local label1 = Instance.new("TextLabel")
		label1.Parent = div
		local button1 = Instance.new("TextButton")
		button1.Parent = div
		local label2 = Instance.new("TextLabel")
		label2.Parent = div
		local label3 = Instance.new("TextLabel")
		label3.Parent = div
		expect(querySelector(div, { "." })).toBe(label1)
	end)

	test("gets first descendant matching array of patterns", function()
		local div = Instance.new("Frame")
		local label1 = Instance.new("TextLabel")
		label1.Parent = div
		local button1 = Instance.new("TextButton")
		button1.Parent = div
		local label2 = Instance.new("TextLabel")
		label2.Parent = div
		local label3 = Instance.new("TextLabel")
		label3.Parent = div
		expect(querySelector(div, { "TextLabel" })).toBe(label1)
		expect(querySelector(div, { "TextButton" })).toBe(button1)
		expect(querySelector(div, { "TextLabel", "TextButton" })).toBe(label1)
		expect(querySelector(div, { "TextButton", "TextLabel" })).toBe(label1)
	end)
end)
return {}
