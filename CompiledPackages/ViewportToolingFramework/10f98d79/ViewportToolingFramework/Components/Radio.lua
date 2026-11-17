--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)

local Button = require(ViewportToolingFramework.Components.Button)
local Types = require(ViewportToolingFramework.Types)

type Props = {
	Item: Types.Radio,
	NextOrder: () -> number,
}

local function Radio(props: Props)
	local radio = props.Item

	local children: { [string]: React.ReactNode } = {}

	for _, radioItem in radio.Items do
		local layoutOrder = props.NextOrder()

		children[radioItem.Id] = React.createElement(Button, {
			Item = {
				Type = "Button",

				Tooltip = radioItem.Tooltip,
				TooltipDescription = radioItem.TooltipDescription,

				Icon = radioItem.Icon,
				OnClick = function()
					radio.OnChange(radioItem.Id)
				end,
				Selected = radio.Value == radioItem.Id,
				Enabled = radioItem.Enabled,
			},

			NextOrder = function()
				return layoutOrder
			end,
		})
	end

	return React.createElement(React.Fragment, {}, children)
end

return Radio
