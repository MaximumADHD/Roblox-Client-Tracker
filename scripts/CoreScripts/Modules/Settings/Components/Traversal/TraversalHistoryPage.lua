local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)

local Settings = script.Parent.Parent.Parent
local ReactPageSignal = require(Settings.ReactPageSignal)
local TraversalLeaveConfirmation = require(script.Parent.TraversalLeaveConfirmation)

local getRbxThumb = Foundation.Utility.getRbxThumb
local ThumbnailSize = Foundation.Enums.ThumbnailSize
local ThumbnailType = Foundation.Enums.ThumbnailType
local View = Foundation.View

local Traversal = CoreScriptsRoactCommon.Traversal
local TraversalConstants = Traversal.Constants
local HistoryPage = Traversal.HistoryPage
local useHistoryItems = Traversal.useHistoryItems

local FIntMaximumTraversalHistoryItemsFetch = Traversal.Flags.FIntMaximumTraversalHistoryItemsFetch

export type TraversalHistoryPageProps = {}

local function TraversalHistoryPage(props: TraversalHistoryPageProps, ref: React.Ref<GuiObject>?): React.React_Node
	local historyItems = useHistoryItems(FIntMaximumTraversalHistoryItemsFetch)
	local selectedUniverseId, setSelectedUniverseId = React.useState(TraversalConstants.NO_UNIVERSE_ID)
	local reactPageSignal = SignalsReact.useSignalState(ReactPageSignal)

	local openDialog = React.useCallback(function(universeId: number)
		setSelectedUniverseId(universeId)
	end, { setSelectedUniverseId })

	local closeDialog = React.useCallback(function()
		setSelectedUniverseId(TraversalConstants.NO_UNIVERSE_ID)
	end, { setSelectedUniverseId })

	local items = React.useMemo(function()
		local mappedItems = Cryo.List.map(historyItems, function(item)
			return {
				universeId = item.universeId,
				name = item.name,
				image = getRbxThumb(ThumbnailType.GameIcon, item.universeId, ThumbnailSize.Medium),
				rating = item.rating,
			}
		end)
		return mappedItems
	end, { historyItems })

	return next(items) ~= nil and React.createElement(View, {
		tag = "size-full padding-large"
	}, {
		HistoryPage = React.createElement(HistoryPage, {
			historyItems = items,
			onHistoryClose = function()
				reactPageSignal.setCurrentReactPage(nil)
			end,
			onCardItemActivated = openDialog,
		})
	}, {
		Dialog = React.createElement(TraversalLeaveConfirmation, {
			isDialogOpen = selectedUniverseId > TraversalConstants.NO_UNIVERSE_ID,
			onCancel = closeDialog,
			onClose = closeDialog,
			universeId = selectedUniverseId,
			source = "history_landing_page",
		})
	})
end

return React.memo(React.forwardRef(TraversalHistoryPage))
