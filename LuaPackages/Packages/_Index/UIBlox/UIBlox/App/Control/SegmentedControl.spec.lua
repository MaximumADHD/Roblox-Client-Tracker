local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

local SegmentedControl = require(script.Parent.SegmentedControl)

local DEFAULT_REQUIRED_PROPS = {
	tabs = {
		{
			onActivated = function(tab) print(tab.tabName) end,
			tabName = "a",
		},{
			onActivated = function(tab) print(tab.tabName) end,
			tabName = "b",
			isDisabled = true
		},{
			onActivated = function(tab) print(tab.tabName) end,
			tabName = "c",
		},{
			onActivated = function(tab) print(tab.tabName) end,
			tabName = "d",
		}
	},
	width = UDim.new(0,10000),
}

return function()
	describe("lifecycle", function()
		it("should mount and unmount SegmentedControl without issue", function()
			local tree = mockStyleComponent(
				Roact.createElement(SegmentedControl, DEFAULT_REQUIRED_PROPS)
			)
			local handle = Roact.mount(tree)
			Roact.unmount(handle)
		end)
	end)
end