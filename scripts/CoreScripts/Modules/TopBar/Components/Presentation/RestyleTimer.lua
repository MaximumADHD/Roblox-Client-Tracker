local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Chrome = RobloxGui.Modules.Chrome

local CoreGuiCommonStores = require(CorePackages.Workspace.Packages.CoreGuiCommon).Stores
local React = require(CorePackages.Packages.React)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTopBarRefactor = require(CorePackages.Workspace.Packages.InExperienceTopBar).Flags.FFlagTopBarRefactor
local RestyleTimer = require(CorePackages.Workspace.Packages.InExperienceCloudPlay.RestyleTimer)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local useObservableValue = require(Chrome.ChromeShared.Hooks.useObservableValue)
local chromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled()

local GamepadConnector = if SharedFlags.FFlagEnableConsoleExpControls and chromeEnabled
	then require(script.Parent.Parent.GamepadConnector)
	else nil
local uiLessStore = if SharedFlags.FFlagAddUILessMode
		and SharedFlags.FIntAddUILessModeVariant ~= 0
		and CoreGuiCommonStores.GetUILessStore
	then CoreGuiCommonStores.GetUILessStore(false)
	else nil
-- A computed, not an inline getter: useSignalState's mutable-source path tracks a single signal per getter.
local getUILessHidden = Signals.createComputed(function(scope)
	return uiLessStore ~= nil and uiLessStore.getUILessModeEnabled(scope) and not uiLessStore.getUIVisible(scope)
end)
local legacyShowTopBar = if GamepadConnector == nil
	then ChromeUtils.ObservableValue.new(true)
	else GamepadConnector:getShowTopBar()

export type Props = RestyleTimer.Props & {
	-- Defaults to the legacy TopBar's gamepad visibility; the V2 TopBar passes its own signal.
	showTopBar: ChromeUtils.ObservableValue<boolean>?,
	-- Only the legacy TopBar toggles UI-less visibility, so only it should follow UI-less mode.
	followsUILessMode: boolean?,
}

-- Hides the chip in sync with the rest of the TopBar (gamepad movement or UI-less mode hides the bar).
local function TopBarRestyleTimer(props: Props)
	local showTopBar = useObservableValue(props.showTopBar or legacyShowTopBar)
	local uiLessHidden = SignalsReact.useSignalState(getUILessHidden)
	return React.createElement(RestyleTimer, {
		buttonSize = props.buttonSize,
		layoutOrder = props.layoutOrder,
		onAreaChanged = props.onAreaChanged,
		onAreaRemoved = props.onAreaRemoved,
		isHidden = if FFlagTopBarRefactor
			then nil
			else showTopBar == false or (props.followsUILessMode == true and uiLessHidden),
	})
end

return TopBarRestyleTimer
