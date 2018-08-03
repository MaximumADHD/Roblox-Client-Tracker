return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local NetworkChartEntry = require(script.Parent.NetworkChartEntry)

	it("should create and destroy without errors", function()
		local dummyEntry = {
			Num = 0,
			Method = "",
			Status = "",
			Time = 0,
			RequestType = "",
			Url = "",
			Reponse = "",
		}
		local dummyCellSizes = {
			UDim2.new(),
			UDim2.new(),
			UDim2.new(),
			UDim2.new(),
			UDim2.new(),
			UDim2.new(),
		}

		local element = Roact.createElement(NetworkChartEntry, {
			entry = dummyEntry,
			entryCellSize = dummyCellSizes,
			cellOffset = dummyCellSizes,
			verticalOffsets = dummyCellSizes,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end