local CorePackages = game:GetService("CorePackages")

local PlayerList = script.Parent.Parent.Parent

local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)
local PlayerIconInfoStore = require(CorePackages.Workspace.Packages.PlayerIconInfoStore)

local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local TeamListView = require(PlayerList.Components.PresentationCommon.TeamListView)

local FFlagPlayerListUseFocusNavHook = PlayerListPackage.Flags.FFlagPlayerListUseFocusNavHook

type TeamListViewProps = TeamListView.TeamListViewProps

type LeaderboardStore = LeaderboardStore.LeaderboardStore
type TeamId = LeaderboardStore.TeamId
type TeamEntry = LeaderboardStore.TeamEntry
type PlayerIconInfo = PlayerIconInfoStore.PlayerIconInfo
type PlayerRelationshipProps = LeaderboardStore.PlayerRelationshipProps

type RegisterTeamInstance = PlayerListPackage.RegisterTeamInstance
type UnregisterTeamInstance = PlayerListPackage.UnregisterTeamInstance
type RegisterPlayerInstance = PlayerListPackage.RegisterPlayerInstance
type UnregisterPlayerInstance = PlayerListPackage.UnregisterPlayerInstance
type SetSelectedPlayerId = PlayerListPackage.SetSelectedPlayerId

type TeamListContainerProps = {
	-- Layout options
	entrySizeX: number,
	layoutOrder: React.Binding<number>?,
	showTeamEntry: boolean,

	-- Team data
	teamId: TeamId?, -- Make non-optional when FFlagPlayerListUseFocusNavHook is enabled
	teamData: TeamEntry,
	playerIconInfos: { [number]: PlayerIconInfo },
	playerRelationships: { [number]: PlayerRelationshipProps },

	-- Dropdown data
	firstPlayerRef: React.Ref<GuiObject?>?,
	setDropDownPlayerDimensionY: ((vec2: Vector2) -> ())?,

	-- Focus nav data
	prevFocusedEntry: React.RefObject<GuiObject?>?, -- Remove when FFlagPlayerListUseFocusNavHook is enabled
	destroyedFocusedPlayerId: React.RefObject<number?>?, -- Remove when FFlagPlayerListUseFocusNavHook is enabled
	registerTeamInstance: RegisterTeamInstance?,
	unregisterTeamInstance: UnregisterTeamInstance?,
	setSelectedPlayerId: SetSelectedPlayerId?,

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

	local registerPlayerInstance: RegisterPlayerInstance?
	local unregisterPlayerInstance: UnregisterPlayerInstance?
	if FFlagPlayerListUseFocusNavHook then 
		registerPlayerInstance, unregisterPlayerInstance = React.useMemo(function(): (RegisterPlayerInstance?, UnregisterPlayerInstance?)
			if props.registerTeamInstance and props.teamId then
				local teamInstance = props.registerTeamInstance(props.teamId, props.teamData.order)
				return teamInstance.registerPlayerInstance, teamInstance.unregisterPlayerInstance
			else
				return nil, nil
			end
		end, { props.registerTeamInstance, props.teamId, props.teamData } :: { any })
	end

	if FFlagPlayerListUseFocusNavHook then
		React.useEffect(function()
			return function()
				if props.unregisterTeamInstance and props.teamId then
					props.unregisterTeamInstance(props.teamId)
				end
			end
		end, { props.unregisterTeamInstance, props.teamId } :: { any })
	end

	return React.createElement(TeamListView, {
		layoutOrder = layoutOrder,
		showTeamEntry = showTeamEntry,
		teamPlayersCount = teamPlayersCount,

		entrySizeX = props.entrySizeX,
		teamData = props.teamData,
		playerIconInfos = props.playerIconInfos,
		playerRelationships = props.playerRelationships,
		firstPlayerRef = props.firstPlayerRef,
		setDropDownPlayerDimensionY = props.setDropDownPlayerDimensionY,
		prevFocusedEntry = props.prevFocusedEntry,
		destroyedFocusedPlayerId = props.destroyedFocusedPlayerId,
		registerPlayerInstance = if FFlagPlayerListUseFocusNavHook then registerPlayerInstance else nil,
		unregisterPlayerInstance = if FFlagPlayerListUseFocusNavHook then unregisterPlayerInstance else nil,
		setSelectedPlayerId = if FFlagPlayerListUseFocusNavHook then props.setSelectedPlayerId else nil,
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
