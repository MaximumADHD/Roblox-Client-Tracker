local CorePackages = game:GetService("CorePackages")

local PresentationCommon = script.Parent
local Components = PresentationCommon.Parent
local PlayerList = Components.Parent

local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local useLayoutValues = PlayerListPackage.Common.useLayoutValues
local useStyle = UIBlox.Core.Style.useStyle

local EntryFrameView = PlayerListPackage.Presentation.EntryFrameView
local StatEntryContainer = require(PlayerList.Components.Container.StatEntryContainer)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagPlayerListFixLeaderstatsStacking = SharedFlags.FFlagPlayerListFixLeaderstatsStacking
local FFlagEnableMobilePlayerListOnConsole = PlayerListPackage.Flags.FFlagEnableMobilePlayerListOnConsole

local CellExtender = require(Components.Presentation.CellExtender)

type TeamEntry = LeaderboardStore.TeamEntry
type GameStatList = LeaderboardStore.GameStatList
type GameStat = LeaderboardStore.GameStat
type StatList = LeaderboardStore.StatList

type ColorStyle = {
	Color: Color3,
	Transparency: number,
}

export type TeamEntryViewProps = {
	-- Layout options
	size: UDim2,
	entrySizeX: number,
	layoutOrder: number?,

	-- Store data
	teamName: React.Binding<string>,
	teamColor: Color3,
	gameStats: GameStatList,
	teamStats: StatList,
	gameStatsCount: number?, -- Remove prop when FFlagPlayerListFixLeaderstatsStacking is cleaned up
	teamStatsCount: number?, -- Remove prop when FFlagPlayerListFixLeaderstatsStacking is cleaned up

	-- Device type
	isSmallTouchDevice: boolean?,
	isDirectionalPreferred: boolean?,
}

local function TeamEntryView(props: TeamEntryViewProps)
	local layoutValues = useLayoutValues()
	local style = useStyle()

	local isSmallTouchDevice = props.isSmallTouchDevice or false
	local isDirectionalPreferred = props.isDirectionalPreferred or false

	-- Text styling
	local textStyle = style.Theme.TextEmphasis
	local textSize = if FFlagEnableMobilePlayerListOnConsole then layoutValues.TeamNameTextSize else style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize
	local textFont = style.Font.CaptionHeader.Font
	if isDirectionalPreferred then
		-- Ten-foot styling
		textStyle = layoutValues.DefaultTextStyle
		textSize = layoutValues.PlayerNameTextSize
		textFont = layoutValues.TeamEntryFont

	end

	-- Background styling
	-- TODO: Flatten props like backgroundStyle and use bindings for color (APPEXP-2920)
	local backgroundStyle: ColorStyle = React.useMemo(function()
		if isSmallTouchDevice then
			-- Mobile: simple background with team color
			local settings = style.Settings
			return {
				Color = props.teamColor,
				Transparency = settings.PreferredTransparency * 0.5,
			}
		end

		if isDirectionalPreferred then
			return {
				Color = props.teamColor,
				Transparency = if layoutValues.BackgroundStyle
					then layoutValues.BackgroundStyle.Default.Transparency
					else 0,
			}
		end

		return {
			Color = props.teamColor,
			Transparency = layoutValues.TeamEntryBackgroundTransparency
				* style.Settings.PreferredTransparency,
		}
	end, { isSmallTouchDevice, isDirectionalPreferred, props.teamColor, style, layoutValues } :: { any })

	local overlayStyle: ColorStyle = {
		Color = Color3.new(1, 1, 1),
		Transparency = 1,
	}

	-- Max leaderstats calculation
	local maxLeaderstats = layoutValues.MaxLeaderstats

	local gameStatsData = if FFlagPlayerListFixLeaderstatsStacking 
		then SignalsReact.useSignalState(props.gameStats.getAllData)
		else nil :: never

	-- Mobile rendering path
	if isSmallTouchDevice then
		local teamEntryChildren: { [string]: React.ReactNode } = {}

		teamEntryChildren.UIListLayout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		})

		teamEntryChildren.NameFrame = React.createElement("TextLabel", {
			Size = UDim2.new(0, layoutValues.PlayerNameSizeXMobile, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = textFont,
			TextSize = textSize,
			LayoutOrder = 0,
			TextColor3 = textStyle.Color,
			TextStrokeTransparency = textStyle.StrokeTransparency,
			TextStrokeColor3 = textStyle.StrokeColor,
			BackgroundTransparency = 1,
			Text = props.teamName,
			TextTruncate = Enum.TextTruncate.AtEnd,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, layoutValues.TeamEntryTextPaddingMobile),
			}),
		})

		-- Add stats for mobile
		if FFlagPlayerListFixLeaderstatsStacking then
			for gameStatName, gameStatData in gameStatsData do
				if gameStatData.order(false) > maxLeaderstats then
					continue
				end

				local teamStat = props.teamStats.getData(gameStatName, false)
				teamEntryChildren["GameStat_" .. gameStatName] = React.createElement(StatEntryContainer, {
					statName = gameStatName,
					stat = teamStat,
					isTeamEntry = true,
					showStatTitle = false,
					textStyle = textStyle,
				})
			end
		else
			if props.gameStatsCount and props.teamStatsCount and props.gameStatsCount > 0 and props.teamStatsCount >= 0 then
				props.gameStats.iterateData(function(gameStatName, value)
					if value.order(false) > maxLeaderstats then
						return
					end

					local teamStat = props.teamStats.getData(gameStatName, false)
					teamEntryChildren["GameStat_" .. gameStatName] = React.createElement(StatEntryContainer, {
						statName = gameStatName,
						stat = teamStat,
						isTeamEntry = true,
						showStatTitle = false,
						textStyle = textStyle,
					})
				end, false)
			end
		end

		return React.createElement(
			"Frame",
			{
				LayoutOrder = props.layoutOrder,
				Size = props.size,
				BackgroundColor3 = backgroundStyle.Color,
				BackgroundTransparency = backgroundStyle.Transparency,
				BorderSizePixel = 0,
				GroupTransparency = nil,
			} :: any,
			teamEntryChildren :: any
		)
	else
		-- All other rendering path
		local teamEntryChildren: { [string]: React.ReactNode } = {}
		local padding = nil
		if isDirectionalPreferred then
			padding = UDim.new(0, layoutValues.PlayerEntryPadding)
		end

		teamEntryChildren.UIListLayout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = padding,
		})

		teamEntryChildren.NameFrame = React.createElement("Frame", {
			LayoutOrder = 0,
			Size = UDim2.new(0, props.entrySizeX, 0, layoutValues.TeamEntrySizeY),
			BackgroundTransparency = 1,
		}, {
			Shadow = React.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Image = layoutValues.ShadowImage,
				Position = UDim2.new(0, -layoutValues.ShadowSize, 0, 0),
				Size = UDim2.new(1, layoutValues.ShadowSize * 2, 1, layoutValues.ShadowSize),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = layoutValues.ShadowSliceRect,
				Visible = isDirectionalPreferred,
			}),

			BGFrame = React.createElement(EntryFrameView, {
				size = UDim2.new(0, props.entrySizeX, 0, layoutValues.TeamEntrySizeY),
				isTeamFrame = true,
				backgroundStyle = backgroundStyle,
				overlayStyle = overlayStyle,
				doubleOverlay = false,
			}, {
				TeamName = React.createElement("TextLabel", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Font = textFont,
					TextSize = textSize,
					TextColor3 = textStyle.Color,
					TextStrokeTransparency = textStyle.StrokeTransparency,
					TextStrokeColor3 = textStyle.StrokeColor,
					BackgroundTransparency = 1,
					Text = props.teamName,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}, {
					React.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, layoutValues.TeamEntryTextPadding),
					}),
				}),
			}),
		})
		if FFlagPlayerListFixLeaderstatsStacking then
			for gameStatName, gameStatData in gameStatsData do
				if gameStatData.order(false) > maxLeaderstats then
					continue
				end

				local teamStat = props.teamStats.getData(gameStatName, false)
				teamEntryChildren["GameStat_" .. gameStatName] = React.createElement(StatEntryContainer, {
					statName = gameStatName,
					stat = teamStat,
					isTeamEntry = true,
					showStatTitle = false,
					backgroundStyle = backgroundStyle,
					overlayStyle = overlayStyle,
					doubleOverlay = false,
					textStyle = textStyle,
				})
			end
		else
			if props.gameStatsCount and props.teamStatsCount and props.gameStatsCount > 0 and props.teamStatsCount >= 0 then
				props.gameStats.iterateData(function(gameStatName, value)
					if value.order(false) > maxLeaderstats then
						return
					end

					local teamStat = props.teamStats.getData(gameStatName, false)
					teamEntryChildren["GameStat_" .. gameStatName] = React.createElement(StatEntryContainer, {
						statName = gameStatName,
						stat = teamStat,
						isTeamEntry = true,
						showStatTitle = false,
						backgroundStyle = backgroundStyle,
						overlayStyle = overlayStyle,
						doubleOverlay = false,
						textStyle = textStyle,
					})
				end, false)
			end
		end

		-- Add background extender for other devices (not tenfoot)
		if not isDirectionalPreferred then
			teamEntryChildren.BackgroundExtender = React.createElement(CellExtender, {
				layoutOrder = 100,
				size = UDim2.new(0, layoutValues.ExtraContainerPadding, 1, 0),
				backgroundStyle = backgroundStyle,
				overlayStyle = overlayStyle,
				doubleOverlay = false,
			})
		end

		return React.createElement(
			"Frame",
			{
				Size = props.size,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = props.layoutOrder,
				GroupTransparency = nil,
			} :: any,
			teamEntryChildren :: any
		)
	end
end

return React.memo(TeamEntryView)
