--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)

local Icon = require(ViewportToolingFramework.Components.Icon)
local Tooltip = require(ViewportToolingFramework.Components.Tooltip)
local Types = require(ViewportToolingFramework.Types)
local getFFlagViewportToolingFrameworkButtonDisabled =
	require(ViewportToolingFramework.Flags.getFFlagViewportToolingFrameworkButtonDisabled)

export type Props = {
	Item: Types.Button,
	NextOrder: () -> number,
}

local function Button(props: Props)
	local button = props.Item

	local isDisabled = if getFFlagViewportToolingFrameworkButtonDisabled()
		then button.Enabled == false
		else nil :: never

	local onClickCallback = nil
	if getFFlagViewportToolingFrameworkButtonDisabled() then
		onClickCallback = React.useMemo(function(): (() -> ())?
			local callback: (() -> ())? = button.OnClick
			if callback == nil then
				return nil
			end
			if isDisabled then
				return nil
			end

			return callback
		end, { button.OnClick, isDisabled } :: { unknown })
	end

	return React.createElement("TextButton", {
		LayoutOrder = props.NextOrder(),
		Active = if getFFlagViewportToolingFrameworkButtonDisabled() then not isDisabled else nil,

		[React.Event.Activated] = if getFFlagViewportToolingFrameworkButtonDisabled()
			then onClickCallback
			else button.OnClick :: unknown,

		[React.Tag] = Framework.Styling.joinTags(
			"VPF-Button",
			if getFFlagViewportToolingFrameworkButtonDisabled()
				then if isDisabled
					then "VPF-Button--Disabled"
					elseif button.Selected then "VPF-Button--Selected"
					else "VPF-Button--Unselected"
				else if button.Selected then "VPF-Button--Selected" else "VPF-Button--Unselected"
		),
	}, {
		Tooltip = React.createElement(Tooltip, {
			Title = button.Tooltip,
			Description = button.TooltipDescription,
		}),

		Contents = React.createElement("Frame", {
			[React.Tag] = "X-Fill X-PadS",
		}, {
			Icon = React.createElement(Icon, {
				Icon = button.Icon,
			}),
		}),
	})
end

return Button
