return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Signal = require(script.Parent.Parent.Parent.Signal)
	local LogOutput = require(script.Parent.LogOutput)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LogOutput,{
			targetSignal = Signal.new()
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end