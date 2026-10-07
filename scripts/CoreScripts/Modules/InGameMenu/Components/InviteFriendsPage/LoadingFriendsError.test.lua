local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Rodux = InGameMenuDependencies.Rodux
local RoactRodux = InGameMenuDependencies.RoactRodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local Foundation = require(CorePackages.Packages.Foundation)
local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration
local foundationTypography = Foundation.Utility.getTokens(Foundation.Enums.ColorMode.Dark).Typography
local Style = require(CorePackages.Workspace.Packages.Style)
local getTextSizeSpy = jest.spyOn(Style, "GetTextSize")

local InGameMenu = script.Parent.Parent.Parent
local Localization = require(InGameMenu.Localization.Localization)
local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
local reducer = require(InGameMenu.reducer)
local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

local FocusHandlerContextProvider =
	require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
local LoadingFriendsError = require(script.Parent.LoadingFriendsError)

local function getMountableComponent()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory()
						and Roact.createElement(FocusHandlerContextProvider, {}, {
							LoadingFriendsError = Roact.createElement(LoadingFriendsError, {
								onRetry = function() end,
								canCaptureFocus = true,
							}),
						})
					or nil,
				LoadingFriendsError = not GetFFlagIGMGamepadSelectionHistory()
						and Roact.createElement(LoadingFriendsError, {
							onRetry = function() end,
							canCaptureFocus = true,
						})
					or nil,
			}),
		}),
	})
end

it("should create and destroy without errors", function()
	local instance = Roact.mount(getMountableComponent())
	Roact.unmount(instance)
end)

if FFlagFoundationFontFaceMigration then
	it("should measure body text without temporary padding", function()
		jest.clearAllMocks()
		local instance = Roact.mount(getMountableComponent())

		expect(getTextSizeSpy).toHaveBeenCalledWith(
			expect.anything(),
			expect.anything(),
			foundationTypography.BodyLarge.Font,
			expect.anything(),
			{ addTemporaryPadding = false }
		)

		Roact.unmount(instance)
	end)
end
