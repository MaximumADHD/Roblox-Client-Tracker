--!nonstrict
-- Tests `MenuOfferTooltip.lua`: the tooltip under the unibar that surfaces an offer.
--
-- Strategy: `Foundation.EducationalTooltip` is mocked to a spy so the test can read the
-- props the tooltip would render with. The offers package is mocked down to the two
-- members this surface reaches for -- `Hooks.useOffersForKey` and `getOffersStore` -- both
-- backed by real signals so the component is exercised against the reactivity it ships
-- against. `Utils.isNotificationEligible` and `Utils.selectActiveOffer` are deliberately
-- NOT mocked, so per-offer screening is tested through the real predicates. The tooltip
-- queue is supplied through the real `TooltipContext` so `useIsTooltipTurn` resolves
-- against it.
--
-- Out of scope: `GuiService.MenuOpened`. The component dismisses on it, but an engine
-- signal can't be fired from Luau and mocking `game:GetService` needs
-- `mockDataModel = true`, which the `ChromeTests` suite does not enable. It is wired
-- alongside `onIntegrationActivated` in the same effect, under the same `canShow` guard,
-- so the activation tests below are the unit-level guarantee for both.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local TooltipContext = require(Chrome.ChromeShared.Unibar.Tooltips.TooltipContext)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local OffersPackage = CorePackages.Workspace.Packages.InExperienceOffers
local ShopPackage = CorePackages.Workspace.Packages.InExperienceShop
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagOfferNotifyOnGlobalIcon = SharedFlags.FFlagOfferNotifyOnGlobalIcon

local TOOLTIP_ID = "MENU_OFFER_TOOLTIP"
local OFFER_TITLE = "Limited time offer"
local OFFER_BUTTON_TEXT = "Shop now"

-- Defaults from the FInts in isNotificationEligible, which screens each offer.
local MAX_EXPOSURE_COUNT = 3
local COOLDOWN_SECONDS = 86400

-- Sentinel values for the availability enum the fake service exposes. Real ChromeService
-- uses numeric ids; only equality matters here.
local AVAILABILITY = {
	Unavailable = "Unavailable",
	Loading = "Loading",
	Available = "Available",
}

local tooltipPropsCapture: any = nil
local requestedFeatureKey: string? = nil
local isCurrentTooltip = true
local isIntegrationValid = true
local isWindowOpen = false
local isShopRegistered = true
local shopAvailability = AVAILABILITY.Available

local integrationActivatedListeners: { () -> () } = {}
local availabilityListeners: { (string) -> () } = {}

-- Stands in for the shop entry's `AvailabilitySignal`. One stable object for the whole
-- suite, since `useMappedSignal` re-subscribes whenever the signal's identity changes.
local shopAvailabilitySignal = {
	get = function()
		return shopAvailability
	end,
	connect = function(_self, callback: (string) -> ())
		table.insert(availabilityListeners, callback)
		return {
			disconnect = function()
				local index = table.find(availabilityListeners, callback)
				if index then
					table.remove(availabilityListeners, index)
				end
			end,
		}
	end,
}

-- The offers the package would hand this surface, and the exposure tally the store
-- publishes. Signals rather than plain values so changes re-render the component.
local getOffers, setOffers = Signals.createSignal(nil :: any)
local getExposureSnapshot, setExposureSnapshot = Signals.createSignal(nil :: any)
local getIsInExperienceShopGlobalIconAvailable, setIsInExperienceShopGlobalIconAvailable = Signals.createSignal(false)
local getHasInExperienceShopOpened, setHasInExperienceShopOpened = Signals.createSignal(false)
local getGlobalIconInstance, setGlobalIconInstance = Signals.createSignal(nil :: GuiObject?)

local activateMock = jest.fn()
local toggleInExperienceShopWindowMock = jest.fn()
local registerTooltipMock = jest.fn()
local unregisterTooltipMock = jest.fn()
local dismissTooltipMock = jest.fn()

local function EducationalTooltipSpy(props: any)
	tooltipPropsCapture = props
	return nil
end

jest.mock(CorePackages.Packages.Foundation, function()
	local actualFoundation = jest.requireActual(CorePackages.Packages.Foundation)

	return setmetatable({
		EducationalTooltip = EducationalTooltipSpy,
		-- Host wrapper so the keyed tooltip child actually mounts.
		OverlayProvider = function(props: any)
			return React.createElement("Frame", {}, props.children)
		end,
	}, { __index = actualFoundation })
end)

jest.mock(OffersPackage, function()
	local actualOffers = jest.requireActual(OffersPackage)

	return setmetatable({
		Hooks = {
			useOffersForKey = function(featureKey: string)
				requestedFeatureKey = featureKey
				return SignalsReact.useSignalState(getOffers)
			end,
		},
		getOffersStore = function(_scope: boolean?)
			return {
				getOfferExposureSnapshot = getExposureSnapshot,
				getIsInExperienceShopGlobalIconAvailable = getIsInExperienceShopGlobalIconAvailable,
				getHasInExperienceShopOpened = getHasInExperienceShopOpened,
			}
		end,
	}, { __index = actualOffers })
end)

jest.mock(ShopPackage, function()
	return {
		GetShopGlobalIconStore = function(_scope: boolean?)
			return {
				getIconInstance = getGlobalIconInstance,
			}
		end,
	}
end)

jest.mock(Chrome.Integrations.InExperienceShop.ShopWindowLayout, function()
	return {
		toggleInExperienceShopWindow = function()
			toggleInExperienceShopWindowMock()
		end,
	}
end)

jest.mock(Chrome.Service, function()
	return {
		AvailabilitySignal = AVAILABILITY,
		integrations = function()
			if not isShopRegistered then
				return {}
			end
			return {
				[Constants.IN_EXPERIENCE_SHOP_ID] = {
					availability = shopAvailabilitySignal,
				},
			}
		end,
		activate = function(_self, integrationId: string)
			activateMock(integrationId)
		end,
		isIntegrationValid = function(_self, _integrationId: string)
			return isIntegrationValid
		end,
		isWindowOpen = function(_self, _integrationId: string)
			return isWindowOpen
		end,
		onIntegrationActivated = function()
			return {
				connect = function(_self, callback: () -> ())
					table.insert(integrationActivatedListeners, callback)
					return {
						disconnect = function()
							local index = table.find(integrationActivatedListeners, callback)
							if index then
								table.remove(integrationActivatedListeners, index)
							end
						end,
					}
				end,
			}
		end,
	}
end)

local MenuOfferTooltip = require(script.Parent.MenuOfferTooltip)

local FeatureKeys = require(OffersPackage).FeatureKeys

local tooltipQueue = {
	registerTooltip = function(...)
		registerTooltipMock(...)
	end,
	unregisterTooltip = function(...)
		unregisterTooltipMock(...)
	end,
	dismissTooltip = function(...)
		dismissTooltipMock(...)
	end,
	isCurrentTooltip = function(id: string)
		return isCurrentTooltip and id == TOOLTIP_ID
	end,
}

local function tooltipPresentation()
	return {
		tooltip = {
			title = OFFER_TITLE,
			buttonText = OFFER_BUTTON_TEXT,
		},
	}
end

type OfferOverrides = {
	offerId: string?,
	offerStatus: string?,
	presentationData: any?,
}

local function makeOffer(overrides: OfferOverrides?)
	local o: OfferOverrides = overrides or {}
	return {
		offerId = o.offerId or "offer-1",
		offerStatus = o.offerStatus or "AVAILABLE",
		featureKeys = { FeatureKeys.RobloxShop },
		presentationData = if o.presentationData == nil then tooltipPresentation() else o.presentationData,
	}
end

local function isoSecondsAgo(secondsAgo: number): string
	return DateTime.fromUnixTimestamp(DateTime.now().UnixTimestamp - secondsAgo):ToIsoDate()
end

local function exposure(exposureCount: number, secondsAgo: number)
	return {
		exposureCount = exposureCount,
		lastExposureUTCTime = isoSecondsAgo(secondsAgo),
	}
end

-- Tracked so teardown runs even when an assertion throws first. A leaked mount stays
-- subscribed to the offers signal and would overwrite `tooltipPropsCapture` during later
-- tests, turning one real failure into a cascade of unrelated ones.
local mountedTrees: { { root: any, container: Instance } } = {}

local function unmountAll()
	for _, tree in mountedTrees do
		ReactRoblox.act(function()
			tree.root:unmount()
		end)
		tree.container:Destroy()
	end
	table.clear(mountedTrees)
end

local function mountTree(element: any)
	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)
	table.insert(mountedTrees, { root = root, container = container })

	ReactRoblox.act(function()
		root:render(element)
	end)
	return root
end

type RenderOpts = {
	visible: boolean?,
	-- Whether the parent has attached its anchor yet; the tooltip positions off it.
	anchorAttached: boolean?,
	queue: any?,
}

local function tooltipElement(opts: RenderOpts)
	local o: RenderOpts = opts or {}
	local anchorRef = { current = if o.anchorAttached == false then nil else Instance.new("Frame") } :: any

	return React.createElement(TooltipContext.Provider, { value = o.queue or tooltipQueue }, {
		Tooltip = React.createElement(MenuOfferTooltip, {
			anchorRef = anchorRef,
			visible = if o.visible == nil then true else o.visible,
		}),
	})
end

local function renderTooltip(opts: RenderOpts?)
	tooltipPropsCapture = nil
	return mountTree(tooltipElement(opts or {}))
end

local function activateIntegration()
	ReactRoblox.act(function()
		for _, listener in table.clone(integrationActivatedListeners) do
			listener()
		end
	end)
end

local function setShopAvailability(availability: string)
	shopAvailability = availability
	ReactRoblox.act(function()
		for _, listener in table.clone(availabilityListeners) do
			listener(availability)
		end
	end)
end

describe("MenuOfferTooltip", function()
	beforeEach(function()
		setOffers({ makeOffer() })
		setExposureSnapshot({})
		setIsInExperienceShopGlobalIconAvailable(false)
		setHasInExperienceShopOpened(false)
		setGlobalIconInstance(nil)
		requestedFeatureKey = nil
		isCurrentTooltip = true
		isIntegrationValid = true
		isWindowOpen = false
		isShopRegistered = true
		shopAvailability = AVAILABILITY.Available
		tooltipPropsCapture = nil
		table.clear(integrationActivatedListeners)
		table.clear(availabilityListeners)
		activateMock.mockClear()
		toggleInExperienceShopWindowMock.mockClear()
		registerTooltipMock.mockClear()
		unregisterTooltipMock.mockClear()
		dismissTooltipMock.mockClear()
	end)

	afterEach(unmountAll)

	describe("rendering the active offer", function()
		it("SHOULD ask the offers package for the shop surface's offers", function()
			renderTooltip()

			expect(requestedFeatureKey).toBe(FeatureKeys.RobloxShop)
		end)

		it("SHOULD render the offer's own tooltip copy", function()
			renderTooltip()

			expect(tooltipPropsCapture).never.toBeNil()
			-- The title carries trailing padding to keep it clear of the close button, so
			-- match the copy the offer supplied rather than the padded string.
			expect(string.sub(tooltipPropsCapture.title, 1, #OFFER_TITLE)).toBe(OFFER_TITLE)
			expect(#tooltipPropsCapture.actions).toBe(1)
			expect(tooltipPropsCapture.actions[1].text).toBe(OFFER_BUTTON_TEXT)
		end)

		it("SHOULD anchor an open tooltip below the start of the menu button", function()
			renderTooltip()

			expect(tooltipPropsCapture.isOpen).toBe(true)
			expect(tooltipPropsCapture.side).toBe("Bottom")
			expect(tooltipPropsCapture.align).toBe("Start")
		end)
	end)

	describe("gating", function()
		if not FFlagOfferNotifyOnGlobalIcon then
			it("SHOULD keep the hamburger tooltip when the shop global icon is available", function()
				-- The global icon signal only steers the tooltip on the flag-on path. Off
				-- the flag this surface must ignore it, so that whoever turns on the dot
				-- that publishes the signal cannot silently take the hamburger tooltip
				-- away without a replacement anchored to the icon.
				setIsInExperienceShopGlobalIconAvailable(true)
				renderTooltip()

				expect(tooltipPropsCapture).never.toBeNil()
				expect(registerTooltipMock).toHaveBeenCalledTimes(1)
			end)
		end

		if FFlagOfferNotifyOnGlobalIcon then
			it("SHOULD anchor the tooltip to the shop global icon when it is available", function()
				local globalIcon = Instance.new("Frame")
				setGlobalIconInstance(globalIcon)
				setIsInExperienceShopGlobalIconAvailable(true)

				renderTooltip({ visible = false })

				expect(tooltipPropsCapture).never.toBeNil()
				expect(tooltipPropsCapture.anchorRef.current).toBe(globalIcon)
				expect(registerTooltipMock).toHaveBeenCalledTimes(1)
				globalIcon:Destroy()
			end)

			it("SHOULD wait for the shop global icon instance before registering", function()
				setIsInExperienceShopGlobalIconAvailable(true)

				renderTooltip()

				expect(tooltipPropsCapture).toBeNil()
				expect(registerTooltipMock).never.toHaveBeenCalled()
			end)

			it("SHOULD start showing when the global icon becomes unavailable after it mounted", function()
				setIsInExperienceShopGlobalIconAvailable(true)
				renderTooltip()
				expect(tooltipPropsCapture).toBeNil()

				ReactRoblox.act(function()
					setIsInExperienceShopGlobalIconAvailable(false)
				end)

				expect(tooltipPropsCapture).never.toBeNil()
				expect(requestedFeatureKey).toBe(FeatureKeys.RobloxShop)
			end)

			it("SHOULD stop showing when the global icon becomes available while it is up", function()
				renderTooltip()
				expect(tooltipPropsCapture).never.toBeNil()

				tooltipPropsCapture = nil
				ReactRoblox.act(function()
					setIsInExperienceShopGlobalIconAvailable(true)
				end)

				expect(tooltipPropsCapture).toBeNil()
				expect(unregisterTooltipMock).toHaveBeenCalledWith(TOOLTIP_ID)
			end)
		end

		it("SHOULD render nothing when the menu icon is hidden", function()
			-- The tooltip positions off the menu button's rect, so a hidden icon would
			-- strand it in a corner of the screen.
			renderTooltip({ visible = false })

			expect(tooltipPropsCapture).toBeNil()
			expect(registerTooltipMock).never.toHaveBeenCalled()
		end)

		it("SHOULD render nothing when the parent has not attached its anchor", function()
			renderTooltip({ anchorAttached = false })

			expect(tooltipPropsCapture).toBeNil()
			expect(registerTooltipMock).never.toHaveBeenCalled()
		end)

		it("SHOULD render nothing when no offers have committed", function()
			setOffers(nil)
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
			expect(registerTooltipMock).never.toHaveBeenCalled()
		end)

		it("SHOULD render nothing when the offer carries no tooltip content", function()
			setOffers({ makeOffer({ presentationData = { banner = { title = "Banner", icon = "" } } }) })
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
			expect(registerTooltipMock).never.toHaveBeenCalled()
		end)

		it("SHOULD render nothing before the exposure snapshot has hydrated", function()
			-- With no exposure history every offer would look brand new, so the tooltip
			-- waits for the tracker to publish the tally rather than guessing.
			setExposureSnapshot(nil)
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
			expect(registerTooltipMock).never.toHaveBeenCalled()
		end)

		it("SHOULD render nothing while another tooltip holds the queue's turn", function()
			isCurrentTooltip = false
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
		end)
	end)

	describe("shop availability", function()
		it("SHOULD render nothing when the shop it points at is unavailable", function()
			-- Pointing the player at a shop they cannot open is worse than staying quiet.
			shopAvailability = AVAILABILITY.Unavailable
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
			expect(registerTooltipMock).never.toHaveBeenCalled()
			if FFlagOfferNotifyOnGlobalIcon then
				expect(requestedFeatureKey).toBeNil()
			end
		end)

		it("SHOULD render nothing while the shop entry is still loading", function()
			shopAvailability = AVAILABILITY.Loading
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
			expect(registerTooltipMock).never.toHaveBeenCalled()
			if FFlagOfferNotifyOnGlobalIcon then
				expect(requestedFeatureKey).toBeNil()
			end
		end)

		it("SHOULD render nothing when the shop is not registered with Chrome at all", function()
			isShopRegistered = false
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
			expect(registerTooltipMock).never.toHaveBeenCalled()
			if FFlagOfferNotifyOnGlobalIcon then
				expect(requestedFeatureKey).toBeNil()
			end
		end)

		it("SHOULD start showing when the shop becomes available after it mounted", function()
			-- The shop's join-time prefetch decides its availability, and it can resolve after
			-- the offer has already landed.
			shopAvailability = AVAILABILITY.Unavailable
			renderTooltip()
			expect(tooltipPropsCapture).toBeNil()

			setShopAvailability(AVAILABILITY.Available)

			expect(tooltipPropsCapture).never.toBeNil()
		end)

		it("SHOULD stop showing when the shop turns unavailable while it is up", function()
			renderTooltip()
			expect(tooltipPropsCapture).never.toBeNil()

			tooltipPropsCapture = nil
			setShopAvailability(AVAILABILITY.Unavailable)

			expect(tooltipPropsCapture).toBeNil()
			expect(unregisterTooltipMock).toHaveBeenCalledWith(TOOLTIP_ID)
		end)

		if FFlagOfferNotifyOnGlobalIcon then
			it("SHOULD render nothing when the shop has already opened this session", function()
				setHasInExperienceShopOpened(true)
				renderTooltip()

				expect(tooltipPropsCapture).toBeNil()
				expect(registerTooltipMock).never.toHaveBeenCalled()
			end)

			it("SHOULD stop showing when the shop opens while it is up", function()
				renderTooltip()
				expect(tooltipPropsCapture).never.toBeNil()

				tooltipPropsCapture = nil
				ReactRoblox.act(function()
					setHasInExperienceShopOpened(true)
				end)

				expect(tooltipPropsCapture).toBeNil()
				expect(unregisterTooltipMock).toHaveBeenCalledWith(TOOLTIP_ID)
			end)
		end
	end)

	describe("per-offer eligibility", function()
		it("SHOULD render nothing when the only offer has spent its exposure budget", function()
			setExposureSnapshot({
				["offer-1"] = exposure(MAX_EXPOSURE_COUNT, COOLDOWN_SECONDS + 60),
			})
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
		end)

		it("SHOULD render nothing when the only offer is still within its cooldown", function()
			setExposureSnapshot({ ["offer-1"] = exposure(1, 1) })
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
		end)

		it("SHOULD render nothing when the only offer is not AVAILABLE", function()
			setOffers({ makeOffer({ offerStatus = "USED" }) })
			renderTooltip()

			expect(tooltipPropsCapture).toBeNil()
		end)

		it("SHOULD skip a spent offer and show the next one that still has budget", function()
			-- Screening each offer on its own budget is what stops an offer the player has
			-- already seen three times from riding in on another offer's eligibility.
			setOffers({
				makeOffer({ offerId = "offer-spent" }),
				makeOffer({ offerId = "offer-fresh", presentationData = { tooltip = { title = "Fresh offer" } } }),
			})
			setExposureSnapshot({
				["offer-spent"] = exposure(MAX_EXPOSURE_COUNT, COOLDOWN_SECONDS + 60),
			})
			renderTooltip()

			expect(tooltipPropsCapture).never.toBeNil()
			expect(string.sub(tooltipPropsCapture.title, 1, #"Fresh offer")).toBe("Fresh offer")
		end)
	end)

	describe("tooltip queue", function()
		it("SHOULD register with the shared queue so it cannot overlap the other menu tooltips", function()
			renderTooltip()

			expect(registerTooltipMock).toHaveBeenCalledWith(
				TOOLTIP_ID,
				expect.any("number"),
				expect.any("number"),
				expect.any("number")
			)
		end)

		it("SHOULD leave the queue when it unmounts", function()
			renderTooltip()
			unmountAll()

			expect(unregisterTooltipMock).toHaveBeenCalledWith(TOOLTIP_ID)
		end)

		it("SHOULD leave the queue when the menu icon hides while it is up", function()
			-- Releasing the slot is what lets whatever is queued behind this take its turn.
			local root = renderTooltip()

			tooltipPropsCapture = nil
			ReactRoblox.act(function()
				root:render(tooltipElement({ visible = false }))
			end)

			expect(unregisterTooltipMock).toHaveBeenCalledWith(TOOLTIP_ID)
			expect(tooltipPropsCapture).toBeNil()
		end)

		it("SHOULD keep its queue slot when the provider hands down a new context value", function()
			-- TooltipProvider re-memoizes its context value whenever the current tooltip
			-- changes, which includes the render that grants this tooltip its turn.
			local root = renderTooltip()

			ReactRoblox.act(function()
				root:render(tooltipElement({ queue = table.clone(tooltipQueue) }))
			end)

			expect(unregisterTooltipMock).never.toHaveBeenCalled()
			expect(registerTooltipMock).toHaveBeenCalledTimes(1)
		end)
	end)

	describe("dismissal", function()
		it("SHOULD stop rendering when the player activates a Chrome integration while it is up", function()
			renderTooltip()
			tooltipPropsCapture = nil

			activateIntegration()

			expect(tooltipPropsCapture).toBeNil()
		end)

		it("SHOULD NOT appear at all when the player activates an integration while it is pending", function()
			-- The tooltip sits registered but hidden through its show delay, and longer while a
			-- higher-priority tooltip holds the turn. An interaction inside that window has to
			-- count, or the tooltip surfaces after the player has already moved on -- and
			-- `MenuOpened` does not fire a second time to take it back down.
			isCurrentTooltip = false
			local root = renderTooltip()

			activateIntegration()

			isCurrentTooltip = true
			ReactRoblox.act(function()
				root:render(tooltipElement({ queue = table.clone(tooltipQueue) }))
			end)

			expect(tooltipPropsCapture).toBeNil()
			-- Giving up the slot lets whatever is queued behind it take its turn instead.
			expect(unregisterTooltipMock).toHaveBeenCalledWith(TOOLTIP_ID)
		end)

		it("SHOULD stop rendering when closed", function()
			renderTooltip()
			local onClose = tooltipPropsCapture.onClose

			tooltipPropsCapture = nil
			ReactRoblox.act(function()
				onClose()
			end)

			expect(tooltipPropsCapture).toBeNil()
		end)

		it("SHOULD stop rendering when pressed outside", function()
			renderTooltip()
			local onPressedOutside = tooltipPropsCapture.onPressedOutside

			tooltipPropsCapture = nil
			ReactRoblox.act(function()
				onPressedOutside()
			end)

			expect(tooltipPropsCapture).toBeNil()
		end)
	end)

	describe("opening the shop", function()
		it("SHOULD open the shop and stop rendering when the offer's button is pressed", function()
			renderTooltip()
			local onActivated = tooltipPropsCapture.actions[1].onActivated

			tooltipPropsCapture = nil
			ReactRoblox.act(function()
				onActivated()
			end)

			expect(activateMock).toHaveBeenCalledWith(Constants.IN_EXPERIENCE_SHOP_ID)
			expect(tooltipPropsCapture).toBeNil()
		end)

		it("SHOULD NOT activate the shop when its window is already open", function()
			-- Activating toggles, so a second activate would close the shop the player is
			-- already looking at.
			isWindowOpen = true
			renderTooltip()
			local onActivated = tooltipPropsCapture.actions[1].onActivated

			ReactRoblox.act(function()
				onActivated()
			end)

			expect(activateMock).never.toHaveBeenCalled()
		end)

		it("SHOULD NOT activate the shop when the integration is unavailable", function()
			-- The entry reports invalid when the developer disabled the shop or its prefetch
			-- came back empty, which every shop entrypoint has to respect.
			isIntegrationValid = false
			renderTooltip()
			local onActivated = tooltipPropsCapture.actions[1].onActivated

			ReactRoblox.act(function()
				onActivated()
			end)

			expect(activateMock).never.toHaveBeenCalled()
			expect(toggleInExperienceShopWindowMock).never.toHaveBeenCalled()
		end)

		if FFlagOfferNotifyOnGlobalIcon then
			local function renderGlobalIconTooltip()
				local globalIcon = Instance.new("Frame")
				setGlobalIconInstance(globalIcon)
				setIsInExperienceShopGlobalIconAvailable(true)
				renderTooltip({ visible = false })
				return globalIcon
			end

			it("SHOULD open the shop from the global icon when the Chrome entry is unavailable", function()
				-- HideShopMenuOnFailure (and similar) can hide the hamburger entry while
				-- the TopBar icon is still the way in. `isIntegrationValid` is false in
				-- that state, so activate would no-op; the icon itself toggles the window.
				isIntegrationValid = false
				shopAvailability = AVAILABILITY.Unavailable
				local globalIcon = renderGlobalIconTooltip()
				local onActivated = tooltipPropsCapture.actions[1].onActivated

				tooltipPropsCapture = nil
				ReactRoblox.act(function()
					onActivated()
				end)

				expect(toggleInExperienceShopWindowMock).toHaveBeenCalledTimes(1)
				expect(activateMock).never.toHaveBeenCalled()
				expect(tooltipPropsCapture).toBeNil()
				globalIcon:Destroy()
			end)

			it("SHOULD NOT toggle the shop closed from the global icon when it is already open", function()
				isWindowOpen = true
				local globalIcon = renderGlobalIconTooltip()
				local onActivated = tooltipPropsCapture.actions[1].onActivated

				ReactRoblox.act(function()
					onActivated()
				end)

				expect(toggleInExperienceShopWindowMock).never.toHaveBeenCalled()
				expect(activateMock).never.toHaveBeenCalled()
				globalIcon:Destroy()
			end)
		end
	end)
end)
