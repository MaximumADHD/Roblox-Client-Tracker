return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Signal = require(script.Parent.Parent.Parent.Signal)

	local MemoryView = require(script.Parent.MemoryView)

	local dummmyMemoryData = {
		getMemoryData = function ()
			return {
				summaryTable = {},
				summaryCount = 0,
				entryList = nil,
			}
		end,
		treeUpdatedSignal = function ()
			return Signal.new()
		end,
	}

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MemoryView,{
			targetMemoryData = dummmyMemoryData,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end