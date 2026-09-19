local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local StyleModifier = require(Framework.Util.StyleModifier)

local SegmentedButton = require(Framework.UI.Components.SegmentedButton)

local Types = require(script.Parent.Parent.Types)
type Props = Types.PropertyCellProps

local function SingleSelectButtonRenderer(props: Props)
	local schema = props.Schema :: Types.SingleSelectButtonSchema
	local styleModifier = if props.HasError then StyleModifier.Error else nil
	return Roact.createElement(SegmentedButton, {
		ButtonWidths = schema.ButtonWidths,
		Disabled = props.Disabled,
		IconSize = if props.Height then UDim2.fromOffset(props.Height, props.Height) else nil,
		Items = schema.Items,
		OnItemActivated = function(item: Types.SelectItem)
			props.OnChanged(item.Id)
		end,
		SelectedId = props.Value,
		Size = if props.AutomaticSize then UDim2.new(1, 0, 0, props.MinimumHeight or 24) else UDim2.fromScale(1, 1),
		StyleModifier = if props.Disabled then StyleModifier.Disabled else styleModifier,
	})
end

return SingleSelectButtonRenderer
