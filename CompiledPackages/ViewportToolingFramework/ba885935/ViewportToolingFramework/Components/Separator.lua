--!strict
local Plugin = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(Plugin.Parent.React)

export type Props = {
	NextOrder: () -> number,
}

local function Separator(props: Props)
	return React.createElement("Frame", {
		LayoutOrder = props.NextOrder(),

		[React.Tag] = "VPF-Separator",
	}, {
		SeparatorBar = React.createElement("Frame", {
			[React.Tag] = "VPF-SeparatorBar",
		}),
	})
end

return Separator
