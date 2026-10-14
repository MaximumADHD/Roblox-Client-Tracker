--!nonstrict
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
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

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local afterAll = JestGlobals.afterAll
local jestExpect = JestGlobals.expect

local RoactAct = Roact.act

-- APPEXP-4362 workaround: under FFlagTopBarSignalizeSetCores, EmotesMenuMaster.new()
-- registers a Signals.createEffect that fires synchronously and calls
-- setTopBarEnabled; with the default CanPlayEmotes.Value=false it falls into
-- _unmount on the tree that was just mounted, crashing Roact cleanup with
-- "attempt to index nil with 'Disconnect'" and hanging this suite until SIGKILL.
-- Patch Value=true before the require so that firing takes the idempotent
-- _mount branch, then restore so any later test that observes CanPlayEmotes
-- sees its real default. jest.mock is not wired under TestEZ runners in this
-- monolith so save/restore is the cleanest available mocking approach.
-- Remove once the prod fix lands.
local CanPlayEmotes = require(Modules.EmotesMenu.Utility.CanPlayEmotes)
local originalCanPlayEmotesValue = CanPlayEmotes.Value
CanPlayEmotes.Value = true
local EmotesMenuMaster = require(Modules.EmotesMenu.EmotesMenuMaster)
CanPlayEmotes.Value = originalCanPlayEmotesValue

local TopBar = Modules.TopBar
local Presentation = TopBar.Components.Presentation
local GamepadMenu = require(Presentation.GamepadMenu)
local Reducer = require(TopBar.Reducer)
local MenuNavigationPromptTokenMapper = require(TopBar.TokenMappers.MenuNavigationPromptTokenMapper)

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local localization = Localization.new("en-us")

local FFlagTopBarDeprecateCoreGuiRodux = require(TopBar.Flags.FFlagTopBarDeprecateCoreGuiRodux)
local FFlagTopBarDeprecateChatRodux = require(TopBar.Flags.FFlagTopBarDeprecateChatRodux)

if FFlagTopBarDeprecateCoreGuiRodux or FFlagTopBarDeprecateChatRodux then
	describe = describe.skip
end

describe("GamepadMenu", function()
	afterAll(function()
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
							MenuNavigationPrompt = MenuNavigationPromptTokenMapper,
						},
					}, {
						TopBarApp = Roact.createElement(
							GamepadMenu,
							{ chatVersion = Enum.ChatVersion.TextChatService }
						),
					}),
				}),
			}),
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
			"Menu",
			"Chat",
			"Leaderboard",
			"Emotes",
			"Inventory",
			"Respawn",
			"Leave",
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
							MenuNavigationPrompt = MenuNavigationPromptTokenMapper,
						},
					}, {
						GamepadMenu = Roact.createElement(
							GamepadMenu,
							{ chatVersion = Enum.ChatVersion.TextChatService }
						),
					}),
				}),
			}),
		})

		EmotesMenuMaster:_onEmotesChanged({
			Salute = { 3360689775 },
			Agree = { 4849487550 },
			Disagree = { 4849495710 },
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
