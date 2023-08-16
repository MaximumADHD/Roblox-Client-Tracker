--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local PublishAssetPromptFolder = script.Parent.Parent
	local Reducer = require(PublishAssetPromptFolder.Reducer)

	local ResultModal = require(script.Parent.ResultModal)

	it("should show Publish succeeded", function()
		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
				ResultModal = Roact.createElement(ResultModal, {
					resultModalType = Enum.PromptPublishAssetResult.Success,
					screenSize = Vector2.new(0, 0),
				}),
			}),
		})

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		Roact.unmount(instance)
	end)

	it("should show publish failed ", function()
		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
				ResultModal = Roact.createElement(ResultModal, {
					resultModalType = Enum.PromptPublishAssetResult.UploadFailed,
					screenSize = Vector2.new(0, 0),
				}),
			}),
		})

		local folder = Instance.new("Folder")

		local instance = Roact.mount(element, folder)

		Roact.unmount(instance)
	end)
end
