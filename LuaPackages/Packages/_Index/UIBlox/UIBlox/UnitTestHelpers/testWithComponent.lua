--[[
	Run a test with a specific component.

	Usage:

		testWithComponent(
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

local function TestApp(props)
	return Roact.createElement("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, props[Roact.Children])
end

local function testWithComponent(component, callback)
	local app = Roact.createElement(TestApp, nil, {
		TestComponent = component,
	})

	local instanceName = ("TestApp-%s"):format(HttpService:GenerateGUID(false))
	local handle = Roact.mount(app, CoreGui, instanceName)
	local path = ("game.CoreGui.%s.TestComponent"):format(instanceName)

	local success, result = pcall(function()
		callback(path)
	end)

	if not success then
		print("Test instance tree:")
		dumpInstanceTree(CoreGui:FindFirstChild(instanceName))
		print("Test instance tree end\n")
	end

	Roact.unmount(handle)

	if not success then
		error(result)
	end
end

return testWithComponent
