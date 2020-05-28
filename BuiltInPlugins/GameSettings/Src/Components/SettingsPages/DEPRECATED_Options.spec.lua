return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local Theme = require(Plugin.Src.Util.Theme)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local Localization = require(Plugin.Src.Localization.Localization)

	local Options = require(Plugin.Src.Components.SettingsPages.DEPRECATED_Options)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local settingsOptionsTest = {
		Current = {
			HttpEnabled = true,
		},
		Changed = {},
	}

	local function createTestOptions(startState)
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
			options = Roact.createElement(Options),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestOptions()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestOptions()
		local instance = Roact.mount(element, container)
		local publication = container.Frame

		expect(publication.Layout).to.be.ok()
		expect(publication.Http).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should disable when no permissions", function()
		local container = Instance.new("Folder")

		local element = createTestOptions()
		local instance = Roact.mount(element, container)
		local publication = container.Frame

		local sets = {
			publication.Http,
		}

		for _, set in ipairs(sets) do
			for _, button in ipairs(set.Content:GetChildren()) do
				if (button:IsA("Frame")) then
					expect(button.Button.Highlight.Visible).to.equal(false)
				end
			end
		end

		Roact.unmount(instance)
	end)

	it("should enable with permissions", function()
		local container = Instance.new("Folder")

		local element = createTestOptions(settingsOptionsTest)
		local instance = Roact.mount(element, container)
		local publication = container.Frame

		local sets = {
			publication.Http,
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
		local container = Instance.new("Folder")

		local element = createTestOptions(settingsOptionsTest)
		local instance = Roact.mount(element, container)
		local publication = container.Frame

		local sets = {
			publication.Http,
		}

		for _, set in ipairs(sets) do
			expect(set.Content["1"].Button.Highlight.Visible).to.equal(true)
			expect(set.Content["2"].Button.Highlight.Visible).to.equal(false)
		end

		Roact.unmount(instance)
	end)
end