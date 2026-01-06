local CorePackages = game:GetService("CorePackages")

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local useLayoutValues = PlayerListPackage.Common.useLayoutValues
local useStyle = UIBlox.Core.Style.useStyle

local PlayerEntryContainer = require(PlayerList.Components.Container.PlayerEntryContainer)
local TeamEntryContainer = require(PlayerList.Components.Container.TeamEntryContainer)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagReplacePlayerIconRoduxWithSignal = SharedFlags.FFlagReplacePlayerIconRoduxWithSignal
local PlayerIconInfoStorePackage = require(CorePackages.Workspace.Packages.PlayerIconInfoStore)
local PlayerIconInfoStore = PlayerIconInfoStorePackage.PlayerIconInfoStore 
type PlayerIconInfo = PlayerIconInfoStorePackage.PlayerIconInfo

type TeamEntry = LeaderboardStore.TeamEntry
type PlayerIconInfoProps = LeaderboardStore.PlayerIconInfoProps
type PlayerRelationshipProps = LeaderboardStore.PlayerRelationshipProps

export type TeamListViewProps = {
	-- Layout options
	entrySizeX: number,
	layoutOrder: React.Binding<number>?,
	showTeamEntry: boolean,

	-- Store data
	teamData: TeamEntry,
	teamPlayersCount: number,
	playerIconInfos: { [number]: PlayerIconInfo },
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
	local style = useStyle()

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
			size = UDim2.new(1, 0, 0, layoutValues.TeamEntrySizeY) ,
			teamData = props.teamData,
			entrySizeX = props.entrySizeX,
			isSmallTouchDevice = props.isSmallTouchDevice,
			isDirectionalPreferred = props.isDirectionalPreferred,
			layoutOrder = -1,
		})
	end

	if props.teamPlayersCount > 0 then
		local addedPlayerEntriesCount = 0

		if props.isSmallTouchDevice then
			childElements.BottomDiv = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(0, 0),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0.8,
				LayoutOrder = props.teamPlayersCount * 2,
			})
		end

		props.teamData.players.iterateData(function(player, playerId)	
      addedPlayerEntriesCount += 1
			local playerIconInfo
			if FFlagReplacePlayerIconRoduxWithSignal then
				local playerIconInfoGetter = PlayerIconInfoStore.getPlayerIconInfoReactive(player.UserId)
				playerIconInfo = playerIconInfoGetter(false)
			else
				playerIconInfo = props.playerIconInfos[playerId]
			end

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
				setDropDownPlayerDimensionY = props.setDropDownPlayerDimensionY,
				firstPlayerRef = props.firstPlayerRef,
				prevFocusedEntry = props.prevFocusedEntry,
				destroyedFocusedPlayerId = props.destroyedFocusedPlayerId,
			})

			if props.isSmallTouchDevice then
				childElements["TopDiv_" .. addedPlayerEntriesCount] = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 0, 0),
					AnchorPoint = Vector2.new(0, 0),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 0.8,
					LayoutOrder = (addedPlayerEntriesCount - 1) * 2,
				})
			end

			if addedPlayerEntriesCount < props.teamPlayersCount and not props.isSmallTouchDevice and not props.isDirectionalPreferred then
				childElements["Divider_" .. addedPlayerEntriesCount] = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = style.Theme.Divider.Transparency,
					BackgroundColor3 = style.Theme.Divider.Color,
					BorderSizePixel = 0,
					LayoutOrder = addedPlayerEntriesCount * 2,
				})
			end
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
