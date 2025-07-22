local CorePackages = game:GetService("CorePackages")

local PlayerList = script.Parent.Parent.Parent

local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local TeamListView = require(PlayerList.Components.PresentationCommon.TeamListView)

type TeamListViewProps = TeamListView.TeamListViewProps

type LeaderboardStore = LeaderboardStore.LeaderboardStore
type TeamEntry = LeaderboardStore.TeamEntry
type PlayerIconInfoProps = LeaderboardStore.PlayerIconInfoProps
type PlayerRelationshipProps = LeaderboardStore.PlayerRelationshipProps

type TeamListContainerProps = {
	-- Layout options
	size: UDim2?,
	entrySizeX: number,
	layoutOrder: React.Binding<number>?,
	showTeamEntry: boolean,

	-- Team data
	teamData: TeamEntry,
	playerIconInfos: { [number]: PlayerIconInfoProps },
	playerRelationships: { [number]: PlayerRelationshipProps },

	-- Dropdown data
	firstPlayerRef: React.Ref<GuiObject?>?,
	setDropDownPlayerDimensionY: ((vec2: Vector2) -> ())?,

	-- Focus nav data
	prevFocusedEntry: React.RefObject<GuiObject?>?,
	destroyedFocusedPlayerId: React.RefObject<number?>?,

	-- Device type
	isSmallTouchDevice: boolean?,
	isDirectionalPreferred: boolean?,
}

local function TeamListContainer(props: TeamListContainerProps)
	local leaderboardStore: LeaderboardStore = useLeaderboardStore() :: LeaderboardStore

	local getTeamListCount = leaderboardStore.getTeamList().getCount

	local teamListCount = SignalsReact.useSignalState(getTeamListCount)
	local teamPlayersCount = SignalsReact.useSignalState(props.teamData.players.getCount)

   	local layoutOrder = SignalsReact.useSignalBinding(props.teamData.order)

	local showTeamEntry = React.useMemo(function()
		if props.teamData.name(false) == LeaderboardStore.SpecialNeutralTeamName then
			if teamListCount == 1 then
				-- Don't display neutral team entry if there is only the neutral team
				return false
			elseif teamPlayersCount == 0 then
				-- Don't display neutral team entry if there is no one on the neutral team
				return false
			end
		end
		return true
	end, { teamListCount, teamPlayersCount, props.teamData.name } :: { any })

	return React.createElement(TeamListView, {
		layoutOrder = layoutOrder,
		showTeamEntry = showTeamEntry,
		teamPlayersCount = teamPlayersCount,

		size = props.size,
		entrySizeX = props.entrySizeX,
		teamData = props.teamData,
		playerIconInfos = props.playerIconInfos,
		playerRelationships = props.playerRelationships,
		firstPlayerRef = props.firstPlayerRef,
		setDropDownPlayerDimensionY = props.setDropDownPlayerDimensionY,
		prevFocusedEntry = props.prevFocusedEntry,
		destroyedFocusedPlayerId = props.destroyedFocusedPlayerId,
		isSmallTouchDevice = props.isSmallTouchDevice,
		isDirectionalPreferred = props.isDirectionalPreferred,
	})
end

local function mapStateToProps(state)
	return {
		isSmallTouchDevice = state.displayOptions.isSmallTouchDevice,
		isDirectionalPreferred = state.displayOptions.isTenFootInterface,

		playerIconInfo = state.playerIconInfo,
		playerRelationship = state.playerRelationship,
	}
end

return React.memo(RoactRodux.connect(mapStateToProps)(TeamListContainer))
