local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Wrappers = require(Foundation.Utility.Wrappers)
local CoreGui = Wrappers.Services.CoreGui
local RunService = Wrappers.Services.RunService
local Players = Wrappers.Services.Players

local PlayerGui = if Players.LocalPlayer and RunService:IsRunning()
	then Players.LocalPlayer:WaitForChild("PlayerGui", 3)
	else nil

local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
local Flags = require(Foundation.Utility.Flags)
local useStyleSheet = require(Foundation.Providers.Style.StyleSheetContext).useStyleSheet

local OverlayContext = require(script.Parent.OverlayContext)

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

type Props = {
	gui: GuiBase2d?,
	children: React.ReactNode,
}

local mainGui = if isPluginSecurity() then CoreGui else PlayerGui

local function OverlayProvider(props: Props)
	local overlay: GuiBase2d?, setOverlay = React.useState(props.gui)
	local styleSheet = useStyleSheet()

	local overlayRefCallback = React.useCallback(function(screenGui: ScreenGui)
		setOverlay(screenGui)
	end, {})

	React.useEffect(function()
		if props.gui ~= nil and props.gui ~= overlay then
			setOverlay(props.gui)
		end
	end, { props.gui })

	return React.createElement(OverlayContext.Provider, {
		value = {
			instance = overlay,
		},
	}, {
		FoundationOverlay = if not props.gui and mainGui
			then ReactRoblox.createPortal(
				React.createElement("ScreenGui", {
					Enabled = true,
					-- Biggest DisplayOrder allowed. Don't try math.huge, it causes an overflow
					DisplayOrder = 2147483647,
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
					ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets,
					ref = overlayRefCallback,
				}, {
					FoundationStyleLink = if Flags.FoundationDisableStylingPolyfill
						then React.createElement("StyleLink", {
							StyleSheet = styleSheet,
						})
						else nil,
				}),
				mainGui
			)
			else nil,
		Children = React.createElement(React.Fragment, nil, props.children),
	})
end

return OverlayProvider
