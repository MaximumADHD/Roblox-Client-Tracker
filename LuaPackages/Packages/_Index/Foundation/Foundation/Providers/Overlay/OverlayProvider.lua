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

local moduleMainGui = if Flags.FoundationOverlayResilientMainGui then nil else getMainGui()

local function OverlayProvider(overlayProps: Props)
	local props = withDefaults(overlayProps, defaultProps)
	local overlay: GuiBase2d?, setOverlay = React.useState(props.gui)
	local shouldMountOverlay, setShouldMountOverlay = React.useState(false)
	local screen = if not props.gui then overlay and overlay.Parent :: GuiBase2d? else nil
	local safeAreaSize = useKeyboardAwareSize(screen)
	local styleSheet = useStyleSheet()

	local requestOverlay = React.useCallback(function()
		if props.gui == nil then
			setShouldMountOverlay(true)
		end
	end, { props.gui })

	local mainGui: Instance? = if Flags.FoundationOverlayResilientMainGui
		then if props.gui == nil and shouldMountOverlay then getMainGui() else nil
		else moduleMainGui

	local shouldRender = props.gui == nil and mainGui ~= nil and shouldMountOverlay
	local overlayInstance = if props.gui ~= nil then props.gui else overlay
	local screenInstance = if props.gui ~= nil then props.gui else screen

	local contextValue = if Flags.FoundationStableContextValues
		then React.useMemo(function()
			return {
				requestOverlay = requestOverlay,
				instance = overlayInstance,
				screen = screenInstance,
			}
		end, { requestOverlay, overlayInstance, screenInstance } :: { unknown })
		else nil

	return React.createElement(OverlayContext.Provider, {
		value = if Flags.FoundationStableContextValues
			then contextValue
			else {
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
				}, {
					SafeAreaFrame = React.createElement("Frame", {
						Size = safeAreaSize,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ref = setOverlay,
					}),
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
