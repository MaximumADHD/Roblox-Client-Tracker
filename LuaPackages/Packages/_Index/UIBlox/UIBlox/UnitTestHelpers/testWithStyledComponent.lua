--[[
	Run a test with a specific component.

	Usage:

		testWithStyledComponent(
			Roact.createElement(Button, {
				...
			}),
			function(path)
				local button = Rhodium.Element.new(path)
				expect(button:getRbxInstance()).toBeDefined()

				button:click()
				wait()
				expect(button:getAttribute("Text")).toEqual("1")
			end
		)
]]

local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")

local UnitTestHelpers = script.Parent
local UIBlox = UnitTestHelpers.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local dumpInstanceTree = require(UnitTestHelpers.dumpInstanceTree)

local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

local function testWithStyledComponent(component, props, callback)
	local app = Roact.createElement("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		StyleProvider = mockStyleComponent({
			TestComponent = Roact.createElement(component, props),
		}),
	})

	local name = ("TestApp-%s"):format(HttpService:GenerateGUID())
	local handle = Roact.mount(app, CoreGui, name)
	local path = ("game.CoreGui.%s.StyleProvider.TestComponent"):format(name)

	local success, result = pcall(function()
		callback(path)
	end)

	if not success then
		print("Test instance tree:")
		dumpInstanceTree(CoreGui:FindFirstChild(name))
		print("Test instance tree end\n")
	end

	Roact.unmount(handle)

	if not success then
		error(result)
	end
end

return testWithStyledComponent
