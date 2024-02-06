return function()
	local CorePackages = game:GetService("CorePackages")
	local Players = game:GetService("Players")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

	local PublishAvatarPromptFolder = script.Parent.Parent
	local Reducer = require(PublishAvatarPromptFolder.Reducer)
	local OpenPublishAvatarPrompt = require(PublishAvatarPromptFolder.Actions.OpenPublishAvatarPrompt)
	local PromptType = require(PublishAvatarPromptFolder.PromptType)
	local OpenValidationErrorModal = require(PublishAvatarPromptFolder.Actions.OpenValidationErrorModal)
	local FFlagPublishAvatarPromptEnabled = require(PublishAvatarPromptFolder.FFlagPublishAvatarPromptEnabled)
	if not FFlagPublishAvatarPromptEnabled then
		return
	end

	describe("ValidationErrorModal", function()
		it("should create and destroy without errors", function()
			local PublishAvatarPrompt =
				require(PublishAvatarPromptFolder.Components.PublishAvatarPrompt.PublishAvatarPrompt)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local humanoidModel = Players:CreateHumanoidModelFromDescription(
				Instance.new("HumanoidDescription"),
				Enum.HumanoidRigType.R15
			)

			store:dispatch(
				OpenPublishAvatarPrompt(
					PromptType.PublishAvatar,
					humanoidModel,
					"12345",
					{ Enum.ExperienceAuthScope.CreatorAssetsCreate }
				)
			)

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = UnitTestHelpers.createStyleProvider({
					PublishAvatarPrompt = Roact.createElement(PublishAvatarPrompt, {
						screenSize = Vector2.new(1920, 1080),
					}),
				}),
			})
			store:dispatch(OpenValidationErrorModal("error"))

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
