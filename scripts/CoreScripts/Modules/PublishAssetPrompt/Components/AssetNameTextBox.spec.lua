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

	it("should keep old text when new text exceeds max length or is invalid", function()
		local updatedText
		local isNameInvalid = false
		local test100Chars =
			"Lorem ipsum 89 dolor sit amet consectetur adipiscing elit Fusce volutpat quam maximus nibh vulputate"
		local test101Chars =
			"Lorem ipsum 89 dolor sit amet consectetur adipiscing elit Fusce volutpat quam maximus nibh vulputatex"

		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			AssetNameTextBox = Roact.createElement(AssetNameTextBox, {
				onAssetNameUpdated = function(newName, isNameInvalid)
					updatedText = newName
					isNameInvalid = isNameInvalid
				end,
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)

		textBox.Text = test100Chars
		waitForEvents.act()

		expect(textBox.Text).to.equal(test100Chars)
		expect(updatedText).to.equal(test100Chars)
		expect(isNameInvalid).to.equal(false)

		textBox.Text = test101Chars
		waitForEvents.act()

		expect(textBox.Text).to.equal(test100Chars)
		expect(updatedText).to.equal(test100Chars)
		expect(isNameInvalid).to.equal(false)

		textBox.Text = "InvalidName!" -- Special characters are invalid
		waitForEvents.act()

		expect(updatedText).to.equal(test100Chars)
		expect(isNameInvalid).to.equal(true)

		Roact.unmount(instance)
	end)
end
