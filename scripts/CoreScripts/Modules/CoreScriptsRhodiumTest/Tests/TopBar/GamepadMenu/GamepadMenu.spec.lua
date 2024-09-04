--!nonstrict
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")
local AppStorageService = game:GetService("AppStorageService")
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local UIBlox = require(CorePackages.UIBlox)
local RoactRodux = require(CorePackages.RoactRodux)
local Rhodium = require(CorePackages.Rhodium)
local Element = Rhodium.Element
local XPath = Rhodium.XPath
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

local defaultStyle = {
	themeName = "dark",
	fontName = "gotham",
	deviceType = RobloxAppEnums.DeviceType.Console,
}


local JestGlobals = require(CorePackages.JestGlobals)
local jestExpect = JestGlobals.expect

local RoactAct = Roact.act

local EmotesMenuMaster = require(Modules.EmotesMenu.EmotesMenuMaster)

local TopBar = Modules.TopBar
local Presentation = TopBar.Components.Presentation
local GamepadMenu = require(Presentation.GamepadMenu)
local Reducer = require(TopBar.Reducer)
local MenuNavigationPromptTokenMapper = require(TopBar.TokenMappers.MenuNavigationPromptTokenMapper)

local ChromeEnabled = require(Modules.Chrome.Enabled)

local localization = Localization.new("en-us")

return function()
	describe("GamepadMenu", function()
		afterAll(function(context)
			if EmotesMenuMaster:isOpen() then
				EmotesMenuMaster:close()
			end
		end)

		it("should create and destroy without errors and have the correct default children", function()
			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = localization,
				}, {
					StyleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
						style = defaultStyle,
					}, {
						DesignTokenProvider = Roact.createElement(DesignTokenProvider, {
							tokenMappers = {
								MenuNavigationPrompt = MenuNavigationPromptTokenMapper
							}
						}, {
							TopBarApp = Roact.createElement(GamepadMenu),
						}),
					})
				})
			})


			local instanceName = "Test-" .. HttpService:GenerateGUID(false)
			local handle = Roact.mount(element, CoreGui, instanceName)

			local path = "game.CoreGui.TopBarApp"
			path = XPath.new(path)
			local baseWidget = Element.new(path)
			jestExpect(baseWidget:waitForRbxInstance(1)).toBeDefined()

			local menuPath = path:cat(XPath.new("Menu"))
			local menuElement = Element.new(menuPath)
			jestExpect(menuElement:waitForRbxInstance(1)).toBeDefined()

			local expectedDefaultChildren = {
				"Menu", "Chat", "Leaderboard", "Emotes", "Inventory", "Respawn", "Leave"
			}

			for _, childName in ipairs(expectedDefaultChildren) do
				local childPath = menuPath:cat(XPath.new(childName))
				local childElement = Element.new(childPath)
				jestExpect(childElement:waitForRbxInstance(1)).toBeDefined()
			end

			Roact.unmount(handle)
		end)

		it("should open the emotes menu when the emotes button is selected", function()
			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = localization,
				}, {
					StyleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
						style = defaultStyle,
					}, {
						DesignTokenProvider = Roact.createElement(DesignTokenProvider, {
							tokenMappers = {
								MenuNavigationPrompt = MenuNavigationPromptTokenMapper
							}
						}, {
							GamepadMenu = Roact.createElement(GamepadMenu),
						}),
					})
				})
			})

			EmotesMenuMaster:_onEmotesChanged({
				Salute = {3360689775},
				Agree = {4849487550},
				Disagree = {4849495710}
			})

			local instance = Roact.mount(element)

			local gamepad = Rhodium.VirtualInput.GamePad.new()

			RoactAct(function()
				gamepad:hitButton(Enum.KeyCode.ButtonStart)
				wait()
			end)

			local emotesPosition = if ChromeEnabled() then 4 else 3

			-- Navigate down to the emotes button
			for i = 1, emotesPosition do
				RoactAct(function()
					gamepad:hitButton(Enum.KeyCode.DPadDown)
					wait()
				end)
			end

			RoactAct(function()
				gamepad:hitButton(Enum.KeyCode.ButtonA)
				wait()
			end)

			jestExpect(EmotesMenuMaster:isOpen()).toBeTruthy()

			gamepad:disconnect()

			Roact.unmount(instance)
		end)
	end)
end
