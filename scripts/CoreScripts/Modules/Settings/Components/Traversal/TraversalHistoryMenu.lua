local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local CoreScriptsCommon = require(CorePackages.Workspace.Packages.CoreScriptsCommon)
local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
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
local LocalTraversalHistory = Traversal.LocalTraversalHistory.default
local GetInputModeStore = Responsive.GetInputModeStore
local Input = Responsive.Input
local TraveralConstants = Traversal.Constants
local HistoryMenu = Traversal.HistoryMenu
local useHistoryItems = Traversal.useHistoryItems
local useTokens = Foundation.Hooks.useTokens
local FFlagAddTraversalHistoryReactMenuButtons = require(Settings.Flags.FFlagAddTraversalHistoryReactMenuButtons)
local FFlagTraversalHistoryMenuFocusNavFix = Traversal.Flags.FFlagTraversalHistoryMenuFocusNavFix
local FFlagTraversalPerfFixes = Traversal.Flags.FFlagTraversalPerfFixes

export type TraversalHistoryMenuProps = {
	anchorParent: GuiObject?,
	anchorRef: React.RefObject<GuiObject?>?,
	currentPageChangeSignal: any,
	idleButtonStateIsDown: boolean?,
	menuSide: Foundation.PopoverSide?,
	isDarkOnDarkMode: boolean?, -- defaults to false
}

local function historyToMenuItems(historyItems)
	local items = {}
	for _, historyItem in historyItems do
		table.insert(items, {
			universeId = historyItem.universeId,
			text = historyItem.name,
			icon = getRbxThumb(ThumbnailType.GameIcon, historyItem.universeId, ThumbnailSize.Small)
		})
	end
	return items
end

local function TraversalHistoryMenu(props: TraversalHistoryMenuProps, ref: React.Ref<GuiObject>?): React.React_Node
	local anchorRef = React.useRef(props.anchorParent)
	if FFlagAddTraversalHistoryReactMenuButtons and props.anchorRef then 
		anchorRef = props.anchorRef
	end
	local historyItems = useHistoryItems()
	local items
	if FFlagTraversalPerfFixes then
		items = React.useMemo(function()
			return historyToMenuItems(historyItems)
		end, { historyItems })
	else
		items = historyToMenuItems(historyItems)
	end
	
	local idleButtonStateIsDown = if props.idleButtonStateIsDown ~= nil then props.idleButtonStateIsDown else TraveralConstants.DEFAULT_CHEVRON_BUTTON_STATE
	local selectionBehaviorToMenu, setSelectionBehaviorToMenu = React.useBinding(Enum.SelectionBehavior.Stop)
	local selectionGroup: { [string]: Enum.SelectionBehavior | Foundation.Bindable<Enum.SelectionBehavior> }
	if FFlagTraversalPerfFixes then
		selectionGroup = React.useMemo(function()
			return {
				SelectionBehaviorUp = if idleButtonStateIsDown then selectionBehaviorToMenu else Enum.SelectionBehavior.Stop,
				SelectionBehaviorDown = if not idleButtonStateIsDown then selectionBehaviorToMenu else Enum.SelectionBehavior.Stop,
			}
		end, { idleButtonStateIsDown })
	end
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
		setSelectionBehaviorToMenu(Enum.SelectionBehavior.Stop)
	end, { setSelectedUniverseId })

	local closeDialog = React.useCallback(function()
		setSelectedUniverseId(TraveralConstants.NO_UNIVERSE_ID)
		local lastInputType = UserInputService:GetLastInputType()
		local inputMode = GetInputModeStore().getLastInputType()
		local isUsingFocus = inputMode == Input.Directional or inputMode == Input.Pointer and lastInputType == Enum.UserInputType.Keyboard
		if isUsingFocus and anchorRef.current then
			GuiService.SelectedCoreObject = anchorRef.current
		end
	end, {} )

	local onMenuToggled = React.useCallback(function(isOpen: boolean)
		if isOpen then
			setSelectionBehaviorToMenu(Enum.SelectionBehavior.Escape)
		else
			setSelectionBehaviorToMenu(Enum.SelectionBehavior.Stop)
		end
	end, {if FFlagTraversalPerfFixes then nil else setSelectionBehaviorToMenu})

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
	local historyButtonTags
	if FFlagTraversalPerfFixes then
		historyButtonTags = React.useMemo(function()
			return {
				["padding-small"] = isSmallTouchScreen, 
				["padding-medium"] = not isSmallTouchScreen, 
			}
		end, { isSmallTouchScreen })
	end

	local onHistorySelected
	if FFlagTraversalPerfFixes then
		onHistorySelected = React.useCallback(function()
			reactPageSignal.setCurrentReactPage(EnumReactPage.TraversalHistory)
			if FFlagTraversalHistoryMenuFocusNavFix then
				setSelectionBehaviorToMenu(Enum.SelectionBehavior.Stop)
			end
		end, { reactPageSignal })
	end

	local shouldMount = React.useMemo(function()
		return #LocalTraversalHistory:getUniverseHistory() > 0
	end, {})

	-- only render when there are previous places
	return shouldMount and React.createElement(View, {
		tag = "auto-xy row align-y-center size-0-full",
		selectionGroup = if FFlagTraversalPerfFixes then selectionGroup else {
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
			historyButtonTags = if FFlagTraversalPerfFixes then historyButtonTags else {
				["padding-small"] = isSmallTouchScreen, 
				["padding-medium"] = not isSmallTouchScreen, 
			},
			historyItems = items,
			onHistorySelected = if FFlagTraversalPerfFixes then onHistorySelected else function()
				reactPageSignal.setCurrentReactPage(EnumReactPage.TraversalHistory)
				if FFlagTraversalHistoryMenuFocusNavFix then
					setSelectionBehaviorToMenu(Enum.SelectionBehavior.Stop)
				end
			end,
			onMenuItemSelected = openDialog,
			onMenuToggled = onMenuToggled,
			forceMenuClose = if FFlagTraversalHistoryMenuFocusNavFix then nil else forceMenuClose,
			closeMenuConn = if FFlagTraversalHistoryMenuFocusNavFix then closeMenuConn else nil,
			idleButtonStateIsDown = if FFlagTraversalPerfFixes then nil else idleButtonStateIsDown,
			menuSide = if FFlagTraversalPerfFixes then props.menuSide else nil,

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
