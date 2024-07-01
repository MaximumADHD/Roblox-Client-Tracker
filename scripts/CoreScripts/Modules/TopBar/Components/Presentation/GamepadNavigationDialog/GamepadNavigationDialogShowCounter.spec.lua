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

	local TopBar = script.Parent.Parent.Parent.Parent
	local MenuNavigationPromptTokenMapper =
		require(TopBar.TokenMappers.MenuNavigationPromptTokenMapper)

	local GamepadNavigationDialogShowCounter = require(script.Parent.GamepadNavigationDialogShowCounter)
	local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
	local Reducer = require(TopBar.Reducer)
	local Components = TopBar.Components
	local Actions = TopBar.Actions
	local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)
	local SetScreenSize = require(Actions.SetScreenSize)

	local defaultStyle = {
		themeName = "dark",
		fontName = "builder",
		deviceType = RobloxAppEnums.DeviceType.Console,
	}

	local APP_STORAGE_KEY = "GamepadMenuVirtualCursorPromptShown"
	local store

	beforeEach(function()
		store = Rodux.Store.new(Reducer, {}, {
			Rodux.thunkMiddleware,
		})

		store:dispatch(SetGamepadMenuOpen(true))
		store:dispatch(SetScreenSize(Vector2.new(1920, 1080)))
	end)

	local function testCase(params)
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
							GamepadNavigationDialogShowCounter = React.createElement(GamepadNavigationDialogShowCounter, {
								isGamepadNavigationDialogEnabled = params.isEnabled,
								isGamepadNavigationDialogOpen = params.isOpen,
								appStorageKey = APP_STORAGE_KEY,
								maxShownCount = params.maxShownCount,
								SetGamepadNavigationDialogOpen = function(_open) end,
								selectButtonDismissesGamepadNavigationDialog = true,
							}),
						}),
					}),
				}),
			})
		end

		AppStorageService:SetItem("UserId", "12345")
		AppStorageService:SetItem(APP_STORAGE_KEY, params.inStorage)

		local container = Instance.new("ScreenGui")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(App))
		end)

		local element = container:FindFirstChild("GamepadNavigationDialogShowCounter", true)

		ReactRoblox.act(function()
			root:render(nil)
		end)

		return element
	end

	it("should show the dialog if count is less than max", function()
		local element = testCase({
			isOpen = true,
			isEnabled = true,
			inStorage = '{"12345":1}',
			maxShownCount = 3,
		})

		expect(element).toBeDefined()
		expect(AppStorageService:GetItem(APP_STORAGE_KEY)).toEqual('{"12345":2}')
	end)

	it("should not show the dialog if count is equal to the max", function()
		local element = testCase({
			isOpen = true,
			isEnabled = true,
			inStorage = '{"12345":1}',
			maxShownCount = 1,
		})

		expect(element).toBeNil()
		expect(AppStorageService:GetItem(APP_STORAGE_KEY)).toEqual('{"12345":1}')
	end)

	it("should show the dialog if json is invalid", function()
		local element = testCase({
			isOpen = true,
			isEnabled = true,
			inStorage = "{*",
			maxShownCount = 1,
		})

		expect(element).toBeDefined()
		expect(AppStorageService:GetItem(APP_STORAGE_KEY)).toEqual('{"12345":1}')
	end)

	it("should show the dialog if appstorage value is false", function()
		local element = testCase({
			isOpen = true,
			isEnabled = true,
			inStorage = "false",
			maxShownCount = 1,
		})

		expect(element).toBeDefined()
		expect(AppStorageService:GetItem(APP_STORAGE_KEY)).toEqual('{"12345":1}')
	end)

	it("should show the dialog if appstorage value is empty", function()
		local element = testCase({
			isOpen = true,
			isEnabled = true,
			inStorage = "",
			maxShownCount = 1,
		})
		expect(element).toBeDefined()
		expect(AppStorageService:GetItem(APP_STORAGE_KEY)).toEqual('{"12345":1}')
	end)

	it("should not show the dialog if closed", function()
		local element = testCase({
			isOpen = false,
			isEnabled = true,
			inStorage = '{"12345":0}',
			maxShownCount = 10,
		})
		expect(element).toBeNil()
		expect(AppStorageService:GetItem(APP_STORAGE_KEY)).toEqual('{"12345":0}')
	end)

	it("should not show the dialog if disabled", function()
		local element = testCase({
			isOpen = true,
			isEnabled = false,
			inStorage = '{"12345":0}',
			maxShownCount = 10,
		})
		expect(element).toBeNil()
		expect(AppStorageService:GetItem(APP_STORAGE_KEY)).toEqual('{"12345":0}')
	end)
end
