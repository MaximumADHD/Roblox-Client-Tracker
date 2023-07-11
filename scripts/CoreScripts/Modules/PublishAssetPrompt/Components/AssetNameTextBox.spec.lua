--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local PublishAssetPromptFolder = script.Parent.Parent
	local Reducer = require(PublishAssetPromptFolder.Reducer)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local AssetNameTextBox = require(script.Parent.AssetNameTextBox)

	it("should create and destroy without errors", function()
		local ref = Roact.createRef()

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				AssetNameTextBox = Roact.createElement(AssetNameTextBox, {
					onAssetNameUpdated = function() end,
					nameTextBoxRef = ref,
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should call onAssetNameUpdated when the user enters text", function()
		local textChangedWasCalled = false
		local ref = Roact.createRef()

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				AssetNameTextBox = Roact.createElement(AssetNameTextBox, {
					onAssetNameUpdated = function(newText, isNameInvalid)
						textChangedWasCalled = true
					end,
					nameTextBoxRef = ref,
				}),
			}),
		})

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
		textBox.Text = "Hello world"

		waitForEvents.act()
		expect(textChangedWasCalled).to.equal(true)

		Roact.unmount(instance)
	end)

	it("should handle when new text exceeds max length or is invalid", function()
		local updatedText
		local textChangedWasCalled = false
		local isNameValid = true
		local test50Chars = "Lorem ipsum dolor sit amet consectetur adipisci ve"
		local test51Chars = "Lorem ipsum dolor sit amet consectetur adipisci vel"
		local ref = Roact.createRef()

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				AssetNameTextBox = Roact.createElement(AssetNameTextBox, {
					onAssetNameUpdated = function(newName, valid)
						updatedText = newName
						isNameValid = valid
						textChangedWasCalled = true
					end,
					nameTextBoxRef = ref,
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)

		textBox.Text = test50Chars
		waitForEvents.act()

		expect(textChangedWasCalled).to.equal(true)
		expect(textBox.Text).to.equal(test50Chars)
		expect(updatedText).to.equal(test50Chars)
		expect(isNameValid).to.equal(true)

		textBox.Text = test51Chars
		waitForEvents.act()

		expect(textBox.Text).to.equal(test50Chars)
		expect(updatedText).to.equal(test50Chars)
		expect(isNameValid).to.equal(true)

		local invalidName = "      " -- Empty name is invalid
		textBox.Text = invalidName
		waitForEvents.act()

		expect(updatedText).to.equal(invalidName)
		expect(isNameValid).to.equal(false)

		Roact.unmount(instance)
	end)
end
