local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local ReactTestingUtils = require(Packages.Dev.ReactTestingUtils)
local useDialogIconProps = require(script.Parent.useDialogIconProps)

local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local stageHook = ReactTestingUtils.stageHook

local MOCK_TOKENS = {
	Color = {
		System = {
			Warning = {
				Color3 = Color3.new(),
				Transparency = 0,
			},
			Alert = {
				Color3 = Color3.new(),
				Transparency = 0,
			},
		},
	},
}

describe("useDialogIconProps", function()
	local stage

	beforeEach(function()
		stage = stageHook(useDialogIconProps)
	end)

	afterEach(function()
		stage.unmount()
	end)

	it("should return nil for dialogType = 'Default'", function()
		local iconProps = stage.render(MOCK_TOKENS :: any, "Default")
		expect(iconProps).toBeNil()
	end)

	it("should return a ColorStyle for dialogType = 'Warning'", function()
		local iconProps = stage.render(MOCK_TOKENS :: any, "Warning")
		expect(iconProps).toEqual({
			icon = expect.any("string"),
			color = {
				Color3 = expect.any("Color3"),
				Transparency = expect.any("number"),
			},
		})
	end)

	it("should return a ColorStyle for dialogType = 'Critical'", function()
		local iconProps = stage.render(MOCK_TOKENS :: any, "Critical")
		expect(iconProps).toEqual({
			icon = expect.any("string"),
			color = {
				Color3 = expect.any("Color3"),
				Transparency = expect.any("number"),
			},
		})
	end)
end)
