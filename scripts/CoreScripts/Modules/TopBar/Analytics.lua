local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local EngineFeatureRbxAnalyticsServiceExposePlaySessionId =
	game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

local Cryo = require(CorePackages.Cryo)

local TopBar = script.Parent
local Constants = require(TopBar.Constants)
local FFlagEnableTopBarAnalytics = require(TopBar.Flags.GetFFlagEnableTopBarAnalytics)()

export type TopBarAnalytics = {
	__index: TopBarAnalytics,
	default: TopBarAnalytics,
	new: () -> TopBarAnalytics,

	onChatButtonActivated: (TopBarAnalytics, isActive: boolean) -> nil,
	onMoreMenuActivated: (TopBarAnalytics) -> nil,

	onInventoryActivated: (TopBarAnalytics, isActive: boolean) -> nil,
	onLeaderboardActivated: (TopBarAnalytics, isActive: boolean) -> nil,
	onEmotesActivated: (TopBarAnalytics, isActive: boolean) -> nil,

	onShowGamepadNavigationDialog: (TopBarAnalytics) -> nil,
	onDismissGamepadNavigationDialog: (TopBarAnalytics) -> nil,

	_target: string,
	_context: string,
	_defaultProps: any,
	_sendEvent: (eventName: string, props: any) -> nil,
	_onButtonActivated: (buttonName: string, isActive: boolean) -> nil,
}

local TopBarAnalytics = {} :: TopBarAnalytics
TopBarAnalytics.__index = TopBarAnalytics

function TopBarAnalytics.new(): TopBarAnalytics
	local self = (
		setmetatable({
			_target = "client",
			_context = "topbar",
			_defaultProps = {
				universeid = tostring(game.GameId),
				placeid = tostring(game.PlaceId),
				sessionid = AnalyticsService:GetSessionId(),
			},
		}, TopBarAnalytics) :: any
	) :: TopBarAnalytics

	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		self._defaultProps.playsessionid = AnalyticsService:GetPlaySessionId()
	end

	self._sendEvent = function(eventName: string, eventProperties: any)
		local props = Cryo.Dictionary.join(self._defaultProps, eventProperties or {})
		AnalyticsService:SendEventDeferred(self._target, self._context, eventName, props)
		return nil
	end

	self._onButtonActivated = function(buttonName: string, isActive: boolean)
		return self._sendEvent(Constants.Analytics.EventNameTopBarButtonActivated, {
			button = buttonName,
			status = if isActive then Constants.Analytics.StatusActive else Constants.Analytics.StatusInactive,
		})
	end

	return self
end

function TopBarAnalytics:onChatButtonActivated(isActive: boolean)
	return self._onButtonActivated(Constants.Analytics.ChatButtonName, isActive)
end

function TopBarAnalytics:onMoreMenuActivated()
	-- Will not be triggered on deactivated due to MoreMenu being hidden by full screen overlay
	return self._onButtonActivated(Constants.Analytics.MoreMenuButtonName, true)
end

function TopBarAnalytics:onInventoryActivated(isActive: boolean)
	return self._onButtonActivated(Constants.Analytics.InventoryButtonName, isActive)
end

function TopBarAnalytics:onLeaderboardActivated(isActive: boolean)
	return self._onButtonActivated(Constants.Analytics.LeaderboardButtonName, isActive)
end

function TopBarAnalytics:onEmotesActivated(isActive: boolean)
	return self._onButtonActivated(Constants.Analytics.EmotesButtonName, isActive)
end

function TopBarAnalytics:onShowGamepadNavigationDialog()
	return self._sendEvent(Constants.Analytics.ShowGamepadNavigationDialog)
end

function TopBarAnalytics:onDismissGamepadNavigationDialog()
	return self._sendEvent(Constants.Analytics.DismissGamepadNavigationDialog)
end

TopBarAnalytics.default = TopBarAnalytics.new()
return TopBarAnalytics
