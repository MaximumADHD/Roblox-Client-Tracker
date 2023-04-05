--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local AssetNameTextBox = require(script.Parent.AssetNameTextBox)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			AssetNameTextBox = Roact.createElement(AssetNameTextBox, {
				onAssetNameUpdated = function() end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should call onAssetNameUpdated when the user enters text", function()
		local textChangedWasCalled = false

		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			AssetNameTextBox = Roact.createElement(AssetNameTextBox, {
				onAssetNameUpdated = function(newText, isNameInvalid)
					textChangedWasCalled = true
				end,
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
		local isNameInvalid = false
		local test50Chars = "Lorem ipsum dolor sit amet consectetur adipisci ve"
		local test51Chars = "Lorem ipsum dolor sit amet consectetur adipisci vel"

		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			AssetNameTextBox = Roact.createElement(AssetNameTextBox, {
				onAssetNameUpdated = function(newName, invalid)
					updatedText = newName
					isNameInvalid = invalid
					textChangedWasCalled = true
				end,
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
		expect(isNameInvalid).to.equal(false)

		textBox.Text = test51Chars
		waitForEvents.act()

		expect(textBox.Text).to.equal(test50Chars)
		expect(updatedText).to.equal(test50Chars)
		expect(isNameInvalid).to.equal(false)

		local invalidName = "InvalidName!" -- Special characters are invalid
		textBox.Text = invalidName
		waitForEvents.act()

		expect(updatedText).to.equal(invalidName)
		expect(isNameInvalid).to.equal(true)

		Roact.unmount(instance)
	end)
end
