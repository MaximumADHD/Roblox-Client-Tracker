return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local ObjectViewport = require(script.Parent.ObjectViewport)

	describe("ObjectViewport", function()
		it("should create and destroy without errors", function()
			local model = Instance.new("Model")

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ObjectViewport = Roact.createElement(ObjectViewport, {
					model = model,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
