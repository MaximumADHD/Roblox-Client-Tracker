local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GameTranslator = require(RobloxGui.Modules.GameTranslator)
local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local LeaderboardStore = require(CorePackages.Workspace.Packages.LeaderboardStore)

local useLeaderboardStore = PlayerListPackage.Hooks.useLeaderboardStore

local StatEntryView = PlayerListPackage.Presentation.StatEntryView

type LeaderboardStore = LeaderboardStore.LeaderboardStore
type GameStat = LeaderboardStore.GameStat
type StatEntry = LeaderboardStore.StatEntry

type StatEntryContainerProps = {
	statName: string,
	stat: StatEntry?,
	isTeamEntry: boolean,
	showStatTitle: boolean?,
	doubleOverlay: boolean?,
	textStyle: {
		Color: Color3,
		Transparency: number,
		StrokeColor: Color3?,
		StrokeTransparency: number?,
	}?,
	backgroundStyle: {
		Color: Color3,
		Transparency: number,
	}?,
	overlayStyle: {
		Color: Color3,
		Transparency: number,
	}?,
}

local function StatEntryContainer(props: StatEntryContainerProps)
	local leaderboardStore: LeaderboardStore = useLeaderboardStore() :: LeaderboardStore

	local gameStat: GameStat? = leaderboardStore.getGameStatsList().getData(props.statName, false)

	local translatedStatName = React.useMemo(function()
		return GameTranslator:TranslateGameText(CoreGui, props.statName)
	end, { props.statName })

	local statValue = SignalsReact.useSignalBinding(Signals.createComputed(function(scope)
		return if props.stat then props.stat(scope) else "-"
	end))
	local layoutOrder = SignalsReact.useSignalBinding(Signals.createComputed(function(scope)
		return if gameStat then gameStat.order(scope) else math.huge
	end))

	local dataProps = {
		statName = translatedStatName,
		statValue = statValue,
		layoutOrder = layoutOrder,
	}

	local mergedProps = Cryo.Dictionary.join(dataProps, props)

	return React.createElement(StatEntryView, mergedProps)
end

return React.memo(StatEntryContainer)
