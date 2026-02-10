local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local CoreScriptsCommon = require(CorePackages.Workspace.Packages.CoreScriptsCommon)
local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)

local TraversalLeaveConfirmation = require(script.Parent.TraversalLeaveConfirmation)

local Settings = script.Parent.Parent.Parent
local EnumReactPage = require(Settings.EnumReactPage)
local ReactPageSignal = require(Settings.ReactPageSignal)
local Utility = require(Settings.Utility)

local View = Foundation.View
local ThumbnailType = Foundation.Enums.ThumbnailType
local ThumbnailSize = Foundation.Enums.ThumbnailSize
local getRbxThumb = Foundation.Utility.getRbxThumb
local SettingsShowSignal = CoreScriptsCommon.SettingsShowSignal
local Traversal = CoreScriptsRoactCommon.Traversal
local useLastInputMode = FocusNavigationUtils.useLastInputMode
local useLastInput = Responsive.useLastInput
local TraveralConstants = Traversal.Constants
local HistoryMenu = Traversal.HistoryMenu
local useHistoryItems = Traversal.useHistoryItems
local useTokens = Foundation.Hooks.useTokens

local FFlagTraversalUseFocusNavLastInput = require(script.Parent.FFlagTraversalUseFocusNavLastInput)
local FFlagAddTraversalHistoryReactMenuButtons = require(Settings.Flags.FFlagAddTraversalHistoryReactMenuButtons)
local FFlagTraversalHistoryMenuFocusNavFix = Traversal.Flags.FFlagTraversalHistoryMenuFocusNavFix

export type TraversalHistoryMenuProps = {
	anchorParent: GuiObject?,
	anchorRef: React.RefObject<GuiObject?>?,
	currentPageChangeSignal: any,
	idleButtonStateIsDown: boolean?,
	isDarkOnDarkMode: boolean?, -- defaults to false
}

local function TraversalHistoryMenu(props: TraversalHistoryMenuProps, ref: React.Ref<GuiObject>?): React.React_Node
	local anchorRef = React.useRef(props.anchorParent)
	if FFlagAddTraversalHistoryReactMenuButtons and props.anchorRef then 
		anchorRef = props.anchorRef
	end
	local historyItems = useHistoryItems()
	local items = {}
	for _, historyItem in historyItems do
		table.insert(items, {
			universeId = historyItem.universeId,
			text = historyItem.name,
			icon = getRbxThumb(ThumbnailType.GameIcon, historyItem.universeId, ThumbnailSize.Small)
		})
	end
	
	local idleButtonStateIsDown = if props.idleButtonStateIsDown ~= nil then props.idleButtonStateIsDown else TraveralConstants.DEFAULT_CHEVRON_BUTTON_STATE
	local lastInput
	if FFlagTraversalUseFocusNavLastInput then 
		lastInput = useLastInputMode()
	else
		lastInput = useLastInput()
	end
	local selectionBehaviorToMenu, setSelectionBehaviorToMenu = React.useBinding(Enum.SelectionBehavior.Stop)
	local tokens = useTokens()
	local selectedUniverseId, setSelectedUniverseId = React.useState(TraveralConstants.NO_UNIVERSE_ID)
	local reactPageSignal = SignalsReact.useSignalState(ReactPageSignal)
	local forceMenuClose, setForceMenuClose
	local closeMenuConn
	if FFlagTraversalHistoryMenuFocusNavFix then
		closeMenuConn = React.useCallback(function(closeMenu)
			local connections: { [string]: RBXScriptConnection} = {}
			connections.onSettingsVisible = SettingsShowSignal:connect(function(isOpen)
				if not isOpen then
					closeMenu()
				end
			end)
			connections.onPageChanged = if not FFlagAddTraversalHistoryReactMenuButtons or props.currentPageChangeSignal then 
				props.currentPageChangeSignal:connect(function()
					closeMenu()
				end)
			else nil
			connections.onNativeClose = GuiService.NativeClose:Connect(function()
				closeMenu()
			end)

			return connections
		end, { props.currentPageChangeSignal, SettingsShowSignal, GuiService.NativeClose })
	else
		forceMenuClose, setForceMenuClose = React.useState(false)
		React.useEffect(function()
			local connections: { [string]: RBXScriptConnection} = {}
			connections.onSettingsVisible = SettingsShowSignal:connect(function(isOpen)
				if not isOpen then
					setForceMenuClose(true)
				end
			end)
			connections.onPageChanged = if not FFlagAddTraversalHistoryReactMenuButtons or props.currentPageChangeSignal then 
				props.currentPageChangeSignal:connect(function()
					setForceMenuClose(true)
				end)
			else nil
			connections.onNativeClose = GuiService.NativeClose:Connect(function()
				setForceMenuClose(true)
			end)
			return function()
				for _, connection in connections do
					connection:Disconnect()
				end
				connections = {}
			end
		end, { props.currentPageChangeSignal, SettingsShowSignal, GuiService.NativeClose })
		React.useEffect(function()
			-- reset the force close variable
			if forceMenuClose then
				setForceMenuClose(false)
			end
		end, { forceMenuClose, setForceMenuClose } :: { unknown })
	end

	local openDialog = React.useCallback(function(universeId: number)
		setSelectedUniverseId(universeId)
		if FFlagTraversalUseFocusNavLastInput then
			setSelectionBehaviorToMenu(Enum.SelectionBehavior.Stop)
		end
	end, { setSelectedUniverseId })

	local closeDialog = React.useCallback(function()
		setSelectedUniverseId(TraveralConstants.NO_UNIVERSE_ID)
		local isUsingFocus = if FFlagTraversalUseFocusNavLastInput then lastInput == "Focus" else lastInput == Responsive.Input.Directional
		if isUsingFocus and anchorRef.current then
			GuiService.SelectedCoreObject = anchorRef.current
		end
	end, { setSelectedUniverseId, lastInput } :: { unknown })

	local onMenuToggled = React.useCallback(function(isOpen: boolean)
		if isOpen then
			setSelectionBehaviorToMenu(Enum.SelectionBehavior.Escape)
		else
			setSelectionBehaviorToMenu(Enum.SelectionBehavior.Stop)
		end
	end, { setSelectionBehaviorToMenu })

	local dividerLeftStyle = React.useMemo(function()
		-- matches button border style
		if FFlagAddTraversalHistoryReactMenuButtons and props.isDarkOnDarkMode then
			return tokens.Color.Surface.Surface_0
		else
			return {
				Color3 = tokens.Color.Stroke.Default.Color3,
				Transparency = 0.33,
			}
		end
	end, {})

	local isSmallTouchScreen = Utility:IsSmallTouchScreen()

	-- only render when there are previous places
	return next(items) ~= nil and React.createElement(View, {
		tag = "auto-xy row align-y-center size-0-full",
		selectionGroup = {
			SelectionBehaviorUp = if idleButtonStateIsDown then selectionBehaviorToMenu else Enum.SelectionBehavior.Stop,
			SelectionBehaviorDown = if not idleButtonStateIsDown then selectionBehaviorToMenu else Enum.SelectionBehavior.Stop,
		},
		
		-- default ref to internal anchor if no external ref provided
		ref = if FFlagAddTraversalHistoryReactMenuButtons and (not props.anchorRef and not props.anchorParent) then anchorRef else nil,
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
				if FFlagTraversalHistoryMenuFocusNavFix then
					setSelectionBehaviorToMenu(Enum.SelectionBehavior.Stop)
				end
			end,
			onMenuItemSelected = openDialog,
			onMenuToggled = onMenuToggled,
			forceMenuClose = if FFlagTraversalHistoryMenuFocusNavFix then nil else forceMenuClose,
			closeMenuConn = if FFlagTraversalHistoryMenuFocusNavFix then closeMenuConn else nil,
			idleButtonStateIsDown = idleButtonStateIsDown,

			ref = anchorRef,
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
