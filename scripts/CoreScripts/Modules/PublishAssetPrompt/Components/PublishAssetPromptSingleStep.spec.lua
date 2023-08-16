return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local PublishAssetPromptFolder = script.Parent.Parent
	local Reducer = require(PublishAssetPromptFolder.Reducer)
	local OpenPublishAssetPrompt = require(PublishAssetPromptFolder.Actions.OpenPublishAssetPrompt)
	local PromptType = require(PublishAssetPromptFolder.PromptType)

	describe("PublishAssetPromptSingleStep", function()
		it("should create and destroy without errors", function()
			local PublishAssetPromptSingleStep = require(script.Parent.PublishAssetPromptSingleStep)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local model = Instance.new("Model")

			store:dispatch(
				OpenPublishAssetPrompt(
					PromptType.PublishAssetSingleStep,
					model,
					Enum.AssetType.Model,
					"12345",
					{ Enum.ExperienceAuthScope.CreatorAssetsCreate }
				)
			)

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
					PublishAssetPromptSingleStep = Roact.createElement(PublishAssetPromptSingleStep, {
						screenSize = Vector2.new(1920, 1080),
					}),
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
