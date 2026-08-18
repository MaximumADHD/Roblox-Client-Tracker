local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local Cryo = require(CorePackages.Packages.Cryo)
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local Settings = script.Parent.Parent.Parent
local ReactPageSignal = require(Settings.ReactPageSignal)
local TraversalLeaveConfirmation = require(script.Parent.TraversalLeaveConfirmation)

local getRbxThumb = Foundation.Utility.getRbxThumb
local ThumbnailSize = Foundation.Enums.ThumbnailSize
local ThumbnailType = Foundation.Enums.ThumbnailType
local View = Foundation.View

local Traversal = CoreScriptsRoactCommon.Traversal
local LocalTraversalHistory = Traversal.LocalTraversalHistory.default
local GetInputModeStore = Responsive.GetInputModeStore
local Input = Responsive.Input
local TraversalConstants = Traversal.Constants
local HistoryPage = Traversal.HistoryPage
local useHistoryItems = Traversal.useHistoryItems
local FIntMaximumTraversalHistoryItemsFetch = Traversal.Flags.FIntMaximumTraversalHistoryItemsFetch
local FFlagTraversalExpPagePaddingFixes = Traversal.Flags.FFlagTraversalExpPagePaddingFixes
local FFlagIntegrateTraversalHistoryInSideSheet = SharedFlags.FFlagIntegrateTraversalHistoryInSideSheet

export type TraversalHistoryPageProps = {}

local function TraversalHistoryPage(props: TraversalHistoryPageProps, ref: React.Ref<GuiObject>?): React.React_Node
	local pageRef = React.useRef(nil :: GuiObject?)
	React.useImperativeHandle(ref, function()
		return pageRef.current
	end, {})
	local numItems, setNumItems = React.useState(FIntMaximumTraversalHistoryItemsFetch)
	local historyItems = useHistoryItems(numItems)
	local selectedUniverseId, setSelectedUniverseId = React.useState(TraversalConstants.NO_UNIVERSE_ID)
	local reactPageSignal = SignalsReact.useSignalState(ReactPageSignal)
	React.useEffect(function()
		local lastInputType = UserInputService:GetLastInputType()
		local inputMode = GetInputModeStore().getLastInputType()
		local isUsingFocus = inputMode == Input.Directional or inputMode == Input.Pointer and lastInputType == Enum.UserInputType.Keyboard
		if isUsingFocus and pageRef.current then
			GuiService.SelectedCoreObject = pageRef.current
		end
	end, {})

	local openDialog = React.useCallback(function(universeId: number)
		setSelectedUniverseId(universeId)
	end, { setSelectedUniverseId })

	local closeDialog = React.useCallback(function()
		setSelectedUniverseId(TraversalConstants.NO_UNIVERSE_ID)
		local lastInputType = UserInputService:GetLastInputType()
		local inputMode = GetInputModeStore().getLastInputType()
		local isUsingFocus = inputMode == Input.Directional or inputMode == Input.Pointer and lastInputType == Enum.UserInputType.Keyboard
		if isUsingFocus and pageRef.current then
			GuiService.SelectedCoreObject = pageRef.current
		end
	end, {} )

	local items = React.useMemo(function()
		local mappedItems = Cryo.List.map(historyItems, function(item)
			return {
				placeId = item.placeId,
				universeId = item.universeId,
				name = item.name,
				image = getRbxThumb(ThumbnailType.GameIcon, item.universeId, ThumbnailSize.Medium),
				rating = item.rating,
			}
		end)
		return mappedItems
	end, { historyItems })

	local onLoadMoreHistory = React.useCallback(function(requestAmount: number)
			if numItems >= #LocalTraversalHistory:getUniverseHistory() then
				return
			end
		setNumItems(numItems + requestAmount)
	end, { numItems, } )

	return next(items) ~= nil and React.createElement(View, {
		tag = "size-full " .. if FFlagIntegrateTraversalHistoryInSideSheet then "" else (if FFlagTraversalExpPagePaddingFixes then "padding-top-medium" else "padding-large")
	}, {
		HistoryPage = React.createElement(HistoryPage, {
			historyItems = items,
			onHistoryClose = function()
				reactPageSignal.setCurrentReactPage(nil)
			end,
			onCardItemActivated = openDialog,
			onLoadMoreHistory = onLoadMoreHistory,
			ref = pageRef,
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
