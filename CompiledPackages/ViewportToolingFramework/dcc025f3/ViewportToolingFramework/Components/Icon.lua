--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)

local Types = require(ViewportToolingFramework.Types)

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
			[React.Tag] = "X-Fill VPF-X-Square",
		}, {
			Icon = props.Icon,
		})
end

return Icon
