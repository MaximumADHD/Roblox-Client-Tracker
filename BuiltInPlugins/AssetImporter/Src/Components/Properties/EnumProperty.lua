local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local SelectInput = UI.SelectInput

local function getItemsForEnum(enumValue)
	local items = enumValue.EnumType:GetEnumItems()
	local selectedIndex

	for i, v in ipairs(items) do
		items[i] = v.Name
		if v == enumValue then
			selectedIndex = i
		end
	end

	return items, selectedIndex
end

local function EnumProperty(props)
	local items, selectedIndex = getItemsForEnum(props.Value)

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = props.Size,
	}, {
		WrapperContents = Roact.createElement(SelectInput, {
			OnItemActivated = props.OnSelectItem,
			Items = items,
			SelectedIndex = selectedIndex,
			Focus = props.Value.Name,
			Size = UDim2.fromScale(1, 1),
		}),
	})
end

return EnumProperty
