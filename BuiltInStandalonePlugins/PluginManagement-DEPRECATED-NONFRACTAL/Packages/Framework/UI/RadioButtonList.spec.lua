return function()
	local Framework = script.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Theme = ContextServices.Theme
	local FrameworkStyles = require(Framework.UI.FrameworkStyles)
	local provide = ContextServices.provide
	local RadioButtonList = require(script.Parent.RadioButtonList)
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

	local function createTestToggle(props, children)
		local theme = Theme.new(function()
			return {
				Framework = FrameworkStyles.new(),
			}
		end)
		local combinedProps
		if props then
			combinedProps = Immutable.JoinDictionaries(DEFAULT_PROPS, props)
		else
			combinedProps = DEFAULT_PROPS
		end
		return provide({theme}, {
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
		expect(aChild.TextLabel.Text).to.equal(textA)

		local bChild = button[textB]
		expect(bChild).to.be.ok()
		expect(bChild.TextLabel.Text).to.equal(textB)

		local cChild = button[textC]
		expect(cChild).to.be.ok()
		expect(cChild.TextLabel.Text).to.equal(textC)

		Roact.unmount(instance)
	end)
end