return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local provideMockContext = require(Framework.TestHelpers.provideMockContext)

	local RadioButtonList = require(script.Parent)
	local Immutable = require(Framework.Util.Immutable)

	local DEFAULT_PROPS = {
		Buttons = {
			{
				Key = "Key",
				Text = "Hello world",
				Disabled = true,
			},
		},
	}

	local function createRadioButton(key, text, enabled)
		return {
			Key = key,
			Text = text,
			Disabled = enabled,
		}
	end

	local function createDescriptionRadioButton(key, text, description, enabled)
		return {
			Key = key,
			Text = text,
			Description = description,
			Disabled = enabled,
		}
	end

	local function createTestToggle(props, children)
		local combinedProps
		if props then
			combinedProps = Immutable.JoinDictionaries(DEFAULT_PROPS, props)
		else
			combinedProps = DEFAULT_PROPS
		end
		return provideMockContext(nil, {
			RadioButtonList = Roact.createElement(RadioButtonList, combinedProps, children),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestToggle()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestToggle()
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("ImageLabel")
		expect(frame).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render the correct text and order for each radio button", function()
		local folder = Instance.new("Folder")
		local textA = "A"
		local textB = "B"
		local textC = "C"
		local element = createTestToggle({
			Buttons = {
				createRadioButton(textA, textA, true),
				createRadioButton(textB, textB, true),
				createRadioButton(textC, textC, true),
			},
		})
		local instance = Roact.mount(element, folder)

		local button = folder:FindFirstChildOfClass("ImageLabel")
		expect(button).to.be.ok()

		local aChild = button[textA]
		expect(aChild).to.be.ok()
		expect(aChild.TextFrame.MainTextLabel.Text).to.equal(textA)

		local bChild = button[textB]
		expect(bChild).to.be.ok()
		expect(bChild.TextFrame.MainTextLabel.Text).to.equal(textB)

		local cChild = button[textC]
		expect(cChild).to.be.ok()
		expect(cChild.TextFrame.MainTextLabel.Text).to.equal(textC)

		Roact.unmount(instance)
	end)

	it("should render the correct text, description, and order for each radio button", function()
		local folder = Instance.new("Folder")
		local textA = "A"
		local textB = "B"
		local textC = "C"
		local textDescription = "description"
		local element = createTestToggle({
			Buttons = {
				createDescriptionRadioButton(textA, textA, textDescription, true),
				createDescriptionRadioButton(textB, textB, textDescription, true),
				createDescriptionRadioButton(textC, textC, textDescription, true),
			},
		})
		local instance = Roact.mount(element, folder)

		local button = folder:FindFirstChildOfClass("ImageLabel")
		expect(button).to.be.ok()

		local aChild = button[textA]
		expect(aChild).to.be.ok()
		expect(aChild.TextFrame.MainTextLabel.Text).to.equal(textA)
		expect(aChild.TextFrame.DescriptionTextLabel.Text).to.equal(textDescription)

		local bChild = button[textB]
		expect(bChild).to.be.ok()
		expect(bChild.TextFrame.MainTextLabel.Text).to.equal(textB)
		expect(bChild.TextFrame.DescriptionTextLabel.Text).to.equal(textDescription)

		local cChild = button[textC]
		expect(cChild).to.be.ok()
		expect(cChild.TextFrame.MainTextLabel.Text).to.equal(textC)
		expect(cChild.TextFrame.DescriptionTextLabel.Text).to.equal(textDescription)

		Roact.unmount(instance)
	end)
end