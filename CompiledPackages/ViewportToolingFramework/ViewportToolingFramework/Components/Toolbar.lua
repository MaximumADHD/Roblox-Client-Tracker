--!strict
local CoreGui = game:GetService("CoreGui")

local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)
local ReactRoblox = require(ViewportToolingFramework.Parent.ReactRoblox)

local ToolbarBase = require(ViewportToolingFramework.Components.ToolbarBase)
local Types = require(ViewportToolingFramework.Types)
local getToolbarDirection = require(ViewportToolingFramework.Util.getToolbarDirection)
local useStyleSheet = require(ViewportToolingFramework.Hooks.useStyleSheet)

local getFFlagViewportToolingFrameworkToolbarSpacing =
	require(ViewportToolingFramework.Flags.getFFlagViewportToolingFrameworkToolbarSpacing)

local ContextServices: any = Framework.ContextServices

local function Toolbar(props: Types.Toolbar)
	local styleSheet = useStyleSheet()

	local screenGui: ScreenGui?, setScreenGui = React.useState(nil :: ScreenGui?)
	local screenGuiRef = React.useRef(nil :: ScreenGui?)

	React.useEffect(function()
		assert(screenGuiRef.current ~= nil, "ScreenGui was not mounted by useEffect")
		setScreenGui(screenGuiRef.current)
	end, {})

	return ReactRoblox.createPortal(
		React.createElement("ScreenGui", {
			Archivable = false,
			DisplayOrder = props.DisplayOrder,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

			ref = screenGuiRef,
		}, {
			Focus = if screenGui
				then ContextServices.provide({
					ContextServices.Focus.new(screenGui),
				}, {
					Toolbar = React.createElement("Frame", {
						[React.Change.AbsoluteSize] = if getFFlagViewportToolingFrameworkToolbarSpacing()
							then props.OnToolbarSizeChanged :: any -- Luau: React is not very good with Change and Event being defined in props at the same time
							else nil :: never,
						[React.Tag] = `VPF-Toolbar VPF-Toolbar--{getToolbarDirection(props)} VPF-Toolbar--{props.InitialPosition or "Center"}` :: any, -- Same as above
					}, {
						ToolbarBase = React.createElement(ToolbarBase, props),
					}),

					StyleLink = React.createElement("StyleLink", {
						StyleSheet = styleSheet,
					}),
				})
				else nil,
		}),
		CoreGui
	)
end

return Toolbar
