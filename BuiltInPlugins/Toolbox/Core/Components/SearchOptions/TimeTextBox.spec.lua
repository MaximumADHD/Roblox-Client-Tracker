return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)
	local Cryo = require(Libs.Cryo)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local TimeTextBox = require(Plugin.Core.Components.SearchOptions.TimeTextBox)

	local DEFAULT_PROPS = {
		currentValue = 0,
		defaultValue = 0,
		layoutOrder = 3,
		max = 100,
		min = 0,
		onDurationChange = function() end,
		position = UDim2.new(1, 0, 1, 0),
		size = UDim2.new(0, 80, 0, 32),
	}

	local function createTimeBoxComponent(props)
		local combinedProps = Cryo.Dictionary.join(DEFAULT_PROPS, props or {})
		return Roact.createElement(MockWrapper, {}, {
			TimeTextBox = Roact.createElement(TimeTextBox, combinedProps),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTimeBoxComponent()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = createTimeBoxComponent()
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		local timeTextBox = container.TimeTextBox
		expect(timeTextBox).to.be.ok()
		local innerContent = timeTextBox.Border
		expect(innerContent).to.be.ok()
		expect(innerContent.MinuteTextField).to.be.ok()
		expect(innerContent.MinuteLabel).to.be.ok()
		expect(innerContent.SecondTextField).to.be.ok()
		expect(innerContent.SecondLabel).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should display the correct default minutes and seconds", function()
		local minutes = 1
		local seconds = 17
		local element = createTimeBoxComponent({
			currentValue = (minutes * 60) + seconds,
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		local timeTextBox = container.TimeTextBox
		expect(timeTextBox).to.be.ok()
		local innerContent = timeTextBox.Border
		expect(innerContent).to.be.ok()

		expect(innerContent.MinuteTextField).to.be.ok()
		expect(innerContent.MinuteTextField.Text).to.equal(tostring(minutes))

		expect(innerContent.SecondTextField).to.be.ok()
		expect(innerContent.SecondTextField.Text).to.equal(tostring(seconds))

		Roact.unmount(instance)
	end)
end
