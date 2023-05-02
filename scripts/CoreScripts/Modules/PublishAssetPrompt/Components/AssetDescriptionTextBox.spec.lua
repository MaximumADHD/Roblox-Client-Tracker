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

	local AssetDescriptionTextBox = require(script.Parent.AssetDescriptionTextBox)

	it("should create and destroy without errors", function()
		local ref = Roact.createRef()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			AssetDescriptionTextBox = Roact.createElement(AssetDescriptionTextBox, {
				onAssetDescriptionUpdated = function() end,
				descriptionTextBoxRef = ref,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should call onAssetDescriptionUpdated when the user enters text", function()
		local textChangedWasCalled = false
		local ref = Roact.createRef()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			TextEntryField = Roact.createElement(AssetDescriptionTextBox, {
				onAssetDescriptionUpdated = function(newText)
					textChangedWasCalled = true
				end,
				descriptionTextBoxRef = ref,
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
end
