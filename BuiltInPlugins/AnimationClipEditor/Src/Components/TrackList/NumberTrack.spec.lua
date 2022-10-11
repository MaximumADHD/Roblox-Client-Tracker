return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local NumberTrack = require(script.Parent.NumberTrack)

	local function createTestNumberTrack(items)
		return Roact.createElement(MockWrapper, {}, {
			NumberTrack = Roact.createElement(NumberTrack, {
				Name = "TestTrack",
				LayoutOrder = 1,
				Indent = 0,
				DoShade = false,
				Items = items or {},
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestNumberTrack()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestNumberTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.Padding).to.be.ok()
		expect(frame.Layout).to.be.ok()
		expect(frame.ArrowPadding).to.be.ok()
		expect(frame.NameLabel).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render its items", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(
			createTestNumberTrack({
				{
					Name = "TestName",
					Key = "Item1",
					Value = 1,
				},
				{
					Name = "OtherName",
					Key = "Item2",
					Value = 2,
				},
			}),
			container
		)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.Item1_Entry).to.be.ok()
		expect(frame.Item2_Entry).to.be.ok()

		Roact.unmount(instance)
	end)
end
