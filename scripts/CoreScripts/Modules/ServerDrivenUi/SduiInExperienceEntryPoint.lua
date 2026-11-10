local CorePackages = game:GetService("CorePackages")

local LocalizationService = game:GetService("LocalizationService")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local isTenFootInterface = require(CorePackages.Workspace.Packages.AppCommonLib).isTenFootInterface
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local SduiFeatureEntryPoint = require(CorePackages.Workspace.Packages.SduiSharedUtilities).SduiFeatureEntryPoint
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)

local SduiInExperienceHost = require(script.Parent.SduiInExperienceHost)
export type Props = {
	configKey: string,
	identifier: string?,
	surfaceKey: string,
	routeName: string?,
	additionalAnalyticsData: { [string]: any }?,
	loadTimer: any?,
	onRetry: (() -> ())?,
	errorSlot: React.ReactElement?,
	loadingSlot: React.ReactElement?,
	shouldDisplayLoading: boolean?,
	shouldDisplayError: boolean?,
	onAbsoluteSizeChange: ((Frame) -> ())?,
	extraLocalProps: { [string]: any }?,
	LayoutOrder: number?,
	Size: Foundation.Bindable<UDim2>?,
	AutomaticSize: Enum.AutomaticSize?,
	Position: Foundation.Bindable<UDim2>?,
	colorMode: Foundation.Theme?,
	device: Foundation.Device?,
	-- Each requires the surrounding tree to provide that context instead.
	disableFoundationProvider: boolean?,
	disableLocalizationProvider: boolean?,
	disableAppPolicyProvider: boolean?,
}

local localization: any = nil

local function getLocalization()
	if localization == nil then
		localization = Localization.new(LocalizationService.RobloxLocaleId)
	end
	return localization
end

-- Foundation only scales tokens for Console, so other devices need not be distinguished.
local function getDefaultDevice(): Foundation.Device
	return if isTenFootInterface() then Foundation.Enums.Device.Console else Foundation.Enums.Device.Desktop
end

local function wrapProvider(
	provider: any,
	providerProps: { [string]: any },
	child: React.ReactElement
): React.ReactElement
	return React.createElement(provider, providerProps, { Child = child })
end

-- Deliberately provides no Rodux store: SDUI content in experience must not depend on Rodux, and a store here would shadow the host's.
local function SduiInExperienceEntryPoint(props: Props, ref: React.Ref<Frame>?)
	local tree = React.createElement(SduiFeatureEntryPoint, {
		configKey = props.configKey,
		identifier = props.identifier,
		appPage = props.surfaceKey,
		routeName = props.routeName,
		additionalAnalyticsData = props.additionalAnalyticsData,
		loadTimer = props.loadTimer,
		onRetry = props.onRetry,
		errorSlot = props.errorSlot,
		loadingSlot = props.loadingSlot,
		shouldDisplayLoading = props.shouldDisplayLoading,
		shouldDisplayError = props.shouldDisplayError,
		onAbsoluteSizeChange = props.onAbsoluteSizeChange,
		extraLocalProps = props.extraLocalProps,
		LayoutOrder = props.LayoutOrder,
		Size = props.Size,
		AutomaticSize = props.AutomaticSize,
		Position = props.Position,
		ref = ref,
	})

	if not props.disableAppPolicyProvider then
		tree = wrapProvider(UniversalAppPolicy.RoactAppPolicy.Provider, {
			policy = { UniversalAppPolicy.AppFeaturePolicies },
		}, tree)
	end

	tree = wrapProvider(SduiInExperienceHost, {
		surfaceKey = props.surfaceKey,
	}, tree)

	if not props.disableLocalizationProvider then
		tree = wrapProvider(LocalizationProvider, {
			localization = getLocalization(),
		}, tree)
	end

	if not props.disableFoundationProvider then
		tree = wrapProvider(Foundation.FoundationProvider, {
			colorMode = props.colorMode or Foundation.Enums.ColorMode.Dark,
			device = props.device or getDefaultDevice(),
		}, tree)
	end

	return tree
end

return React.memo(React.forwardRef(SduiInExperienceEntryPoint))
