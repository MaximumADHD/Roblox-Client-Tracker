-- This is part of moving inline view logic out of TopBarApp into its own
-- Presentation file. While FFlagTopBarShopIconV2 exists, that logic lives in
-- both places.

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Chrome = RobloxGui.Modules.Chrome

local React = require(CorePackages.Packages.React)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local useObservableValue = require(Chrome.ChromeShared.Hooks.useObservableValue)
local chromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled()

local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
-- When FFlagEnableConsoleExpControls is off, GamepadConnector is nil, so
-- defaultShowTopBar is used instead of GamepadConnector:getShowTopBar().
local GamepadConnector = if FFlagEnableConsoleExpControls and chromeEnabled
	then require(script.Parent.Parent.GamepadConnector)
	else nil
local defaultShowTopBar = require(Chrome.ChromeShared.Service.ChromeUtils).ObservableValue.new(true)

local InExperienceShop = require(CorePackages.Workspace.Packages.InExperienceShop)
local FFlagEnableInExperienceShop = SharedFlags.FFlagEnableInExperienceShop

-- Note: ShopIcon only shows where UI chrome exists (not VR).
local FFlagEnableExperienceShopGlobalIcon = InExperienceShop.FFlagEnableExperienceShopGlobalIcon
	and FFlagEnableInExperienceShop
	and chromeEnabled
local FFlagCenterInExperienceShopWindow = InExperienceShop.FFlagCenterInExperienceShopWindow
local FFlagExperienceShopNewIconography = InExperienceShop.FFlagExperienceShopNewIconography
local ShopGlobalIcon = InExperienceShop.ShopGlobalIcon

-- This line asserts that chrome is enabled. So we gate it on FFlagEnableExperienceShopGlobalIcon to avoid an error
local CommonIcon = if FFlagEnableExperienceShopGlobalIcon then require(Chrome.Integrations.CommonIcon) else nil

local ChromeService = if FFlagEnableExperienceShopGlobalIcon then require(Chrome.Service) else nil
local ChromeConstants = if FFlagEnableExperienceShopGlobalIcon
	then require(Chrome.ChromeShared.Unibar.Constants)
	else nil
local useMappedSignal = if FFlagEnableExperienceShopGlobalIcon
	then require(CorePackages.Workspace.Packages.Chrome).Hooks.useMappedSignal
	else nil
local shopIsActiveMappedSignal = if FFlagEnableExperienceShopGlobalIcon
		and ChromeService
		and ChromeConstants
	then (require(Chrome.ChromeShared.Service.ChromeUtils)).MappedSignal.new(
		ChromeService:onIntegrationStatusChanged(),
		function()
			return ChromeService:isWindowOpen(ChromeConstants.IN_EXPERIENCE_SHOP_ID)
		end
	)
	else nil
local toggleInExperienceShopWindow = if FFlagEnableExperienceShopGlobalIcon
	then require(Chrome.Integrations.InExperienceShop.ShopWindowLayout).toggleInExperienceShopWindow
	else nil

local function getShopGlobalIconEnabled(scope)
	if not FFlagEnableExperienceShopGlobalIcon then
		return false
	end
	local getStore = InExperienceShop.GetShopGlobalIconStore
	return if getStore then getStore(scope).getEnabled(scope) else false
end

local function getShopGlobalStatusIndicatorEnabled(scope)
	if not FFlagEnableExperienceShopGlobalIcon then
		return false
	end
	local getStore = InExperienceShop.GetShopGlobalIconStore
	return if getStore then getStore(scope).getStatusIndicatorEnabled(scope) else false
end

local function handleShopGlobalIconActivated()
	if not FFlagEnableExperienceShopGlobalIcon then
		return
	end
	if FFlagCenterInExperienceShopWindow then
		if toggleInExperienceShopWindow then
			toggleInExperienceShopWindow()
		end
	else
		if ChromeService and ChromeConstants then
			ChromeService:toggleWindow(ChromeConstants.IN_EXPERIENCE_SHOP_ID)
		end
	end
end

export type Props = {
	buttonSize: number,
	-- Leading gap between the unibar and the shop button. Scales with the icon's
	-- reveal (see ShopGlobalIcon.leftGap), so the gap animates in with the icon.
	leftGap: number?,
	layoutOrder: number?,
	onAreaChanged: ((id: string, position: Vector2, size: Vector2) -> ())?,
}

local function ShopIcon(props: Props): React.ReactNode
	local shopGlobalIconEnabled = SignalsReact.useSignalState(getShopGlobalIconEnabled)
	local shopGlobalStatusIndicatorEnabled = SignalsReact.useSignalState(getShopGlobalStatusIndicatorEnabled)

	React.useEffect(function()
		if not FFlagEnableExperienceShopGlobalIcon then
			return
		end
		local cleanup = InExperienceShop.initShopGlobalIcon and InExperienceShop.initShopGlobalIcon()
		return cleanup or function() end
	end, {})

	-- useMappedSignal is a hook, so it runs every render regardless of the early
	-- return below. Pass nil when the icon is disabled to skip subscribing to
	-- the shop-window-open signal.
	local safeUseMappedSignal = (useMappedSignal or function(): boolean?
		return nil
	end) :: (...any) -> boolean?
	local shopGlobalIconIsActive = safeUseMappedSignal(if shopGlobalIconEnabled then shopIsActiveMappedSignal else nil)

	-- Hide in sync with the rest of the TopBar (e.g. gamepad movement hides the bar).
	local showTopBar =
		useObservableValue(if GamepadConnector == nil then defaultShowTopBar else GamepadConnector:getShowTopBar())

	if not FFlagEnableExperienceShopGlobalIcon or not shopGlobalIconEnabled or not ShopGlobalIcon then
		return nil
	end

	return React.createElement("Frame", {
		Size = UDim2.fromOffset(0, props.buttonSize),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
	}, {
		Icon = React.createElement(ShopGlobalIcon, {
			buttonSize = props.buttonSize,
			leftGap = props.leftGap,
			hidden = showTopBar == false,
			showStatusIndicator = shopGlobalStatusIndicatorEnabled,
			onActivated = handleShopGlobalIconActivated,
			onAreaChanged = props.onAreaChanged,
			isActive = shopGlobalIconIsActive,
			icon = if not FFlagExperienceShopNewIconography
					and CommonIcon
					and shopIsActiveMappedSignal
				then CommonIcon("BuildingStore", nil, shopIsActiveMappedSignal) :: React.Node
				else nil,
		}),
	})
end

return ShopIcon
