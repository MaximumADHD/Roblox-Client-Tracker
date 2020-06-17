return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local Theme = require(Plugin.Src.Util.Theme)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local Localization = require(Plugin.Src.Localization.Localization)
	local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

	local Footer = require(Plugin.Src.Components.Footer)

	local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.new()
	local localization = Localization.newDummyLocalization()

	local settingsFooterTest = {
		Current = {},
		Changed = {
			Something = "Changed",
		},
		Errors = {},
	}

	local settingsFooterErrorTest = {
		Current = {},
		Changed = {
			Something = "Changed",
		},
		Errors = {
			Value = "Error",
		},
	}

	local function buttonIsDisabled(color)
		local c = Enum.StudioStyleGuideColor
		local m = Enum.StudioStyleGuideModifier
		local disabledColor = settings().Studio.Theme:GetColor(c.Button, m.Disabled)
		return color == disabledColor or color == DEPRECATED_Constants.BLUE_DISABLED
	end

	local function textIsDisabled(color)
		local c = Enum.StudioStyleGuideColor
		local disabledColor = settings().Studio.Theme:GetColor(c.DimmedText)
		return color == disabledColor
	end

	local function createTestFooter(startState, status)
		local settingsStore = Rodux.Store.new(MainReducer, {
				Settings = startState,
				Status = status or CurrentStatus.Open,
			},
			{Rodux.thunkMiddleware}
		)

		return Roact.createElement(ExternalServicesWrapper, {
			store = settingsStore,
			impl = settingsImpl,
			theme = theme,
			localization = localization,
		}, {
			footer = Roact.createElement(Footer, {
				SaveActive = false,
				ButtonClicked = function()
				end,
				OnClose = function()
				end,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestFooter()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestFooter()
		local instance = Roact.mount(element, container)
		local footer = container.Frame

		expect(footer.Gradient).to.be.ok()
		expect(footer.SaveSettings).to.be.ok()

		Roact.unmount(instance)
	end)

	describe("Save Button", function()
		it("should enable when there are changes", function()
			local container = Instance.new("Folder")

			local element = createTestFooter(settingsFooterTest)
			local instance = Roact.mount(element, container)
			local footer = container.Frame

			expect(buttonIsDisabled(footer.SaveSettings["3"].ImageColor3)).to.equal(false)

			Roact.unmount(instance)
		end)

		it("should disable when there are no changes", function()
			local container = Instance.new("Folder")

			local element = createTestFooter()
			local instance = Roact.mount(element, container)
			local footer = container.Frame

			expect(buttonIsDisabled(footer.SaveSettings["3"].ImageColor3)).to.equal(true)

			Roact.unmount(instance)
		end)

		it("should disable when the app is working", function()
			local container = Instance.new("Folder")

			local element = createTestFooter(settingsFooterTest, CurrentStatus.Working)
			local instance = Roact.mount(element, container)
			local footer = container.Frame

			expect(buttonIsDisabled(footer.SaveSettings["3"].ImageColor3)).to.equal(true)

			Roact.unmount(instance)
		end)

		it("should disable when there is an error", function()
			local container = Instance.new("Folder")

			local element = createTestFooter(settingsFooterErrorTest)
			local instance = Roact.mount(element, container)
			local footer = container.Frame

			expect(buttonIsDisabled(footer.SaveSettings["3"].ImageColor3)).to.equal(true)

			Roact.unmount(instance)
		end)
	end)

	describe("Cancel Button", function()
		it("should enable when the app is open", function()
			local container = Instance.new("Folder")

			local element = createTestFooter(settingsFooterTest)
			local instance = Roact.mount(element, container)
			local footer = container.Frame

			expect(textIsDisabled(footer.SaveSettings["2"].Text.TextColor3)).to.equal(false)

			Roact.unmount(instance)
		end)

		it("should disable when the app is working", function()
			local container = Instance.new("Folder")

			local element = createTestFooter(settingsFooterTest, CurrentStatus.Working)
			local instance = Roact.mount(element, container)
			local footer = container.Frame

			expect(textIsDisabled(footer.SaveSettings["2"].Text.TextColor3)).to.equal(true)

			Roact.unmount(instance)
		end)
	end)
end