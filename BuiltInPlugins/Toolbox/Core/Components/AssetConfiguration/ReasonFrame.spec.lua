return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
	local ReasonFrame = require(AssetConfiguration.ReasonFrame)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ReasonFrame, {}, {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			Reasons = {
				[1] = {
					name = "Test1",
					response = {
						responseBody = "Test reason 1"
					},
				},
				[2] = {
					name = "Test2",
					response = {
						responseBody = "Test reason 2"
					},
				}
			},
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

end
