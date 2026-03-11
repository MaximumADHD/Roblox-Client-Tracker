--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)

local Types = require(ViewportToolingFramework.Types)

local getFFlagViewportToolingFrameworkSplitButtons =
	require(ViewportToolingFramework.Flags.getFFlagViewportToolingFrameworkSplitButtons)

type Props = {
	Icon: Types.Icon,

	LayoutOrder: number?,
}

local function Icon(props: Props)
	return if typeof(props.Icon) == "string"
		then React.createElement("ImageLabel", {
			Image = props.Icon,
			LayoutOrder = props.LayoutOrder,
			[React.Tag] = "VPF-Icon",
		})
		else React.createElement("Frame", {
			LayoutOrder = props.LayoutOrder,
			[React.Tag] = if getFFlagViewportToolingFrameworkSplitButtons() then "X-Fill VPF-X-Square" else "X-Fill",
		}, {
			Icon = props.Icon,
		})
end

return Icon
