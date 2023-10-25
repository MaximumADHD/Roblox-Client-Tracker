--!strict
return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local AppStorageService = game:GetService("AppStorageService")

	local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect
	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local Rodux = require(CorePackages.Packages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
	local UIBlox = require(CorePackages.UIBlox)
	local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider

	local MenuNavigationPromptTokenMapper =
		require(script.Parent.Parent.Parent.Parent.TokenMappers.MenuNavigationPromptTokenMapper)
	local GamepadMenu = require(script.Parent.Parent.GamepadMenu)

	local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
	local Reducer = require(script.Parent.Parent.Parent.Parent.Reducer)
	local Components = script.Parent.Parent.Parent
	local Actions = Components.Parent.Actions
	local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)
	local SetScreenSize = require(Actions.SetScreenSize)

	local FFlagEnableGamepadMenuSelector =
		require(script.Parent.Parent.Parent.Parent.Flags.FFlagEnableGamepadMenuSelector)

	local defaultStyle = {
		themeName = "dark",
		fontName = "gotham",
		deviceType = RobloxAppEnums.DeviceType.Console,
	}

	local store

	beforeEach(function()
		store = Rodux.Store.new(Reducer, {}, {
			Rodux.thunkMiddleware,
		})

		store:dispatch(SetGamepadMenuOpen(true))
		store:dispatch(SetScreenSize(Vector2.new(1920, 1080)))
	end)

	if FFlagEnableGamepadMenuSelector then
		it("should render the MenuNavigationDismissablePrompt the first time after a user logs in", function()
			local localization = Localization.new("en-us")

			local function App(props: { Visible: boolean })
				return React.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					StyleProvider = React.createElement(UIBlox.App.Style.AppStyleProvider, {
						style = defaultStyle,
					}, {
						DesignTokenProvider = React.createElement(DesignTokenProvider, {
							tokenMappers = {
								MenuNavigationPrompt = MenuNavigationPromptTokenMapper,
							},
						}, {
							LocalizationProvider = React.createElement(LocalizationProvider, {
								localization = localization,
							}, {
								MenuNavigationDismissablePrompt = React.createElement(GamepadMenu),
							}),
						}),
					}),
				})
			end

			AppStorageService:SetItem("GamepadMenuVirtualCursorPromptShown", "false")

			local container = Instance.new("ScreenGui")

			local root = ReactRoblox.createRoot(container)

			ReactRoblox.act(function()
				root:render(React.createElement(App))
			end)

			local prompt = container:FindFirstChild("MenuNavigationDismissablePrompt", true)
			expect(prompt).toBeDefined()

			local ControllerArea = container:FindFirstChild("ControllerArea", true) :: GuiObject
			expect(ControllerArea).toBeDefined()
			expect(ControllerArea.AbsoluteSize.Y).toBeGreaterThan(0)
			expect(ControllerArea.AbsoluteSize.X).toBeGreaterThan(0)

			local HeaderArea = container:FindFirstChild("HeaderArea", true) :: GuiObject
			expect(HeaderArea).toBeDefined()
			expect(HeaderArea.AbsoluteSize.Y).toBeGreaterThan(0)
			expect(HeaderArea.AbsoluteSize.X).toBeGreaterThan(0)

			local Body = container:FindFirstChild("Body", true) :: GuiObject
			expect(Body).toBeDefined()
			expect(Body.AbsoluteSize.Y).toBeGreaterThan(0)
			expect(Body.AbsoluteSize.X).toBeGreaterThan(0)

			ReactRoblox.act(function()
				root:render(nil)
			end)
		end)

		it("should render the GamepadMenu if the user has seen the prompt", function()
			local localization = Localization.new("en-us")

			local function App(props: { Visible: boolean })
				return React.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					StyleProvider = React.createElement(UIBlox.App.Style.AppStyleProvider, {
						style = defaultStyle,
					}, {
						DesignTokenProvider = React.createElement(DesignTokenProvider, {
							tokenMappers = {
								MenuNavigationPrompt = MenuNavigationPromptTokenMapper,
							},
						}, {
							LocalizationProvider = React.createElement(LocalizationProvider, {
								localization = localization,
							}, {
								MenuNavigationDismissablePrompt = React.createElement(GamepadMenu),
							}),
						}),
					}),
				})
			end

			AppStorageService:SetItem("GamepadMenuVirtualCursorPromptShown", "true")

			local container = Instance.new("ScreenGui")

			local root = ReactRoblox.createRoot(container)

			ReactRoblox.act(function()
				root:render(React.createElement(App))
			end)

			local Menu = container:FindFirstChild("Menu", true)
			expect(Menu).toBeDefined()

			local MenuNavigationToggleDialog = container:FindFirstChild("MenuNavigationToggleDialog", true)
			expect(MenuNavigationToggleDialog).toBeDefined()

			local ControllerBarScreenGui = CoreGui:FindFirstChild("QuickMenuControllerBar", true)
			expect(ControllerBarScreenGui).toBeDefined()

			local ControllerBar = ControllerBarScreenGui:FindFirstChild("ControllerBar", true)
			expect(ControllerBar).toBeDefined()

			ReactRoblox.act(function()
				root:render(nil)
			end)
		end)
	end
end
