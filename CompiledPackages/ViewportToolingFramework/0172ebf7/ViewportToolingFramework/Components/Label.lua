--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)

local Types = require(ViewportToolingFramework.Types)

export type Props = {
	Item: Types.Label,
	NextOrder: () -> number,
}

local function Label(props: Props)
	local label = props.Item

	return React.createElement("TextLabel", {
		LayoutOrder = props.NextOrder(),
		Text = label.Text,

		[React.Tag] = "VPF-Label",
	})
end

return Label
