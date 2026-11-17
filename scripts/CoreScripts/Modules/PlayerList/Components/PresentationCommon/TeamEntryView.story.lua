local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local UIBlox = require(CorePackages.Packages.UIBlox)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local createSignalMap = CoreScriptsRoactCommon.Utilities.createSignalMap

local TeamEntryView = require(script.Parent.TeamEntryView)
local LayoutValuesContext = PlayerListPackage.Common.LayoutValuesContext
local CreateLayoutValues = PlayerListPackage.Common.CreateLayoutValues
local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local useStyle = UIBlox.Core.Style.useStyle
local usePreferences = Foundation.Hooks.usePreferences

local TOP_BAR = { TopBarHeight = 0 }
local COLUMN_WIDTH = 320

local TEAMS = {
	{ name = "White", color = Color3.fromRGB(255, 255, 255) },
	{ name = "Yellow", color = Color3.fromRGB(255, 255, 0) },
	{ name = "Orange", color = Color3.fromRGB(255, 128, 0) },
	{ name = "Red", color = Color3.fromRGB(196, 40, 28) },
	{ name = "Green", color = Color3.fromRGB(75, 151, 75) },
	{ name = "Blue", color = Color3.fromRGB(13, 105, 172) },
	{ name = "Purple", color = Color3.fromRGB(107, 50, 124) },
	{ name = "Black", color = Color3.fromRGB(17, 17, 17) },
}

local GAME_STATS = createSignalMap()
local TEAM_STATS = createSignalMap()
local TEAM_NAME_BINDINGS = {}
for index, team in TEAMS do
	TEAM_NAME_BINDINGS[index] = React.createBinding(team.name)
end

local function TeamList(props: {
	layoutValues: any,
	isSmallTouchDevice: boolean,
	isDirectionalPreferred: boolean,
})
	local style = useStyle()
	local preferences = usePreferences()
	local preferredTransparency = if preferences.preferredTransparency ~= nil
		then preferences.preferredTransparency
		else 1
	local surfaceColor = if ChromeEnabled()
		then style.Theme.BackgroundUIContrast.Color
		else style.Theme.BackgroundContrast.Color
	local surfaceTransparency = (props.layoutValues.OverrideBackgroundTransparency or 0) * preferredTransparency

	local children: { [string]: any } = {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for index, team in TEAMS do
		children[`Team_{index}`] = React.createElement(TeamEntryView, {
			size = UDim2.fromOffset(COLUMN_WIDTH, 24),
			entrySizeX = 200,
			layoutOrder = index,
			teamName = TEAM_NAME_BINDINGS[index],
			teamColor = team.color,
			gameStats = GAME_STATS,
			teamStats = TEAM_STATS,
			gameStatsCount = 0,
			teamStatsCount = 0,
			isSmallTouchDevice = props.isSmallTouchDevice,
			isDirectionalPreferred = props.isDirectionalPreferred,
		})
	end

	return React.createElement(LayoutValuesContext.Provider, {
		value = props.layoutValues,
	}, {
		Rows = React.createElement(Foundation.View, {
			Size = UDim2.fromOffset(COLUMN_WIDTH, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			backgroundStyle = {
				Color3 = surfaceColor,
				Transparency = surfaceTransparency,
			},
		}, children),
	})
end

local function makeStory(isSmallTouchDevice: boolean, isDirectionalPreferred: boolean)
	local layoutValues = if isDirectionalPreferred
		then CreateLayoutValues(true, TOP_BAR)
		else CreateLayoutValues(false, TOP_BAR)

	return function(_storyProps: any)
		return React.createElement(TeamList, {
			layoutValues = layoutValues,
			isSmallTouchDevice = isSmallTouchDevice,
			isDirectionalPreferred = isDirectionalPreferred,
		})
	end
end

return {
	name = "TeamEntryView (legacy)",
	summary = "Legacy team rows on the player list surface. The preferred transparency slider fades that surface.",
	roact = React,
	stories = {
		Default = makeStory(false, false),
		SmallTouch = makeStory(true, false),
		Directional = makeStory(false, true),
	},
}
