--[[
	A button that displays a dropdown menu with options for grid and list view,
	and a slider for setting the grid size.

	Required Props:
		callback OnGridSizeChanged: Called when the grid size slider changes.
		callback OnViewTypeSelected: Called when the view type is selected.
		string ViewType: The currently selected view type.

	Optional Props:
		boolean Disabled: Whether the compnent is disabled.
		number GridSize: The grid tile size. Sets the slider value.
		number LayoutOrder: The LayoutOrder of the component.
		string StyleModifier: The StyleModifier index into Style.

	Style Values:
		Color3 BackgroundColor: The background color of the component.
		string GridIcon: Grid view type icon asset.
		UDim2 IconSize: Size of the view type icon.
		string ListIcon: List view type icon asset.
]]

local main = script.Parent.Parent
local Packages = main.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local Framework = require(Packages.Framework)

local ContextServices: any = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local SelectInput = UI.SelectInput

local StyleModifier = Framework.Util.StyleModifier

local ViewTypeButton = require(script.ViewTypeButton)
local ViewType = require(main.Enums.ViewType)

local Resources = require(main.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

export type Props = {
	Disabled: boolean?,
	GridSize: number?,
	LayoutOrder: number?,
	OnGridSizeChanged: (() -> ())?,
	OnViewTypeSelected: (viewType: any) -> (),
	ViewType: any,
}

type _Style = {
	GridIcon: string,
	ListIcon: string,
	Size: UDim2,
}

type ListItem = {
	Id: any,
	Label: string,
}

local function createListItems(localization: any): { ListItem }
	local viewTypes = ViewType.allValues()
	table.sort(viewTypes, function(a, b)
		return a.rawValue() < b.rawValue()
	end)
	return Dash.map(viewTypes, function(viewType: any)
		return {
			Id = viewType,
			Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, "ViewTypeSelector", viewType.rawValue()),
		}
	end)
end

function ViewTypeSelector(props: Props)
	local styleModifier = if props.Disabled then StyleModifier.Disabled else nil
	local style: _Style = Stylizer:use("ViewTypeSelector", props, styleModifier)

	local viewType = props.ViewType
	assert(ViewType.isEnumValue(viewType), "Invalid ViewType")

	local function renderItem(item: ListItem, index: number, activated: () -> ())
		return React.createElement(ViewTypeButton, {
			GridSize = props.GridSize,
			LayoutOrder = index,
			OnClick = activated,
			OnGridSizeChanged = props.OnGridSizeChanged,
			Style = style,
			Text = item.Label,
			ViewType = item.Id,
		})
	end

	local localization = Localization:use()
	local items = createListItems(localization)

	return React.createElement(SelectInput, {
		Enabled = not props.Disabled,
		Icons = {
			style.GridIcon,
			style.ListIcon,
		},
		Items = items,
		HideText = true,
		LayoutOrder = props.LayoutOrder,
		OnItemActivated = function(item: any)
			props.OnViewTypeSelected(item.Id)
		end,
		OnRenderItem = renderItem,
		SelectedId = viewType,
		Size = style.Size,
		StyleModifier = styleModifier,
	})
end

return ViewTypeSelector
