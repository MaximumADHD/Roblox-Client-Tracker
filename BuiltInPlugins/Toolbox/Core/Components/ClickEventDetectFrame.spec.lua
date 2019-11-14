return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local ClickEventDetectFrame = require(Plugin.Core.Components.ClickEventDetectFrame)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			ClickEventDetectFrame = Roact.createElement(ClickEventDetectFrame, {}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with window", function()
		local element = Roact.createElement(MockWrapper, {}, {
			ClickEventDetectFrame = Roact.createElement(ClickEventDetectFrame, {
				windowPosition = UDim2.new(0, 100, 0, 100),
				windowSize = UDim2.new(0, 100, 0, 100),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
