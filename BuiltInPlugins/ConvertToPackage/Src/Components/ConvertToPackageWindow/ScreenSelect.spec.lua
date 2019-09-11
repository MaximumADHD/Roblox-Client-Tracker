return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
	local Constants = require(Plugin.Src.Util.Constants)

	local ScreenSelect = require(Plugin.Src.Components.ConvertToPackageWindow.ScreenSelect)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenSelect = Roact.createElement(ScreenSelect, {
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with an AssetConfig screen", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenSelect = Roact.createElement(ScreenSelect, {
				currentScreen = Constants.SCREENS.CONFIGURE_ASSET
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with an AssetUpload screen", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenSelect = Roact.createElement(ScreenSelect, {
				currentScreen = Constants.SCREENS.UPLOADING_ASSET
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with an AssetUploadResult screen", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ScreenSelect = Roact.createElement(ScreenSelect, {
				currentScreen = Constants.SCREENS.UPLOAD_ASSET_RESULT
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end