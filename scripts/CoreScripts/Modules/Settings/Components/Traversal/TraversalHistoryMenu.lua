local CorePackages = game:GetService("CorePackages")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)

local TraversalLeaveConfirmation = require(script.Parent.TraversalLeaveConfirmation)

local Settings = script.Parent.Parent.Parent
local EnumReactPage = require(Settings.EnumReactPage)
local ReactPageSignal = require(Settings.ReactPageSignal)
local Utility = require(Settings.Utility)

local View = Foundation.View
local ThumbnailType = Foundation.Enums.ThumbnailType
local ThumbnailSize = Foundation.Enums.ThumbnailSize
local getRbxThumb = Foundation.Utility.getRbxThumb
local Traversal = CoreScriptsRoactCommon.Traversal
local TraveralConstants = Traversal.Constants
local HistoryMenu = Traversal.HistoryMenu
local useHistoryItems = Traversal.useHistoryItems

local useTokens = Foundation.Hooks.useTokens

export type TraversalHistoryMenuProps = {}

local function TraversalHistoryMenu(props: TraversalHistoryMenuProps, ref: React.Ref<GuiObject>?): React.React_Node
	local historyItems = useHistoryItems()
	local items = {}
	for _, historyItem in historyItems do
		table.insert(items, {
			universeId = historyItem.universeId,
			text = historyItem.name,
			icon = getRbxThumb(ThumbnailType.GameIcon, historyItem.universeId, ThumbnailSize.Small)
		})
	end

	local tokens = useTokens()
	local selectedUniverseId, setSelectedUniverseId = React.useState(TraveralConstants.NO_UNIVERSE_ID)
	local reactPageSignal = SignalsReact.useSignalState(ReactPageSignal)

	local openDialog = React.useCallback(function(universeId: number)
		setSelectedUniverseId(universeId)
	end, { setSelectedUniverseId })

	local closeDialog = React.useCallback(function()
		setSelectedUniverseId(TraveralConstants.NO_UNIVERSE_ID)
	end, { setSelectedUniverseId })

	local dividerLeftStyle = React.useMemo(function()
		-- matches button border style
		return {
			Color3 = tokens.Color.Stroke.Default.Color3,
			Transparency = 0.33,
		}
	end, {})

	local isSmallTouchScreen = Utility:IsSmallTouchScreen()

	-- only render when there are previous places
	return next(items) ~= nil and React.createElement(View, {
		tag = "auto-xy row align-y-center size-0-full",
	}, {
		DividerLeft = React.createElement(View, {
			Size = UDim2.new(0, tokens.Stroke.Thick, 1, 0),
			backgroundStyle = dividerLeftStyle,
		}),
		HistoryMenu = React.createElement(HistoryMenu, {
			historyButtonTags = {
				["padding-small"] = isSmallTouchScreen, 
				["padding-medium"] = not isSmallTouchScreen, 
			},
			historyItems = items,
			onHistorySelected = function()
				reactPageSignal.setCurrentReactPage(EnumReactPage.TraversalHistory)
			end,
			onMenuItemSelected = openDialog,
		})
	}, {
		Dialog = React.createElement(TraversalLeaveConfirmation, {
			isDialogOpen = selectedUniverseId > TraveralConstants.NO_UNIVERSE_ID,
			onCancel = closeDialog,
			onClose = closeDialog,
			universeId = selectedUniverseId,
			source = "history_dropdown",
		})
	})

end

return React.memo(React.forwardRef(TraversalHistoryMenu))
