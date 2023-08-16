return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AvatarEditorPrompts = script.Parent.Parent.Parent
	local Reducer = require(AvatarEditorPrompts.Reducer)
	local PromptType = require(AvatarEditorPrompts.PromptType)
	local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)

	describe("SetFavoritePrompt", function()
		it("should create and destroy without errors", function()
			local SetFavoritePrompt = require(script.Parent.SetFavoritePrompt)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(OpenPrompt(PromptType.SetFavorite, {
				itemId = 1337,
				itemType = Enum.AvatarItemType.Bundle,
				itemName = "Cool Bundle",
				shouldFavorite = true,
			}))

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
					SetFavoritePrompt = Roact.createElement(SetFavoritePrompt)
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
