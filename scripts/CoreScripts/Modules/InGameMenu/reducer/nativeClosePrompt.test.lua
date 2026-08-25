local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local InGameMenu = script.Parent.Parent
local OpenNativeClosePrompt = require(InGameMenu.Actions.OpenNativeClosePrompt)
local CloseNativeClosePrompt = require(InGameMenu.Actions.CloseNativeClosePrompt)
local SetMenuIconTooltipOpen = require(InGameMenu.Actions.SetMenuIconTooltipOpen)
local nativeClosePrompt = require(script.Parent.nativeClosePrompt)

it("should be closed by default", function()
	local defaultState = nativeClosePrompt(nil, {})
	expect(defaultState.closingApp).toBe(false)
end)

describe("OpenNativeClosePrompt", function()
	it("should set the popup dialog open", function()
		local oldState = nativeClosePrompt(nil, {})
		local newState = nativeClosePrompt(oldState, OpenNativeClosePrompt())
		expect(oldState).never.toBe(newState)
		expect(newState.closingApp).toBe(true)
	end)
end)

describe("CloseNativeClosePrompt", function()
	it("should set the popup dialog closed", function()
		local oldState = nativeClosePrompt(nil, {})
		oldState = nativeClosePrompt(oldState, OpenNativeClosePrompt())
		local newState = nativeClosePrompt(oldState, CloseNativeClosePrompt())
		expect(oldState).never.toBe(newState)
		expect(newState.closingApp).toBe(false)
	end)
end)

describe("SetMenuIconTooltip", function()
	it("should set the tooltip open", function()
		local oldState = nativeClosePrompt(nil, {})
		local newState = nativeClosePrompt(oldState, SetMenuIconTooltipOpen(true))
		expect(oldState).never.toBe(newState)
		expect(newState.menuIconTooltipOpen).toBe(true)
	end)

	it("should set the tooltip closed", function()
		local oldState = nativeClosePrompt(nil, {})
		local newState = nativeClosePrompt(oldState, SetMenuIconTooltipOpen(false))
		expect(oldState).never.toBe(newState)
		expect(newState.menuIconTooltipOpen).toBe(false)
	end)
end)
