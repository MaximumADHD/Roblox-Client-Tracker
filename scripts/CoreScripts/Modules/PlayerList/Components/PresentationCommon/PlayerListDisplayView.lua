local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local LocalPlayer = Players.LocalPlayer
local Components = script.Parent.Parent
local PlayerList = Components.Parent

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Otter = require(CorePackages.Packages.Otter)
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)

local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)

local useLayoutValues = PlayerListPackage.Common.useLayoutValues
local useStyle = UIBlox.Core.Style.useStyle
local useFocusGuiObject = ReactFocusNavigation.useFocusGuiObject
local useFocusedGuiObject = ReactFocusNavigation.useFocusedGuiObject

local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local SmallIconSize = UIBlox.App.ImageSet.getIconSize(IconSize.Small)

local UIBloxImages = UIBlox.App.ImageSet.Images

local PlayerEntryContainer = require(PlayerList.Components.Container.PlayerEntryContainer)
local TeamListContainer = require(PlayerList.Components.Container.TeamListContainer)
local TitleBarContainer = require(PlayerList.Components.Container.TitleBarContainer)

local PlayerDropDown = require(Components.Presentation.PlayerDropDown)

local FFlagPlayerListFixMobileScrolling = require(PlayerList.Flags.FFlagPlayerListFixMobileScrolling)
local FFlagDisablePlayerListDisplayCloseBtn = game:DefineFastFlag("DisablePlayerListDisplayCloseBtn", false)
local FFlagAddNewPlayerListFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListFocusNav
local FFlagAddNewPlayerListMobileFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListMobileFocusNav

local EnableCloseButton = ChromeEnabled() and not FFlagDisablePlayerListDisplayCloseBtn

local TOP_BOTTOM_CORNER_RADIUS = 7
local MOTOR_OPTIONS = {
	dampingRatio = 1,
	frequency = 4,
}

type GameStatList = LeaderboardStore.GameStatList
type TeamList = LeaderboardStore.TeamList
type PlayerIconInfoProps = LeaderboardStore.PlayerIconInfoProps
type PlayerRelationshipProps = LeaderboardStore.PlayerRelationshipProps

export type PlayerListDisplayViewProps = {
	-- Layout options
	entrySizeX: number,
	screenSizeY: number,

	-- Store data
	teamList: TeamList,
	teamListCount: number,
	gameStatsCount: number,
	playerIconInfo: PlayerIconInfoProps,
	playerRelationship: PlayerRelationshipProps,

	isVisible: boolean,
	isMinimized: boolean,
	dismissPlayerList: () -> (),

	-- Dropdown data
	dropDownVisible: boolean,
	dropDownPlayer: Player?,

	-- Device and input types
	isSmallTouchDevice: boolean,
	isDirectionalPreferred: boolean,
	isUsingGamepad: boolean,
}

local function PlayerListDisplayView(props: PlayerListDisplayViewProps): React.ReactNode
	local layoutValues = useLayoutValues()
	local style = useStyle()

	local focusGuiObject = useFocusGuiObject()
	local focusedGuiObject = useFocusedGuiObject()

	local scrollingFrameRef = React.useRef(nil :: ScrollingFrame?)
	local firstPlayerRef = React.useRef(nil :: GuiObject?)
	local prevFocusedEntry = React.useRef(nil :: GuiObject?)
	local destroyedFocusedPlayerId = React.useRef(nil :: number?)
	local minimizedMotor = React.useRef(Otter.createSingleMotor(0))

	local lastCanvasPosition, setLastCanvasPosition = React.useState(Vector2.new(0, 0))
	local containerSizeY, setContainerSizeY  = React.useState(100)
	local scrollingFramePositionY, setScrollingFramePositionY  = React.useState(0)
	local contentsVisible, setContentsVisible  = React.useState(true)

	-- Tracks the position and size of the selected PlayerEntry
	-- X: PositionY, Y: SizeY
	local dropDownPlayerDimensionY, setDropDownPlayerDimensionY = React.useState(Vector2.new(0, 0))

	local scrollingFrameContainerSizeY, setScrollingFrameContainerSizeY = React.useState(0)
	local scrollingFrameContentSizeY, setScrollingFrameContentSizeY = React.useState(0)

	local dropDownPositionY, setDropDownPositionY = React.useState(0)
	local canvasPositionOverride: Vector2?, setCanvasPositionOverride = React.useState(nil :: Vector2?)

	local minimizedBinding, updateMinimizedBinding = React.createBinding(0)
	local defaultTransparencyBinding, updateDefaultTransparencyBinding = React.createBinding(0)
	local fadedTransparencyBinding, updateFadedTransparencyBinding = React.createBinding(0)
	local transparencyBinding = React.joinBindings({
		minimizedBinding,
		defaultTransparencyBinding,
		fadedTransparencyBinding,
	}):map(function(values: { number })
		local value = values[1]
		local defaultTransparency = values[2]
		local fadedTransparency = values[3]
		local delta = fadedTransparency - defaultTransparency
		return defaultTransparency + (delta * value)
	end)

	local scrollingFrameContentAbsoluteSizeChanged = React.useCallback(function(rbx)
		setScrollingFrameContentSizeY(rbx.AbsoluteSize.Y)
	end, {})

	local absoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		setContainerSizeY(rbx.AbsoluteSize.Y)
	end, {})

	local canvasPositionChanged = React.useCallback(function(rbx: ScrollingFrame)
		setLastCanvasPosition(rbx.CanvasPosition)
	end, {})

	local absolutePositionChanged = React.useCallback(function(rbx)
		setScrollingFramePositionY(rbx.AbsolutePosition.Y)
	end, {})

	local getShowTitlePlayer = React.useCallback(function()
		if not props.isSmallTouchDevice then
			return false
		end

		local enoughTeams = props.teamList and props.teamList.getCount(false) > 0 or false
		local enoughStats = props.gameStatsCount > 0 or false

		return enoughTeams or enoughStats
	end, { props.gameStatsCount, props.isSmallTouchDevice, props.teamList } :: { any })

	React.useEffect(function()
		minimizedMotor.current:onStep(updateMinimizedBinding)
		minimizedMotor.current:onComplete(function(value)
			if value == 0 then
				setContentsVisible(true)
			end
		end)
	end, {})

	React.useEffect(function()
		if props.isSmallTouchDevice then
			setContentsVisible(not props.isMinimized)
		else
			if minimizedMotor.current then
				minimizedMotor.current:setGoal(Otter.spring(props.isMinimized and 1 or 0, MOTOR_OPTIONS))
			end
			if props.isMinimized then
				setContentsVisible(false)
			end
		end
	end, { props.isSmallTouchDevice, props.isMinimized, minimizedMotor.current } :: { any })

	-- Workaround for AutomaticSize not working with UISizeConstraint
	-- Manually set and constrain the scrolling frame's size
	React.useEffect(function()
		local scrollingFrameMaxSizeY = containerSizeY - 8
		if props.gameStatsCount > 0 then
			local titleBarSizeY = layoutValues.TitleBarSizeY or 0
			scrollingFrameMaxSizeY = scrollingFrameMaxSizeY - titleBarSizeY
		end

		local newSizeY = math.min(scrollingFrameContentSizeY, scrollingFrameMaxSizeY)
		setScrollingFrameContainerSizeY(newSizeY)
	end, { containerSizeY, scrollingFrameContentSizeY, props.gameStatsCount, layoutValues.TitleBarSizeY } :: { any })

	React.useEffect(function()
		local playerEntryPositionY = dropDownPlayerDimensionY.X
		local playerEntrySizeY = dropDownPlayerDimensionY.Y

		local scrollingFrame = scrollingFrameRef.current

		if props.isSmallTouchDevice or not scrollingFrame then
			setDropDownPositionY(playerEntryPositionY)
			setCanvasPositionOverride(nil)
		else 
			local newDropDownPositionY = playerEntryPositionY - scrollingFrame.AbsolutePosition.Y
			if newDropDownPositionY + playerEntrySizeY >= scrollingFrame.AbsoluteSize.Y then
				local offset = newDropDownPositionY + playerEntrySizeY - scrollingFrame.AbsoluteSize.Y
				setDropDownPositionY(newDropDownPositionY - offset)
				setCanvasPositionOverride(Vector2.new(0, scrollingFrame.CanvasPosition.Y + offset))
			else
				setDropDownPositionY(newDropDownPositionY)
				setCanvasPositionOverride(nil)
			end
		end
	end, { dropDownPlayerDimensionY, props.isSmallTouchDevice, scrollingFrameRef.current } :: { any })

	React.useEffect(function()
		if not FFlagAddNewPlayerListFocusNav then
			if props.isVisible then
				if props.isDirectionalPreferred and props.isUsingGamepad then
					GuiService.SelectedCoreObject = firstPlayerRef.current
					UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
				end
				if scrollingFrameRef.current and not props.isSmallTouchDevice then
					scrollingFrameRef.current.SelectionGroup = true
					scrollingFrameRef.current.SelectionBehaviorUp = Enum.SelectionBehavior.Stop
					scrollingFrameRef.current.SelectionBehaviorDown = Enum.SelectionBehavior.Stop
					scrollingFrameRef.current.SelectionBehaviorLeft = Enum.SelectionBehavior.Stop
					scrollingFrameRef.current.SelectionBehaviorRight = Enum.SelectionBehavior.Stop
				end
			else
				if props.isDirectionalPreferred and props.isUsingGamepad then
					UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
				end
				if
					scrollingFrameRef.current
					and GuiService.SelectedCoreObject
					and GuiService.SelectedCoreObject:IsDescendantOf(scrollingFrameRef.current)
				then
					GuiService.SelectedCoreObject = nil
				end
				if scrollingFrameRef.current and not props.isSmallTouchDevice then
					scrollingFrameRef.current.SelectionGroup = false
				end
			end
		end
	end, { props.isVisible, props.isSmallTouchDevice, props.isDirectionalPreferred, props.isUsingGamepad, firstPlayerRef.current, scrollingFrameRef.current } :: { any })

	React.useEffect(function()
		if FFlagAddNewPlayerListFocusNav then
			if props.isVisible and scrollingFrameRef.current then
				if props.isDirectionalPreferred and props.isUsingGamepad then
					-- Focus the first player in the list
					focusGuiObject(nil)
					focusGuiObject(scrollingFrameRef.current)
					UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
				end
				if not props.isSmallTouchDevice then
					scrollingFrameRef.current.SelectionGroup = true
					scrollingFrameRef.current.SelectionBehaviorUp = Enum.SelectionBehavior.Stop
					scrollingFrameRef.current.SelectionBehaviorDown = Enum.SelectionBehavior.Stop
					scrollingFrameRef.current.SelectionBehaviorLeft = Enum.SelectionBehavior.Stop
					scrollingFrameRef.current.SelectionBehaviorRight = Enum.SelectionBehavior.Stop
				end
			end
		end
	end, { focusGuiObject, props.isVisible, props.isSmallTouchDevice, props.isDirectionalPreferred, props.isUsingGamepad, scrollingFrameRef.current } :: { any })

	React.useEffect(function()
		if FFlagAddNewPlayerListMobileFocusNav then
			if props.isVisible and props.isSmallTouchDevice and props.isUsingGamepad and scrollingFrameRef.current then
				local focusedPlayer = false
				if props.dropDownPlayer and not props.dropDownVisible then
					-- For mobile, refocus the player that was selected when the dropdown closes
					local playerEntry = nil
					if LocalPlayer and props.dropDownPlayer.UserId == LocalPlayer.UserId then
						playerEntry = scrollingFrameRef.current:FindFirstChild("TitlePlayer", true)
					else
						playerEntry = scrollingFrameRef.current:FindFirstChild("PlayerEntry_" .. props.dropDownPlayer.UserId, true)
					end
					if playerEntry and playerEntry:IsA("GuiObject") then
						focusGuiObject(playerEntry)
						focusedPlayer = true
					end
				end
				if not focusedPlayer then
					-- Focus the first player in the list
					focusGuiObject(nil)
					focusGuiObject(scrollingFrameRef.current)
				end
			end
		end
	end, { focusGuiObject, props.isVisible, props.dropDownVisible, props.dropDownPlayer, props.isSmallTouchDevice, props.isUsingGamepad, scrollingFrameRef.current } :: { any })
	
	React.useEffect(function()
		if FFlagAddNewPlayerListFocusNav then
			if not props.isVisible and scrollingFrameRef.current then
				if ((FFlagAddNewPlayerListMobileFocusNav and props.isSmallTouchDevice) or props.isDirectionalPreferred) and props.isUsingGamepad then
					UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
				end
				if focusedGuiObject and focusedGuiObject:IsDescendantOf(scrollingFrameRef.current) then
					focusGuiObject(nil)
				end
				if FFlagAddNewPlayerListMobileFocusNav or not props.isSmallTouchDevice then
					scrollingFrameRef.current.SelectionGroup = false
				end
			end
		end
	end, { focusedGuiObject, focusGuiObject, props.isVisible, props.isSmallTouchDevice, props.isDirectionalPreferred, props.isUsingGamepad, scrollingFrameRef.current } :: { any })

	React.useEffect(function()
		if FFlagAddNewPlayerListFocusNav then
			if props.isVisible and not focusedGuiObject and destroyedFocusedPlayerId.current and scrollingFrameRef.current then
				local playerEntry = scrollingFrameRef.current:FindFirstChild("PlayerEntry_" .. destroyedFocusedPlayerId.current, true)
				if playerEntry and playerEntry:IsA("GuiObject") then
					-- Player switched teams, refocus the same player
					focusGuiObject(playerEntry)
				else
					-- Player left the game, change focus to previously focused player or first player
					if prevFocusedEntry.current and prevFocusedEntry.current:IsDescendantOf(scrollingFrameRef.current) then
						focusGuiObject(prevFocusedEntry.current)
					else
						focusGuiObject(scrollingFrameRef.current)
					end
				end
				destroyedFocusedPlayerId.current = nil
			end
		end
	end, { focusedGuiObject, focusGuiObject, props.isVisible, prevFocusedEntry.current, destroyedFocusedPlayerId.current, scrollingFrameRef.current } :: { any })

	local childElements: { [string]: React.ReactNode } = {}

	childElements.UIListLayout = React.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Padding = if props.isDirectionalPreferred then UDim.new(0, layoutValues.EntryPadding) else nil,
	})

	if LocalPlayer and props.isSmallTouchDevice and getShowTitlePlayer() then
		childElements.TitlePlayer = React.createElement(PlayerEntryContainer, {
			entrySizeX = props.entrySizeX,
			layoutOrder = -3,
			titlePlayerEntry = true,
			player = LocalPlayer,
			playerIconInfo = props.playerIconInfo[LocalPlayer.UserId] or { isPlaceOwner = false },
			playerRelationship = props.playerRelationship[LocalPlayer.UserId] or {
				isBlocked = false,
				friendStatus = Enum.FriendStatus.NotFriend,
				isFollowing = false,
				isFollower = false,
			},
			setDropDownPlayerDimensionY = setDropDownPlayerDimensionY,
		})
		childElements.BottomDiv = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 0),
			AnchorPoint = Vector2.new(0, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 0.8,
			LayoutOrder = -2,
		})
	end

	if props.isSmallTouchDevice then
		childElements.TitleBar = React.createElement(TitleBarContainer, {
			size = UDim2.new(1, 0, 0, layoutValues.TitleBarSizeY),
			entrySizeX = props.entrySizeX,
			layoutOrder = -1,
			contentsVisible = contentsVisible,
			isSmallTouchDevice = true,
		})
	end

	if props.teamListCount > 0 then
		local minTeamOrder = math.huge
		props.teamList.iterateData(function(teamName, teamData)
			-- firstPlayerRef will continue to be overriden until it is set to the actual first player
			local potentialFirstPlayer = false 
			if not FFlagAddNewPlayerListFocusNav then
				if teamData.order(false) <= minTeamOrder and teamData.players.getCount(false) > 0 then
					minTeamOrder = teamData.order(false)
					potentialFirstPlayer = true 
				end
			end

			childElements["TeamList_" .. tostring(teamName)] = React.createElement(TeamListContainer, {
				entrySizeX = props.entrySizeX,
				teamData = teamData,
				playerIconInfos = props.playerIconInfo,
				playerRelationships = props.playerRelationship,
				firstPlayerRef = if not FFlagAddNewPlayerListFocusNav and potentialFirstPlayer then firstPlayerRef else nil,
				setDropDownPlayerDimensionY = setDropDownPlayerDimensionY,
				prevFocusedEntry = if FFlagAddNewPlayerListFocusNav then prevFocusedEntry else nil,
				destroyedFocusedPlayerId = if FFlagAddNewPlayerListFocusNav then destroyedFocusedPlayerId else nil,
				isSmallTouchDevice = props.isSmallTouchDevice,
				isDirectionalPreferred = props.isDirectionalPreferred,
			})
		end, false)
	end

	if props.isSmallTouchDevice then
		local scrollingEnabled = true
		if not FFlagPlayerListFixMobileScrolling then
			scrollingEnabled = not props.dropDownVisible
		end

		return React.createElement("ScrollingFrame", {
			Active = FFlagPlayerListFixMobileScrolling,
			Size = UDim2.fromScale(1, 1),
			CanvasSize = UDim2.new(0, 0, 0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			ScrollBarImageColor3 = layoutValues.ScrollImageColor,
			ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
			BorderSizePixel = 0,
			ScrollBarThickness = layoutValues.ScrollBarSizeMobile,
			VerticalScrollBarInset = Enum.ScrollBarInset.None,
			HorizontalScrollBarInset = Enum.ScrollBarInset.None,
			ClipsDescendants = true,
			ScrollingEnabled = scrollingEnabled,
			ElasticBehavior = Enum.ElasticBehavior.Never,
			Selectable = false,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			SelectionGroup = if FFlagAddNewPlayerListMobileFocusNav then true else nil,
			SelectionBehaviorUp = if FFlagAddNewPlayerListMobileFocusNav then Enum.SelectionBehavior.Stop else nil,
			SelectionBehaviorDown = if FFlagAddNewPlayerListMobileFocusNav then Enum.SelectionBehavior.Stop else nil,
			SelectionBehaviorLeft = if FFlagAddNewPlayerListMobileFocusNav then Enum.SelectionBehavior.Stop else nil,
			SelectionBehaviorRight = if FFlagAddNewPlayerListMobileFocusNav then Enum.SelectionBehavior.Stop else nil,
			ref = if FFlagAddNewPlayerListMobileFocusNav then scrollingFrameRef else nil,

			[React.Change.CanvasPosition] = canvasPositionChanged,
			[React.Change.AbsoluteSize] = absoluteSizeChanged,
		}, childElements)
	elseif props.isDirectionalPreferred then
		return React.createElement("Frame", {
			Position = layoutValues.PlayerScrollListPosition,
			Size = layoutValues.PlayerScrollListSize,
			BackgroundTransparency = 1,

			[React.Change.AbsoluteSize] = absoluteSizeChanged,
		}, {
			TenFootScrollingFrame = React.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, 0),
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				ScrollBarImageColor3 = layoutValues.ScrollImageColor,
				ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				VerticalScrollBarInset = Enum.ScrollBarInset.Always,
				ClipsDescendants = true,
				ScrollingEnabled = not props.dropDownVisible,
				Selectable = false,
				CanvasPosition = props.dropDownVisible and canvasPositionOverride
					or lastCanvasPosition,
				ref = scrollingFrameRef,

				[React.Change.CanvasPosition] = canvasPositionChanged,
			}, childElements),
		})
	else
		local dropDownContentsVisible = contentsVisible
		local fadedBackgroundScaleDelta = layoutValues.FadedBackgroundScaleDelta or 0
		local scrollBarOffset = layoutValues.ScrollBarOffset or 0
		local scrollBarSize = layoutValues.ScrollBarSize or 0

		local backgroundColor = if ChromeEnabled()
			then style.Theme.BackgroundUIContrast.Color
			else style.Theme.BackgroundContrast.Color

		updateDefaultTransparencyBinding(
			layoutValues.OverrideBackgroundTransparency * style.Settings.PreferredTransparency
		)
		updateFadedTransparencyBinding(layoutValues.FadedBackgroundTransparency or 0)

		return React.createElement("Frame", {
			Position = layoutValues.PlayerScrollListPosition,
			Size = layoutValues.PlayerScrollListSize,
			BackgroundTransparency = 1,

			[React.Change.AbsoluteSize] = absoluteSizeChanged,
		}, {
			SizeOffsetFrame = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
			}, {
				UIScale = React.createElement("UIScale", {
					Scale = minimizedBinding:map(function(value)
						return 1 - (fadedBackgroundScaleDelta * value)
					end),
				}),

				UIListLayout = React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
				}),

				TopRoundedRect = if not EnableCloseButton
					then React.createElement("ImageLabel", {
						LayoutOrder = 1,
						BackgroundTransparency = 1,
						Image = "rbxasset://textures/ui/TopRoundedRect8px.png",
						ImageColor3 = backgroundColor,
						ImageTransparency = transparencyBinding,
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = Rect.new(8, 8, 24, 18),
						SliceScale = 0.5,
						Size = UDim2.new(1, 0, 0, 4),
					})
					else React.createElement("Frame", {
						LayoutOrder = 1,
						ClipsDescendants = true,
						Size = UDim2.new(1, 0, 0, SmallIconSize + 2),
						BackgroundTransparency = 1,
					}, {
						DismissIconFrame = React.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, (SmallIconSize + 2) * 2),
							BackgroundColor3 = backgroundColor,
							BackgroundTransparency = transparencyBinding,
						}, {
							DismissButton = React.createElement(IconButton, {
								position = UDim2.new(0, 1, 0, 1),
								iconSize = IconSize.Small,
								icon = UIBloxImages["icons/navigation/close"],
								onActivated = props.dismissPlayerList,
							}),
							UICorner = React.createElement("UICorner", {
								CornerRadius = UDim.new(0, TOP_BOTTOM_CORNER_RADIUS),
							}),
						}),
					}),

				TitleBar = props.gameStatsCount > 0 and React.createElement(TitleBarContainer, {
					size = UDim2.new(1, 0, 0, layoutValues.TitleBarSizeY),
					entrySizeX = props.entrySizeX,
					layoutOrder = 2,
					contentsVisible = contentsVisible,
					showBackground = true,
					backgroundTransparency = transparencyBinding,
				}),
				
				ScrollingFrameContainer = React.createElement("Frame", {
					LayoutOrder = 3,
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 0, scrollingFrameContainerSizeY),
					BackgroundColor3 = backgroundColor,
					BackgroundTransparency = transparencyBinding,
					BorderSizePixel = 0,

					[React.Change.AbsolutePosition] = absolutePositionChanged,
				}, {
					PlayerDropDown = if dropDownContentsVisible then React.createElement(PlayerDropDown, {
						contentsVisible = dropDownContentsVisible,
						selectedPlayer = props.dropDownPlayer,
						positionY = dropDownPositionY,
						minPositionBoundY = -scrollingFramePositionY
							+ layoutValues.DropDownScreenSidePadding,
						maxPositionBoundY = (
							props.screenSizeY
							- scrollingFramePositionY
							- layoutValues.DropDownScreenSidePadding
						),
					}) else nil,

					ScrollingFrameClippingFrame = React.createElement("Frame", {
						Visible = contentsVisible,
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						ClipsDescendants = true,
					}, {
						ScrollingFrame = React.createElement("ScrollingFrame", {
							-- TODO: Use automatic size with UISizeConstraint once bug is fixed: CLI-130892
							Size = UDim2.new(1, -scrollBarOffset, 0, scrollingFrameContainerSizeY),
							CanvasSize = UDim2.new(0, 0, 0, 0),
							AutomaticCanvasSize = Enum.AutomaticSize.Y,
							BackgroundTransparency = 1,
							ScrollBarImageColor3 = layoutValues.ScrollImageColor,
							ScrollBarImageTransparency = layoutValues.ScrollImageTransparency,
							BorderSizePixel = 0,
							ScrollBarThickness = layoutValues.ScrollBarSize,
							VerticalScrollBarInset = Enum.ScrollBarInset.Always,
							ClipsDescendants = false,
							ScrollingEnabled = not props.dropDownVisible,
							Selectable = false,
							CanvasPosition = props.dropDownVisible and canvasPositionOverride
								or lastCanvasPosition,
							ref = scrollingFrameRef,

							[React.Change.CanvasPosition] = canvasPositionChanged,
						}, {
							OffsetUndoFrame = React.createElement("Frame", {
								Size = UDim2.new(
									1,
									scrollBarOffset + scrollBarSize,
									0,
									0 
								),
								AutomaticSize = Enum.AutomaticSize.Y,
								BackgroundTransparency = 1,
								[React.Change.AbsoluteSize] = scrollingFrameContentAbsoluteSizeChanged,
							}, childElements),
						}),
					}),
				}),

				BottomRoundedRect = if not EnableCloseButton
					then React.createElement("ImageLabel", {
						LayoutOrder = 4,
						BackgroundTransparency = 1,
						Image = "rbxasset://textures/ui/BottomRoundedRect8px.png",
						ImageColor3 = backgroundColor,
						ImageTransparency = transparencyBinding,
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = Rect.new(8, 8, 24, 16),
						SliceScale = 0.5,
						Size = UDim2.new(1, 0, 0, 4),
					})
					else React.createElement("Frame", {
						LayoutOrder = 4,
						ClipsDescendants = true,
						Size = UDim2.new(1, 0, 0, TOP_BOTTOM_CORNER_RADIUS),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
					}, {
						React.createElement("Frame", {
							Position = UDim2.new(0, 0, 0, -TOP_BOTTOM_CORNER_RADIUS - 1),
							Size = UDim2.new(1, 0, 0, TOP_BOTTOM_CORNER_RADIUS * 2),
							BackgroundColor3 = backgroundColor,
							BackgroundTransparency = transparencyBinding,
							BorderSizePixel = 0,
						}, {
							React.createElement("UICorner", {
								CornerRadius = UDim.new(0, TOP_BOTTOM_CORNER_RADIUS),
							}),
						}),
					}),
			}),
		})
	end
end

return React.memo(PlayerListDisplayView)