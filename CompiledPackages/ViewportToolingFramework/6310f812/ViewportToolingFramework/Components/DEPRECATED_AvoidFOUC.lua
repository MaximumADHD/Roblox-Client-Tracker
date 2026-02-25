--!strict
-- Remove with getFFlagViewportToolingFrameworkSplitButtons
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)

local useToggleState = require(ViewportToolingFramework.Hooks.useToggleState)

type Props = {
	children: React.ReactNode,
}

-- Avoids a FOUC (flash of unstyled content) bug in style sheets by delaying visible
-- until style sheets have been applied.
-- Bug for style sheets is filed at CLI-84799.
local function AvoidFOUC(props: Props)
	local propertiesApplied = useToggleState(false)

	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
		Visible = propertiesApplied.enabled,

		[React.Change.BackgroundColor3] = propertiesApplied.enable,
		[React.Tag] = "VPF-AvoidFOUC" :: any, -- Luau: React is bad with multiple special properties
	}, props.children)
end

return AvoidFOUC
