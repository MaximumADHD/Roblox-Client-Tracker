local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Components = Framework.UI.Components
local Checkbox = require(Components.Checkbox)

local Types = require(script.Parent.Parent.Types)
type Props = Types.PropertyCellProps

local function CheckboxRenderer(props: Props)
	local schema = props.Schema :: Types.CheckboxSchema
	return Roact.createElement(Checkbox, {
		Disabled = props.Disabled,
		Checked = props.Value,
		OnClick = function()
			props.OnChanged(not props.Value)
		end,
		Text = schema.Label,
	})
end

return CheckboxRenderer
