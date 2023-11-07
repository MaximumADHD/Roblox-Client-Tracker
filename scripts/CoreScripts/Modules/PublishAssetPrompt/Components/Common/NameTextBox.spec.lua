--[[
	To test the NameTextBox component
]]
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents
	local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

	local Reducer = require(script.Parent.Parent.Parent.Reducer)

	local NameTextBox = require(script.Parent.NameTextBox)

	it("should create and destroy without errors", function()
		local ref = Roact.createRef()

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = UnitTestHelpers.createStyleProvider({
				NameTextBox = Roact.createElement(NameTextBox, {
					onNameUpdated = function() end,
					nameTextBoxRef = ref,
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should call onNameUpdated when the user enters text", function()
		local textChangedMock, textChangedFn = jest.fn()
		local ref = Roact.createRef()

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = UnitTestHelpers.createStyleProvider({
				NameTextBox = Roact.createElement(NameTextBox, {
					onNameUpdated = textChangedFn,
					nameTextBoxRef = ref,
				}),
			}),
		})

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
		assert(textBox, "textBox is not nil, silence type checker")
		textBox.Text = "Hello world"

		waitForEvents.act()
		expect(textChangedMock).toHaveBeenCalled()

		Roact.unmount(instance)
	end)

	it("should handle when new text exceeds max length or is invalid", function()
		local updatedText
		local isNameValid = true
		local textChangedMock, textChangedFn = jest.fn(function(newName, valid)
			updatedText = newName
			isNameValid = valid
		end)
		local test50Chars = "Lorem ipsum dolor sit amet consectetur adipisci ve"
		local test51Chars = "Lorem ipsum dolor sit amet consectetur adipisci vel"
		local ref = Roact.createRef()

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = UnitTestHelpers.createStyleProvider({
				NameTextBox = Roact.createElement(NameTextBox, {
					onNameUpdated = textChangedFn,
					nameTextBoxRef = ref,
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
		assert(textBox, "textBox is not nil, silence type checker")

		textBox.Text = test50Chars
		waitForEvents.act()

		expect(textChangedMock).toHaveBeenCalled()
		expect(textBox.Text).toBe(test50Chars)
		expect(updatedText).toBe(test50Chars)
		expect(isNameValid).toBe(true)

		textBox.Text = test51Chars
		waitForEvents.act()

		expect(textBox.Text).toBe(test50Chars)
		expect(updatedText).toBe(test50Chars)
		expect(isNameValid).toBe(true)

		local invalidName = "      " -- Empty name is invalid
		textBox.Text = invalidName
		waitForEvents.act()

		expect(updatedText).toBe(invalidName)
		expect(isNameValid).toBe(false)

		Roact.unmount(instance)
	end)
end
