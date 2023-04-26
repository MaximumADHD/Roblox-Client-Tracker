local Root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = Root.Parent
local useGlobalNavProps = require(script.Parent.useGlobalNavProps)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
local TestHelpers = require(Packages.Dev.TenFootUiTesting).TestHelpers
local renderHookWithProviders = UnitTestHelpers.renderHookWithProviders
local mocks = TestHelpers.mocks
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local function getNavGroupItems(helper)
	local tabGroupItems = helper.result.tabGroupProps.items
	local optionGroupItems = helper.result.optionGroupProps.items

	return tabGroupItems, optionGroupItems
end

describe("useGlobalNavProps", function()
	it("should return configured tabs and options props", function()
		local helper = renderHookWithProviders(function()
			return useGlobalNavProps()
		end, {
			providers = mocks.makeMockProviders(),
		})
		local tabGroupItems, optionGroupItems = getNavGroupItems(helper)

		expect(#tabGroupItems).toEqual(3)
		expect(#optionGroupItems).toEqual(2)
	end)

	it("should support items with both icon strings and icon components", function()
		local helper = renderHookWithProviders(function()
			return useGlobalNavProps()
		end, {
			providers = mocks.makeMockProviders(),
		})
		local tabGroupItems = getNavGroupItems(helper)

		expect(type(tabGroupItems[2].icon)).toEqual("string")
		expect(type(tabGroupItems[3].iconComponent)).toEqual("function")
	end)

	it("should localize item labels", function()
		local providers, nestedMocks = mocks.makeMockProviders()
		local helper = renderHookWithProviders(function()
			return useGlobalNavProps()
		end, {
			providers = providers,
		})
		local tabGroupItems, optionGroupItems = getNavGroupItems(helper)
		local tabsConfig = nestedMocks.globalNavConfig.tabs
		local optionsConfig = nestedMocks.globalNavConfig.options

		expect(tabGroupItems[1].title).toEqual("Localized:" .. tabsConfig[1].titleLocalizationKey)
		expect(optionGroupItems[1].label).toEqual("Localized:" .. optionsConfig[1].titleLocalizationKey)
	end)

	it("should support highlighting a tab when it matches the current route", function()
		local providers, nestedMocks = mocks.makeMockProviders()
		local mockNavigation = nestedMocks.mockNavigation

		local helper = renderHookWithProviders(function()
			return useGlobalNavProps()
		end, {
			providers = providers,
		})
		local tabGroupItems = getNavGroupItems(helper)

		expect(tabGroupItems[1].showRoundedBackground).toEqual(false)
		expect(tabGroupItems[2].showRoundedBackground).toEqual(false)
		expect(tabGroupItems[3].showRoundedBackground).toEqual(false)

		ReactRoblox.act(function()
			mockNavigation.navigate(mocks.mockAppPage.Home)
		end)
		tabGroupItems = getNavGroupItems(helper.rerender())

		expect(tabGroupItems[1].showRoundedBackground).toEqual(true)
		expect(tabGroupItems[2].showRoundedBackground).toEqual(false)
		expect(tabGroupItems[3].showRoundedBackground).toEqual(false)

		ReactRoblox.act(function()
			mockNavigation.navigate(mocks.mockAppPage.Games)
		end)
		tabGroupItems = getNavGroupItems(helper.rerender())

		expect(tabGroupItems[1].showRoundedBackground).toEqual(false)
		expect(tabGroupItems[2].showRoundedBackground).toEqual(true)
		expect(tabGroupItems[3].showRoundedBackground).toEqual(false)
	end)

	describe("item onActivated", function()
		it("should dispatch a navigate action", function()
			local providers, nestedMocks = mocks.makeMockProviders()
			local mockNavigation = nestedMocks.mockNavigation

			local helper = renderHookWithProviders(function()
				return useGlobalNavProps()
			end, {
				providers = providers,
			})
			local tabGroupItems = getNavGroupItems(helper)

			ReactRoblox.act(function()
				tabGroupItems[1].onActivated()
			end)

			expect(mockNavigation.navigate).toHaveBeenCalledWith(mocks.mockAppPage.Home)
		end)

		it("should fire a reload event when navigating to the same page", function()
			local providers, nestedMocks = mocks.makeMockProviders({
				navigationState = { index = 2 }, -- Initial route: Home
			})
			local helper = renderHookWithProviders(function()
				return useGlobalNavProps()
			end, {
				providers = providers,
			})
			local tabGroupItems = getNavGroupItems(helper)

			ReactRoblox.act(function()
				tabGroupItems[1].onActivated()
			end)

			expect(nestedMocks.mockTenFootUiContext.LuaAppEvents.ReloadPage.fire).toHaveBeenCalledWith(
				expect.anything(),
				mocks.mockAppPage.Home
			)
		end)

		it("should trigger an ActionTaken event if an actionType is provided", function()
			local providers, nestedMocks = mocks.makeMockProviders()
			local helper = renderHookWithProviders(function()
				return useGlobalNavProps()
			end, {
				providers = providers,
			})

			local tabGroupItems = getNavGroupItems(helper)
			local tabsConfig = nestedMocks.globalNavConfig.tabs
			local notificationActionTakenSpy = nestedMocks.mockNotificationService.ActionTaken

			ReactRoblox.act(function()
				tabGroupItems[1].onActivated()
			end)

			expect(notificationActionTakenSpy).never.toHaveBeenCalled()

			ReactRoblox.act(function()
				tabGroupItems[2].onActivated()
			end)

			expect(notificationActionTakenSpy).toHaveBeenCalledWith(expect.anything(), tabsConfig[2].actionType)

			ReactRoblox.act(function()
				tabGroupItems[3].onActivated()
			end)

			expect(notificationActionTakenSpy).toHaveBeenCalledWith(expect.anything(), tabsConfig[3].actionType)
		end)

		it("should trigger a ButtonActivated event", function()
			local providers, nestedMocks = mocks.makeMockProviders()
			local helper = renderHookWithProviders(function()
				return useGlobalNavProps()
			end, {
				providers = providers,
			})
			local tabGroupItems = getNavGroupItems(helper)

			expect(nestedMocks.mockTenFootUiContext.buttonClick).never.toHaveBeenCalled()

			ReactRoblox.act(function()
				tabGroupItems[1].onActivated()
			end)

			expect(nestedMocks.mockTenFootUiContext.buttonClick).toHaveBeenCalled()
		end)
	end)
end)
