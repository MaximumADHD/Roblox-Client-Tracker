--!nonstrict
-- Tests behavior of `ShopEntrypoint.lua` under the cross-product of:
--   * `coreGuiShopAvailable` initial value (developer's `StarterGui` policy
--     for `Enum.CoreGuiType.ExperienceShop`)
--   * `FFlagEnableShopPrefetch` (gates join-time prefetch)
--   * `FFlagHideShopMenuOnFailure` (the visibility latch the prefetch result
--     keys on)
--
-- Strategy: ShopEntrypoint does all of its work at require time, so each
-- scenario re-requires the module under fresh `jest.isolateModules`+mocks.
-- Persistent mocks (Chrome service singleton, `ChromeUtils`, components,
-- prefetch helper) are pinned at the top level so they survive isolation
-- and so callbacks captured at module-load time remain accessible to the
-- assertions below. The `setCoreGuiAvailability` mock intentionally does
-- NOT auto-fire its callback, so each test can drive mid-session
-- transitions explicitly (and so the initial `getInitialAvailability`
-- result is what the integration registers with).
--
-- Out of scope (require `mockDataModel = true` to spy on engine
-- instances, which the `ChromeTests` suite does not enable):
--   * Toggling `game:GetEngineFeature("ShopCoreGuiToggleSupported")` and
--     `game:GetEngineFeature("EnableOpenShopSignal")`; these are treated
--     as `true` (their production state). Tests that depend on the
--     CoreGui listener wiring guard themselves on the captured callback
--     being non-nil so they self-skip if the feature is off in the
--     test build.
--   * Firing `MarketplaceService.OpenShopRequested`; the engine signal
--     can't be fired from Luau, so the OpenShop handler path is not
--     directly exercised here. The same latch (`shouldShowShop`) gates
--     both the unibar entry and the OpenShop handler, so the latch
--     assertions in this file are the unit-level guarantee for the
--     OpenShop path as well.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local StarterGui = game:GetService("StarterGui")
local React = require(CorePackages.Packages.React)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local afterAll = JestGlobals.afterAll

local InExperienceShopPackage = CorePackages.Workspace.Packages.InExperienceShop

-- Module-scoped captures populated by mock factories. Hoisted-mock
-- factories close over these by reference, so production code running
-- inside `jest.isolateModules` writes to the same slots the assertions
-- read below.
local capturedSetCoreGuiCallback: ((boolean) -> ())? = nil
local capturedPrefetchOnResult: ((boolean) -> ())? = nil
local lastIntegration: any = nil
local lastRegisterProps: any = nil
local mappedSignalActive = false
local mockedIsActiveSignal = {
	get = function()
		return mappedSignalActive
	end,
	connect = function()
		return { disconnect = function() end }
	end,
}

-- Sentinel values for the `availability` enum the fake exposes. Real
-- ChromeService uses numeric ids; only equality matters for these tests.
local AvailabilitySignal = {
	Available = "Available",
	Unavailable = "Unavailable",
}

-- Builds a fresh `AvailabilitySignal`-shaped object per `register` call so
-- state from a prior isolated require can't leak into a later assertion.
local function createFakeAvailability(initialState)
	local state = initialState
	return {
		available = function(_self)
			state = AvailabilitySignal.Available
		end,
		unavailable = function(_self)
			state = AvailabilitySignal.Unavailable
		end,
		get = function(_self)
			return state
		end,
		connect = function(_self, _callback)
			return { disconnect = function() end }
		end,
	}
end

local fakeChromeService = {
	AvailabilitySignal = AvailabilitySignal,
	isWindowOpen = jest.fn():mockReturnValue(false),
	toggleWindow = jest.fn(),
	updateWindowPosition = jest.fn(),
	-- `MappedSignal` is constructed from this signal in ShopEntrypoint; a
	-- minimal connectable shape is all the constructor touches.
	onIntegrationStatusChanged = function(_self)
		return {
			connect = function(_self2, _callback)
				return { disconnect = function() end }
			end,
		}
	end,
	register = function(_self, props)
		lastRegisterProps = props
		local integration = {
			availability = createFakeAvailability(props.initialAvailability),
			activated = props.activated,
			components = props.components,
			isActivated = props.isActivated,
			menuTrailingBadgeConfig = props.menuTrailingBadgeConfig,
		}
		lastIntegration = integration
		return integration
	end,
}

jest.mock(Chrome.Service, function()
	return fakeChromeService
end)

-- Replace `MappedSignal` with a stub get/connect and intercept
-- `setCoreGuiAvailability` to capture the customCallback (rather than
-- firing it on `StarterGui` events as the real implementation does).
jest.mock(Chrome.ChromeShared.Service.ChromeUtils, function()
	return {
		MappedSignal = {
			new = function()
				return mockedIsActiveSignal
			end,
		},
		setCoreGuiAvailability = function(_integration, _coreGuiType, callback)
			capturedSetCoreGuiCallback = callback
			-- Intentionally does NOT auto-fire `callback(...)`; the real
			-- helper would, but tests drive mid-session transitions
			-- explicitly so the initial integration state stays anchored
			-- on `getInitialAvailability`.
			return function() end
		end,
	}
end)

jest.mock(Chrome.ChromeShared.Service.WindowSizeSignal, function()
	return {
		new = function()
			return {
				get = function()
					return Vector2.new(0, 0)
				end,
			}
		end,
	}
end)

-- Mock to short-circuit the real `Constants`' transitive require of
-- `UIBlox`/`GetStyleTokens`. Inside `jest.isolateModules` the UIBlox
-- singleton isn't re-initialized, so a real `Constants` require errors
-- with "You must call UIBlox.init(config) before using it!".
jest.mock(Chrome.ChromeShared.Unibar.Constants, function()
	return {
		IN_EXPERIENCE_SHOP_ID = "in_experience_shop",
	}
end)

local commonIconSpy = jest.fn(function()
	return function()
		return nil
	end
end)
jest.mock(Chrome.Integrations.CommonIcon, function()
	-- Real `CommonIcon` is a factory that returns a render function;
	-- shape it the same so the `Icon` component definition is callable.
	return commonIconSpy
end)

local toggleInExperienceShopWindowSpy = jest.fn(function()
	fakeChromeService.toggleWindow("in_experience_shop")
end)
jest.mock(Chrome.Integrations.InExperienceShop.ShopWindowLayout, function()
	return {
		MAX_WINDOW_WIDTH = 844,
		MAX_WINDOW_HEIGHT = 754,
		getCenteredShopWindowPosition = function()
			return UDim2.fromOffset(100, 100)
		end,
		getStartingWindowPosition = function()
			return UDim2.fromOffset(100, 100)
		end,
		toggleInExperienceShopWindow = toggleInExperienceShopWindowSpy,
	}
end)

local shopChromeWrapperSpy = jest.fn()
local shopChromeWrapperComponent = function(props)
	shopChromeWrapperSpy(props)
	return nil
end
jest.mock(Chrome.Integrations.InExperienceShop.ShopChromeWrapper, function()
	return shopChromeWrapperComponent
end)

-- Prefetch helper is captured here so tests can inspect what was passed
-- and synchronously fire `onResult` to simulate fetch outcomes.
-- `jest.fn` returns a callable table, not a plain Lua function, so
-- `task.spawn(jestFn, ...)` (which production uses to launch the
-- prefetch) errors with "function or thread expected". Wrap with a
-- thin function so production's `task.spawn` works while still
-- tracking calls via the underlying spy.
local prefetchSpy = jest.fn()
local function prefetchWrapper(onResult: ((boolean) -> ())?)
	capturedPrefetchOnResult = onResult
	prefetchSpy(onResult)
end
jest.mock(InExperienceShopPackage.prefetchShopDataOnGameJoin, function()
	return prefetchWrapper
end)

-- ShopEntrypoint only reads `FeatureKeys` and the badge signal factory off this
-- package, and requiring it for real drags in AvatarExperienceUIKit (which needs
-- `UIBlox.init`). A stable getter is handed back so the registered config can be
-- compared by identity; feature keys the factory was asked for are recorded so
-- the tests can assert the shop names its own surface.
local OFFER_BADGE_TEXT_SIGNAL = function(): string?
	return nil
end
local offerBadgeSignalKeys: { string } = {}
jest.mock(CorePackages.Workspace.Packages.InExperienceOffers, function()
	return {
		FeatureKeys = { RobloxShop = "ROBLOX_SHOP" },
		Utils = {
			createOfferBadgeTextSignal = function(featureKey: string)
				table.insert(offerBadgeSignalKeys, featureKey)
				return OFFER_BADGE_TEXT_SIGNAL
			end,
		},
	}
end)

-- `FFlagShowOfferBadge` is `DefineFastFlag(...) and FFlagEnableMenuTrailingBadge`
-- in production; these are the already-composed values ShopEntrypoint reads.
local mockSharedFlags = {
	FFlagEnableMenuTrailingBadge = false,
	FFlagShowOfferBadge = false,
}
jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	return mockSharedFlags
end)

-- `ShopCoreGuiToggleSupported` is required for the CoreGui listener to
-- be wired at all. The tests below that assert on the listener will
-- self-skip via `if capturedSetCoreGuiCallback ~= nil then` if the
-- engine feature happens to be off in the test build.
-- Lua-only fast flag read at ShopEntrypoint require time; all-on configs may
-- flip it to true, so badge assertions must respect the live value.
local function isNewBadgeInExperienceShopEnabled(): boolean
	return game:GetFastFlag("EnableNewBadgeInExperienceShop")
end
local ShopCoreGuiToggleSupported = game:GetEngineFeature("ShopCoreGuiToggleSupported")

type LoadOpts = {
	prefetchEnabled: boolean,
	hideEnabled: boolean,
	-- Initial value of `Enum.CoreGuiType.ExperienceShop` to seed before
	-- ShopEntrypoint is required. Falls back to `true` to match the
	-- engine default (developer hasn't disabled).
	coreGuiShopEnabled: boolean?,
	centerEnabled: boolean?,
	addIGMToSideSheet: boolean?,
	menuTrailingBadgeFlag: boolean?,
	showOfferBadgeFlag: boolean?,
	newIconographyEnabled: boolean?,
}

-- Re-requires `ShopEntrypoint` under the scenario flags. Returns the
-- integration that `ShopEntrypoint` registered with the fake
-- `ChromeService`. Captures are reset before each load so a leftover
-- handler from a prior scenario can't satisfy an assertion in this one.
local function loadShopEntrypoint(opts: LoadOpts): any
	capturedSetCoreGuiCallback = nil
	capturedPrefetchOnResult = nil
	lastIntegration = nil
	lastRegisterProps = nil
	mappedSignalActive = false
	prefetchSpy:mockClear()
	fakeChromeService.isWindowOpen:mockClear()
	fakeChromeService.isWindowOpen:mockReturnValue(false)
	fakeChromeService.toggleWindow:mockClear()
	toggleInExperienceShopWindowSpy:mockClear()
	commonIconSpy:mockClear()
	shopChromeWrapperSpy:mockClear()

	mockSharedFlags.FFlagEnableMenuTrailingBadge = opts.menuTrailingBadgeFlag == true
	mockSharedFlags.FFlagShowOfferBadge = opts.showOfferBadgeFlag == true
	table.clear(offerBadgeSignalKeys)

	-- Seed the real `StarterGui` state ShopEntrypoint reads at module
	-- load. `Enum.CoreGuiType.All=false` keeps the OR in `getInitial-
	-- Availability` from short-circuiting on the `All` branch.
	if ShopCoreGuiToggleSupported then
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.ExperienceShop, opts.coreGuiShopEnabled ~= false)
	end

	jest.isolateModules(function()
		jest.mock(InExperienceShopPackage, function()
			return {
				FFlagEnableShopPrefetch = opts.prefetchEnabled,
				FFlagHideShopMenuOnFailure = opts.hideEnabled,
				FFlagCenterInExperienceShopWindow = opts.centerEnabled == true,
				FFlagExperienceShopNewIconography = opts.newIconographyEnabled == true,
			}
		end)
		-- Re-pin the prefetch helper inside isolation so the freshly
		-- required `ShopEntrypoint` resolves to the same wrapper (and
		-- therefore the same `prefetchSpy`) and writes captures to the
		-- module-scoped slots above.
		jest.mock(InExperienceShopPackage.prefetchShopDataOnGameJoin, function()
			return prefetchWrapper
		end)
		require(script.Parent.ShopEntrypoint)
	end)

	return lastIntegration
end

describe("ShopEntrypoint", function()
	beforeEach(function()
		capturedSetCoreGuiCallback = nil
		capturedPrefetchOnResult = nil
		lastIntegration = nil
		lastRegisterProps = nil
		mappedSignalActive = false
	end)

	afterEach(function()
		mockSharedFlags.FFlagEnableMenuTrailingBadge = false
	end)

	afterAll(function()
		-- Leave StarterGui in a sensible state for any sibling test
		-- suites that may run after this file. The default is "All
		-- enabled" which matches the typical PlayClient setup.
		if ShopCoreGuiToggleSupported then
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.ExperienceShop, true)
		end
	end)

	describe("initial availability", function()
		it("SHOULD register as Available when CoreGui is enabled and Hide is off", function()
			if not ShopCoreGuiToggleSupported then
				-- Without the engine feature, `coreGuiShopAvailable` is
				-- hard-coded `false` so the entry is always Unavailable
				-- at startup; the "Available" branch only exists when
				-- the feature is on.
				return
			end
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
			})

			expect(integration.availability:get()).toBe(AvailabilitySignal.Available)
		end)

		it("SHOULD register as Unavailable when CoreGui is enabled and Hide is on", function()
			-- Hide forces the latch closed at startup regardless of
			-- CoreGui; the prefetch result is the only thing that can
			-- re-expose the entry until rejoin.
			local integration = loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = true,
				coreGuiShopEnabled = true,
			})

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable)
		end)

		it("SHOULD register as Unavailable when CoreGui is disabled and Hide is off", function()
			if not ShopCoreGuiToggleSupported then
				-- Without the engine feature, the `coreGuiShopAvailable`
				-- branch is permanently `false`; this test trivially
				-- holds but we skip to avoid asserting on an unrelated
				-- code path.
				return
			end
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = false,
			})

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable)
		end)

		it("SHOULD register as Unavailable when CoreGui is disabled and Hide is on", function()
			if not ShopCoreGuiToggleSupported then
				return
			end
			local integration = loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = true,
				coreGuiShopEnabled = false,
			})

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable)
		end)
	end)

	describe("prefetch wiring", function()
		it("SHOULD NOT call the prefetch helper when FFlagEnableShopPrefetch is off", function()
			loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
			})

			expect(prefetchSpy).never.toHaveBeenCalled()
		end)

		it("SHOULD call the prefetch helper WITHOUT onResult when Hide is off", function()
			-- Visible-entry mode relies on `ShopContainer`'s on-open
			-- fetch as the retry; passing `onResult` is what would opt
			-- the helper into its internal retry loop.
			loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = false,
				coreGuiShopEnabled = true,
			})

			expect(prefetchSpy).toHaveBeenCalledTimes(1)
			expect(capturedPrefetchOnResult).toBeNil()
		end)

		it("SHOULD call the prefetch helper WITH onResult when Hide is on", function()
			loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = true,
				coreGuiShopEnabled = true,
			})

			expect(prefetchSpy).toHaveBeenCalledTimes(1)
			expect(capturedPrefetchOnResult).toEqual(expect.any("function"))
		end)

		it("SHOULD fire the prefetch even when CoreGui is initially disabled (Hide=on)", function()
			if not ShopCoreGuiToggleSupported then
				return
			end
			-- Regression guard for the "no-CoreGui at start" path: the
			-- prefetch must still fire so the latch has a chance to
			-- release; the inner `coreGuiShopAvailable` re-check in the
			-- onResult callback is the gate, not the prefetch firing.
			loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = true,
				coreGuiShopEnabled = false,
			})

			expect(prefetchSpy).toHaveBeenCalledTimes(1)
		end)
	end)

	describe("prefetch onResult (Hide on)", function()
		it("SHOULD flip the entry to Available when prefetch succeeds and CoreGui is enabled", function()
			if not ShopCoreGuiToggleSupported then
				-- The prefetch onResult only calls `:available()` when
				-- `coreGuiShopAvailable` is true, which can't happen
				-- when the engine feature is off.
				return
			end
			local integration = loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = true,
				coreGuiShopEnabled = true,
			})

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable);
			(capturedPrefetchOnResult :: any)(true)

			expect(integration.availability:get()).toBe(AvailabilitySignal.Available)
		end)

		it("SHOULD leave the entry Unavailable when prefetch succeeds but CoreGui was disabled at start", function()
			if not ShopCoreGuiToggleSupported then
				return
			end
			-- Latch flips to `true` so a later mid-session CoreGui enable
			-- can expose the entry, but `:available()` is gated on the
			-- live `coreGuiShopAvailable` value inside the prefetch
			-- callback.
			local integration = loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = true,
				coreGuiShopEnabled = false,
			});

			(capturedPrefetchOnResult :: any)(true)

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable)
		end)

		it("SHOULD leave the entry Unavailable when prefetch reports no items", function()
			local integration = loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = true,
				coreGuiShopEnabled = true,
			});

			(capturedPrefetchOnResult :: any)(false)

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable)
		end)
	end)

	describe("activated toggle", function()
		it("SHOULD call ChromeService:toggleWindow directly when Center flag is off", function()
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
				centerEnabled = false,
			})
			local activated = integration.activated
			activated(integration)

			expect(fakeChromeService.toggleWindow).toHaveBeenCalledTimes(1)
			expect(fakeChromeService.toggleWindow).toHaveBeenCalledWith(fakeChromeService, "in_experience_shop")
			expect(toggleInExperienceShopWindowSpy).never.toHaveBeenCalled()
		end)

		it("SHOULD call ShopWindowLayout.toggleInExperienceShopWindow when Center flag is on", function()
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
				centerEnabled = true,
			})
			local activated = integration.activated
			activated(integration)

			expect(toggleInExperienceShopWindowSpy).toHaveBeenCalledTimes(1)
			expect(fakeChromeService.toggleWindow).toHaveBeenCalledTimes(1)
		end)
	end)

	describe("mid-session CoreGui toggle", function()
		it("SHOULD transition Available -> Unavailable on CoreGui disable (Hide off)", function()
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
			})

			if capturedSetCoreGuiCallback == nil then
				-- CoreGui listener only wires when
				-- `ShopCoreGuiToggleSupported` is on; self-skip when
				-- the feature is off in the test build.
				return
			end

			expect(integration.availability:get()).toBe(AvailabilitySignal.Available);
			(capturedSetCoreGuiCallback :: any)(false)

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable)
		end)

		it("SHOULD transition Unavailable -> Available on CoreGui enable (Hide off)", function()
			if not ShopCoreGuiToggleSupported then
				return
			end
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = false,
			})

			if capturedSetCoreGuiCallback == nil then
				return
			end

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable);
			(capturedSetCoreGuiCallback :: any)(true)

			expect(integration.availability:get()).toBe(AvailabilitySignal.Available)
		end)

		it(
			"SHOULD stay Unavailable on CoreGui enable when Hide is on and the prefetch has not yet succeeded",
			function()
				if not ShopCoreGuiToggleSupported then
					return
				end
				-- The `(not Hide or shouldShowShop)` clause is what holds
				-- the entry hidden when the developer flips CoreGui on
				-- before the prefetch resolves.
				local integration = loadShopEntrypoint({
					prefetchEnabled = true,
					hideEnabled = true,
					coreGuiShopEnabled = false,
				})

				if capturedSetCoreGuiCallback == nil then
					return
				end

				(capturedSetCoreGuiCallback :: any)(true)

				expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable)
			end
		)

		it("SHOULD become Available on CoreGui enable when Hide is on AND the prefetch already succeeded", function()
			if not ShopCoreGuiToggleSupported then
				return
			end
			local integration = loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = true,
				coreGuiShopEnabled = false,
			})

			if capturedSetCoreGuiCallback == nil then
				return
			end

			-- Prefetch resolves first (flips the latch, but CoreGui is
			-- off so `:available()` is not called), then developer
			-- enables CoreGui.
			(capturedPrefetchOnResult :: any)(true);
			(capturedSetCoreGuiCallback :: any)(true)

			expect(integration.availability:get()).toBe(AvailabilitySignal.Available)
		end)

		it("SHOULD become Unavailable on CoreGui disable when Hide is on even if the prefetch succeeded", function()
			-- Mid-session disable wins over a successful prefetch: the
			-- entry should hide and a currently-open window should be
			-- closed.
			local integration = loadShopEntrypoint({
				prefetchEnabled = true,
				hideEnabled = true,
				coreGuiShopEnabled = true,
			})

			if capturedSetCoreGuiCallback == nil then
				return
			end

			(capturedPrefetchOnResult :: any)(true)
			expect(integration.availability:get()).toBe(AvailabilitySignal.Available)

			fakeChromeService.isWindowOpen:mockReturnValue(true);
			(capturedSetCoreGuiCallback :: any)(false)

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable)
			expect(fakeChromeService.toggleWindow).toHaveBeenCalledTimes(1)
			fakeChromeService.isWindowOpen:mockReturnValue(false)
		end)

		it("SHOULD NOT call toggleWindow on CoreGui disable when the shop window is not open", function()
			if game:GetEngineFeature("EnableOpenShopSignal") then
				-- all-on can fire `OpenShopRequested` when CoreGui flips; that
				-- handler calls `toggleShopWindow` when the window is closed,
				-- which is indistinguishable from `updateShopAvailability` here.
				return
			end
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
			})

			if capturedSetCoreGuiCallback == nil then
				return
			end

			expect(integration.availability:get()).toBe(AvailabilitySignal.Available)
			fakeChromeService.isWindowOpen:mockReturnValue(false)
			fakeChromeService.toggleWindow:mockClear();
			(capturedSetCoreGuiCallback :: any)(false)

			expect(integration.availability:get()).toBe(AvailabilitySignal.Unavailable)
			expect(fakeChromeService.toggleWindow).never.toHaveBeenCalled()
		end)
	end)

	describe("register props", function()
		it("SHOULD NOT register menuTrailingBadge when new-badge flags are disabled", function()
			loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
				menuTrailingBadgeFlag = false,
			})

			expect(lastRegisterProps.menuTrailingBadgeConfig).toBeNil()
		end)

		it(
			"SHOULD NOT register menuTrailingBadge when MenuTrailingBadge is on but EnableNewBadgeInExperienceShop is off",
			function()
				if isNewBadgeInExperienceShopEnabled() then
					return
				end
				-- `FFlagEnableNewBadgeInExperienceShop` is `DefineFastFlag(...) and
				-- FFlagEnableMenuTrailingBadge`; both must be true for the badge.
				loadShopEntrypoint({
					prefetchEnabled = false,
					hideEnabled = false,
					coreGuiShopEnabled = true,
					menuTrailingBadgeFlag = true,
				})

				expect(lastRegisterProps.menuTrailingBadgeConfig).toBeNil()
			end
		)

		it("SHOULD register menuTrailingBadge when new-badge flags are enabled", function()
			if not isNewBadgeInExperienceShopEnabled() then
				return
			end
			loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
				menuTrailingBadgeFlag = true,
			})

			expect(lastRegisterProps.menuTrailingBadgeConfig).toEqual({
				localStorageKey = game:GetFastString("InExperienceShopNewBadgeStorageKey"),
				maxViewCount = game:GetFastInt("NewBadgeDismissalMaxCountInExperienceShop"),
				customText = nil,
			})
		end)

		it("SHOULD NOT register customText when FFlagShowOfferBadge is off", function()
			loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
				menuTrailingBadgeFlag = true,
				showOfferBadgeFlag = false,
			})

			if lastRegisterProps.menuTrailingBadgeConfig ~= nil then
				expect(lastRegisterProps.menuTrailingBadgeConfig.customText).toBeNil()
			end
			-- The offers package must not even be asked for a signal at flag-off.
			expect(offerBadgeSignalKeys).toEqual({})
		end)

		it("SHOULD register a customText signal for the shop's own surface when FFlagShowOfferBadge is on", function()
			loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
				showOfferBadgeFlag = true,
			})

			expect(lastRegisterProps.menuTrailingBadgeConfig.customText).toBe(OFFER_BADGE_TEXT_SIGNAL)
			expect(offerBadgeSignalKeys).toEqual({ "ROBLOX_SHOP" })
		end)

		it("SHOULD disable the New label via maxViewCount 0 when only the offer badge is on", function()
			if isNewBadgeInExperienceShopEnabled() then
				return
			end
			loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
				menuTrailingBadgeFlag = false,
				showOfferBadgeFlag = true,
			})

			expect(lastRegisterProps.menuTrailingBadgeConfig).toEqual({
				localStorageKey = game:GetFastString("InExperienceShopNewBadgeStorageKey"),
				maxViewCount = 0,
				customText = OFFER_BADGE_TEXT_SIGNAL,
			})
		end)

		it("SHOULD register isActivated as the MappedSignal", function()
			loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
			})

			expect(lastRegisterProps.isActivated).toBe(mockedIsActiveSignal)
		end)
	end)

	describe("components", function()
		it("SHOULD use BuildingStore icon when FFlagExperienceShopNewIconography is OFF", function()
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
				newIconographyEnabled = false,
			})

			integration.components.Icon()

			expect(commonIconSpy).toHaveBeenCalledTimes(1)
			expect(commonIconSpy).toHaveBeenCalledWith("BuildingStore", nil, mockedIsActiveSignal)
		end)

		it("SHOULD use ShoppingBasket icon when FFlagExperienceShopNewIconography is ON", function()
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
				newIconographyEnabled = true,
			})

			integration.components.Icon()

			expect(commonIconSpy).toHaveBeenCalledTimes(1)
			expect(commonIconSpy).toHaveBeenCalledWith("ShoppingBasket", nil, mockedIsActiveSignal)
		end)

		it("SHOULD render ShopChromeWrapper from the Window component", function()
			local integration = loadShopEntrypoint({
				prefetchEnabled = false,
				hideEnabled = false,
				coreGuiShopEnabled = true,
			})

			local windowElement = integration.components.Window()

			expect(windowElement.type).toBe(shopChromeWrapperComponent)
			expect(windowElement.props.maxWindowWidth).toBe(844)
			expect(windowElement.props.maxWindowHeight).toBe(754)
		end)
	end)
end)
