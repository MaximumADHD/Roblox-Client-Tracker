local CorePackages = game:GetService("CorePackages")

local PlayerList = script.Parent.Parent.Parent

local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local TitleBarView = require(PlayerList.Components.PresentationCommon.TitleBarView)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagPlayerListFixLeaderstatsStacking = SharedFlags.FFlagPlayerListFixLeaderstatsStacking

type TitleBarViewProps = TitleBarView.TitleBarViewProps

type LeaderboardStore = LeaderboardStore.LeaderboardStore
type GameStatList = LeaderboardStore.GameStatList

export type TitleBarContainerProps = {
	-- Layout options
	size: UDim2,
	entrySizeX: number,
	layoutOrder: number?,
	contentsVisible: boolean,

	-- Device type
	isSmallTouchDevice: boolean?,

	-- Styling options
	showDivider: boolean?,
	showBackground: boolean?,
	backgroundTransparency: (number | { [string]: any })?,
	useCustomTextColor: boolean?,
	customTextColor: Color3?,
	headerPaddingLeft: number?,
}

local function TitleBarContainer(props: TitleBarContainerProps)
	local leaderboardStore: LeaderboardStore = useLeaderboardStore() :: LeaderboardStore

	local gameStats: GameStatList = leaderboardStore.getGameStatsList()
	
	local gameStatsCount: number? = if FFlagPlayerListFixLeaderstatsStacking then nil else SignalsReact.useSignalState(gameStats.getCount)

	return React.createElement(TitleBarView, {
		gameStats = gameStats,
		gameStatsCount = if FFlagPlayerListFixLeaderstatsStacking then nil else gameStatsCount,

		size = props.size,
		entrySizeX = props.entrySizeX,
		layoutOrder = props.layoutOrder,
		contentsVisible = props.contentsVisible,
		isSmallTouchDevice = props.isSmallTouchDevice,
		showDivider = props.showDivider,
		showBackground = props.showBackground,
		backgroundTransparency = props.backgroundTransparency,
		useCustomTextColor = props.useCustomTextColor,
		customTextColor = props.customTextColor,
		headerPaddingLeft = props.headerPaddingLeft,
	})
end

return React.memo(TitleBarContainer)
