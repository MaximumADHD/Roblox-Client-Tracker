--!nonstrict
-- LeaveGame captures its copy flags at require time and builds either the React page or the
-- legacy page then. Each case loads a fresh copy so both implementations are covered.
-- FFlagPioneerLeaveLogsOut also depends on engine features the test engine does not report,
-- so the sweep cannot turn that branch on by itself.

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

-- requireActual runs before the mocks below are consulted, so these stay the test's single copies.
local React = jest.requireActual(CorePackages.Packages.React)
local ReactRoblox = jest.requireActual(CorePackages.Packages.ReactRoblox)
local ReactFocusNavigation = jest.requireActual(CorePackages.Packages.ReactFocusNavigation)
local Foundation = jest.requireActual(CorePackages.Packages.Foundation)
local Responsive = jest.requireActual(CorePackages.Workspace.Packages.Responsive)
local Localization = jest.requireActual(CorePackages.Workspace.Packages.Localization)
local InExperienceLocales = jest.requireActual(CorePackages.Workspace.Packages.InExperienceLocales)

local mockIsPioneer = false
local mockLeaveLogsOut = false
local logoutLabelEnabled = false

jest.mock(CorePackages.Packages.React, function()
	return React
end)
jest.mock(CorePackages.Packages.ReactRoblox, function()
	return ReactRoblox
end)
jest.mock(CorePackages.Packages.ReactFocusNavigation, function()
	return ReactFocusNavigation
end)
jest.mock(CorePackages.Packages.Foundation, function()
	return Foundation
end)
jest.mock(CorePackages.Workspace.Packages.Responsive, function()
	return Responsive
end)
jest.mock(CorePackages.Workspace.Packages.Localization, function()
	return Localization
end)
jest.mock(CorePackages.Workspace.Packages.InExperienceLocales, function()
	return InExperienceLocales
end)

jest.mock(CorePackages.Workspace.Packages.PioneerUtils, function()
	local actual = jest.requireActual(CorePackages.Workspace.Packages.PioneerUtils)
	return setmetatable({
		isPioneerLaunch = function()
			return mockIsPioneer
		end,
	}, { __index = actual })
end)

jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	local actual = jest.requireActual(CorePackages.Workspace.Packages.SharedFlags)
	return setmetatable({}, {
		__index = function(_, key)
			if key == "FFlagPioneerLeaveLogsOut" then
				return mockLeaveLogsOut
			end
			return actual[key]
		end,
	})
end)

jest.mock(CorePackages.Workspace.Packages.InExperienceSideSheet, function()
	local actual = jest.requireActual(CorePackages.Workspace.Packages.InExperienceSideSheet)
	return setmetatable({
		Flags = setmetatable({}, {
			__index = function(_, key)
				if key == "FFlagPioneerLogoutButtonLabel" then
					return logoutLabelEnabled
				end
				return actual.Flags[key]
			end,
		}),
	}, { __index = actual })
end)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenu.Resources.Constants)
local SideSheetLocalizationKeys =
	require(CorePackages.Workspace.Packages.InExperienceSideSheet).Constants.LocalizationKeys

local LEAVE_CONFIRMATION = RobloxTranslator:FormatByKey(InGameMenuConstants.ConfirmLeaveGameLocalizedKey)
local LEAVE_BUTTON = RobloxTranslator:FormatByKey(InGameMenuConstants.LeaveGameLocalizedKey)
local LOGOUT_CONFIRMATION = RobloxTranslator:FormatByKey(SideSheetLocalizationKeys.LogoutConfirmation)
local LOGOUT_BUTTON = RobloxTranslator:FormatByKey(SideSheetLocalizationKeys.LogoutButton)
-- The legacy button's flag-off arm is the literal master used, not a translated key.
local LEGACY_LEAVE_BUTTON = "Leave"

local activeCleanup: (() -> ())? = nil

local function readText(parent: Instance, childName: string): string
	local child = parent:FindFirstChild(childName)
	assert(child ~= nil and child:IsA("TextLabel"), childName .. " should be a TextLabel")
	return child.Text
end

local function expectRenderedText(root: Instance, text: string)
	local match = nil
	for _, descendant in root:GetDescendants() do
		if descendant:IsA("TextLabel") and descendant.Text == text then
			match = descendant
			break
		end
	end
	expect(match).never.toBeNil()
end

local function loadLeavePage(refactorButtons: boolean, logoutLabel: boolean)
	mockIsPioneer = true
	mockLeaveLogsOut = true
	logoutLabelEnabled = logoutLabel

	local page
	jest.isolateModules(function()
		jest.mock(RobloxGui.Modules.Settings.Flags.FFlagRefactorMenuConfirmationButtons, function()
			return refactorButtons
		end)
		-- Isolation loads a new UIBlox. Theme reads it while LeaveGame is required.
		local UIBlox = require(CorePackages.Packages.UIBlox)
		UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
		page = require(RobloxGui.Modules.Settings.Pages.LeaveGame)
	end)

	local screenGui = nil
	if refactorButtons then
		expect(page.RenderPage).never.toBeNil()
		-- The leave button focuses itself on mount, which GuiService only allows under PlayerGui.
		screenGui = Instance.new("ScreenGui")
		screenGui.Name = "LeaveGameTestGui"
		local localPlayer = game:GetService("Players").LocalPlayer
		assert(localPlayer, "LocalPlayer must exist for the leave button focus mount")
		screenGui.Parent = localPlayer:WaitForChild("PlayerGui")
		page.Page.Parent = screenGui
		ReactRoblox.act(function()
			page.RenderPage()
		end)
	else
		expect(page.LeaveGameButton).never.toBeNil()
	end

	activeCleanup = function()
		if page.PageRoot then
			page.PageRoot:unmount()
		end
		if page.Page then
			page.Page:Destroy()
		end
		if page.TabHeader then
			page.TabHeader:Destroy()
		end
		if screenGui then
			screenGui:Destroy()
		end
	end

	return page
end

describe("Settings LeaveGame pioneer logout copy", function()
	afterEach(function()
		if activeCleanup then
			activeCleanup()
			activeCleanup = nil
		end
		mockIsPioneer = false
		mockLeaveLogsOut = false
		logoutLabelEnabled = false
	end)

	describe("the React leave page", function()
		it("SHOULD show logout confirmation and button copy WHEN the logout label is on", function()
			local page = loadLeavePage(true, true)

			expectRenderedText(page.Page, LOGOUT_CONFIRMATION)
			expectRenderedText(page.Page, LOGOUT_BUTTON)
		end)

		it("SHOULD keep leave confirmation and button copy WHEN the logout label is off", function()
			local page = loadLeavePage(true, false)

			expectRenderedText(page.Page, LEAVE_CONFIRMATION)
			expectRenderedText(page.Page, LEAVE_BUTTON)
		end)
	end)

	describe("the legacy leave page", function()
		it("SHOULD show logout confirmation and button copy WHEN the logout label is on", function()
			local page = loadLeavePage(false, true)

			expect(readText(page.Page, "LeaveGameText")).toBe(LOGOUT_CONFIRMATION)
			expect(readText(page.LeaveGameButton, "LeaveGameTextLabel")).toBe(LOGOUT_BUTTON)
		end)

		it("SHOULD keep leave confirmation and the Leave button WHEN the logout label is off", function()
			local page = loadLeavePage(false, false)

			expect(readText(page.Page, "LeaveGameText")).toBe(LEAVE_CONFIRMATION)
			expect(readText(page.LeaveGameButton, "LeaveGameTextLabel")).toBe(LEGACY_LEAVE_BUTTON)
		end)
	end)
end)
