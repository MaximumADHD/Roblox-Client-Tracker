--[[
	A set of an arbitrary number of CheckBoxes.

	Props:
		string Title = The title to place to the left of this CheckBoxSet.
		table Boxes = A collection of props for all CheckBoxes to add.
		function EntryClicked(box) = A callback for when a CheckBox was clicked.
		int LayoutOrder = The order this CheckBoxSet will sort to when placed in a UIListLayout.
		string ErrorMessage = An error message to display on this CheckBoxSet.
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local UILibrary = require(Plugin.Packages.UILibrary)

local Constants = require(Plugin.Src.Resources.Constants)

local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryTitledFrame = SharedFlags.getFFlagRemoveUILibraryTitledFrame()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local TitledFrame = if FFlagRemoveUILibraryTitledFrame then UI.TitledFrame else UILibrary.Component.TitledFrame

local CheckBox = UILibrary.Component.CheckBox

local CHECKBOX_SIZE = 20
local CHECKBOX_PADDING = 8

local CheckBoxSet = Roact.PureComponent:extend("CheckBoxSet")

function CheckBoxSet:render()
	local props = self.props
	local theme = props.Stylizer

	local title = props.Title
	local layoutOrder = props.LayoutOrder or 1
	local boxes = props.Boxes

	local enabled = props.Enabled == nil and true or props.Enabled
	local entryClicked = props.EntryClicked
	local errorMessage = props.ErrorMessage

	assert(type(boxes) == "table", "CheckBoxSet.Boxes must be a table")

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, CHECKBOX_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}

	local components
	local tableToInsert = children
	if props.UseGridLayout then
		components = {
			Roact.createElement("UIGridLayout", {
				CellSize = UDim2.new(0, theme.SCREEN_CHOOSE_GAME.ICON_SIZE, 0,
					25),
				CellPadding = UDim2.new(0, theme.SCREEN_CHOOSE_GAME.CELL_PADDING_X, 0, 2),
				[Roact.Ref] = self.layoutRef,
				FillDirectionMaxCells = 2
			})
		}
		
		tableToInsert = components
	end
	
	-- TODO: Implement CheckBox changes into DevFramework since we want to deprecate UILibrary eventually.
	for i, box in ipairs(boxes) do
		table.insert(tableToInsert, Roact.createElement(CheckBox, {
			Title = box.Title,
			Id = box.Id,
			Height = CHECKBOX_SIZE,
			TextSize = Constants.TEXT_SIZE,
			Selected = box.Selected ~= nil and box.Selected,
			Enabled = enabled,
			LayoutOrder = i,
			OnActivated = function()
				entryClicked(box)
			end,
			Link = box.LinkTextFrame,
		}))
	end
	
	if props.UseGridLayout then
		for i, child in ipairs(components) do
			table.insert(children, child)
		end
	end

	if props[Roact.Children] then
		children = Cryo.Dictionary.join(props[Roact.Children], children)
	end

	if errorMessage then
		children.Error = Roact.createElement("TextLabel", {
			LayoutOrder = #boxes + 1,
			Size = UDim2.new(1, 0, 0, CHECKBOX_SIZE),
			BackgroundTransparency = 1,
			Text = errorMessage,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			Font = theme.checkboxset.font,
			TextColor3 = theme.checkboxset.error,
		})
	end

	local maxHeight = #boxes * (CHECKBOX_SIZE + CHECKBOX_PADDING)
	if props.MaxHeight then
		maxHeight += props.MaxHeight
	end

	if props.AbsoluteMaxHeight then 
		maxHeight = props.AbsoluteMaxHeight
	end

	return Roact.createElement(TitledFrame, if FFlagRemoveUILibraryTitledFrame then {
		LayoutOrder = layoutOrder,
		Title = title,
	} else {
		Title = title,
		MaxHeight = maxHeight,
		LayoutOrder = layoutOrder,
		TextSize = Constants.TEXT_SIZE,
		Tooltip = props.Tooltip,
	}, children)
end

CheckBoxSet = withContext({
	Stylizer = ContextServices.Stylizer,
})(CheckBoxSet)

return CheckBoxSet
