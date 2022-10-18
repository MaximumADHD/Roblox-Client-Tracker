return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local Constants = require(Plugin.Src.Util.Constants)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local ScaleTick = require(script.Parent.ScaleTick)

	local function createTestScaleTick(value, scaleType)
		value = value or "123"
		scaleType = scaleType or Constants.SCALE_TYPE.Number

		return Roact.createElement(MockWrapper, {}, {
			ScaleTick = Roact.createElement(ScaleTick, {
				ScaleType = scaleType,
				TickWidthScale = 0.50,
				Value = value,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestScaleTick()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestScaleTick()

		local instance = Roact.mount(element, container)

		expect(container.ScaleTick.Tick).to.be.ok()
		expect(container.ScaleTick.Line).to.be.ok()

		local label = container.ScaleTick.TimeLabel
		expect(label).to.be.ok()
		expect(label.Text).to.equal("123")
		Roact.unmount(instance)
	end)

	it("should render correctly without text", function()
		local container = Instance.new("Folder")

		local element = createTestScaleTick("")

		local instance = Roact.mount(element, container)

		expect(container.ScaleTick:FindFirstChild("TimeLabel")).never.to.be.ok()
		Roact.unmount(instance)
	end)

	it("should not render a line from the right", function()
		local container = Instance.new("Folder")

		local element = createTestScaleTick(nil, Constants.SCALE_TYPE.Angle)

		local instance = Roact.mount(element, container)

		expect(container.ScaleTick:FindFirstChild("Line")).never.to.be.ok()
		Roact.unmount(instance)
	end)
end
