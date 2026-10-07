local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Workspace.Packages
local TopBar = script.Parent
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe, it, expect = JestGlobals.describe, JestGlobals.it, JestGlobals.expect
local beforeEach, afterEach, jest = JestGlobals.beforeEach, JestGlobals.afterEach, JestGlobals.jest
jest.mock(Packages.Chrome, function()
	local actual = table.clone(jest.requireActual(Packages.Chrome))
	actual.Enabled = function()
		return true
	end
	return actual
end)
local React = require(CorePackages.Packages.React)
local RTL = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local act = require(CorePackages.Packages.ReactRoblox).act
local Foundation = require(CorePackages.Packages.Foundation)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(Packages.SignalsReact)
local ChromeUtils = require(TopBar.Parent.Chrome.ChromeShared.Service.ChromeUtils)
local showTopBar = ChromeUtils.ObservableValue.new(true)
local keepOutAreas: { [string]: { position: Vector2, size: Vector2 } } = {}
local function reportKeepOutArea(id: string, position: Vector2, size: Vector2)
	keepOutAreas[id] = { position = position, size = size }
end
local mockKeepOutStore = { setKeepOutArea = reportKeepOutArea, cleanup = function() end }
local getKeepOutStore = Signals.createSignal(mockKeepOutStore)
local policyEnabled = true
local getShopEnabled, setShopEnabled = Signals.createSignal(true)
local mockShopStore = { getEnabled = getShopEnabled, getStatusIndicatorEnabled = getShopEnabled }
local getUILessEnabled, setUILessEnabled = Signals.createSignal(false)
local getUIVisible, setUIVisible = Signals.createSignal(true)
local getUnibarWidth, setUnibarWidth = Signals.createSignal(80)

local function control(props: { layoutOrder: number? })
	return React.createElement("Frame", {
		Size = UDim2.fromOffset(80, 44),
		LayoutOrder = props.layoutOrder,
		[React.Tag] = "data-testid=control",
	})
end

local mockMenuIcon = jest.fn(control)

jest.mock(Packages.InExperienceSideSheetUtils.isSideSheetEnabled, function()
	return false
end)

jest.mock(Packages.CoreGuiCommon, function()
	local actual = table.clone(jest.requireActual(Packages.CoreGuiCommon))
	actual.Stores = table.clone(actual.Stores)
	actual.Stores.GetKeepOutAreasStore = getKeepOutStore
	actual.Stores.GetUILessStore = function()
		return { getUILessModeEnabled = getUILessEnabled, getUIVisible = getUIVisible, cleanup = function() end }
	end
	actual.withFoundationOrUIBloxStyle = function(mapTokens, render)
		local tokens = Foundation.Utility.getTokens(Foundation.Enums.ColorMode.Dark)
		local tree = render(mapTokens(tokens))
		local left = tree.props.children.UnibarLeftFrame
		return left
			and React.cloneElement(left, nil, {
				Padding = left.props.children.Padding,
				TopBarLeftContainer = left.props.children.TopBarLeftContainer,
				Unibar = left.props.children.Unibar,
				StackedElements = left.props.children.StackedElements,
			})
	end
	return actual
end)
jest.mock(Packages.UniversalAppPolicy, function()
	local actual = table.clone(jest.requireActual(Packages.UniversalAppPolicy))
	actual.useAppPolicy = function()
		return policyEnabled
	end
	actual.UniversalAppPolicy = table.clone(actual.UniversalAppPolicy)
	actual.UniversalAppPolicy.connect = function()
		return function(component)
			return component
		end
	end
	return actual
end)
jest.mock(CorePackages.Packages.RoactRodux, function()
	local actual = table.clone(jest.requireActual(CorePackages.Packages.RoactRodux))
	actual.UNSTABLE_connect2 = function()
		return function(component)
			return component
		end
	end
	return actual
end)
jest.mock(TopBar.TopBarAppPolicy, function()
	return {
		connect = function()
			return function(component)
				return component
			end
		end,
	}
end)
jest.mock(TopBar.Components.Connection, function()
	return control
end)
jest.mock(TopBar.Flags.FFlagTopBarShopIconV2, function()
	return false
end)
jest.mock(TopBar.Parent.Settings.SettingsHub, function()
	return {}
end)
jest.mock(Packages.InExperienceShop, function()
	return {
		FFlagEnableExperienceShopGlobalIcon = true,
		FFlagExperienceShopNewIconography = true,
		ShopGlobalIcon = control,
		GetShopGlobalIconStore = function()
			return mockShopStore
		end,
		initShopGlobalIcon = function() end,
	}
end)
jest.mock(TopBar.Components.GamepadConnector, function()
	return {
		getShowTopBar = function()
			return showTopBar
		end,
		connectToTopbar = function() end,
		disconnectFromTopbar = function() end,
	}
end)
jest.mock(TopBar.Parent.Chrome.ChromeShared.Unibar, function()
	local constants = require(TopBar.Parent.Chrome.ChromeShared.Unibar.Constants)
	return function(props)
		local width = SignalsReact.useSignalState(getUnibarWidth)
		local function reportArea(rbx)
			if rbx and props.onAreaChanged then
				props.onAreaChanged(constants.UNIBAR_KEEP_OUT_AREA_ID, rbx.AbsolutePosition, rbx.AbsoluteSize)
			end
		end
		React.useEffect(function()
			if props.onMinWidthChanged then
				props.onMinWidthChanged(80)
			end
		end, { props.onMinWidthChanged })
		local frameProps: { [string]: unknown } = {
			Size = UDim2.fromOffset(width, 44),
			LayoutOrder = props.layoutOrder,
			[React.Tag] = "data-testid=unibar",
			ref = reportArea,
			[React.Change.AbsolutePosition] = reportArea,
			[React.Change.AbsoluteSize] = reportArea,
		}
		return React.createElement("Frame", frameProps, { Control = React.createElement(control, props) })
	end
end)
jest.mock(TopBar.Parent.Chrome.Service, function()
	local actual = table.clone(jest.requireActual(TopBar.Parent.Chrome.Service))
	actual.isWindowOpen = function()
		return false
	end
	return actual
end)
jest.mock(TopBar.Components.TraversalBackButton, function()
	return control
end)
jest.mock(TopBar.ComponentsV2.MenuIcon, function()
	return function(props)
		return mockMenuIcon(props)
	end
end)
jest.mock(TopBar.Components.Presentation.MenuIcon, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.MoreMenu, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.GamepadMenu, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.ShopIcon, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.HurtOverlay, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.ChatIcon, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.HealthBar, function()
	return control
end)
jest.mock(TopBar.Components.VRBottomUnibar, function()
	return control
end)
jest.mock(TopBar.Parent.VR.VRBottomBar.VRBottomBar, function()
	return control
end)
jest.mock(Packages.InExperienceTopBar.ExperienceAgeRatingBadge, function()
	return function(props)
		return React.createElement(Foundation.Badge, {
			text = "16+",
			variant = Foundation.Enums.BadgeVariant.Contrast,
			shape = Foundation.Enums.BadgeShape.Pill,
			size = Foundation.Enums.BadgeSize.Small,
			LayoutOrder = props.layoutOrder,
		})
	end
end)

local TopBarApp = require(TopBar.ComponentsV2.TopBarApp)
local LegacyTopBarApp = require(TopBar.Components.TopBarApp)
local FFlagExperienceAgeRatingBadge = require(Packages.InExperienceTopBar).Flags.FFlagExperienceAgeRatingBadge
local FFlagShowGameAgeRating = require(Packages.SharedFlags).FFlagShowGameAgeRating
local SharedFlags = require(Packages.SharedFlags)
local flags = require(Packages.CoreGuiCommon).Flags

-- Exercise the real TopBar layout without mounting unrelated voice binders and dialogs.
local function TopBarLayout()
	local tree: React.ReactElement = TopBarApp({})
	return tree.props.children.TopBarFrame.props.children.TopLeftFrame
end

local function element(legacy: boolean, ref: React.Ref<unknown>?)
	return React.createElement(Foundation.FoundationProvider, nil, {
		Frame = React.createElement("Frame", { Size = UDim2.fromOffset(1200, 800) }, {
			TopBar = React.createElement(
				if legacy then LegacyTopBarApp else TopBarLayout,
				if legacy
					then {
						ref = ref,
						showGameAgeRating = policyEnabled,
						menuOpen = if flags.FFlagTopBarSignalizeMenuOpen then nil else true,
						setScreenSize = if flags.FFlagTopBarSignalizeScreenSize then nil else function() end,
						setKeepOutArea = if flags.FFlagTopBarSignalizeKeepOutAreas then nil else reportKeepOutArea,
						removeKeepOutArea = if flags.FFlagTopBarSignalizeKeepOutAreas then nil else function() end,
					}
					else nil
			),
		}),
	})
end

local function settleLayout()
	for _ = 1, 3 do
		act(function()
			task.wait()
		end)
	end
end

beforeEach(function()
	policyEnabled = true
	showTopBar:set(true)
	setUILessEnabled(false)
	setUIVisible(true)
	setShopEnabled(true)
	setUnibarWidth(80)
	keepOutAreas = {}
	jest.clearAllMocks()
end)
afterEach(RTL.cleanup)

local function render(legacy)
	local screen
	act(function()
		screen = RTL.render(element(legacy))
	end)
	settleLayout()
	return screen
end

describe("ExperienceAgeRating V2 menu sizing", function()
	if FFlagExperienceAgeRatingBadge and FFlagShowGameAgeRating then
		it("passes the scaled button height to the menu icon when the badge layout is enabled", function()
			RTL.render(element(false))
			local props = mockMenuIcon.mock.calls[1][1]
			local uiScale = require(Packages.Display).GetDisplayStore(false).getUIScale(false)
			expect(props.buttonSize).toBe(require(TopBar.Constants).TopBarButtonHeight * uiScale)
		end)
	else
		it("leaves menu sizing to the parent when the badge layout is disabled", function()
			RTL.render(element(false))
			local props = mockMenuIcon.mock.calls[1][1]
			expect(props.buttonSize).toBeNil()
		end)
	end
end)

for _, legacy in { false, true } do
	describe(if legacy then "ExperienceAgeRating legacy" else "ExperienceAgeRating V2", function()
		if not (FFlagExperienceAgeRatingBadge and FFlagShowGameAgeRating) then
			it("does not add a badge while rollout is disabled", function()
				expect(render(legacy).queryByText("16+")).toBeNil()
			end)
			return
		end

		it("updates badge eligibility without replacing controls", function()
			policyEnabled = false
			local screen = render(legacy)
			local controls = screen.getAllByTestId("control")
			expect(screen.queryByText("16+")).toBeNil()

			for _, enabled in { true, false } do
				policyEnabled = enabled
				act(function()
					screen.rerender(element(legacy))
				end)
				settleLayout()
				if enabled then
					expect(screen.getByText("16+").Visible).toBe(true)
				else
					expect(screen.queryByText("16+")).toBeNil()
				end
				local updatedControls = screen.getAllByTestId("control")
				expect(#updatedControls).toBe(#controls)
				for _, item in controls do
					expect(updatedControls).toContain(item)
				end
			end
		end)

		if legacy then
			it("keeps the badge and its reserved area after resizing controls", function()
				setShopEnabled(false)
				local screen = render(true)
				local unibar = screen.getByTestId("unibar")
				local badge = screen.getByText("16+").Parent
				for _, width in { 80, 160, 40 } do
					act(function()
						setUnibarWidth(width)
					end)
					settleLayout()
					local gap = badge.AbsolutePosition.X - (unibar.AbsolutePosition.X + unibar.AbsoluteSize.X)
					expect(gap >= require(TopBar.Constants).TopBarPadding).toBe(true)
					local area = keepOutAreas["experience-age-rating"]
					expect(area.position.X + area.size.X >= badge.AbsolutePosition.X + badge.AbsoluteSize.X).toBe(true)
				end
			end)

			it("hides the badge in spatial mode and restores it when leaving", function()
				local ref = React.createRef()
				local screen
				act(function()
					screen = RTL.render(element(true, ref))
				end)
				expect(screen.getByText("16+").Visible).toBe(true)
				act(function()
					ref.current:setState({ ageRatingSpatial = true })
				end)
				expect(screen.queryByText("16+")).toBeNil()
				act(function()
					ref.current:setState({ ageRatingSpatial = false })
				end)
				expect(screen.getByText("16+").Visible).toBe(true)
			end)
		end

		local function checkHidden(hide, show)
			local screen = render(legacy)
			local badge = screen.getByText("16+")
			local originalX = badge.AbsolutePosition.X
			local originalWidth = badge.AbsoluteSize.X
			expect(badge.TextFits).toBe(true)
			act(hide)
			settleLayout()
			expect(badge.Visible and badge.Parent.Visible).toBe(true)
			if legacy and require(Packages.CoreScriptsRoactCommon).Traversal.Flags.FFlagAddTraversalBackButton then
				-- These mock controls remain visible even when the hide signal fires.
				local unibar = screen.getByTestId("unibar")
				expect(badge.AbsolutePosition.X >= unibar.AbsolutePosition.X + unibar.AbsoluteSize.X).toBe(true)
			else
				expect(badge.AbsolutePosition.X < originalX).toBe(true)
			end
			act(show)
			settleLayout()
			expect(badge.AbsolutePosition.X).toBe(originalX)
			expect(badge.AbsoluteSize.X).toBe(originalWidth)
			expect(badge.TextFits).toBe(true)
		end

		if SharedFlags.FFlagEnableConsoleExpControls then
			it("keeps the badge visible when gamepad controls hide", function()
				checkHidden(function()
					showTopBar:set(false)
				end, function()
					showTopBar:set(true)
				end)
			end)
		end
		if legacy and SharedFlags.FFlagAddUILessMode and SharedFlags.FIntAddUILessModeVariant ~= 0 then
			it("keeps the badge visible in UI-less mode", function()
				checkHidden(function()
					setUILessEnabled(true)
					setUIVisible(false)
				end, function()
					setUIVisible(true)
				end)
			end)
		end
	end)
end
