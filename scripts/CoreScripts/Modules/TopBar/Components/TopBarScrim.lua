local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)

local GamepadConnector = require(script.Parent.GamepadConnector)
local Scrim = CoreScriptsRoactCommon.Scrim

local FFlagEnableUISelector = CoreGuiCommon.Flags.FFlagEnableUISelector
local GetUiSelectorSignalStore = if FFlagEnableUISelector
	then CoreGuiCommon.Stores.GetUiSelectorSignalStore
	else nil :: never

local function createComputedScrimVisible()
	return Signals.createComputed(function(scope)
		local isTopBarFocused = GamepadConnector:topBarFocused(scope)
		local ExpChatFocusNavigationStore = ExpChat.Stores.GetFocusNavigationStore(scope)
		local isChatFocused = ExpChatFocusNavigationStore.getChatInputBarFocused(scope)
		local isSelectorOpen = FFlagEnableUISelector and GetUiSelectorSignalStore(scope).getVisibility(scope)
		return isTopBarFocused or isChatFocused or isSelectorOpen
	end)
end

local function TopBarScrim()
	local visible = SignalsReact.useSignalBinding(createComputedScrimVisible())

	return React.createElement(Scrim, {
		Visible = visible,
	})
end

return React.memo(TopBarScrim)
