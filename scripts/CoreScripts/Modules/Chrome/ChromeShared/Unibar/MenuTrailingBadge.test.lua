local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Signals = require(CorePackages.Packages.Signals)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local storedValues: { [string]: any } = {}
local badgeText: string? = nil
local activationCallback: ((string) -> ())? = nil

local getCustomText: Signals.getter<string?>, setCustomText: Signals.setter<string?> =
	Signals.createSignal(nil :: string?)

jest.mock(Chrome.ChromeShared.Service.LocalStore, function()
	return {
		getValue = function(key)
			return storedValues[key]
		end,
		storeForLocalPlayer = function(key, value)
			storedValues[key] = value
		end,
	}
end)

jest.mock(Chrome.ChromeShared.Service, function()
	return {
		onIntegrationActivated = function()
			return {
				connect = function(_self, callback)
					activationCallback = callback
					return {
						disconnect = function()
							if activationCallback == callback then
								activationCallback = nil
							end
						end,
					}
				end,
			}
		end,
	}
end)

jest.mock(CorePackages.Workspace.Packages.Localization, function()
	return {
		Hooks = {
			useLocalization = function()
				return { text = "New" }
			end,
		},
	}
end)

jest.mock(CorePackages.Packages.Foundation, function()
	local actual = jest.requireActual(CorePackages.Packages.Foundation) :: any
	return setmetatable({
		Badge = function(props)
			badgeText = props.text
			return nil
		end,
		View = function(props)
			return React.createElement("Frame", {}, props.children)
		end,
	}, { __index = actual })
end)

local MenuTrailingBadge = require(script.Parent.MenuTrailingBadge)

-- Read rather than mocked, because the component captures it at module scope and
-- one registry cannot hold both states. CI runs this file in both the `default`
-- config (off) and `fastFlags-allOn` (on), so branching on the real value covers
-- the kill switch for free -- the off branches assert that the badge behaves
-- exactly as it did before the slot existed.
local customCopyEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableCustomTextInMenuTrailingBadge

local STORAGE_KEY = "TestBadgeStorageKey"
local MAX_VIEW_COUNT = 5

local container: Frame
local root: any

local function renderBadge(integrationId: string, maxViewCount: number?, withCustomText: boolean?)
	ReactRoblox.act(function()
		root:render(React.createElement(MenuTrailingBadge, {
			integrationId = integrationId,
			config = {
				localStorageKey = STORAGE_KEY,
				maxViewCount = maxViewCount or MAX_VIEW_COUNT,
				customText = if withCustomText == false then nil else getCustomText,
			},
		}))
	end)
end

local function activate(integrationId: string)
	ReactRoblox.act(function()
		(activationCallback :: (string) -> ())(integrationId)
	end)
end

describe("MenuTrailingBadge", function()
	beforeEach(function()
		storedValues = {}
		badgeText = nil
		activationCallback = nil
		ReactRoblox.act(function()
			setCustomText(nil)
		end)
		container = Instance.new("Frame")
		root = ReactRoblox.createRoot(container)
	end)

	afterEach(function()
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("SHOULD render the default label and spend a view WHEN there is no custom copy", function()
		renderBadge("row-no-custom")

		expect(badgeText).toBe("New")
		expect(storedValues[STORAGE_KEY]).never.toBeNil()
	end)

	it("SHOULD render the default label WHEN the config supplies no custom text at all", function()
		renderBadge("row-custom-absent", nil, false)

		expect(badgeText).toBe("New")
		expect(storedValues[STORAGE_KEY]).never.toBeNil()
	end)

	it("SHOULD render custom copy INSTEAD OF the default label WHEN the signal yields text", function()
		setCustomText("20% off")

		renderBadge("row-custom")

		expect(badgeText).toBe(if customCopyEnabled then "20% off" else "New")
	end)

	it("SHOULD NOT spend a view WHEN custom copy owns the slot", function()
		setCustomText("20% off")

		renderBadge("row-custom-no-view")

		if customCopyEnabled then
			expect(storedValues[STORAGE_KEY]).toBeNil()
		else
			expect(storedValues[STORAGE_KEY]).never.toBeNil()
		end
	end)

	it("SHOULD render nothing WHEN the view count is exhausted and there is no custom copy", function()
		storedValues[STORAGE_KEY] = MAX_VIEW_COUNT

		renderBadge("row-exhausted")

		expect(badgeText).toBeNil()
	end)

	it("SHOULD still render custom copy WHEN the default label is already dismissed", function()
		storedValues[STORAGE_KEY] = MAX_VIEW_COUNT
		setCustomText("20% off")

		renderBadge("row-dismissed-with-custom")

		-- At flag-off a dismissed badge stays dismissed, custom copy or not.
		if customCopyEnabled then
			expect(badgeText).toBe("20% off")
		else
			expect(badgeText).toBeNil()
		end
	end)

	it("SHOULD render custom copy WHEN the default label is disabled by maxViewCount 0", function()
		setCustomText("20% off")

		renderBadge("row-custom-only", 0)

		if customCopyEnabled then
			expect(badgeText).toBe("20% off")
		else
			expect(badgeText).toBeNil()
		end
	end)

	it("SHOULD persist dismissal on activation WHILE custom copy is showing", function()
		setCustomText("20% off")
		renderBadge("row-dismissed-under-custom")

		expect(activationCallback).never.toBeNil()
		activate("row-dismissed-under-custom")

		expect(storedValues[STORAGE_KEY]).toBe(MAX_VIEW_COUNT)
	end)

	it("SHOULD ignore activation of a different integration", function()
		setCustomText("20% off")
		renderBadge("row-other-activated")

		activate("some-other-row")

		-- Asserted as "not dismissed" rather than "nothing stored", because at
		-- flag-off custom copy is ignored and the mount legitimately spends a view.
		expect(storedValues[STORAGE_KEY]).never.toBe(MAX_VIEW_COUNT)
	end)

	it("SHOULD stay hidden on a later mount WHEN it was dismissed under custom copy", function()
		setCustomText("20% off")
		renderBadge("row-custom-then-gone")
		activate("row-custom-then-gone")

		ReactRoblox.act(function()
			root:unmount()
		end)
		root = ReactRoblox.createRoot(container)
		badgeText = nil

		-- Custom copy is gone by this menu open, so the default label would come
		-- back here if the activation under custom copy had not been recorded.
		ReactRoblox.act(function()
			setCustomText(nil)
		end)
		renderBadge("row-custom-then-gone")

		expect(badgeText).toBeNil()
	end)

	it("SHOULD fall back to the default label WHEN custom copy goes away while mounted", function()
		setCustomText("20% off")
		renderBadge("row-custom-expires")
		expect(badgeText).toBe(if customCopyEnabled then "20% off" else "New")

		-- Driven through the signal rather than a re-render, so this covers the
		-- live subscription the same way an expiring offer would hit it.
		ReactRoblox.act(function()
			setCustomText(nil)
		end)

		expect(badgeText).toBe("New")
	end)
end)
