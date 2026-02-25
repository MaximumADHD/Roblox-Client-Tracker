local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join
local map = Dash.map
local slice = Dash.slice

local Breadcrumb = require(Framework.UI.Components.Breadcrumb)
local TreeTable = require(Framework.UI.Components.TreeTable)
local EditTreeUtility = require(Framework.Util.EditTree)

local COLUMNS = {
	{
		Name = "Name",
		Key = "Name",
	},
	{
		Name = "Value",
		Key = "Value",
	},
}

local EditTree = (if EditTreeUtility then EditTreeUtility else TreeTable.EditTree).new({
	getChildren = function(item)
		return item.Children or {}
	end,
})

local ColorSchema = {
	Type = "Color",
}
local EmptySchema = {
	Type = "Empty",
}
local FontSchema = {
	Type = "Select",
	Items = {
		{
			Id = "Gotham",
			Label = "Gotham",
		},
		{
			Id = "SourceSans",
			Label = "SourceSans",
		},
		{
			Id = "SourceSansBold",
			Label = "SourceSansBold",
		},
	},
}
local Vector2Schema = {
	Type = "Vector",
	Components = { "X", "Y" },
	GetComponents = function(value: Vector2)
		local x, y = value.X, value.Y
		return { x, y }
	end,
	GetValue = function(components: { string }): Vector2
		local x, y = tonumber(components[1]), tonumber(components[2])
		return Vector2.new(x, y)
	end,
}
local PropertySchema = {
	Type = "Text",
	ErrorStyle = "PropertyCellError",
	PlaceholderText = "Add Property...",
}
local PropertyActions = {
	{
		Id = "Variable",
		Icon = {
			Image = "rbxasset://textures/StyleEditor/style-variable.png",
			Size = UDim2.fromOffset(16, 16),
		},
		Tooltip = "Assign this property from a variable",
	},
}
local SelectorSchema = {
	Type = "Breadcrumb",
	Delimiters = { "%.%.", "%.", "::" },
	ErrorStyle = "PropertyCellError",
	GetImageProps = Breadcrumb.GetSelectorIcon,
}
local SelectorActions = {
	{
		Id = "Edit",
		Icon = {
			Image = "rbxasset://textures/StyleEditor/style-edit.png",
			Size = UDim2.fromOffset(16, 16),
		},
		Tooltip = "Edit the style selector",
	},
	{
		Id = "Add",
		Icon = {
			Image = "rbxasset://textures/StyleEditor/style-add.png",
			Size = UDim2.fromOffset(16, 16),
		},
		Tooltip = "Add a child style",
	},
	{
		Id = "Delete",
		Icon = {
			Image = "rbxasset://textures/StyleEditor/style-bin.png",
			Size = UDim2.fromOffset(16, 16),
		},
		Tooltip = "Delete the style",
	},
}

local TextSchema = {
	Type = "Text",
}
local TransparencySchema = {
	Type = "Slider",
	Min = 0,
	Max = 1,
	ShowInput = true,
	InputPrecision = 3,
	SnapIncrement = 0.05,
}
local FillDirectionSchema = {
	Type = "Select",
	Items = {
		{
			Id = "Row",
			Label = "Row",
		},
		{
			Id = "Column",
			Label = "Column",
		},
	},
}

local function getEmptyRow()
	return {
		Name = {
			Schema = PropertySchema,
			Value = "",
		},
		Value = {
			Schema = EmptySchema,
			Value = "",
		},
	}
end

local function getNewStyle()
	return {
		Name = {
			Actions = SelectorActions,
			FullSpan = true,
			Schema = join(SelectorSchema, { Editing = true }),
			Value = "",
		},
		Children = {
			getEmptyRow(),
		},
	}
end

local function getItems()
	local items = {
		{
			Name = {
				Actions = SelectorActions,
				FullSpan = true,
				Schema = SelectorSchema,
				Value = "TextLabel",
			},
			Children = {
				{
					Name = {
						Actions = PropertyActions,
						Schema = PropertySchema,
						Value = "BackgroundColor3",
					},
					Value = {
						Schema = ColorSchema,
						Value = Color3.fromRGB(200, 30, 120),
					},
				},
				{
					Name = {
						Actions = PropertyActions,
						Schema = PropertySchema,
						Value = "Font",
					},
					Value = {
						Schema = FontSchema,
						Value = "Gotham",
					},
				},
				{
					Name = {
						Actions = PropertyActions,
						Schema = PropertySchema,
						Value = "AnchorPoint",
					},
					Value = {
						Schema = Vector2Schema,
						Value = Vector2.new(0, 0),
					},
				},
				{
					Name = {
						Actions = PropertyActions,
						Schema = PropertySchema,
						Value = "TextTransparency",
					},
					Value = {
						Schema = TransparencySchema,
						Value = 0.5,
					},
				},
				getEmptyRow(),
			},
		},
		{
			Name = {
				Actions = SelectorActions,
				FullSpan = true,
				Schema = SelectorSchema,
				Value = "Error",
				ErrorMessage = "This is an error",
			},
			Children = {
				getEmptyRow(),
				{
					Name = {
						Actions = SelectorActions,
						FullSpan = true,
						Schema = SelectorSchema,
						Value = "Error",
						ErrorMessage = "This is an error",
					},
					Children = {
						{
							Name = {
								Value = "ImageTransparency",
								Actions = PropertyActions,
								Schema = PropertySchema,
							},
							Value = {
								Value = 0.5,
								Schema = TransparencySchema,
							},
						},
						getEmptyRow(),
					},
				},
				{
					Name = {
						Actions = SelectorActions,
						FullSpan = true,
						Schema = SelectorSchema,
						Value = ":Hover.ImageLabel",
					},
					Children = {
						{
							Name = {
								Actions = PropertyActions,
								Schema = PropertySchema,
								Value = "ImageTransparency",
							},
							Value = {
								Schema = TransparencySchema,
								Value = 0.8,
							},
						},
						getEmptyRow(),
					},
				},
			},
		},
		{
			Name = {
				Actions = SelectorActions,
				FullSpan = true,
				Schema = SelectorSchema,
				Value = "Frame $Dialog",
			},
			Children = {
				{
					Name = {
						Actions = SelectorActions,
						FullSpan = true,
						Schema = SelectorSchema,
						Value = "Frame $Alert",
					},
					Children = {
						{
							Name = {
								Value = "Image",
								Actions = PropertyActions,
								Schema = PropertySchema,
							},
							Value = {
								Value = "rbxassetid://textures/alert",
								Schema = TextSchema,
							},
						},
						getEmptyRow(),
					},
				},
				{
					Name = {
						Actions = SelectorActions,
						FullSpan = true,
						Schema = SelectorSchema,
						Value = ".. Frame $ButtonRow ::UIListLayout",
					},
					Children = {
						{
							Name = {
								Value = "FillDirection",
								Actions = PropertyActions,
								Schema = PropertySchema,
							},
							Value = {
								Value = "",
								Schema = FillDirectionSchema,
							},
						},
						getEmptyRow(),
					},
				},
			},
		},
	}

	return items
end

local Story = Roact.PureComponent:extend("Story")

function Story:init()
	self.state = {
		Columns = COLUMNS,
		Sizes = {
			UDim.new(0.4, 0),
			UDim.new(0.6, 0),
		},
		Expansion = {},
		Hidden = {},
		Selection = {},
		Items = EditTree:updatePaths(getItems()),
	}

	self.GetCellAutocomplete = function(text)
		local allItems = {
			{
				Id = "Text",
				Label = "Text",
				Value = "Text",
			},
			{
				Id = "Color",
				Label = "Color",
				Value = "Color",
			},
			{
				Id = "Frame",
				Label = "Frame",
				Value = "Frame",
			},
			{
				Id = "Image",
				Label = "Image",
				Value = "Image",
			},
		}

		local autocompleteItems = {}
		for _, v in ipairs(allItems) do
			if string.sub(string.lower(v.Id), 1, string.len(text)) == string.lower(text) then
				table.insert(autocompleteItems, v)
			end
		end
		return autocompleteItems
	end

	self.onSizesChange = function(sizes: { UDim })
		self:setState({
			Sizes = sizes,
		})
	end
	self.onAction = function(action: string, path: { number }, columnIndex: number)
		if action == "Edit" then
			local edit = { Schema = join(SelectorSchema, { Editing = true }) }
			self:setState(function(prevState)
				return EditTree:updateCell(prevState, edit, path, columnIndex)
			end)
		elseif action == "Delete" then
			self:setState(function(prevState)
				return EditTree:removeItem(prevState, path)
			end)
		elseif action == "Add" then
			self:setState(function(prevState)
				local row = getNewStyle()
				local item = EditTree:getChild(prevState.Items, path)
				local updatedState = EditTree:insertRow(prevState, path, row, #item.Children + 1)
				local nextState = join(updatedState, EditTree:togglePath(updatedState, path, true))
				nextState.Expansion[row] = true
				return nextState
			end)
		elseif action == "Variable" then
			print("Switch to Variable schema!")
		end
	end
	self.onEdited = function(value, path: { number }, columnIndex: number)
		local item = EditTree:getChild(self.state.Items, path)
		if not item then
			return
		end
		if columnIndex == 1 and value == "" and item.Name.Value ~= "" then
			self:setState(function(prevState)
				return EditTree:removeItem(prevState, path)
			end)
			return
		end
		local edit = {
			Value = value,
		}
		if value == "Error" then
			edit.ErrorMessage = "Error tooltip"
		else
			edit.ErrorMessage = ""
		end

		if columnIndex == 1 then
			if item.Name.FullSpan then
				edit.Schema = join(SelectorSchema, { Editing = false })
			elseif item.Name.Value == "" and value ~= "" then
				edit.Actions = PropertyActions
				edit.Schema = PropertySchema
				self:setState(function(prevState)
					local updatedState = EditTree:updateCell(prevState, {
						Value = 0,
						Schema = TransparencySchema,
					}, path, 2)
					local parentPath = slice(path, 1, -1)
					local parentItem = EditTree:getChild(updatedState.Items, parentPath)
					local firstFullSpanRow = #parentItem.Children + 1
					for i = 1, #parentItem.Children do
						if parentItem.Children[i].Name.FullSpan then
							firstFullSpanRow = i
							break
						end
					end
					return EditTree:insertRow(updatedState, parentPath, getEmptyRow(), firstFullSpanRow)
				end)
			end
		end

		self:setState(function(prevState)
			return EditTree:updateCell(prevState, edit, path, columnIndex)
		end)
	end
	self.onPressed = function(path: { number })
		self:setState(function(prevState)
			return EditTree:togglePath(prevState, path)
		end)
	end
end

function Story:render()
	local state = self.state
	local columns = map(state.Columns, function(column, index: number)
		return join(column, {
			Width = state.Sizes[index],
		})
	end)

	local onColumnSizesChange = self.onSizesChange

	return Roact.createElement(TreeTable, {
		Size = UDim2.new(1, 0, 0, 400),
		FullSpanEmphasis = true,
		Columns = columns,
		ClampSize = true,
		GetCellAutocomplete = self.GetCellAutocomplete,
		OnExpansionChange = function(newExpansion)
			self:setState(function(prevState)
				return {
					Expansion = join(prevState.Expansion, newExpansion),
				}
			end)
		end,
		OnSelectionChange = function(newSelection)
			self:setState(function(prevState)
				return {
					Selection = join(prevState.Selection, newSelection),
				}
			end)
		end,
		OnColumnSizesChange = onColumnSizesChange,
		OnCellAction = self.onAction,
		OnCellEdited = self.onEdited,
		OnCellPressed = self.onPressed,
		Expansion = state.Expansion,
		RootItems = state.Items,
		RowHeight = 32,
		GetChildren = function(item)
			return item.Children or {}
		end,
		GetItemId = function(item)
			return table.concat(item.Path, ",")
		end,
		Scroll = true,
		UseScale = true,
	})
end

return Story
