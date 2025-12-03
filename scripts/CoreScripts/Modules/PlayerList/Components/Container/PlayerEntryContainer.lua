local CorePackages = game:GetService("CorePackages")

local PlayerList = script.Parent.Parent.Parent

local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local Signals = require(CorePackages.Packages.Signals)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local PlayerEntryView = require(PlayerList.Components.PresentationCommon.PlayerEntryView)
local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local OpenPlayerDropDown = require(PlayerList.Actions.OpenPlayerDropDown)

local FFlagMoveNewPlayerListDividers = SharedFlags.FFlagMoveNewPlayerListDividers
local FFlagPlayerListFixLeaderstatsStacking = SharedFlags.FFlagPlayerListFixLeaderstatsStacking

type PlayerEntryViewProps = PlayerEntryView.PlayerEntryViewProps

type LeaderboardStore = LeaderboardStore.LeaderboardStore
type PlayerEntry = LeaderboardStore.PlayerEntry
type TeamEntry = LeaderboardStore.TeamEntry
type PlayerIconInfoProps = LeaderboardStore.PlayerIconInfoProps
type PlayerRelationshipProps = LeaderboardStore.PlayerRelationshipProps
type GameStatList = LeaderboardStore.GameStatList
type StatList = LeaderboardStore.StatList

type PlayerEntryContainerProps = {
	-- Layout options
	size: UDim2?,
	entrySizeX: number,
	layoutOrder: number?,
	
	-- Store data
	player: Player,
	titlePlayerEntry: boolean,
	teamData: TeamEntry?,
	playerIconInfo: PlayerIconInfoProps,
	playerRelationship: PlayerRelationshipProps,
	
	-- Dropdown data
	dropdownOpen: boolean?,
	selectedPlayer: Player?,
	firstPlayerRef: React.Ref<GuiObject?>?,
	openDropdown: ((Player) -> ())?,
	closeDropdown: (() -> ())?,
	setDropDownPlayerDimensionY: ((vec2: Vector2) -> ())?,

	-- Focus nav data
	prevFocusedEntry: React.RefObject<GuiObject?>?,
	destroyedFocusedPlayerId: React.RefObject<number?>?,
	
	-- Device type
	isSmallTouchDevice: boolean?,
	isDirectionalPreferred: boolean?,

}

local function PlayerEntryContainer(props: PlayerEntryContainerProps)
	local leaderboardStore: LeaderboardStore = useLeaderboardStore() :: LeaderboardStore

	local gameStats: GameStatList = leaderboardStore.getGameStatsList()
	local playerData: PlayerEntry? = leaderboardStore.getPlayerEntry(props.player, false :: any)

	local gameStatsCount: number? = if FFlagPlayerListFixLeaderstatsStacking then nil else SignalsReact.useSignalState(gameStats.getCount)

	local teamPlayersCount = if not FFlagMoveNewPlayerListDividers 
		then Signals.createComputed(function(scope)
			return if props.teamData then props.teamData.players.getCount(scope) else 1
		end) 
		else nil

	return if playerData 
		then React.createElement(PlayerEntryView, {
				playerData = playerData,
				gameStats = gameStats,
				gameStatsCount = if FFlagPlayerListFixLeaderstatsStacking then nil else gameStatsCount,
				
				size = props.size,
				entrySizeX = props.entrySizeX,
				layoutOrder = props.layoutOrder,
				player = props.player,
				titlePlayerEntry = props.titlePlayerEntry,
				teamPlayersCount = teamPlayersCount,
				playerIconInfo = props.playerIconInfo,
				playerRelationship = props.playerRelationship,
				dropdownOpen = props.dropdownOpen,
				selectedPlayer = props.selectedPlayer,
				firstPlayerRef = props.firstPlayerRef,
				openDropdown = props.openDropdown,
				closeDropdown = props.closeDropdown,
				setDropDownPlayerDimensionY = props.setDropDownPlayerDimensionY,
				prevFocusedEntry = props.prevFocusedEntry,
				destroyedFocusedPlayerId = props.destroyedFocusedPlayerId,
				isSmallTouchDevice = props.isSmallTouchDevice,
				isDirectionalPreferred = props.isDirectionalPreferred,
			})
		else nil
end

local function mapStateToProps(state)
	return {
		selectedPlayer = state.playerDropDown.selectedPlayer,
		dropdownOpen = state.playerDropDown.isVisible,

		isSmallTouchDevice = state.displayOptions.isSmallTouchDevice,
		isDirectionalPreferred = state.displayOptions.isTenFootInterface,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeDropdown = function()
			return dispatch(ClosePlayerDropDown())
		end,
		openDropdown = function(player)
			return dispatch(OpenPlayerDropDown(player))
		end,
	}
end

return React.memo(RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerEntryContainer))
