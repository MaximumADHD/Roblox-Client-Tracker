local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local Rodux = InGameMenuDependencies.Rodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local Foundation = require(CorePackages.Packages.Foundation)
local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration
local foundationTypography = Foundation.Utility.getTokens(Foundation.Enums.ColorMode.Dark).Typography
local Style = require(CorePackages.Workspace.Packages.Style)
local getTextSizeSpy = jest.spyOn(Style, "GetTextSize")

local InGameMenu = script.Parent.Parent
local reducer = require(InGameMenu.reducer)

local InfoDialog = require(script.Parent.InfoDialog)

local function getMountableComponent()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			GameIconHeader = Roact.createElement(InfoDialog, {
				bodyText = "Hello world!",
				dismissText = "Okay",
				titleText = "Title",
				iconImage = "",

				onDismiss = function()
					print("on dismiss")
				end,
				visible = true,
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
			"Hello world!",
			expect.anything(),
			foundationTypography.BodyLarge.Font,
			expect.anything(),
			{ addTemporaryPadding = false }
		)

		Roact.unmount(instance)
	end)
end
