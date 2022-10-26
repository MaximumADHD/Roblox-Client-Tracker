return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AvatarEditorPrompts = script.Parent.Parent.Parent
	local Reducer = require(AvatarEditorPrompts.Reducer)
	local PromptType = require(AvatarEditorPrompts.PromptType)
	local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)

	local AvatarEditorPromptsPolicy = require(AvatarEditorPrompts.AvatarEditorPromptsPolicy)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("RenameOutfitPrompt", function()
		it("should create and destroy without errors", function()
			local RenameOutfitPrompt = require(script.Parent.RenameOutfitPrompt)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(OpenPrompt(PromptType.RenameOutfit, {
				outfitId = 123,
				outfitName = "Outfit Name",
			}))

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				PolicyProvider = Roact.createElement(AvatarEditorPromptsPolicy.Provider, {
					policy = { AvatarEditorPromptsPolicy.Mapper },
				}, {
					ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
						style = appStyle,
					}, {
						RenameOutfitPrompt = Roact.createElement(RenameOutfitPrompt)
					})
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
