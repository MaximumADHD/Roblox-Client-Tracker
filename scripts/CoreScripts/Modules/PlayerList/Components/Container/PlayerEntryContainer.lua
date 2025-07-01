local CorePackages = game:GetService("CorePackages")
local PlayerList = script.Parent.Parent.Parent

local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Cryo = require(CorePackages.Packages.Cryo)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)
type LeaderboardStore = LeaderboardStore.LeaderboardStore

local createSignalMap = LeaderboardStore.createSignalMap
local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local PlayerEntryView = require(PlayerList.Components.PresentationCommon.PlayerEntryView)
local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local OpenPlayerDropDown = require(PlayerList.Actions.OpenPlayerDropDown)

type SignalMap<K, V> = LeaderboardStore.SignalMap<K, V>
type PlayerEntry = LeaderboardStore.PlayerEntry

local function PlayerEntryContainer(props)
	local leaderboardStore: LeaderboardStore? = useLeaderboardStore() :: any?
	local gameStats = if leaderboardStore then leaderboardStore.getGameStatsList() else createSignalMap()

	local playerEntry: PlayerEntry? = if leaderboardStore then leaderboardStore.getPlayerEntry(props.player, false :: any) else nil
	local playerStats = if playerEntry then playerEntry.stats else createSignalMap()

	local mergedProps = Cryo.Dictionary.join(props, 
		{
			playerStats = playerStats,
			gameStats = gameStats,
			gameStatNames = Cryo.None,

			selectedPlayer = props.selectedPlayer,
			dropdownOpen = props.dropdownOpen,
			isSmallTouchDevice = props.isSmallTouchDevice,
			isDirectionalPreferred = props.isDirectionalPreferred,
			closeDropdown = props.closeDropdown,
			openDropdown = props.openDropdown,
		}
	)

	return React.createElement(PlayerEntryView, mergedProps)
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

PlayerEntryContainer = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerEntryContainer)

local ForwardRefPlayerEntryContainer = React.forwardRef(function(props, ref)
	return React.createElement(
		PlayerEntryContainer,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)

return React.memo(ForwardRefPlayerEntryContainer)
