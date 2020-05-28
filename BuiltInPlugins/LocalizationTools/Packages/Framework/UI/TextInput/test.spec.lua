return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local TestHelpers = require(Framework.TestHelpers)
	local TextInput = require(script.Parent)

	local function createTestTextInput(props)
		props = props or {}

		return TestHelpers.provideMockContext(nil, {
			TextInput = Roact.createElement(TextInput, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTextInput()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should remove newlines", function()
		local actualText
		local element = createTestTextInput({
			OnTextChanged = function(text)
				actualText = text
			end
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)
		local textBox = container:FindFirstChild("TextBox", true)

		local str = "Hello\nWorld"
		textBox.Text = str

		expect(actualText).to.equal("Hello World")

		Roact.unmount(instance)
	end)

	it("should change the alignment of the TextBox if text is too long", function()
		local element = createTestTextInput()
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)
		local textBox = container:FindFirstChild("TextBox", true)

		expect(textBox.TextXAlignment).to.equal(Enum.TextXAlignment.Left)

		textBox.Text = ("abc"):rep(100)
		expect(textBox.TextXAlignment).to.equal(Enum.TextXAlignment.Right)

		Roact.unmount(instance)
	end)
end