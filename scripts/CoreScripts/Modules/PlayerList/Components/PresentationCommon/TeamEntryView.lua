local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PresentationCommon = script.Parent
local Components = PresentationCommon.Parent
local PlayerList = Components.Parent

-------------------------------- Packages --------------------------------
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

-------------------------------- Components --------------------------------
local GameTranslator = require(RobloxGui.Modules.GameTranslator)
local useLayoutValues = PlayerListPackage.Common.useLayoutValues
local useStyle = UIBlox.Core.Style.useStyle
local useSignalState = SignalsReact.useSignalState
local EntryFrameView = PlayerListPackage.Presentation.EntryFrameView
local StatEntryContainer = require(PlayerList.Components.Container.StatEntryContainer)

-------------------------------- Legacy Components --------------------------------
local CellExtender = require(Components.Presentation.CellExtender)

local createShallowEqualAndTables = require(PlayerList.createShallowEqualAndTables)

type SignalMap<K, V> = LeaderboardStore.SignalMap<K, V>

type ColorStyle = {
	Color: Color3,
	Transparency: number,
}

export type TeamEntryViewProps = {
	size: UDim2?,
	position: UDim2?,
	teamName: string?,
	teamColor: BrickColor?,
	entrySize: number?,
	layoutOrder: number?,
	isSmallTouchDevice: boolean?,
	isDirectionalPreferred: boolean?,
	gameStatNames: { string }?,
	gameStats: SignalMap<string, any>?,
	teamStats: SignalMap<string, any>?,
}

local function TeamEntryView(props: TeamEntryViewProps)
	local layoutValues = useLayoutValues()
	local style = useStyle()
	local isSmallTouchDevice = props.isSmallTouchDevice or false
	local isDirectionalPreferred = props.isDirectionalPreferred or false
	local gameStats = props.gameStats
	local teamStats = props.teamStats
	local gameStatsCount = useSignalState(if gameStats then gameStats.getCount else Signals.createSignal(0))
	local teamStatsCount = useSignalState(if teamStats then teamStats.getCount else Signals.createSignal(0))

	-- Team name and color logic
	local teamName = layoutValues.NeutralTeamName
	local teamColor = layoutValues.NeutralTeamColor.Color
	if props.teamName then
		teamName = GameTranslator:TranslateGameText(CoreGui, props.teamName)
	end
	if props.teamColor then
		teamColor = props.teamColor.Color
	end

	-- Text styling
	local textStyle = style.Theme.TextEmphasis
	local textSize = style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize
	local textFont = style.Font.CaptionHeader.Font
	if isDirectionalPreferred then
		-- Ten-foot styling
		textStyle = layoutValues.DefaultTextStyle
		textSize = layoutValues.PlayerNameTextSize
		textFont = layoutValues.TeamEntryFont

	end

	-- Background styling
	local backgroundStyle: ColorStyle = React.useMemo(function()
		if isSmallTouchDevice then
			-- Mobile: simple background with team color
			local settings = style.Settings
			return {
				Color = teamColor,
				Transparency = settings.PreferredTransparency * 0.5,
			}
		else
			-- Desktop/TenFoot: more complex background logic
			if not isDirectionalPreferred then
				if props.teamColor then
					return {
						Color = props.teamColor.Color,
						Transparency = layoutValues.TeamEntryBackgroundTransparency
							* style.Settings.PreferredTransparency,
					}
				else
					return style.Theme.Divider
				end
			else
				return {
					Color = teamColor,
					Transparency = if layoutValues.BackgroundStyle
						then layoutValues.BackgroundStyle.Default.Transparency
						else 0,
				}
			end
		end
	end, { isSmallTouchDevice, isDirectionalPreferred, teamColor, style, layoutValues } :: { any })

	local overlayStyle: ColorStyle? = React.useMemo(function()
		if not isSmallTouchDevice then
			return {
				Color = Color3.new(1, 1, 1),
				Transparency = 1,
			}
		else
			return nil :: any
		end
	end, { isSmallTouchDevice })

	-- Max leaderstats calculation
	local maxLeaderstats = layoutValues.MaxLeaderstats
	if isSmallTouchDevice then
		maxLeaderstats = layoutValues.MaxLeaderstatsSmallScreen or layoutValues.MaxLeaderstats
	end

	-- Mobile rendering path
	if isSmallTouchDevice then
		local teamEntryChildren = {}

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
			Text = teamName,
			TextTruncate = Enum.TextTruncate.AtEnd,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, layoutValues.TeamEntryTextPaddingMobile),
			}),
		})

		-- Add stats for mobile
			if gameStats and gameStatsCount > 0 and teamStats and teamStatsCount > 0 then
				gameStats.iterateData(function(gameStatName, value)
					if value.order(false) > maxLeaderstats then
						return
					end
	
					local teamStat = teamStats.getData(gameStatName, false)
					if teamStat then
						teamEntryChildren["gameStat_" .. gameStatName] = React.createElement(StatEntryContainer, {
							statName = gameStatName,
							statSignal = teamStat,
							isTitleEntry = false,
							isTeamEntry = true,
							textStyle = textStyle,
							layoutOrder = value.order,
						})
					end
				end, false)
			end

		return React.createElement(
			"Frame",
			{
				LayoutOrder = props.layoutOrder,
				Size = props.size,
				Position = props.position,
				BackgroundColor3 = backgroundStyle.Color,
				BackgroundTransparency = backgroundStyle.Transparency,
				BorderSizePixel = 0,
				GroupTransparency = nil,
			} :: any,
			teamEntryChildren :: any
		)
	else
		-- All other rendering path
		local teamEntryChildren = {}
		local padding = nil
		if isDirectionalPreferred then
			padding = UDim.new(0, layoutValues.PlayerEntryPadding)
		end

		teamEntryChildren["Layout"] = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = padding,
		})

		local entrySizeX = props.entrySize

		teamEntryChildren["NameFrame"] = React.createElement("Frame", {
			LayoutOrder = 0,
			Size = UDim2.new(0, entrySizeX, 0, layoutValues.TeamEntrySizeY),
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
				sizeX = entrySizeX,
				sizeY = layoutValues.TeamEntrySizeY,
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
					Text = teamName,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}, {
					React.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, layoutValues.TeamEntryTextPadding),
					}),
				}),
			}),
		})

		if gameStats and gameStatsCount > 0 and teamStats and teamStatsCount > 0 then
			gameStats.iterateData(function(gameStatName, value)
				if value.order(false) > maxLeaderstats then
					return
				end

				local teamStat = teamStats.getData(gameStatName, false)
				if teamStat then
					teamEntryChildren["gameStat_" .. gameStatName] = React.createElement(StatEntryContainer, {
						statName = gameStatName,
						statSignal = teamStat,
						isTitleEntry = false,
						isTeamEntry = true,
						layoutOrder = value.order,
						backgroundStyle = backgroundStyle,
						overlayStyle = overlayStyle,
						doubleOverlay = false,
						textStyle = textStyle,
					})
				end
			end, false)
		end

		-- Add background extender for other devices (not tenfoot)
		if not isDirectionalPreferred then
			teamEntryChildren["BackgroundExtender"] = React.createElement(CellExtender, {
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
				Position = props.position,
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

return React.memo(TeamEntryView, createShallowEqualAndTables({ "gameStatNames", "leaderstats" }))
