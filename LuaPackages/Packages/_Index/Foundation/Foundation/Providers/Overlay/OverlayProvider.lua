local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local PlayerGui = if Players.LocalPlayer then Players.LocalPlayer:WaitForChild("PlayerGui") else nil

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local isCoreGui = require(Foundation.Utility.isCoreGui)

local OverlayContext = require(script.Parent.OverlayContext)

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

type Props = {
	gui: GuiObject?,
	children: React.ReactNode,
}

local mainGui = if isCoreGui then CoreGui else PlayerGui

local function OverlayProvider(props: Props)
	local overlay: GuiObject?, setOverlay = React.useState(props.gui)

	local overlayRefCallback = React.useCallback(function(screenGui: GuiObject)
		setOverlay(screenGui)
	end, {})

	React.useEffect(function()
		if props.gui ~= nil then
			setOverlay(props.gui)
		end
	end, { props.gui })

	return React.createElement(OverlayContext.Provider, {
		value = {
			overlay = overlay,
		},
	}, {
		FoundationOverlay = if not props.gui and mainGui
			then ReactRoblox.createPortal(
				React.createElement("ScreenGui", {
					Enabled = true,
					DisplayOrder = math.huge,
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
					ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets,
					ref = overlayRefCallback,
				}),
				mainGui
			)
			else nil,
		Children = React.createElement(React.Fragment, nil, props.children),
	})
end

return OverlayProvider
