local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store

local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)

local DataProvider = require(script.Parent.Parent.DataProvider)
local MemoryViewEntry = require(script.Parent.MemoryViewEntry)

it("should create and destroy without errors", function()
	local store = Store.new(function()
		return {
			MainView = {
				isDeveloperView = true,
			},
		}
	end)

	local dummyScriptEntry = {
		time = 0,
		data = { 0, 0 },
	}

	local dummyDataSet = CircularBuffer.new(1)
	dummyDataSet:push_back(dummyScriptEntry)

	local formatValueStr = function()
		return ""
	end

	local dummyEntry = {
		name = "",
		dataStats = {
			dataSet = dummyDataSet,
		},
	}

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		DataProvider = Roact.createElement(DataProvider, {}, {
			MemoryViewEntry = Roact.createElement(MemoryViewEntry, {
				depth = 0,
				entry = dummyEntry,
				formatValueStr = formatValueStr,
			}),
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
