return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Signal = require(script.Parent.Parent.Parent.Signal)

	local NetworkView = require(script.Parent.NetworkView)

	local dummmyNetworkData = {
		getCurrentData = function ()
			return {
				summaryTable = {},
				summaryCount = 0,
				entryList = nil,
			}
		end,
		Signal = function ()
			return Signal.new()
		end,
	}

	it("should create and destroy without errors", function()

		local element = Roact.createElement(NetworkView,{
			targetNetworkData = dummmyNetworkData,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end