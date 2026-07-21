local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Constants = require(Foundation.Constants)

local Flags = require(Foundation.Utility.Flags)

local getMainGui = require(Foundation.Utility.getMainGui)
local withDefaults = require(Foundation.Utility.withDefaults)
local useStyleSheet = require(Foundation.Providers.Style.StyleSheetContext).useStyleSheet
local Types = require(Foundation.Components.Types)
type OverlayConfig = Types.OverlayConfig

local OverlayContext = require(script.Parent.OverlayContext)
local useKeyboardAwareSize = require(script.Parent.useKeyboardAwareSize)

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

type Props = ({ gui: GuiBase2d?, DisplayOrder: nil } | OverlayConfig) & {
	children: React.ReactNode,
}

local defaultProps = {
	DisplayOrder = Constants.MAX_LAYOUT_ORDER - 1,
}

local mainGui = getMainGui()

local function OverlayProvider(overlayProps: Props)
	local props = withDefaults(overlayProps, defaultProps)
	local overlay: GuiBase2d?, setOverlay = React.useState(props.gui)
	local shouldMountOverlay, setShouldMountOverlay = React.useState(false)
	local screen = if Flags.FoundationOverlayKeyboardAwarenessHardened and not props.gui
		then overlay and overlay.Parent :: GuiBase2d?
		else nil
	local safeAreaSize = if Flags.FoundationOverlayKeyboardAwareness
		then useKeyboardAwareSize(if Flags.FoundationOverlayKeyboardAwarenessHardened then screen else overlay)
		else nil
	local styleSheet = useStyleSheet()

	local requestOverlay = React.useCallback(function()
		if props.gui == nil then
			setShouldMountOverlay(true)
		end
	end, { props.gui })

	local shouldRender = props.gui == nil and mainGui ~= nil and shouldMountOverlay
	local overlayInstance = if props.gui ~= nil then props.gui else overlay
	local screenInstance
	if Flags.FoundationOverlayKeyboardAwarenessHardened then
		screenInstance = if props.gui ~= nil then props.gui else screen
	end

	return React.createElement(OverlayContext.Provider, {
		value = {
			requestOverlay = requestOverlay,
			instance = overlayInstance,
			screen = screenInstance,
		},
	}, {
		FoundationOverlay = if shouldRender
			then ReactRoblox.createPortal(
				React.createElement("ScreenGui", {
					Enabled = true,
					-- Biggest DisplayOrder allowed. Don't try math.huge, it causes an overflow
					DisplayOrder = props.DisplayOrder,
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
					ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets,
					SafeAreaCompatibility = Enum.SafeAreaCompatibility.None,
					ClipToDeviceSafeArea = false,
					ref = if not Flags.FoundationOverlayKeyboardAwareness then setOverlay else nil,
				}, {
					SafeAreaFrame = if Flags.FoundationOverlayKeyboardAwareness
						then React.createElement("Frame", {
							Size = safeAreaSize,
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							ref = setOverlay,
						})
						else nil,
					FoundationStyleLink = React.createElement("StyleLink", {
						StyleSheet = styleSheet,
					}),
				}),
				mainGui :: Instance
			)
			else nil,
		Children = React.createElement(React.Fragment, nil, props.children),
	})
end

return OverlayProvider
