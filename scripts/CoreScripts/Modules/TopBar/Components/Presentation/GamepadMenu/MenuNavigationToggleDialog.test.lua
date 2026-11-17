--!strict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local it = JestGlobals.it
local expect = JestGlobals.expect
local LocalizationService = game:GetService("LocalizationService")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local UiModeStyleProvider = require(CorePackages.Workspace.Packages.Style).UiModeStyleProvider
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local UIBlox = require(CorePackages.Packages.UIBlox)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents
local Topbar = script.Parent.Parent.Parent.Parent
local Modules = Topbar.Parent
local Chrome = Modules.Chrome
local ChromeEnabled = if FFlagEnableConsoleExpControls
	then require(CorePackages.Workspace.Packages.Chrome).Enabled()
	else nil :: never
local GamepadConnector = if ChromeEnabled and FFlagEnableConsoleExpControls
	then require(Topbar.Components.GamepadConnector)
	else nil :: never

local MenuNavigationToggleDialog = require(script.Parent.MenuNavigationToggleDialog)

local defaultStyle = {
	themeName = "dark",
	fontName = "gotham",
	deviceType = RobloxAppEnums.DeviceType.Console,
}

afterEach(function()
	LocalizationService:SetRobloxLocaleId("en-us")
end)

it("should render the MenuNavigationToggleDialog", function()
	local localization = Localization.new("en-us")
	local gamepadConnector = if ChromeEnabled and FFlagEnableConsoleExpControls
		then GamepadConnector.new()
		else nil :: never

	local function App()
		return React.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(function(state)
				return state
			end, {}, {}),
		}, {
			StyleProvider = React.createElement(UIBlox.App.Style.AppStyleProvider, {
				style = defaultStyle,
			}, {
				DesignTokenProvider = React.createElement(DesignTokenProvider, {
					tokenMappers = {},
				}, {
					LocalizationProvider = React.createElement(LocalizationProvider, {
						localization = localization,
					}, {
						MenuNavigationToggleDialog = if ChromeEnabled and FFlagEnableConsoleExpControls
							then React.createElement(MenuNavigationToggleDialog, {
								Position = UDim2.fromScale(0.5, 0.5),
								GamepadConnector = gamepadConnector,
							})
							else React.createElement(
								MenuNavigationToggleDialog,
								{
									Position = UDim2.fromScale(0.5, 0.5),
								} :: never
							),
					}),
				}),
			}),
		})
	end

	local container = Instance.new("Frame")
	container.Size = UDim2.fromOffset(800, 600)

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(React.createElement(App))
	end)

	local toggleDialog = container:FindFirstChild("MenuNavigationToggleDialog", true)

	expect(toggleDialog).toBeDefined()

	local LeftText = toggleDialog:FindFirstChild("LeftText", true) :: TextLabel
	expect(LeftText).toBeDefined()

	local RightText = toggleDialog:FindFirstChild("RightText", true) :: TextLabel
	expect(RightText).toBeDefined()

	local Icon = toggleDialog:FindFirstChild("Icon", true)
	expect(Icon).toBeDefined()

	expect(LeftText.Text).toEqual("Some experiences require pressing")
	expect(RightText.Text).toEqual("to toggle menu navigation")

	LocalizationService:SetRobloxLocaleId("es-es")
	waitForEvents.act()

	expect(LeftText.Text).toEqual("Algunas experiencias necesitan que presiones")
	expect(RightText.Text).toEqual("para activar o desactivar el menú de navigación")

	ReactRoblox.act(function()
		root:render(nil)
	end)
end)
