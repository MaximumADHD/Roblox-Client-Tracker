-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/__tests__/auto-cleanup-skip.js
local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll

local document = require(Packages.DomTestingLibrary).document

local React = require(Packages.React)
local render, cleanup
beforeAll(function()
	_G.RTL_SKIP_AUTO_CLEANUP = "true"
	local rtl = require(script.Parent.Parent)
	render = rtl.render
	-- ROBLOX deviation START: force cleanup
	cleanup = rtl.cleanup
	-- ROBLOX deviation END
end)

-- ROBLOX deviation START: restore so it cleans up after this test
afterAll(function()
	_G.RTL_SKIP_AUTO_CLEANUP = nil
	cleanup()
end)
-- ROBLOX deviation END

-- This one verifies that if RTL_SKIP_AUTO_CLEANUP is set
-- then we DON'T auto-wire up the afterEach for folks
test("first", function()
	render(React.createElement("TextLabel", { Text = "hi" }))
end)

test("second", function()
	expect(document:GetChildren()[1]:GetChildren()[1]:IsA("TextLabel")).toBe(true)
	expect(document:GetChildren()[1]:GetChildren()[1].Text).toBe("hi")
end)
return {}
