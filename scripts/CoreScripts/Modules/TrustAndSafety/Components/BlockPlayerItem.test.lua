local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Rodux = require(CorePackages.Packages.Rodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local AppStyleProvider = UIBlox.App.Style.AppStyleProvider

local BlockPlayerItem = require(script.Parent.BlockPlayerItem)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

it("should create and destroy without errors", function()
	local element = Roact.createElement(AppStyleProvider, {}, {
		BlockPlayerItem = Roact.createElement(BlockPlayerItem, {
			size = UDim2.new(0, 492, 0, 56),
			text = "test",
			icon = "fakeicon",
			iconSize = UDim2.new(0, 24, 0, 24),
			description = "test description",
			isCheckBoxSelected = true,
			onCheckBoxActivated = function(selected) end,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
