return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local Theme = require(Plugin.Src.Util.Theme)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local Localization = require(Plugin.Src.Localization.Localization)

	local Avatar = require(Plugin.Src.Components.SettingsPages.Avatar)

	local fastFlags = require(Plugin.Src.Util.FastFlags)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local settingsAvatarTest = {
		Current = {
			universeAvatarType = "MorphToR15",
			universeScaleType = "AllScales",
			universeAnimationType = "PlayerChoice",
			universeCollisionType = "OuterBox",
		},
		Changed = {},
	}

	local function createTestAvatar(startState)
		local settingsStore = Rodux.Store.new(
			MainReducer,
			{Settings = startState},
			{Rodux.thunkMiddleware}
		)

		return Roact.createElement(ExternalServicesWrapper, {
			store = settingsStore,
			impl = settingsImpl,
			theme = theme,
			localization = localization,
		}, {
			avatar = Roact.createElement(Avatar),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestAvatar()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	if not fastFlags.isMorphingHumanoidDescriptionSystemOn() then
		it("should render correctly", function()
			local container = workspace

			local element = createTestAvatar()

			local instance = Roact.mount(element, container)
			local avatar = container.Frame

			expect(avatar.Layout).to.be.ok()
			expect(avatar.Type).to.be.ok()
			expect(avatar.Scaling).to.be.ok()
			expect(avatar.Animation).to.be.ok()
			expect(avatar.Collision).to.be.ok()

			Roact.unmount(instance)
		end)

		it("should disable when no permissions", function()
			local container = workspace

			local element = createTestAvatar()
			local instance = Roact.mount(element, container)
			local avatar = container.Frame

			local sets = {
				avatar.Type,
				avatar.Scaling,
				avatar.Animation,
				avatar.Collision,
			}

			for _, set in ipairs(sets) do
				for _, button in ipairs(set.Content:GetChildren()) do
					if (button:IsA("Frame")) then
						expect(button.Button.TitleLabel.TextTransparency).never.to.equal(0)
					end
				end
			end

			Roact.unmount(instance)
		end)

		it("should enable with permissions", function()
			local container = workspace

			local element = createTestAvatar(settingsAvatarTest)
			local instance = Roact.mount(element, container)
			local avatar = container.Frame

			local sets = {
				avatar.Type,
				avatar.Scaling,
				avatar.Animation,
				avatar.Collision,
			}

			for _, set in ipairs(sets) do
				for _, button in ipairs(set.Content:GetChildren()) do
					if (button:IsA("Frame")) then
						expect(button.Button.TitleLabel.TextTransparency).to.equal(0)
					end
				end
			end

			Roact.unmount(instance)
		end)

		it("should highlight the correct buttons", function()
			local container = workspace

			local element = createTestAvatar(settingsAvatarTest)
			local instance = Roact.mount(element, container)
			local avatar = container.Frame

			local sets = {
				avatar.Type,
				avatar.Scaling,
				avatar.Animation,
				avatar.Collision,
			}

			for _, set in ipairs(sets) do
				expect(set.Content["2"].Button.Highlight.Visible).to.equal(true)
			end

			Roact.unmount(instance)
		end)
	end
end