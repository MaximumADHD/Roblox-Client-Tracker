local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local useEffect = React.useEffect

local Framework = require(Packages.Framework)
local provideMockContext = Framework.TestHelpers.provideMockContext
local MockPlugin = Framework.TestHelpers.Instances.MockPlugin
local Plugin = Framework.ContextServices.Plugin

local useWidgets = require(script.Parent.useWidgets)
local useWidgetRef = require(script.Parent.useWidgetRef)

local URI = {
	DataModel = "Standalone",
	PluginType = "Standalone",
	PluginId = "Ribbon",
	Category = "Widgets",
	ItemId = "Home/UseWidgetRefTest",
} :: StudioUri

local function MockComponent()
	local widgets = useWidgets()
	local ref = useWidgetRef(URI)
	useEffect(function()
		-- Force flush immediately without delay
		widgets:flush()
		return function()
			widgets:flush()
		end
	end)
	return React.createElement("Frame", {
		ref = ref,
		Size = UDim2.new(0, 100, 0, 100),
		Position = UDim2.new(0, 0, 0, 0),
	})
end

describe("useWidgetRef", function()
	it("should mount and unmount without errors", function()
		local container = Instance.new("ScreenGui")
		local root = ReactRoblox.createRoot(container)
		local mockPlugin = MockPlugin.new()
		local widgets = mockPlugin:GetPluginComponent("Widgets")
		local registerFn = jest.spyOn(widgets, "RegisterAsync")
		local deregisterFn = jest.spyOn(widgets, "DeregisterAsync")
		ReactRoblox.act(function()
			root:render(provideMockContext(
				{
					Plugin.new(mockPlugin),
				},
				{
					Child = React.createElement(MockComponent),
				} :: any
			))
		end)
		expect(registerFn).toHaveBeenCalledTimes(1)
		expect(deregisterFn).toHaveBeenCalledTimes(0)

		ReactRoblox.act(function()
			root:unmount()
			container:Destroy()
		end)
		expect(registerFn).toHaveBeenCalledTimes(1)
		expect(deregisterFn).toHaveBeenCalledTimes(1)
	end)
end)
