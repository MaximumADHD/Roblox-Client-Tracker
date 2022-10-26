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

	describe("UpdateOutfitPrompt", function()
		it("should create and destroy without errors", function()
			local UpdateOutfitPrompt = require(script.Parent.UpdateOutfitPrompt)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local humanoidDescription = Instance.new("HumanoidDescription")

			store:dispatch(OpenPrompt(PromptType.CreateOutfit, {
				outfitId = 123,
				outfitName = "Test Outfit",
				humanoidDescription = humanoidDescription,
				rigType = Enum.HumanoidRigType.R15,
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
						UpdateOutfitPrompt = Roact.createElement(UpdateOutfitPrompt)
					}),
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
