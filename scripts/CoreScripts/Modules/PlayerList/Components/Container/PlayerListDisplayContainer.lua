local CorePackages = game:GetService("CorePackages")

local PlayerList = script.Parent.Parent.Parent

local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local PlayerListDisplayView = require(PlayerList.Components.PresentationCommon.PlayerListDisplayView)
local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)

local FFlagAddNewPlayerListFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListFocusNav

type PlayerListDisplayViewProps = PlayerListDisplayView.PlayerListDisplayViewProps

type LeaderboardStore = LeaderboardStore.LeaderboardStore
type PlayerIconInfoProps = LeaderboardStore.PlayerIconInfoProps
type PlayerRelationshipProps = LeaderboardStore.PlayerRelationshipProps

type PlayerListDisplayContainerProps = {
	-- Layout options
	entrySize: number,
	screenSizeY: number,

	-- Store data
	playerIconInfo: PlayerIconInfoProps,
	playerRelationship: PlayerRelationshipProps,

	dismissPlayerList: () -> (),
	isVisible: boolean,
	isMinimized: boolean,

	-- Dropdown data
	dropDownVisible: boolean,
	dropDownPlayer: Player?,

	-- Device and input types
	isSmallTouchDevice: boolean,
	isDirectionalPreferred: boolean,
	isUsingGamepad: boolean,
}

local function PlayerListDisplayContainer(props: PlayerListDisplayContainerProps)
	local leaderboardStore: LeaderboardStore = useLeaderboardStore() :: LeaderboardStore

	local gameStats = leaderboardStore.getGameStatsList()
	local teamList = leaderboardStore.getTeamList()

	local gameStatsCount = SignalsReact.useSignalState(gameStats.getCount)
	local teamListCount = SignalsReact.useSignalState(teamList.getCount)

	return if leaderboardStore 
		then React.createElement(React.Fragment, nil, React.createElement(PlayerListDisplayView, {
			teamList = teamList,
			teamListCount = teamListCount,
			gameStatsCount = gameStatsCount,

			entrySizeX = props.entrySize,
			screenSizeY = props.screenSizeY,
			playerIconInfo = props.playerIconInfo,
			playerRelationship = props.playerRelationship,
			dropDownPlayer = props.dropDownPlayer,
			dropDownVisible = props.dropDownVisible,
			dismissPlayerList = props.dismissPlayerList,
			isVisible = props.isVisible,
			isMinimized = props.isMinimized,
			isSmallTouchDevice = props.isSmallTouchDevice,
			isDirectionalPreferred = props.isDirectionalPreferred,
			isUsingGamepad = props.isUsingGamepad,
		}))
		else nil
end

local function PlayerListDisplayContainerWithLeaderboardStore(props: PlayerListDisplayContainerProps)
	local leaderboardStore: LeaderboardStore? = useLeaderboardStore()

	return if leaderboardStore
		then PlayerListDisplayContainer(props)
		else nil
end

local function mapDispatchToProps(dispatch)
	return {
		dismissPlayerList = function()
			return dispatch(SetPlayerListVisibility(false))
		end,
	}
end

local function mapStateToProps(state)
	local isMinimized = state.displayOptions.isMinimized

	return {
		isVisible = if FFlagAddNewPlayerListFocusNav then nil else state.displayOptions.isVisible,
		isMinimized = isMinimized,
		isDirectionalPreferred = state.displayOptions.isTenFootInterface,
		isUsingGamepad = state.displayOptions.isUsingGamepad,
		isSmallTouchDevice = state.displayOptions.isSmallTouchDevice,

		playerIconInfo = state.playerIconInfo,
		playerRelationship = state.playerRelationship,

		dropDownPlayer = state.playerDropDown.selectedPlayer,
		dropDownVisible = state.playerDropDown.isVisible,
	}
end

return React.memo(RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerListDisplayContainerWithLeaderboardStore)) 
