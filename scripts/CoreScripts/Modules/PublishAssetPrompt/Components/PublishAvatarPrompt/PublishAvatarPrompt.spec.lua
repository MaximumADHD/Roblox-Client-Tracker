return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

	local PublishAvatarPromptFolder = script.Parent.Parent.Parent
	local Reducer = require(PublishAvatarPromptFolder.Reducer)
	local OpenPublishAvatarPrompt = require(PublishAvatarPromptFolder.Actions.OpenPublishAvatarPrompt)
	local PromptType = require(PublishAvatarPromptFolder.PromptType)
	local FFlagPublishAvatarPromptEnabled = require(script.Parent.Parent.Parent.FFlagPublishAvatarPromptEnabled)
	if not FFlagPublishAvatarPromptEnabled then
		return
	end

	describe("PublishAvatarPrompt", function()
		it("should create and destroy without errors", function()
			local PublishAvatarPrompt = require(script.Parent.PublishAvatarPrompt)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(
				OpenPublishAvatarPrompt(
					PromptType.PublishAvatar,
					"12345",
					{ Enum.ExperienceAuthScope.CreatorAssetsCreate }
				)
			)

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = UnitTestHelpers.createStyleProvider({
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						PublishAvatarPrompt = Roact.createElement(PublishAvatarPrompt, {
							screenSize = Vector2.new(1920, 1080),
						}),
					}),
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
