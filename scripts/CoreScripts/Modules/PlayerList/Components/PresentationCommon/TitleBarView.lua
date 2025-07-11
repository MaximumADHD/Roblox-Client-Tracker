--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local GameTranslator = require(RobloxGui.Modules.GameTranslator)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local useLayoutValues = PlayerListPackage.Common.useLayoutValues
local useStyle = UIBlox.Core.Style.useStyle

type GameStatList = LeaderboardStore.GameStatList

export type TitleBarViewProps = {
	-- Layout options
	size: UDim2,
	entrySizeX: number,
	layoutOrder: number?,
	contentsVisible: boolean,

	-- Store data
	gameStats: GameStatList,
	gameStatsCount: number,
	
	-- Device type
	isSmallTouchDevice: boolean?,
	
	-- Styling options
	showDivider: boolean?,
	showBackground: boolean?,
	backgroundTransparency: (number | { [string]: any })?,
	useCustomTextColor: boolean?,
	customTextColor: Color3?,
	headerPaddingLeft: number?,
}

local defaultProps: { [string]: any } = {
	showDivider = false,
	showBackground = false,
	backgroundTransparency = 1,
	useCustomTextColor = false,
	customTextColor = Color3.fromRGB(255, 255, 255),
	headerPaddingLeft = 15,
}

local function TitleBarView(props: TitleBarViewProps)
	-- Apply default props
	local mergedProps: { [string]: any } = {}
	for k, v in pairs(defaultProps) do
		mergedProps[k] = props[k :: any] ~= nil and props[k :: any] or v
	end
	for k, v in pairs(props :: any) do
		mergedProps[k] = v
	end
	props = mergedProps :: TitleBarViewProps

	local layoutValues = useLayoutValues()
	local style = useStyle()

	local children = {}

	children.layout = React.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	})

	local entrySizeX = props.entrySizeX
	if props.isSmallTouchDevice then
		entrySizeX = layoutValues.PlayerNameSizeXMobile
	end

	-- Determine text color
	local textColor = props.useCustomTextColor 
		and props.customTextColor 
		or style.Theme.TextMuted.Color
	
	local textTransparency = props.useCustomTextColor 
		and 0 
		or style.Theme.TextMuted.Transparency

	children.playersHeader = React.createElement("TextLabel", {
		LayoutOrder = 1,
		Size = UDim2.new(0, entrySizeX, 1, 0),
		Text = RobloxTranslator:FormatByKey("InGame.PlayerList.Players"),
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		Font = style.Font.Footer.Font,
		TextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
		TextTransparency = textTransparency,
		TextColor3 = textColor,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, props.headerPaddingLeft),
		}),
	})

	local maxLeaderstats = layoutValues.MaxLeaderstats

	if props.gameStatsCount > 0 then
		props.gameStats.iterateData(function(gameStatName, value)
			if value.order(false) > maxLeaderstats then
				return
			end

			local statName = GameTranslator:TranslateGameText(CoreGui, gameStatName)

			children["stat_" .. gameStatName] = React.createElement("TextLabel", {
				LayoutOrder = value.order(false) + 1,
				Size = UDim2.new(0, layoutValues.StatEntrySizeX, 1, 0),
				Text = statName,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = style.Font.Footer.Font,
				TextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
				TextTransparency = textTransparency,
				TextColor3 = textColor,
					TextTruncate = Enum.TextTruncate.AtEnd,
				})
		end, false)
	end

	-- Determine background color if showing background
	local backgroundColor = Color3.fromRGB(0, 0, 0) -- default fallback
	if props.showBackground then
		local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)
		backgroundColor = if ChromeEnabled()
			then style.Theme.BackgroundUIContrast.Color
			else style.Theme.BackgroundContrast.Color
	end

	local frameChildren = {}
	
	-- Add divider if requested
	if props.showDivider then
		frameChildren.Divider = React.createElement("Frame", {
			Visible = props.contentsVisible,
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			BackgroundTransparency = style.Theme.Divider.Transparency,
			BackgroundColor3 = style.Theme.Divider.Color,
			BorderSizePixel = 0,
		})
	end

	-- Add children frame
	frameChildren.ChildrenFrame = React.createElement("Frame", {
		Visible = props.contentsVisible,
		BackgroundTransparency = 1,
		Position = props.showBackground and UDim2.new(0, 0, 0, -2) or UDim2.new(0, 0, 0, 0), -- 2 pixel offset for rounded top on desktop
		Size = UDim2.new(1, 0, 1, 0),
	}, children)

	return React.createElement("Frame", {
		Size = props.size,
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = props.backgroundTransparency,
		BackgroundColor3 = backgroundColor,
		BorderSizePixel = 0,
	}, frameChildren)
end

return React.memo(TitleBarView) 
