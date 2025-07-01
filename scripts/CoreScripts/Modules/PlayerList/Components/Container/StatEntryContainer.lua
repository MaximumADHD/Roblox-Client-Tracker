local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GameTranslator = require(RobloxGui.Modules.GameTranslator)
local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local Signals = require(CorePackages.Packages.Signals)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)


local StatEntryView = PlayerListPackage.Presentation.StatEntryView


local function StatEntryContainer(props)
	local translatedStatName = React.useMemo(function()
		return GameTranslator:TranslateGameText(CoreGui, props.statName)
	end, { props.statName })

	local statSignal = if props.statSignal then props.statSignal else Signals.createSignal(nil)
	local statsBinding = SignalsReact.useSignalBinding(statSignal)

	local layoutOrderSignal = if props.layoutOrder then props.layoutOrder else Signals.createSignal(0)
	local layoutOrderBinding = SignalsReact.useSignalBinding(layoutOrderSignal)

	local mergedProps = Cryo.Dictionary.join(props, {
		statName = translatedStatName,
		statValue = Cryo.None,
		statSignal = Cryo.None,
		statBinding = statsBinding,
		layoutOrder = layoutOrderBinding,
	})

	return React.createElement(StatEntryView, mergedProps)
end

return React.memo(StatEntryContainer)
