local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local Signal = require(script.Parent.Parent.Parent.Signal)

local NetworkView = require(script.Parent.NetworkView)

local dummmyNetworkData = {
	getCurrentData = function()
		return {
			summaryTable = {},
			summaryCount = 0,
			entryList = nil,
		}
	end,
	Signal = function()
		return Signal.new()
	end,
}

it("should create and destroy without errors", function()
	local element = Roact.createElement(NetworkView, {
		targetNetworkData = dummmyNetworkData,
		size = UDim2.new(),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
