--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)

local Icon = require(ViewportToolingFramework.Components.Icon)
local Tooltip = require(ViewportToolingFramework.Components.Tooltip)
local Types = require(ViewportToolingFramework.Types)

export type Props = {
	Item: Types.Button,
	NextOrder: () -> number,
}

local function Button(props: Props)
	local button = props.Item

	local isDisabled = button.Enabled == false

	local onClickCallback = React.useMemo(function(): (() -> ())?
		local callback: (() -> ())? = button.OnClick
		if callback == nil then
			return nil
		end
		if isDisabled then
			return nil
		end

		return callback
	end, { button.OnClick, isDisabled } :: { unknown })

	return React.createElement("TextButton", {
		LayoutOrder = props.NextOrder(),
		Active = not isDisabled,

		[React.Event.Activated] = onClickCallback :: any, -- Luau: React is not very good with Event and Tag being defined in props at the same time

		[React.Tag] = Framework.Styling.joinTags(
			"VPF-Button",
			if isDisabled
				then "VPF-Button--Disabled"
				elseif button.Selected then "VPF-Button--Selected"
				else "VPF-Button--Unselected"
		) :: any, -- Same as above
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
