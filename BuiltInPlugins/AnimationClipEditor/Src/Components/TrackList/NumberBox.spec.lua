return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local NumberBox = require(script.Parent.NumberBox)

	local function createTestNumberBox()
		return Roact.createElement(MockWrapper, {}, {
			NumberBox = Roact.createElement(NumberBox, {
				Size = UDim2.new(0, 50, 0, 20),
				LayoutOrder = 1,
				Number = 0,
				Name = "Test",
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestNumberBox()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestNumberBox(), container)
		local label = container:FindFirstChildOfClass("ImageLabel")

		expect(label).to.be.ok()
		expect(label.Border).to.be.ok()
		expect(label.Border.Layout).to.be.ok()
		expect(label.Border.LabelFrame).to.be.ok()
		expect(label.Border.LabelFrame.Border).to.be.ok()
		expect(label.Border.LabelFrame.Border.NameLabel).to.be.ok()
		expect(label.Border.LabelFrame.Border.LeftBorderOverlay).to.be.ok()
		expect(label.Border.LabelFrame.Border.RightBorderOverlay).to.be.ok()
		expect(label.Border.LabelFrame.Border.DragArea).to.be.ok()
		expect(label.Border.TextBox).to.be.ok()

		Roact.unmount(instance)
	end)
end
