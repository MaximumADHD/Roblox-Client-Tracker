local CorePackages = game:GetService("CorePackages")

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local React = require(CorePackages.Packages.React)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local useLayoutValues = PlayerListPackage.Common.useLayoutValues

local PlayerEntryContainer = require(PlayerList.Components.Container.PlayerEntryContainer)
local TeamEntryContainer = require(PlayerList.Components.Container.TeamEntryContainer)

type TeamEntry = LeaderboardStore.TeamEntry
type PlayerIconInfoProps = LeaderboardStore.PlayerIconInfoProps
type PlayerRelationshipProps = LeaderboardStore.PlayerRelationshipProps

export type TeamListViewProps = {
	-- Layout options
	size: UDim2?,
	entrySizeX: number,
	layoutOrder: React.Binding<number>?,
	showTeamEntry: boolean,

	-- Store data
	teamData: TeamEntry,
	teamPlayersCount: number,
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

local function TeamListView(props: TeamListViewProps)
	local layoutValues = useLayoutValues()

	local size = if props.size then props.size else UDim2.new(1, 0, 0, layoutValues.TeamEntrySizeY)

	local childElements: { [string]: React.ReactNode } = {}

	childElements.UIListLayout = React.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Padding = if props.isDirectionalPreferred then UDim.new(0, layoutValues.EntryPadding) else nil,
	})

	if props.showTeamEntry then
		childElements.TeamEntry = React.createElement(TeamEntryContainer, {
			size = size,
			teamData = props.teamData,
			entrySizeX = props.entrySizeX,
			isSmallTouchDevice = props.isSmallTouchDevice,
			isDirectionalPreferred = props.isDirectionalPreferred,
			layoutOrder = -1,
		})
	end

	if props.teamPlayersCount > 0 then
		props.teamData.players.iterateData(function(player, playerId)
			local playerIconInfo = props.playerIconInfos[playerId]
			local playerRelationship = props.playerRelationships[playerId]

			-- TODO: Remove when playerIconInfo and playerRelationship data gets moved to leaderboard store (APPEXP-2963)
			-- TeamList can get rendered before playerIconInfo and playerRelationship values are updated
			-- Prevent rendering PlayerEntries until these values are available
			if not playerIconInfo or not playerRelationship then
				return
			end

			childElements["PlayerEntry_" .. tostring(playerId)] = React.createElement(PlayerEntryContainer, {
				size = UDim2.new(1, layoutValues.EntryXOffset, 0, layoutValues.PlayerEntrySizeY),
				player = player,
				titlePlayerEntry = false,
				entrySizeX = props.entrySizeX,
				playerIconInfo = playerIconInfo,
				playerRelationship = playerRelationship,
				teamData = props.teamData,
				setDropDownPlayerDimensionY = props.setDropDownPlayerDimensionY,
				firstPlayerRef = props.firstPlayerRef,
				prevFocusedEntry = props.prevFocusedEntry,
				destroyedFocusedPlayerId = props.destroyedFocusedPlayerId,
			})
		end, false)
	end

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
	}, childElements)
end

return React.memo(TeamListView)