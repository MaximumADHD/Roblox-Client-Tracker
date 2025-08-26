--!strict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local Players = game:GetService("Players")

local RobloxGui = CoreGui.RobloxGui
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Foundation = require(CorePackages.Packages.Foundation)
local Constants = require(RobloxGui.Modules.InGameMenu.Resources.Constants)

local View = Foundation.View
local BaseComponent = require(script.BaseComponent)
local NextUpComponent = require(script.NextUpComponent)
local LeaveButtonsContainer = require(script.LeaveButtonsContainer)
local useNextUpSort = require(script.useNextUpSort)

local FIntNextUpShadowTrafficPercent = game:DefineFastInt("NextUpShadowTrafficPercent", 0)
local FFlagEnableInGameExitModalNextUpUi =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableInGameExitModalNextUpUi
local FFlagEnableInGameExitModalNextUpUiRequestCache =
	require(script.Flags.FFlagEnableInGameExitModalNextUpUiRequestCache)
local FFlagInGameExitModalFixModalPadding = require(script.Flags.FFlagInGameExitModalFixModalPadding)

-- if this flag is off, we use the default LeaveGame page but can hit the backend with nextup traffic
if not FFlagEnableInGameExitModalNextUpUi then
	local player = Players.LocalPlayer
	local userId = player and player.UserId or 99
	if userId % 100 < FIntNextUpShadowTrafficPercent then
		local root = ReactRoblox.createRoot(Instance.new("ScreenGui"))
		root:render(React.createElement(BaseComponent, nil, {
			nextUpShadowTraffic = React.createElement(function()
				useNextUpSort()
				return nil
			end),
		}))
	end

	return require(script.Parent.LeaveGame)
end

local MIN_HEIGHT = 350

local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
local PageInstance = settingsPageFactory:CreateNewPage()
PageInstance.TabHeader = nil -- no tab for this page
PageInstance.Page.Name = "LeaveGamePage"
PageInstance.ShouldShowBottomBar = false
PageInstance.ShouldShowHubBar = false
PageInstance.ShrinkwrapPageViewClipper = true
PageInstance.DisableTopPadding = true
PageInstance.MaintainVerticalSize = true
PageInstance.Page.Size = UDim2.fromScale(1, 0)
PageInstance.Page.AutomaticSize = Enum.AutomaticSize.Y

function PageInstance:GetSize()
	local s = self.Page.AbsoluteSize
	-- ceil to ensure scrollbar doesn't show because of floating point sizes
	-- clamp min height to avoid an awkwardly small page if recs fail to load
	return Vector2.new(math.ceil(s.X), math.max(math.ceil(s.Y), MIN_HEIGHT))
end

local function onDontLeave(isUsingGamepad: boolean)
	if PageInstance.HubRef then
		PageInstance.HubRef:PopMenu(isUsingGamepad, true)
	end

	AnalyticsService:SendEventDeferred(
		Constants.AnalyticsTargetName,
		Constants.AnalyticsInGameMenuName,
		Constants.AnalyticsLeaveGameName,
		{
			confirmed = Constants.AnalyticsCancelledName,
			universeid = tostring(game.GameId),
			source = Constants.AnalyticsLeaveGameSource,
			playsessionid = AnalyticsService:GetPlaySessionId(),
		}
	)
end

local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()
local buttonSize = if isTenFootInterface then 300 else 200

local function LeaveGameWithNextUpComponent()
	local visible, setVisible = React.useState(false)
	local nextUpSort = if FFlagEnableInGameExitModalNextUpUiRequestCache then useNextUpSort() else nil

	React.useEffect(function()
		local connections = {}
		table.insert(
			connections,
			PageInstance.Displayed.Event:connect(function()
				setVisible(true)
			end)
		)

		table.insert(
			connections,
			PageInstance.Hidden.Event:connect(function()
				setVisible(false)
			end)
		)

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, {})

	if not visible then
		return React.None
	end

	return React.createElement(BaseComponent, nil, {
		mainContainer = React.createElement(View, {
			tag = if FFlagInGameExitModalFixModalPadding
				then "size-full-0 auto-y padding-large col gap-xxlarge"
				else "size-full-0 auto-y padding-large col gap-large",
		}, {
			LeaveButtonsContainer = React.createElement(LeaveButtonsContainer, {
				onDontLeave = onDontLeave,
				buttonSize = buttonSize,
			}),
			nextUpComponent = React.createElement(NextUpComponent, {
				tilePairWidth = buttonSize,
				nextUpSort = if FFlagEnableInGameExitModalNextUpUiRequestCache then nextUpSort else nil,
			}),
		}),
	})
end

local root = ReactRoblox.createRoot(PageInstance.Page)
root:render(React.createElement(BaseComponent, nil, {
	leaveGameWithNextUp = React.createElement(LeaveGameWithNextUpComponent),
}))

return PageInstance
