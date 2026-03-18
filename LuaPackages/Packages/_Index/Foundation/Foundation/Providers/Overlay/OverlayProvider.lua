local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Constants = require(Foundation.Constants)
local Wrappers = require(Foundation.Utility.Wrappers)

local CoreGui = Wrappers.Services.CoreGui
local RunService = Wrappers.Services.RunService
local Players = Wrappers.Services.Players

local PlayerGui = if Players.LocalPlayer and RunService:IsRunning()
	then Players.LocalPlayer:WaitForChild("PlayerGui", 3)
	else nil

local Flags = require(Foundation.Utility.Flags)
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
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

local mainGui = if isPluginSecurity() then CoreGui else PlayerGui

local function OverlayProvider(overlayProps: Props)
	local props = if Flags.FoundationOverlayDisplayOrder then withDefaults(overlayProps, defaultProps) else overlayProps
	local overlay: GuiBase2d?, setOverlay = React.useState(props.gui)
	local shouldMountOverlay, setShouldMountOverlay = React.useState(false)
	local safeAreaSize = if Flags.FoundationOverlayKeyboardAwareness then useKeyboardAwareSize(overlay) else nil
	local styleSheet = useStyleSheet()

	local requestOverlay = React.useCallback(function()
		if props.gui == nil then
			setShouldMountOverlay(true)
		end
	end, { props.gui })

	local shouldRender = props.gui == nil and mainGui ~= nil and shouldMountOverlay
	local overlayInstance = if props.gui ~= nil then props.gui else overlay

	return React.createElement(OverlayContext.Provider, {
		value = {
			requestOverlay = requestOverlay,
			instance = overlayInstance,
		},
	}, {
		FoundationOverlay = if shouldRender
			then ReactRoblox.createPortal(
				React.createElement("ScreenGui", {
					Enabled = true,
					-- Biggest DisplayOrder allowed. Don't try math.huge, it causes an overflow
					DisplayOrder = if Flags.FoundationOverlayDisplayOrder
						then props.DisplayOrder
						else Constants.MAX_LAYOUT_ORDER - 1,
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
