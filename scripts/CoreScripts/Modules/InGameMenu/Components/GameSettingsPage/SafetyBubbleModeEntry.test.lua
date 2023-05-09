--!nonstrict
local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local beforeAll = JestGlobals.beforeAll
local jest = JestGlobals.jest
local ReactTestingLibrary = require(CorePackages.Workspace.Packages.ReactTestingLibrary)
local render = ReactTestingLibrary.render
local fireEvent = ReactTestingLibrary.fireEvent
local GameSettings = UserSettings().GameSettings

local InGameMenuDependencies
local Roact
local UIBlox

local InGameMenu
local Localization
local LocalizationProvider

local AppDarkTheme
local AppFont

local GetFFlagEnableIGMv2VoiceReportFlows = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableIGMv2VoiceReportFlows

local appStyle

local SafetyBubbleModeEntry

local function resetModules()
	jest.resetModules()
	InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	UIBlox = InGameMenuDependencies.UIBlox
	UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
	Roact = InGameMenuDependencies.Roact

	-- All the ReactTestingLibrary stuff needs to be re-imported
	ReactTestingLibrary = require(CorePackages.Workspace.Packages.ReactTestingLibrary)
	render = ReactTestingLibrary.render
	fireEvent = ReactTestingLibrary.fireEvent

	InGameMenu = script.Parent.Parent.Parent
	Localization = require(InGameMenu.Localization.Localization)
	LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

	AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	SafetyBubbleModeEntry = require(script.Parent.SafetyBubbleModeEntry)

	GetFFlagEnableIGMv2VoiceReportFlows = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableIGMv2VoiceReportFlows
end

-- TODO Remove when GetFFlagEnableIGMv2VoiceReportFlows is removed
it("Only runs when GetFFlagEnableIGMv2VoiceReportFlows is active", function()
	-- Because there seems to be no way to inject globals through jest 3 while code is running as part of a test,
	-- And because these tests do depend on some fixes in AppStyleProvider.lua, DarkTheme.lua and LightTheme.lua
	-- I'm flagging the entire test to only run when those fixes are in place. The old version of these tests is also
	-- flagged to only run when GetFFlagEnableIGMv2VoiceReportFlows is off, so to be removed together with the flag.

	-- Furthermore, because running an empty test in Jest 3 fails with "Your test suite must contain at least one test."
	-- Here is a fake test doing nothing:

	expect(true).toBe(true)
end)

if GetFFlagEnableIGMv2VoiceReportFlows() then
	local function getMountableTreeAndStore(props)
		return Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					SafetyBubbleModeEntry = Roact.createElement(SafetyBubbleModeEntry),
				}),
			})
	end

	describe("In-Game Menu Report List", function()
		-- Need this to skip an afterEach hook within the RoactTestingLibrary
		-- that is not necessary if we are resetting the modules ourselves
		beforeAll(function()
			_G.RTL_SKIP_AUTO_CLEANUP = "true"
		end)

		beforeEach(function()
			resetModules()
		end)

		it("Should mount without errors", function()
			local element = getMountableTreeAndStore()
			render(element)
		end)

		it("Should be modifying the VRBubble settings when the user picks an option", function()
			local element = getMountableTreeAndStore()
			local result = render(element)
			local noOne = result.getByText("No One")
			expect(noOne).toBeDefined()
			fireEvent.click(noOne)
			expect(GameSettings.VRSafetyBubbleMode).toEqual(Enum.VRSafetyBubbleMode.NoOne)

			local onlyFriends = result.getByText("Only Friends")
			expect(onlyFriends).toBeDefined()
			fireEvent.click(onlyFriends)
			expect(GameSettings.VRSafetyBubbleMode).toEqual(Enum.VRSafetyBubbleMode.OnlyFriends)

			local anyone = result.getByText("Anyone")
			expect(anyone).toBeDefined()
			fireEvent.click(anyone)
			expect(GameSettings.VRSafetyBubbleMode).toEqual(Enum.VRSafetyBubbleMode.Anyone)
		end)
	end)
end
