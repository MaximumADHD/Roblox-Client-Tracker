return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local FitChildren = require(Modules.LuaApp.FitChildren)

	local FitTextLabel = require(script.parent.FitTextLabel)

	describe("FitTextLabel", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(FitTextLabel)
			local instance = Roact.reify(element)
			Roact.teardown(instance)
		end)

		it("should expand vertically to fit by default", function()
			-- Need an extra containing frame, because it doesn't seem to set AbsoluteSize on the root UI element
			local element = Roact.createElement("Frame", {}, {
				Text = Roact.createElement(FitTextLabel, {
					Size = UDim2.new(0, 100, 0, 0),
					TextSize = 16,
					Font = "SourceSans",
					Text = "More than 100 pixels of text",
				})
			})
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")

			expect(container.FitTest.Text.Size.X.Offset).to.equal(100)
			expect(container.FitTest.Text.Size.Y.Offset).to.equal(32)
		end)

		it("should expand horizontally to fit if told to", function()
			-- Need an extra containing frame, because it doesn't seem to set AbsoluteSize on the root UI element
			local element = Roact.createElement("Frame", {}, {
				Text = Roact.createElement(FitTextLabel, {
					Size = UDim2.new(0, 100, 0, 0),
					TextSize = 16,
					Font = "SourceSans",
					Text = "More than 100 pixels of text",
					fitAxis = FitChildren.FitAxis.Width,
				})
			})
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")

			expect(container.FitTest.Text.Size.X.Offset > 100).to.equal(true)
			expect(container.FitTest.Text.Size.Y.Offset).to.equal(16)
		end)
	end)
end