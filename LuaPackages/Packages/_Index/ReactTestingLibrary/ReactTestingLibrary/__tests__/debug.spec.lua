-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/__tests__/debug.js
local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local afterAll = JestGlobals.afterAll
local jest = JestGlobals.jest

local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console

local React = require(Packages.React)
local ParentModule = require(script.Parent.Parent)
local render = ParentModule.render
local screen = ParentModule.screen

local originalConsoleLog = console.log
beforeEach(function()
	-- ROBLOX deviation START: replace sypOn
	console.log = jest.fn(function() end)
	--ROBLOX deviation END
end)
afterEach(function()
	(console.log :: any):mockRestore()
end)

-- ROBLOX deviation START: restore console log
afterAll(function()
	console.log = originalConsoleLog
end)
-- ROBLOX deviation END

test("debug pretty prints the container", function()
	local function HelloWorld()
		return React.createElement("TextLabel", { Text = "Hello World" })
	end
	local debug_ = render(React.createElement(HelloWorld, nil)).debug
	debug_()
	expect(console.log).toHaveBeenCalledTimes(1)
	expect(console.log).toHaveBeenCalledWith(expect.stringContaining("Hello World"))
end)

test("debug pretty prints multiple containers", function()
	local function HelloWorld()
		local el1 = React.createElement("TextLabel", { [React.Tag] = "data-testid=testId", Text = "Hello World" }, nil)
		local el2 = React.createElement("TextLabel", { [React.Tag] = "data-testid=testId", Text = "Hello World" }, nil)

		return React.createElement(React.Fragment, nil, el1, el2)
	end
	local debug_ = render(React.createElement(HelloWorld, nil)).debug
	local multipleElements = screen.getAllByTestId("testId")
	debug_(multipleElements)

	expect(console.log).toHaveBeenCalledTimes(2)
	expect(console.log).toHaveBeenCalledWith(expect.stringContaining("Hello World"))
end)

test("allows same arguments as prettyDOM", function()
	local function HelloWorld()
		return React.createElement("TextLabel", { Text = "Hello World" })
	end
	local debug_, container
	do
		local ref = render(React.createElement(HelloWorld, nil))
		debug_, container = ref.debug, ref.container
	end
	debug_(container, 6, { highlight = false })

	expect(console.log).toHaveBeenCalledTimes(1)
	expect((console.log :: any).mock.calls[1]).toEqual({ "Folder..." })
end)
--[[
eslint
  no-console: "off",
  testing-library/no-debug: "off",
]]
return {}
