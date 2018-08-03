return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local MemoryViewEntry = require(script.Parent.MemoryViewEntry)

	it("should create and destroy without errors", function()
		local dummyScriptEntry = {
			time = 0,
			data = {0, 0},
		}

		local dummyDataSet = CircularBuffer.new(1)
		dummyDataSet:push_back(dummyScriptEntry)

		local formatValueStr = function()
			return ""
		end

		local dummyEntry  = {
			name = "",
			dataStats = {
				dataSet = dummyDataSet,
			}
		}

		local element = Roact.createElement(DataProvider, {}, {
			MemoryViewEntry = Roact.createElement(MemoryViewEntry, {
				depth = 0,
				entry = dummyEntry,
				formatValueStr = formatValueStr,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end