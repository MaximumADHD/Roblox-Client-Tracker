--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

	local PublishAssetPromptFolder = script.Parent.Parent
	local Reducer = require(PublishAssetPromptFolder.Reducer)

	local AssetDescriptionTextBox = require(script.Parent.AssetDescriptionTextBox)

	it("should create and destroy without errors", function()
		local ref = Roact.createRef()

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
				AssetDescriptionTextBox = Roact.createElement(AssetDescriptionTextBox, {
					onAssetDescriptionUpdated = function() end,
					descriptionTextBoxRef = ref,
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should call onAssetDescriptionUpdated when the user enters text", function()
		local textChangedMock, textChangedFn = jest.fn()
		local ref = Roact.createRef()

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
				TextEntryField = Roact.createElement(AssetDescriptionTextBox, {
					onAssetDescriptionUpdated = textChangedFn,
					descriptionTextBoxRef = ref,
				}),
			}),
		})

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
		textBox.Text = "Hello world"

		waitForEvents.act()
		expect(textChangedMock).toHaveBeenCalled()

		Roact.unmount(instance)
	end)
end
