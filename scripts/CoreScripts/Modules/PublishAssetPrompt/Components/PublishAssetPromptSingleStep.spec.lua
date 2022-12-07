return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local PublishAssetPromptFolder = script.Parent.Parent
	local Reducer = require(PublishAssetPromptFolder.Reducer)
	local OpenPublishAssetPrompt = require(PublishAssetPromptFolder.Actions.OpenPublishAssetPrompt)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("PublishAssetPromptSingleStep", function()
		it("should create and destroy without errors", function()
			local PublishAssetPromptSingleStep = require(script.Parent.PublishAssetPromptSingleStep)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local model = Instance.new("Model")

			store:dispatch(OpenPublishAssetPrompt(model, Enum.AssetType.Model))

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					PublishAssetPromptSingleStep = Roact.createElement(PublishAssetPromptSingleStep),
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
