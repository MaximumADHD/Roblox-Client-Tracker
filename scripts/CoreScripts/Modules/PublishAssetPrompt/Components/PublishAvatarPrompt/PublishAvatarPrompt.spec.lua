return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local PublishAvatarPromptFolder = script.Parent.Parent.Parent
	local Reducer = require(PublishAvatarPromptFolder.Reducer)
	local OpenPublishAvatarPrompt = require(PublishAvatarPromptFolder.Actions.OpenPublishAvatarPrompt)
	local PromptType = require(PublishAvatarPromptFolder.PromptType)
	local FFlagPublishAvatarPromptEnabled = require(script.Parent.Parent.Parent.FFlagPublishAvatarPromptEnabled)
	if not FFlagPublishAvatarPromptEnabled then
		return
	end

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("PublishAvatarPrompt", function()
		it("should create and destroy without errors", function()
			local PublishAvatarPrompt = require(script.Parent.PublishAvatarPrompt)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local humanoidDescription = Instance.new("HumanoidDescription")

			store:dispatch(
				OpenPublishAvatarPrompt(
					PromptType.PublishAvatar,
					humanoidDescription,
					"12345",
					{ Enum.ExperienceAuthScope.CreatorAssetsCreate }
				)
			)

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					PublishAvatarPrompt = Roact.createElement(PublishAvatarPrompt, {
						screenSize = Vector2.new(1920, 1080),
					}),
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
