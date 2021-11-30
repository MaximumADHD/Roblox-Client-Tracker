local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local Dash = Framework.Dash
local filter = Dash.filter

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local SelectInput = UI.SelectInput

local DependencyHandler = require(Plugin.Src.Utility.DependencyHandler)

local function getItemsForEnum(enumValue)
	local items = enumValue.EnumType:GetEnumItems()
	for i, v in ipairs(items) do
		items[i] = v.Name
	end
	return items
end

local function getSelectedIndex(value, items)
	for i, v in ipairs(items) do
		if v == value.Name then
			return i
		end
	end
end

local function EnumProperty(props)
	local items = getItemsForEnum(props.Value)
	local exclude = DependencyHandler(props.Name, props.DependentValues)
	items = filter(items, function(value)
		if exclude and exclude[value] then
			return false
		end
		return true
	end)

	local localizedItems = {}
	for i, v in ipairs(items) do
		localizedItems[i] = props.Localization:getText("EnumItem", v)
	end

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = props.Size,
	}, {
		WrapperContents = Roact.createElement(SelectInput, {
			OnItemActivated = function(item, index)
				props.OnSelectItem(items[index])
		    end,
			Items = localizedItems,
			-- the value isn't localized so use the items table to get the index
			SelectedIndex = getSelectedIndex(props.Value, items),
			Focus = props.Value.Name,
			Size = UDim2.fromScale(1, 1),
		}),
	})
end

return EnumProperty
