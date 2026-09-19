--!strict
local CoreGui = game:GetService("CoreGui")

local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)
local ReactRoblox = require(ViewportToolingFramework.Parent.ReactRoblox)
local StudioFoundation = require(ViewportToolingFramework.Parent.StudioFoundation)

local StyleLink = require(ViewportToolingFramework.Components.StyleLink)
local ToolbarBase = require(ViewportToolingFramework.Components.ToolbarBase)
local Types = require(ViewportToolingFramework.Types)
local getToolbarDirection = require(ViewportToolingFramework.Util.getToolbarDirection)
local useStyleSheet = require(ViewportToolingFramework.Hooks.useStyleSheet)

local getFFlagViewportToolingFrameworkMoreComponents =
	require(ViewportToolingFramework.Flags.getFFlagViewportToolingFrameworkMoreComponents)

local FFlagViewportToolingFrameworkingDebugCleanupCode =
	game:DefineFastFlag("ViewportToolingFrameworkingDebugCleanupCode", false)

local ContextServices: any = Framework.ContextServices

local function ToolbarContextProviders(props: {
	children: React.Node,
}): React.Node
	local design = Framework.ContextServices.Design:use()

	local node: React.Node =
		React.createElement(StudioFoundation.Components.FoundationProviderAdapter, {}, props.children)

	local stubStyleSheet = React.useState(function()
		return Instance.new("StyleSheet")
	end)

	-- A terrible horrible no good very bad hack because FoundationProviderAdapter
	-- assumes the outer plugin has mounted this, but some very minimal plugins (PathEditor) don't.
	if next(design) == nil then
		node = ContextServices.provide({
			ContextServices.Design.new(stubStyleSheet),
		}, node)
	end

	return node
end

local function Toolbar(props: Types.Toolbar)
	local DEPRECATED_styleSheet = if getFFlagViewportToolingFrameworkMoreComponents()
		then nil :: never
		else useStyleSheet()

	local screenGui: ScreenGui?, setScreenGui = React.useState(nil :: ScreenGui?)
	local screenGuiRef = React.useRef(nil :: ScreenGui?)

	React.useEffect(function()
		assert(screenGuiRef.current ~= nil, "ScreenGui was not mounted by useEffect")
		setScreenGui(screenGuiRef.current)

		if FFlagViewportToolingFrameworkingDebugCleanupCode then
			-- This is for testing only
			local existing = {}
			local coreChildren = CoreGui:GetChildren()
			for i, child in coreChildren do
				if child:IsA("ScreenGui") then
					local hasToolbar = false
					local childDesc = child:GetDescendants()
					for j, d in childDesc do
						if d:IsA("Frame") and d.Name == "ToolbarBase" then
							hasToolbar = true
							break
						end
					end
					if hasToolbar then
						table.insert(existing, child)
					end
				end
			end
			if #existing > 1 then
				for i, gui in existing do
					if gui ~= screenGuiRef.current then
						gui:Destroy()
					end
				end
			end
		end
	end, {})

	return ReactRoblox.createPortal(
		React.createElement("ScreenGui", {
			Archivable = false,
			DisplayOrder = props.DisplayOrder,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

			ref = screenGuiRef,
		}, {
			Focus = if screenGui
				then ContextServices.provide(
					{
						ContextServices.Focus.new(screenGui),
					},
					React.createElement(
						if getFFlagViewportToolingFrameworkMoreComponents()
							then ToolbarContextProviders
							else React.Fragment,
						{},
						{
							Toolbar = React.createElement("Frame", {
								[React.Change.AbsoluteSize] = props.OnToolbarSizeChanged :: any, -- Luau: React is not very good with Change and Event being defined in props at the same time
								[React.Tag] = `VPF-Toolbar VPF-Toolbar--{getToolbarDirection(props)} VPF-Toolbar--{props.InitialPosition or "Center"}` :: any, -- Same as above
							}, {
								ToolbarBase = React.createElement(ToolbarBase, props),
							}),

							StyleLink = if getFFlagViewportToolingFrameworkMoreComponents()
								then React.createElement(StyleLink)
								else React.createElement("StyleLink", {
									StyleSheet = DEPRECATED_styleSheet,
								}),
						}
					)
				)
				else nil,
		}),
		CoreGui
	)
end

return Toolbar
