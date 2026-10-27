--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)
local Types = require(ViewportToolingFramework.Types)

local function TextButton(props: {
	Item: Types.TextButton,
	NextOrder: () -> number,
})
	local button = props.Item
	local enabled = button.Enabled ~= false

	return React.createElement("TextButton", {
		LayoutOrder = props.NextOrder(),
		Text = button.Text,

		[React.Event.Activated] = (if enabled then button.OnClick else nil) :: unknown,

		[React.Tag] = Framework.Styling.joinTags("VPF-TextButton", if enabled then nil else "VPF-TextButton--Disabled"),
	})
end

return TextButton
