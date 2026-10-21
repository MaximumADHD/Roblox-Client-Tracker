local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store

local ServerProfilerInterface = require(script.Parent.ServerProfilerInterface)

it("should create and destroy without errors", function()
	local store = Store.new(function()
		return {
			MicroProfiler = {
				lastFileOutputLocation = "",
			},
		}
	end)

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		ServerProfilerInterface = Roact.createElement(ServerProfilerInterface, {}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
