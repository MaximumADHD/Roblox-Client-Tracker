-- TODO: APPEXP-2323 move this and its dependencies to the player-list package

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local PresentationCommon = script.Parent
local Components = PresentationCommon.Parent
local PlayerList = Components.Parent

local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local InExperienceCapabilities =
	require(CorePackages.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local SharedFlags = CorePackages.Workspace.Packages.SharedFlags
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)

local useLayoutValues = PlayerListPackage.Common.useLayoutValues
local useStyle = UIBlox.Core.Style.useStyle
local useFocusGuiObject = ReactFocusNavigation.useFocusGuiObject

local Foundation = require(CorePackages.Packages.Foundation)
local ControlState = Foundation.Enums.ControlState
local View = Foundation.View

local EntryFrameView = PlayerListPackage.Presentation.EntryFrameView
local StatEntryContainer = require(PlayerList.Components.Container.StatEntryContainer)

local CellExtender = require(Components.Presentation.CellExtender)
local PlayerIcon = require(PresentationCommon.PlayerIcon)
local PlayerNameTag = require(Components.Presentation.PlayerNameTag)

local GetFFlagGateLeaderboardPlayerDropdownViaGUAC = require(SharedFlags).GetFFlagGateLeaderboardPlayerDropdownViaGUAC
local FFlagAddNewPlayerListFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListFocusNav
local FFlagAddNewPlayerListMobileFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListMobileFocusNav
local FFlagRemoveNewPlayerListOverlay = PlayerListPackage.Flags.FFlagRemoveNewPlayerListOverlay
local FFlagMoveNewPlayerListDividers = require(SharedFlags).FFlagMoveNewPlayerListDividers
local FFlagEnableMobilePlayerListOnConsole = PlayerListPackage.Flags.FFlagEnableMobilePlayerListOnConsole
local FFlagPlayerListFixLeaderstatsStacking = require(SharedFlags).FFlagPlayerListFixLeaderstatsStacking

type PlayerIconInfoProps = LeaderboardStore.PlayerIconInfoProps
type PlayerRelationshipProps = LeaderboardStore.PlayerRelationshipProps
type PlayerEntry = LeaderboardStore.PlayerEntry
type GameStatList = LeaderboardStore.GameStatList
type GameStat = LeaderboardStore.GameStat
type StatList = LeaderboardStore.StatList

type ColorStyle = {
	Color: Color3,
	Transparency: number,
}

export type PlayerEntryViewProps = {
	-- Layout options
	size: UDim2?,
	entrySizeX: number,
	layoutOrder: number?,

	-- Store data
	player: Player,
	playerData: PlayerEntry,
	titlePlayerEntry: boolean,
	playerIconInfo: PlayerIconInfoProps,
	playerRelationship: PlayerRelationshipProps,
	gameStats: GameStatList?,
	gameStatsCount: number?, -- Remove prop when FFlagPlayerListFixLeaderstatsStacking is cleaned up
	teamPlayersCount: Signals.getter<number>?,

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

local defaultOverlayStyle = {
	Transparency = 1,
	Color = Color3.new(1, 1, 1),
}

type IconAndNameProps = {
	player: Player,
	playerIconInfo: PlayerIconInfoProps,
	playerRelationship: PlayerRelationshipProps,
	titlePlayerEntry: boolean,
	isHovered: boolean,
	textStyle: { [string]: any },
	playerNameFont: { [string]: any },
	layoutValues: { [string]: any },
}

local function IconAndName(props: IconAndNameProps)
	return React.createElement(React.Fragment, {}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, props.layoutValues.InitalPlayerEntryPadding),
		}),

		InitalPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, props.layoutValues.InitalPlayerEntryPadding),
		}),

		PlayerIcon = React.createElement(PlayerIcon, {
			player = props.player,
			playerIconInfo = props.playerIconInfo,
			playerRelationship = props.playerRelationship,
			layoutOrder = 1,
		}),

		PlayerName = React.createElement(PlayerNameTag, {
			player = props.player,
			isTitleEntry = props.titlePlayerEntry,
			isHovered = props.isHovered,
			textStyle = props.textStyle,
			textFont = props.playerNameFont,
			layoutOrder = 3,
		}),
	})
end

IconAndName = React.memo(IconAndName) :: any

type PlayerEntryChildrenProps = {
	isSmallTouchDevice: boolean?,
	isDirectionalPreferred: boolean?,
	layoutValues: { [string]: any },
	textStyle: { [string]: any },
	playerNameFont: { [string]: any },
	isHovered: boolean,
	backgroundStyle: { [string]: any },
	overlayStyle: { [string]: any }?,
	isPressed: boolean?,
	player: Player,
	playerIconInfo: PlayerIconInfoProps,
	playerRelationship: PlayerRelationshipProps,
	titlePlayerEntry: boolean,
	entrySizeX: number,
	playerStats: StatList?,
	gameStats: GameStatList?,
	playerStatsCount: number?, -- Remove prop when FFlagPlayerListFixLeaderstatsStacking is cleaned up
	gameStatsCount: number?, -- Remove prop when FFlagPlayerListFixLeaderstatsStacking is cleaned up
	backgroundFrameProps: { [string]: any },
}

local function PlayerEntryChildren(props: PlayerEntryChildrenProps)
	local isSmallTouchDevice = props.isSmallTouchDevice or false
	local isDirectionalPreferred = props.isDirectionalPreferred or false
	local layoutValues = props.layoutValues
	local textStyle = props.textStyle
	local playerNameFont = props.playerNameFont
	local isHovered: boolean = props.isHovered
	local backgroundStyle = props.backgroundStyle
	local overlayStyle = props.overlayStyle
	local isPressed = props.isPressed
	local gameStats = props.gameStats
	local playerStats = props.playerStats
	local gameStatsCount = props.gameStatsCount
	local playerStatsCount = props.playerStatsCount

	-- Common children for both mobile and desktop
	local children = {}

	-- Common layout properties
	local layoutProps = {
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	}

	-- Add padding for tenfoot mode
	if isDirectionalPreferred then
		layoutProps.Padding = UDim.new(0, layoutValues.PlayerEntryPadding)
	end

	children.Layout = React.createElement("UIListLayout", layoutProps)

	-- Common player icon and name components
	local playerComponents = React.createElement(IconAndName, {
		player = props.player,
		playerIconInfo = props.playerIconInfo,
		playerRelationship = props.playerRelationship,
		titlePlayerEntry = props.titlePlayerEntry,
		isHovered = isHovered,
		textStyle = textStyle,
		playerNameFont = playerNameFont,
		layoutValues = layoutValues,
	})

	-- Create name frame with different properties for mobile/desktop
	local nameFrameProps = {
		LayoutOrder = 0,
		BackgroundTransparency = 1,
	}

	if isSmallTouchDevice then
		nameFrameProps.Size = UDim2.new(0, layoutValues.PlayerNameSizeXMobile, 0, layoutValues.PlayerEntrySizeY)
	else
		nameFrameProps.Size = UDim2.new(0, props.entrySizeX, 0, layoutValues.PlayerEntrySizeY)
	end

	children.NameFrame = React.createElement("Frame", nameFrameProps, playerComponents)

	-- tenfoot mode
	if isDirectionalPreferred then
		children.NameFrame = React.createElement("Frame", nameFrameProps, {
			Shadow = React.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Image = layoutValues.ShadowImage,
				Position = UDim2.new(0, -layoutValues.ShadowSize, 0, 0),
				Size = UDim2.new(1, layoutValues.ShadowSize * 2, 1, layoutValues.ShadowSize),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = layoutValues.ShadowSliceRect,
				Visible = isDirectionalPreferred,
			}),
			BackgroundFrame = React.createElement(EntryFrameView, props.backgroundFrameProps, playerComponents),
		})
	end

	-- Add game stats
	local maxLeaderstats = layoutValues.MaxLeaderstats
	local statProps = {
		isTeamEntry = false,
		showStatTitle = props.titlePlayerEntry and isDirectionalPreferred,
		textStyle = textStyle,
	}

	-- Add desktop and tenfoot specific props
	if isDirectionalPreferred then
		statProps.backgroundStyle = backgroundStyle
		if not FFlagRemoveNewPlayerListOverlay then
			statProps.overlayStyle = overlayStyle
			statProps.doubleOverlay = isPressed
		end
	end

	if FFlagPlayerListFixLeaderstatsStacking then
		local gameStatsData = SignalsReact.useSignalState(Signals.createComputed(function(scope): { [string]: GameStat }
			return if gameStats then gameStats.getAllData(scope) else {}
		end))

		if playerStats then
			for gameStatName, gameStatData in gameStatsData do
				if gameStatData.order(false) > maxLeaderstats then
					continue
				end

				local playerStat = playerStats.getData(gameStatName, false)
				children["GameStat_" .. gameStatName] = React.createElement(
					StatEntryContainer,
					Cryo.Dictionary.join(statProps, {
						statName = gameStatName,
						stat = playerStat,
					})
				)
			end
		end
	else
		if gameStats and gameStatsCount and gameStatsCount > 0 and playerStats and playerStatsCount and playerStatsCount >= 0 then
			gameStats.iterateData(function(gameStatName, value)
				if value.order(false) > maxLeaderstats then
					return
				end

				local playerStat = playerStats.getData(gameStatName, false)
				children["GameStat_" .. gameStatName] = React.createElement(
					StatEntryContainer,
					Cryo.Dictionary.join(statProps, {
						statName = gameStatName,
						stat = playerStat,
					})
				)
			end, false)
		end
	end

	-- Add background extender for desktop non-tenfoot mode
	if not FFlagRemoveNewPlayerListOverlay then
		if not isSmallTouchDevice and not isDirectionalPreferred then
			children.BackgroundExtender = React.createElement(CellExtender, {
				layoutOrder = 100,
				size = UDim2.new(0, layoutValues.ExtraContainerPadding, 1, 0),
				backgroundStyle = {
					Color = Color3.new(1, 1, 1),
					Transparency = 1,
				},
				overlayStyle = {
					Color = Color3.new(1, 1, 1),
					Transparency = 1,
				},
				doubleOverlay = isPressed,
			})
		end
	end
	return React.createElement(React.Fragment, {}, children :: any)
end

PlayerEntryChildren = React.memo(PlayerEntryChildren) :: any

local function PlayerEntryView(props: PlayerEntryViewProps)
	local playerStatsCount: number? = if FFlagPlayerListFixLeaderstatsStacking then nil else SignalsReact.useSignalState(props.playerData.stats.getCount)

	-- Set player order to odd numbers (1, 3, 5, ...) to leave space for dividers
	local playerOrder = SignalsReact.useSignalBinding(
		if FFlagMoveNewPlayerListDividers 
			then Signals.createComputed(function(scope)
				return props.playerData.order(scope) * 2 - 1
			end) 
			else props.playerData.order
	)

	local bottomDiv = SignalsReact.useSignalBinding(function(scope)
		if not FFlagMoveNewPlayerListDividers and props.teamPlayersCount then
			return props.playerData.order(scope) == props.teamPlayersCount(scope) or props.titlePlayerEntry
		else
			return false
		end
	end)

	local hasDivider = SignalsReact.useSignalBinding(function(scope)
		if not FFlagMoveNewPlayerListDividers and props.teamPlayersCount then
			return props.playerData.order(scope) ~= props.teamPlayersCount(scope)
		else
			return false
		end
	end)

	local layoutOrder = React.useMemo(function()
		return if props.layoutOrder then props.layoutOrder else playerOrder
	end, { props.layoutOrder, playerOrder } :: { any })

	local firstPlayerRef = React.useMemo(function()
		return if props.playerData.order(false) == 1 then props.firstPlayerRef else nil	
	end, { props.playerData.order, props.firstPlayerRef } :: { any })

	-- TODO: APPEXP-2323 Turn these state changes into bindings
	local isHovered, setIsHovered = React.useState(false)
	local isPressed, setIsPressed = React.useState(false)

	local playerEntryRef = React.useRef(nil :: GuiObject?)
	local entryFrameRef = React.useRef(nil :: GuiObject?)

	local focusGuiObject = useFocusGuiObject()

	local chromeEnabled = ChromeEnabled()
	local layoutValues = useLayoutValues()
	local style = useStyle()
	local size = if props.size then props.size else UDim2.new(1, layoutValues.EntryXOffset, 0, layoutValues.PlayerEntrySizeY)

	local isSmallTouchDevice = props.isSmallTouchDevice
	local isDirectionalPreferred = layoutValues.IsTenFoot
	local isLocalPlayer = props.player == Players.LocalPlayer

	local onActivated = React.useCallback(function()
		if not props.openDropdown or not props.closeDropdown then
			return
		end

		if props.dropdownOpen and props.selectedPlayer == props.player then
			props.closeDropdown()
		else
			if GetFFlagGateLeaderboardPlayerDropdownViaGUAC() then
				if InExperienceCapabilities.canViewPlayerDropdownInLeaderboard then
					props.openDropdown(props.player)
					if playerEntryRef.current then
						local dimensionY = Vector2.new(playerEntryRef.current.AbsolutePosition.Y, playerEntryRef.current.AbsoluteSize.Y)
						if props.setDropDownPlayerDimensionY then
							props.setDropDownPlayerDimensionY(dimensionY)
						end
					end
				end
			else
				props.openDropdown(props.player)
				if playerEntryRef.current then
					local dimensionY = Vector2.new(playerEntryRef.current.AbsolutePosition.Y, playerEntryRef.current.AbsoluteSize.Y)
					if props.setDropDownPlayerDimensionY then
						props.setDropDownPlayerDimensionY(dimensionY)
					end
				end
			end
		end
	end, { props.dropdownOpen, props.selectedPlayer, props.player, props.openDropdown, props.closeDropdown, props.setDropDownPlayerDimensionY, playerEntryRef.current } :: { any })

	-- TODO: APPEXP-2323 Turn these state changes into bindings
	local onStateChanged = React.useCallback(function(newState)
		if newState == ControlState.Pressed or newState == ControlState.SelectedPressed then
			setIsPressed(true)
		elseif newState == ControlState.Hover or newState == ControlState.Selected then
			setIsHovered(true)
		elseif newState == ControlState.Default then
			setIsHovered(false)
			setIsPressed(false)
		end
	end, {})

	local defaultBackgroundStyle = React.useMemo(function()
		local backgroundColor: any = if chromeEnabled
			then style.Theme.BackgroundUIContrast.Color
			else style.Theme.BackgroundContrast.Color
		return {
			Color = backgroundColor,
			Transparency = 1,
		}
	end, { chromeEnabled, isDirectionalPreferred })

	local activeSmallTouchDeviceBackgroundStyle = React.useMemo(function()
		return {
			Color = layoutValues.RowHoverColor,
			Transparency = 0.8,
		}
	end, { layoutValues })

	local inactiveSmallTouchDeviceBackgroundStyle = React.useMemo(function()
		return {
			Color = layoutValues.RowDefaultColor,
			Transparency = 0.8,
		}
	end, { layoutValues })

	-- TODO: APPEXP-2323 Move to memo
	local getBackgroundStyle: () -> ColorStyle = React.useCallback(function()
		if isSmallTouchDevice then
			local isActive = isHovered or isPressed
			return isActive and activeSmallTouchDeviceBackgroundStyle or inactiveSmallTouchDeviceBackgroundStyle
		end

		if not isDirectionalPreferred then
			return defaultBackgroundStyle
		end

		local isSelected = props.dropdownOpen and props.selectedPlayer == props.player
		local isHovered = isHovered

		if props.titlePlayerEntry and layoutValues.BackgroundStyle then
			if isHovered and layoutValues.BackgroundStyle.HoveredTitle then
				return layoutValues.BackgroundStyle.HoveredTitle
			elseif layoutValues.BackgroundStyle.Title then
				return layoutValues.BackgroundStyle.Title
			end
		end

		if isSelected and layoutValues.BackgroundStyle and layoutValues.BackgroundStyle.Selected then
			return layoutValues.BackgroundStyle.Selected or layoutValues.BackgroundStyle.Default
		end

		if isHovered and layoutValues.BackgroundStyle and layoutValues.BackgroundStyle.Hovered then
			return layoutValues.BackgroundStyle.Hovered
		end

		if layoutValues.BackgroundStyle and layoutValues.BackgroundStyle.Default then
			return layoutValues.BackgroundStyle.Default
		end

		return defaultBackgroundStyle
	end, {
		defaultBackgroundStyle,
		isSmallTouchDevice,
		props.dropdownOpen,
		props.selectedPlayer,
		props.player,
		props.titlePlayerEntry,
		isHovered,
		isPressed,
	} :: { any })

	local getTextStyle = React.useCallback(function()
		if isDirectionalPreferred then
			if isHovered then
				return layoutValues.HoveredTextStyle, layoutValues.PlayerNameTextSize
			end
			return layoutValues.DefaultTextStyle, layoutValues.PlayerNameTextSize
		end
		if isLocalPlayer then
			return style.Theme.TextEmphasis, layoutValues.PlayerNameTextSize
		end

		return style.Theme.TextDefault, layoutValues.PlayerNameTextSize
	end, {
		isHovered,
		isLocalPlayer,
		isDirectionalPreferred,
		layoutValues,
		style,
	} :: { any })

	-- TODO: APPEXP-2323 Turn these into bindings
	local getOverlayStyle: () -> { [string]: any } = React.useCallback(function()
		if not isDirectionalPreferred then
			local isSelected = props.dropdownOpen and props.selectedPlayer == props.player
			if isPressed then
				return style.Theme.BackgroundOnPress
			elseif isSelected then
				return style.Theme.BackgroundOnPress
			elseif isHovered then
				return style.Theme.BackgroundOnHover
			end
		end

		return defaultOverlayStyle
	end, {
		isHovered,
		isPressed,
		props.dropdownOpen,
		props.selectedPlayer,
		props.player,
		style,
		isDirectionalPreferred,
	} :: { any })

	local playerNameFont = React.useMemo(function()
		if isSmallTouchDevice then
			if isLocalPlayer then
				return {
					Font = style.Font.CaptionHeader.Font,
					Size = if FFlagEnableMobilePlayerListOnConsole then layoutValues.PlayerNameTextSize else style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize,
					MinSize = if FFlagEnableMobilePlayerListOnConsole then layoutValues.PlayerNameTextSize else style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
				}
			end
			return {
				Font = style.Font.CaptionBody.Font,
				Size = if FFlagEnableMobilePlayerListOnConsole then layoutValues.PlayerNameTextSize else style.Font.CaptionBody.RelativeSize * style.Font.BaseSize,
				MinSize = if FFlagEnableMobilePlayerListOnConsole then layoutValues.PlayerNameTextSize else style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
			}
		end

		if isDirectionalPreferred then
			if props.titlePlayerEntry then
				return {
					Font = layoutValues.TitlePlayerEntryFont,
					Size = layoutValues.PlayerNameTextSize,
					MinSize = layoutValues.PlayerNameTextSize,
				}
			end
			return {
				Font = layoutValues.PlayerEntryFont,
				Size = layoutValues.PlayerNameTextSize,
				MinSize = layoutValues.PlayerNameTextSize,
			}
		end

		if isLocalPlayer then
			return {
				Font = style.Font.CaptionHeader.Font,
				Size = style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize,
				MinSize = style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
			}
		end

		return {
			Font = style.Font.CaptionBody.Font,
			Size = style.Font.CaptionBody.RelativeSize * style.Font.BaseSize,
			MinSize = style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
		}
	end, { isSmallTouchDevice, isDirectionalPreferred, isLocalPlayer, style, layoutValues } :: { any })

	local backgroundStyle = getBackgroundStyle()
	local textStyle = getTextStyle()
	local overlayStyle
	if not FFlagRemoveNewPlayerListOverlay then
		overlayStyle = getOverlayStyle()
	end

	local backgroundFrameProps = React.useMemo(function()
		return {
			size = UDim2.new(0, props.entrySizeX, 0, layoutValues.PlayerEntrySizeY),
			isTeamFrame = false,
			backgroundStyle = backgroundStyle,
			overlayStyle = if FFlagRemoveNewPlayerListOverlay then nil else overlayStyle,
			doubleOverlay = if FFlagRemoveNewPlayerListOverlay then nil else isPressed,
			firstPlayerRef = firstPlayerRef,
			ref = if FFlagAddNewPlayerListFocusNav then entryFrameRef else nil,

			onActivated = onActivated,
			onStateChanged = onStateChanged,
		}
	end, {
		props.entrySizeX,
		layoutValues.PlayerEntrySizeY,
		backgroundStyle,
		overlayStyle,
		isPressed,
		entryFrameRef,
		onActivated,
		onStateChanged,
	}:: { any })

	local playerEntryChildrenProps: PlayerEntryChildrenProps = React.useMemo(function()
		return {
			isSmallTouchDevice = isSmallTouchDevice,
			isDirectionalPreferred = isDirectionalPreferred,
			layoutValues = layoutValues,
			textStyle = textStyle :: any,
			playerNameFont = playerNameFont,
			isHovered = isHovered,
			backgroundStyle = backgroundStyle :: any,
			overlayStyle = if FFlagRemoveNewPlayerListOverlay then nil else overlayStyle,
			isPressed = if FFlagRemoveNewPlayerListOverlay then nil else isPressed,
			player = (props.player :: any) :: Player,
			playerIconInfo = props.playerIconInfo,
			playerRelationship = props.playerRelationship,
			titlePlayerEntry = props.titlePlayerEntry :: boolean,
			entrySizeX = props.entrySizeX,
			gameStats = props.gameStats,
			playerStats = props.playerData.stats,
			playerStatsCount = playerStatsCount,
			gameStatsCount = props.gameStatsCount,
			backgroundFrameProps = backgroundFrameProps,
		}
	end, {
		isSmallTouchDevice,
		isDirectionalPreferred,
		layoutValues,
		textStyle,
		playerNameFont,
		isHovered,
		backgroundStyle,
		overlayStyle,
		isPressed,
		props.player,
		props.playerIconInfo,
		props.playerRelationship,
		props.titlePlayerEntry,
		props.entrySizeX,
		props.playerData.stats,
		props.gameStats,
		playerStatsCount,
		props.gameStatsCount,
		backgroundFrameProps,
	} :: { any })

	React.useEffect(function()
		local selectionLostConnection = nil
		local destroyingConnection = nil

		if FFlagAddNewPlayerListFocusNav then
			if entryFrameRef.current and props.prevFocusedEntry and props.destroyedFocusedPlayerId then
				local savedEntryFrame = entryFrameRef.current

				selectionLostConnection = entryFrameRef.current.SelectionLost:Connect(function()
					-- Store the previously focused object to refocus in the case that the currently focused player leaves
					props.prevFocusedEntry.current = savedEntryFrame
				end)

				destroyingConnection = entryFrameRef.current.Destroying:Connect(function()
					selectionLostConnection:Disconnect()

					if GuiService.SelectedCoreObject == savedEntryFrame then
						-- Store the player's id to refocus in the case that the player moves teams
						props.destroyedFocusedPlayerId.current = props.player.UserId
						focusGuiObject(nil)
					end

					destroyingConnection:Disconnect()
				end)
			end
		end

		return function()
			if selectionLostConnection then
				selectionLostConnection:Disconnect()
			end
		end
	end, { focusGuiObject, props.player, props.prevFocusedEntry, props.destroyedFocusedPlayerId, entryFrameRef.current } :: { any })

	-- Create the main container based on platform
	if isSmallTouchDevice then
		return React.createElement(View, {
			Size = size,
			BackgroundColor3 = backgroundStyle.Color,
			BackgroundTransparency = backgroundStyle.Transparency,
			AutoButtonColor = false,
			BorderSizePixel = 0,
			Image = "",
			LayoutOrder = layoutOrder,
			ref = if FFlagAddNewPlayerListMobileFocusNav then entryFrameRef else playerEntryRef,

			onActivated = onActivated,
			onStateChanged = onStateChanged,
		} :: any, {
			ChildrenFrame = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
			}, React.createElement(PlayerEntryChildren, playerEntryChildrenProps)),

			TopDiv = if not FFlagMoveNewPlayerListDividers and not props.titlePlayerEntry then React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(0, 0),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0.8,
			}) else nil,

			BottomDiv = if not FFlagMoveNewPlayerListDividers then React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0.8,
				Visible = bottomDiv,
			}) else nil,
		})
	elseif isDirectionalPreferred then
		return React.createElement("Frame", {
			Size = size,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
			ref = playerEntryRef,
		} :: any, React.createElement(PlayerEntryChildren, playerEntryChildrenProps))
	else
		return React.createElement("Frame", {
			Size = size,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
			ref = playerEntryRef,
		} :: any, {
			PlayerEntryContentFrame = React.createElement(
				EntryFrameView,
				Cryo.Dictionary.join(backgroundFrameProps, {
					size = UDim2.new(1, 0, 0, layoutValues.PlayerEntrySizeY),
				}),
				React.createElement(PlayerEntryChildren, playerEntryChildrenProps)
			),

			Divider = if not FFlagMoveNewPlayerListDividers then React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = style.Theme.Divider.Transparency,
				BackgroundColor3 = style.Theme.Divider.Color,
				BorderSizePixel = 0,
				Visible = hasDivider,
			}) else nil,
		})
	end
end

return React.memo(PlayerEntryView)
