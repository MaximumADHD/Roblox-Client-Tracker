--!nonstrict
-- Shop and Switch Avatar stay open when the sidesheet opens because they do
-- not follow GuiService.MenuOpened. These tests drive the sidesheet visibility
-- signal and a fake ChromeService to check that those windows close and stay
-- closed.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local Signals = require(CorePackages.Packages.Signals)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local SHOP_ID = Constants.IN_EXPERIENCE_SHOP_ID
local AVATAR_SWITCHER_ID = Constants.AVATAR_SWITCHER_ID

type WindowIntegration = {
	components: {
		Window: boolean,
	},
}

local getVisible, setVisible = Signals.createSignal(false)
local openState: { [string]: boolean } = {}
local registered: { [string]: WindowIntegration? } = {}
local toggleCalls: { string } = {}

local function toggleWindow(_self: unknown, windowId: string)
	openState[windowId] = not openState[windowId]
	table.insert(toggleCalls, windowId)
end

jest.mock(Chrome.Service, function()
	return {
		integrations = function()
			return registered
		end,
		isWindowOpen = function(_self, windowId: string)
			return openState[windowId] == true
		end,
		toggleWindow = toggleWindow,
	}
end)

jest.mock(CorePackages.Workspace.Packages.InExperienceSideSheet, function()
	return {
		getSideSheetVisibility = function(scope)
			return getVisible(scope)
		end,
	}
end)

local bindCloseShopAndAvatarSwitcherOnSideSheet = require(script.Parent.closeShopAndAvatarSwitcherOnSideSheet)

local stop: (() -> ())? = nil

-- collectgarbage("collect") is unavailable in the Roblox VM, so allocate until a
-- weakly held sentinel is collected. That means a full GC cycle has finished.
local function completeGarbageCollectionCycle()
	local sentinel = setmetatable({}, { __mode = "k" })
	sentinel[{}] = true
	while next(sentinel) ~= nil do
		local _ = table.create(10000, 0)
	end
end

local function resetWindow(windowId: string, isOpen: boolean, isRegistered: boolean)
	openState[windowId] = isOpen
	if isRegistered then
		-- Annotate before assignment so the table literal is checked as WindowIntegration.
		-- An if-expression infers a sealed table unioned with nil, which does not match.
		local integration: WindowIntegration = {
			components = {
				Window = true,
			},
		}
		registered[windowId] = integration
	else
		registered[windowId] = nil
	end
end

describe("closeShopAndAvatarSwitcherOnSideSheet", function()
	beforeEach(function()
		if stop then
			stop()
			stop = nil
		end

		table.clear(toggleCalls)
		resetWindow(SHOP_ID, false, true)
		resetWindow(AVATAR_SWITCHER_ID, false, true)
		setVisible(false)
		stop = bindCloseShopAndAvatarSwitcherOnSideSheet()
	end)

	afterEach(function()
		if stop then
			stop()
			stop = nil
		end
	end)

	it("SHOULD close Shop and Switch Avatar when the sidesheet opens", function()
		resetWindow(SHOP_ID, true, true)
		resetWindow(AVATAR_SWITCHER_ID, true, true)

		setVisible(true)

		expect(openState[SHOP_ID]).toBe(false)
		expect(openState[AVATAR_SWITCHER_ID]).toBe(false)
		expect(toggleCalls).toEqual({ SHOP_ID, AVATAR_SWITCHER_ID })
	end)

	it("SHOULD leave Shop and Switch Avatar closed when the sidesheet closes", function()
		resetWindow(SHOP_ID, true, true)
		resetWindow(AVATAR_SWITCHER_ID, true, true)
		setVisible(true)
		table.clear(toggleCalls)

		setVisible(false)

		expect(openState[SHOP_ID]).toBe(false)
		expect(openState[AVATAR_SWITCHER_ID]).toBe(false)
		expect(toggleCalls).toEqual({})
	end)

	it("SHOULD leave a window closed when it was already closed", function()
		resetWindow(SHOP_ID, false, true)
		resetWindow(AVATAR_SWITCHER_ID, true, true)

		setVisible(true)
		setVisible(false)

		expect(openState[SHOP_ID]).toBe(false)
		expect(openState[AVATAR_SWITCHER_ID]).toBe(false)
		expect(toggleCalls).toEqual({ AVATAR_SWITCHER_ID })
	end)

	it("SHOULD leave Shop open when the player opens it while the sidesheet is open", function()
		resetWindow(SHOP_ID, true, true)
		setVisible(true)

		toggleWindow(nil, SHOP_ID)
		setVisible(false)

		expect(openState[SHOP_ID]).toBe(true)
		expect(toggleCalls).toEqual({ SHOP_ID, SHOP_ID })
	end)

	it("SHOULD close Shop and Switch Avatar after the caller drops the cleanup", function()
		if stop then
			stop()
			stop = nil
		end

		resetWindow(SHOP_ID, true, true)
		resetWindow(AVATAR_SWITCHER_ID, true, true)

		-- The returned cleanup is the only strong root of the sidesheet effect
		-- unless the module keeps it. Drop it, then collect, and the windows
		-- must still close.
		local anchor = (function()
			local cleanup = bindCloseShopAndAvatarSwitcherOnSideSheet()
			return setmetatable({ cleanup }, { __mode = "v" })
		end)()
		completeGarbageCollectionCycle()
		-- Re-root after collection so afterEach can disconnect whatever survived.
		stop = anchor[1]

		setVisible(true)

		expect(openState[SHOP_ID]).toBe(false)
		expect(openState[AVATAR_SWITCHER_ID]).toBe(false)
	end)

	it("SHOULD not toggle a window that is not registered", function()
		resetWindow(SHOP_ID, false, false)
		resetWindow(AVATAR_SWITCHER_ID, false, false)

		setVisible(true)
		setVisible(false)

		expect(toggleCalls).toEqual({})
	end)
end)
