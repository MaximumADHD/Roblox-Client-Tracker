return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local ContentHeightFitFrame = require(script.Parent.Parent.ContentHeightFitFrame)

	-- This must be skipped because Lemur does not behave like engine.
	itSKIP("should size to contents", function()
		local element = Roact.createElement(ContentHeightFitFrame, nil, {
			ChildOne = Roact.createElement("Frame", {
				Size = UDim2.new(0, 50, 0, 100),
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "FitTest")

		expect(container.FitTest.Size.X.Offset).to.equal(50)
		expect(container.FitTest.Size.Y.Offset).to.equal(100)

		Roact.unmount(instance)
	end)
end
