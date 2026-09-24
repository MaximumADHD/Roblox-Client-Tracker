local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Components = Framework.UI.Components
local IconButton = require(Components.IconButton)
local Pane = require(Components.Pane)

local Dash = require(Framework.Parent.Dash)
local forEach = Dash.forEach

local Types = require(script.Parent.Parent.Types)
type Props = Types.PropertyCellProps

local function ActionsRenderer(props: Props)
	local schema = props.Schema :: Types.ActionSchema
	local buttons = {}
	forEach(schema.Items, function(item, i)
		buttons["Button " .. i] = Roact.createElement(IconButton, {
			AutomaticSize = Enum.AutomaticSize.X,
			LayoutOrder = i,
			LeftIcon = item.Icon,
			OnClick = function()
				props.OnChanged(item)
			end,
			Size = UDim2.fromScale(0, 1),
			Text = item.Label,
			TooltipText = item.Tooltip,
		})
	end)
	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		Layout = Enum.FillDirection.Horizontal,
	}, buttons)
end

return ActionsRenderer
