-- TODO: APPEXP-2323 move this and its dependencies to the player-list package

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)

local PresentationCommon = script.Parent
local Components = PresentationCommon.Parent
local PlayerList = Components.Parent

-------------------------------- Packages --------------------------------
local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local InExperienceCapabilities =
	require(CorePackages.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities
local Foundation = require(CorePackages.Packages.Foundation)
local SharedFlags = CorePackages.Workspace.Packages.SharedFlags
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local Signals = require(CorePackages.Packages.Signals)

-------------------------------- Hooks --------------------------------
local useLayoutValues = PlayerListPackage.Common.useLayoutValues
local useStyle = UIBlox.Core.Style.useStyle
local useSignalState = SignalsReact.useSignalState

-------------------------------- Components --------------------------------
local View = Foundation.View
local ControlState = Foundation.Enums.ControlState

local EntryFrameView = PlayerListPackage.Presentation.EntryFrameView
local StatEntryContainer = require(PlayerList.Components.Container.StatEntryContainer)

-------------------------------- Legacy Components --------------------------------

local CellExtender = require(Components.Presentation.CellExtender)
local PlayerIcon = require(PresentationCommon.PlayerIcon)
local PlayerNameTag = require(Components.Presentation.PlayerNameTag)

local createShallowEqualAndTables = require(PlayerList.createShallowEqualAndTables)

-------------------------------- Flags --------------------------------
local GetFFlagGateLeaderboardPlayerDropdownViaGUAC = require(SharedFlags).GetFFlagGateLeaderboardPlayerDropdownViaGUAC

type SignalMap<K, V> = LeaderboardStore.SignalMap<K, V>

-- Type definitions
type PlayerIconInfo = {
	isPlaceOwner: boolean,
	avatarIcon: { [string]: any }?,
	specialGroupIcon: { [string]: any }?,
}

type PlayerRelationship = {
	isBlocked: boolean,
	friendStatus: Enum.FriendStatus,
	isFollowing: boolean,
	isFollower: boolean,
}

type GameStat = {
	name: string,
	text: string,
	addId: number,
	isPrimary: boolean,
	priority: number,
}

type ColorStyle = {
	Color: Color3,
	Transparency: number,
}

export type PlayerEntryProps = {
	size: UDim2?,
	player: Player,
	titlePlayerEntry: boolean,
	entrySize: number,
	playerStats: SignalMap<string, any>?,
	playerIconInfo: PlayerIconInfo,
	playerRelationship: PlayerRelationship,
	gameStats: SignalMap<string, any>?,
	gameStatNames: { string }?,
	selectedPlayer: Player?,
	dropdownOpen: boolean?,
	isSmallTouchDevice: boolean?,
	isDirectionalPreferred: boolean?,
	closeDropdown: (() -> ())?,
	openDropdown: ((Player) -> ())?,
	-- Mobile specific props
	topDiv: boolean?,
	bottomDiv: boolean?,
	Position: UDim2?,
	layoutOrder: number?,
	-- Desktop specific props
	hasDivider: boolean?,
}

local defaultOverlayStyle = {
	Transparency = 1,
	Color = Color3.new(1, 1, 1),
}

type IconAndNameProps = {
	player: Player,
	playerIconInfo: PlayerIconInfo,
	playerRelationship: PlayerRelationship,
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
	overlayStyle: { [string]: any },
	isPressed: boolean,
	player: Player,
	playerIconInfo: PlayerIconInfo,
	playerRelationship: PlayerRelationship,
	titlePlayerEntry: boolean,
	entrySize: number,
	playerStats: SignalMap<string, any>?,
	gameStats: SignalMap<string, any>?,
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

	local gameStatsCount = useSignalState(if gameStats then gameStats.getCount else Signals.createSignal(0))
	local playerStatsCount = useSignalState(if playerStats then playerStats.getCount else Signals.createSignal(0))

	-- Common children for both mobile and desktop
	local children = {}

	-- Common layout properties
	local layoutProps = {
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	}

	-- Add padding for desktop tenfoot mode
	if not isSmallTouchDevice and isDirectionalPreferred then
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
		nameFrameProps.Size = UDim2.new(0, props.entrySize, 0, layoutValues.PlayerEntrySizeY)
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
		isTitleEntry = props.titlePlayerEntry,
		isTeamEntry = false,
		textStyle = textStyle,
	}

	-- Add desktop and tenfoot specific props
	if not isSmallTouchDevice then
		statProps.backgroundStyle = backgroundStyle
		statProps.overlayStyle = overlayStyle
		statProps.doubleOverlay = isPressed
	end

	if gameStats and gameStatsCount > 0 and playerStats and playerStatsCount > 0 then
		gameStats.iterateData(function(gameStatName, value)
			if value.order(false) > maxLeaderstats then
				return
			end

			local playerStat = playerStats.getData(gameStatName, false)
			if playerStat then
				children["GameStat_" .. gameStatName] = React.createElement(
					StatEntryContainer,
					Cryo.Dictionary.join(statProps, {
						statName = gameStatName,
						statSignal = playerStat,
						layoutOrder = value.order,
					})
				)
			end
		end, false)
	end

	-- Add background extender for desktop non-tenfoot mode
	if not isSmallTouchDevice and not isDirectionalPreferred then
		children.BackgroundExtender = React.createElement(CellExtender, {
			layoutOrder = 100,
			size = UDim2.new(0, layoutValues.ExtraContainerPadding, 1, 0),
			backgroundStyle = backgroundStyle,
			overlayStyle = overlayStyle,
			doubleOverlay = isPressed,
		})
	end
	return React.createElement(React.Fragment, {}, children :: any)
end

PlayerEntryChildren = React.memo(PlayerEntryChildren) :: any

local function PlayerEntryView(props)
	-- TODO: APPEXP-2323 Turn these state changes into bindings
	local isHovered, setIsHovered = React.useState(false)
	local isPressed, setIsPressed = React.useState(false)

	local chromeEnabled = ChromeEnabled()
	local layoutValues = useLayoutValues()
	local style = useStyle()
	local size = if props.size then props.size else UDim2.new(1, layoutValues.EntryXOffset, 0, layoutValues.PlayerEntrySizeY)

	local isSmallTouchDevice = props.isSmallTouchDevice
	local isDirectionalPreferred = layoutValues.IsTenFoot
	local isLocalPlayer = props.player == Players.LocalPlayer

	local onActivated = React.useCallback(function()
		if props.dropdownOpen and props.selectedPlayer == props.player then
			props.closeDropdown()
		else
			if GetFFlagGateLeaderboardPlayerDropdownViaGUAC() then
				if InExperienceCapabilities.canViewPlayerDropdownInLeaderboard then
					props.openDropdown(props.player)
				end
			else
				props.openDropdown(props.player)
			end
		end
	end, {props.dropdownOpen, props.selectedPlayer, props.player, props.openDropdown, props.closeDropdown})

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
					Size = style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize,
					MinSize = style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
				}
			end
			return {
				Font = style.Font.CaptionBody.Font,
				Size = style.Font.CaptionBody.RelativeSize * style.Font.BaseSize,
				MinSize = style.Font.Footer.RelativeMinSize * style.Font.BaseSize,
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
	local overlayStyle = getOverlayStyle()
	local backgroundFrameProps = React.useMemo(function()
		return {
			sizeX = props.entrySize,
			sizeY = layoutValues.PlayerEntrySizeY,
			isTeamFrame = false,
			backgroundStyle = backgroundStyle,
			overlayStyle = overlayStyle,
			doubleOverlay = isPressed,

			onActivated = onActivated,
			onStateChanged = onStateChanged,

			ref = props.forwardRef,
		}
	end, {
		props.entrySize,
		layoutValues.PlayerEntrySizeY,
		backgroundStyle,
		overlayStyle,
		isPressed,
		onActivated,
		onStateChanged,
		props.forwardRef,
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
			overlayStyle = overlayStyle,
			isPressed = isPressed,
			player = (props.player :: any) :: Player,
			playerIconInfo = props.playerIconInfo,
			playerRelationship = props.playerRelationship,
			titlePlayerEntry = props.titlePlayerEntry :: boolean,
			entrySize = props.entrySize,
			gameStats = props.gameStats,
			playerStats = props.playerStats,
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
		props.entrySize,
		props.playerStats,
		props.gameStats,
		backgroundFrameProps,
	} :: { any })

	-- Create the main container based on platform
	if isSmallTouchDevice then
		return React.createElement(View, {
			Position = props.Position,
			Size = size,
			BackgroundColor3 = backgroundStyle.Color,
			BackgroundTransparency = backgroundStyle.Transparency,
			AutoButtonColor = false,
			BorderSizePixel = 0,
			Image = "",
			LayoutOrder = props.layoutOrder,

			onActivated = onActivated,
			onStateChanged = onStateChanged,
		}, {
			ChildrenFrame = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
			}, React.createElement(PlayerEntryChildren, playerEntryChildrenProps)),

			TopDiv = props.topDiv and React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(0, 0),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0.8,
			}) or nil,

			BottomDiv = props.bottomDiv and React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0.8,
			}) or nil,
		})
	elseif isDirectionalPreferred then
		return React.createElement("Frame", {
			Size = size,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		} :: any, React.createElement(PlayerEntryChildren, playerEntryChildrenProps))
	else
		return React.createElement("Frame", {
			Size = size,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		} :: any, {
			PlayerEntryContentFrame = React.createElement(
				EntryFrameView,
				backgroundFrameProps,
				React.createElement(PlayerEntryChildren, playerEntryChildrenProps)
			),

			Divider = not isDirectionalPreferred and props.hasDivider and React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = style.Theme.Divider.Transparency,
				BackgroundColor3 = style.Theme.Divider.Color,
				BorderSizePixel = 0,
			}),
		})
	end
end

local ForwardRefPlayerEntryView = React.forwardRef(function(props, ref)
	return React.createElement(
		PlayerEntryView,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)

return React.memo(ForwardRefPlayerEntryView, createShallowEqualAndTables({ "gameStatNames" }))
