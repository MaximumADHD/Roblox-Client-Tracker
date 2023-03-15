local root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = root.Parent
local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local GlobalNavOption = require(script.Parent.GlobalNavOption)
local GlobalNavOptionTooltip = require(script.Parent.GlobalNavOptionTooltip)
local eraseKeys = require(root.Components.utils.eraseKeys)

local TOOLTIP_VERTICAL_SPACING = 10

export type GlobalNavOptionGroupItem = {
	label: string,
	icon: string,
	onActivated: () -> (),
}

local function makeButtonTooltipMap(
	buttonGroupNode: GuiObject,
	items: { GlobalNavOptionGroupItem }
): { [GuiObject]: string }
	local buttons = Cryo.List.filter(buttonGroupNode:GetDescendants(), function(descendant, _)
		return descendant:IsA("ImageButton")
	end)

	return Cryo.List.foldLeft(buttons, function(acc, button, idx)
		acc[button] = if items[idx] then items[idx].label else nil
		return acc
	end, {})
end

local function makeToolTipProps(
	selectedGuiObject: GuiObject,
	parentGuiObject: GuiObject,
	buttonTooltipMap: { [GuiObject]: string }
): GlobalNavOptionTooltip.Props?
	local tooltipLabel = buttonTooltipMap[selectedGuiObject]
	if tooltipLabel then
		return {
			label = tooltipLabel,
			xOffset = selectedGuiObject.AbsolutePosition.X
				- parentGuiObject.AbsolutePosition.X
				+ selectedGuiObject.Size.X.Offset / 2,
			yOffset = selectedGuiObject.Position.Y.Offset + selectedGuiObject.Size.Y.Offset - TOOLTIP_VERTICAL_SPACING,
		}
	end
	return nil
end

export type Props = {
	items: { GlobalNavOptionGroupItem },
	spacing: number?,
} -- Do we have a type for GuiObject props?

local function GlobalNavOptionGroup(props: Props)
	local toolTipProps, setToolTipProps = React.useState(nil :: any)
	local forwardedProps = eraseKeys({ "items", "spacing" }, props)

	local iconTabs = Cryo.List.map(props.items, function(item: GlobalNavOptionGroupItem, idx: number)
		return React.createElement(GlobalNavOption, {
			key = item.label .. "-" .. idx,
			icon = item.icon,
			onActivated = item.onActivated,
		})
	end)

	return React.createElement(
		"Frame",
		Cryo.Dictionary.join({
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, forwardedProps),

		React.createElement(
			"Frame",
			{
				Name = "Options",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				[React.Event.SelectionChanged] = function(thisGuiObject, _iam, _old, new)
					local buttonTooltipMap = makeButtonTooltipMap(thisGuiObject, props.items)
					setToolTipProps(makeToolTipProps(new, thisGuiObject, buttonTooltipMap))
				end,
			},
			React.createElement("UIListLayout", {
				key = "globalNavOptionGroupLayout",
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, props.spacing or 0),
			}),
			table.unpack(iconTabs)
		),
		if toolTipProps then React.createElement(GlobalNavOptionTooltip, toolTipProps) else nil
	)
end

return GlobalNavOptionGroup
