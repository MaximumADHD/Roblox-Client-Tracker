--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
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

local renderWithCoreScriptsStyleProvider
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
	renderWithCoreScriptsStyleProvider = require(CoreGui.RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
	SafetyBubbleModeEntry = require(script.Parent.SafetyBubbleModeEntry)
end

local function getMountableTreeAndStore(props)
	return renderWithCoreScriptsStyleProvider({
		LocalizationProvider = Roact.createElement(LocalizationProvider, {
			localization = Localization.new("en-us"),
		}, {
			SafetyBubbleModeEntry = Roact.createElement(SafetyBubbleModeEntry),
		}),
	})
end

describe("SafetyBubble widget in IGMv2 VR Settings", function()
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
