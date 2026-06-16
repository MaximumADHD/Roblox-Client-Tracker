local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach

local Chrome = script:FindFirstAncestor("Chrome")

local MOCK_PAGES = {
	PlayersPage = { Page = { Name = "Players" } },
	GameSettingsPage = { Page = { Name = "GameSettings" } },
	TraversalHistoryPage = { Page = { Name = "TraversalHistoryPage" } },
}

local mockCurrentPageSignalListeners: { (string) -> () } = {}
local mockIsVisible = false
local mockSetVisibility = jest.fn()
local mockSwitchToPage = jest.fn()

jest.mock(Chrome.Parent.Settings.SettingsHub, function()
	return {
		CurrentPageSignal = {
			connect = function(_self, callback)
				table.insert(mockCurrentPageSignalListeners, callback)
				return { disconnect = function() end }
			end,
		},
		Instance = MOCK_PAGES,
		GetVisibility = function(_self)
			return mockIsVisible
		end,
		SetVisibility = function(_self, ...)
			mockSetVisibility(...)
		end,
		SwitchToPage = function(_self, ...)
			mockSwitchToPage(...)
		end,
	}
end)

local Settings = Chrome.Parent.Settings
local EnumReactPage = require(Settings.EnumReactPage)

local mockSetCurrentReactPage = jest.fn()

jest.mock(Settings.ReactPageSignal, function()
	return function(_scope)
		return {
			currentReactPage = function() end,
			setCurrentReactPage = mockSetCurrentReactPage,
		}
	end
end)

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local function fireCurrentPageSignal(pageName: string)
	for _, listener in ipairs(mockCurrentPageSignalListeners) do
		listener(pageName)
	end
end

describe("InGameMenuIntegrationUtils", function()
	beforeEach(function()
		mockCurrentPageSignalListeners = {}
		mockIsVisible = false
		mockSetVisibility:mockReset()
		mockSwitchToPage:mockReset()
		mockSetCurrentReactPage:mockReset()
	end)

	describe("createPageOpenSignal", function()
		it("SHOULD return false initially", function()
			local signal = InGameMenuIntegrationUtils.createPageOpenSignal("PlayersPage")
			expect(signal:get()).toBe(false)
		end)

		it("SHOULD return true when the matching page opens", function()
			local signal = InGameMenuIntegrationUtils.createPageOpenSignal("PlayersPage")
			task.wait()

			fireCurrentPageSignal("Players")
			expect(signal:get()).toBe(true)
		end)

		it("SHOULD return false when a different page opens", function()
			local signal = InGameMenuIntegrationUtils.createPageOpenSignal("PlayersPage")
			task.wait()

			fireCurrentPageSignal("GameSettings")
			expect(signal:get()).toBe(false)
		end)

		it("SHOULD transition from true to false when switching to another page", function()
			local signal = InGameMenuIntegrationUtils.createPageOpenSignal("PlayersPage")
			task.wait()

			fireCurrentPageSignal("Players")
			expect(signal:get()).toBe(true)

			fireCurrentPageSignal("GameSettings")
			expect(signal:get()).toBe(false)
		end)

		it("SHOULD resolve to false without erroring when pageKey is not in SettingsHub", function()
			local signal = InGameMenuIntegrationUtils.createPageOpenSignal("NonExistentPage")
			task.wait()

			expect(function()
				fireCurrentPageSignal("Players")
			end).never.toThrow()
			expect(signal:get()).toBe(false)
		end)
	end)

	describe("toggleIGMPage", function()
		it("SHOULD close the menu when visible and page is already open", function()
			mockIsVisible = true
			InGameMenuIntegrationUtils.toggleIGMPage("PlayersPage", true)
			expect(mockSetVisibility).toHaveBeenCalledWith(false)
		end)

		it("SHOULD switch to the page when visible but a different page is open", function()
			mockIsVisible = true
			InGameMenuIntegrationUtils.toggleIGMPage("PlayersPage", false)
			expect(mockSwitchToPage).toHaveBeenCalledWith(MOCK_PAGES.PlayersPage, true)
		end)

		it("SHOULD open the menu to the page when not visible", function()
			mockIsVisible = false
			InGameMenuIntegrationUtils.toggleIGMPage("PlayersPage", false)
			expect(mockSetVisibility).toHaveBeenCalledWith(true, false, MOCK_PAGES.PlayersPage)
		end)
	end)

	describe("toggleReactPage", function()
		it("SHOULD close the menu and clear the react page when visible and page is already open", function()
			mockIsVisible = true
			InGameMenuIntegrationUtils.toggleReactPage("TraversalHistoryPage", true, EnumReactPage.TraversalHistory)
			expect(mockSetVisibility).toHaveBeenCalledWith(false)
			expect(mockSetCurrentReactPage).toHaveBeenCalledWith(nil)
			expect(mockSwitchToPage).never.toHaveBeenCalled()
		end)

		it("SHOULD switch to the page and set the react page when visible but page is not open", function()
			mockIsVisible = true
			InGameMenuIntegrationUtils.toggleReactPage("TraversalHistoryPage", false, EnumReactPage.TraversalHistory)
			expect(mockSwitchToPage).toHaveBeenCalledWith(MOCK_PAGES.TraversalHistoryPage, true)
			expect(mockSetCurrentReactPage).toHaveBeenCalledWith(EnumReactPage.TraversalHistory)
			expect(mockSetVisibility).never.toHaveBeenCalled()
		end)

		it("SHOULD open the menu to the page and set the react page when not visible", function()
			mockIsVisible = false
			InGameMenuIntegrationUtils.toggleReactPage("TraversalHistoryPage", false, EnumReactPage.TraversalHistory)
			expect(mockSetVisibility).toHaveBeenCalledWith(true, false, MOCK_PAGES.TraversalHistoryPage)
			expect(mockSetCurrentReactPage).toHaveBeenCalledWith(EnumReactPage.TraversalHistory)
			expect(mockSwitchToPage).never.toHaveBeenCalled()
		end)
	end)
end)
