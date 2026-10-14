local main = script.Parent.Parent.Parent
local Packages = main.Parent

local Dash = require(Packages.Dash)
local Framework = require(Packages.Framework)
local React = require(Packages.React)

local UI = Framework.UI
local Pane = UI.Pane
local PropertyCell = UI.PropertyCell
local SelectInput = UI.SelectInput
local TextLabel = UI.TextLabel

local LayoutOrderIterator: any = Framework.Util.LayoutOrderIterator
local MaterialPreviewGeometryType = require(main.Enums.MaterialPreviewGeometryType)

local MaterialPreview = require(main.Components.MaterialPreview)
local createMaterialVariants = require(main.TestHelpers.createMaterialVariants)

local function LabeledElement(props)
	return React.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Spacing = 8,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		Label = React.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = 1,
			Text = props.Text,
		}),
		Content = React.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = 2,
		}, props.children),
	})
end

-- Map Enum items to SelectInput items. Result is sorted by EnumItem.Name.
local function createEnumItems(enum)
	local result = Dash.map(enum:GetEnumItems(), function(enumItem)
		return {
			Id = enumItem,
			Label = enumItem.Name,
		}
	end)
	table.sort(result, function(a, b)
		return a.Label < b.Label
	end)
	return result
end

local function createCustomEnumItems(enum)
	local result = Dash.map(enum.allValues(), function(enumItem)
		return {
			Id = enumItem,
			Label = enumItem.rawValue(),
		}
	end)

	table.sort(result, function(a, b)
		return a.Label < b.Label
	end)
	return result
end

local MATERIAL_ITEMS = createEnumItems(Enum.Material)
local MATERIAL_PATTERN_ITEMS = createEnumItems(Enum.MaterialPattern)
local MATERIAL_PREVIEW_GEOMETRY_TYPES = createCustomEnumItems(MaterialPreviewGeometryType)

local MaterialPreviewStory = React.PureComponent:extend("MaterialPreviewStory")

function MaterialPreviewStory:init(props)
	self:setState({
		material = props.Material,
		materialPreviewGeometryType = props.DefaultMaterialPreviewGeometryType or MaterialPreviewGeometryType.Sphere,
	})

	self.materialChanged = function(item)
		self:setState({
			material = item.Id,
		})
	end

	self.onPreviewGeometryTypeChanged = function(item)
		self:setState({
			materialPreviewGeometryType = item.Id,
		})
	end

	self.studsPerTileChanged = function(value)
		local materialVariant = self.props.MaterialVariant
		if materialVariant then
			materialVariant.StudsPerTile = value
		end
	end

	self.materialPatternChanged = function(item)
		local materialVariant = self.props.MaterialVariant
		if materialVariant then
			local pattern = item.Id
			materialVariant.MaterialPattern = pattern
		end
	end

	self.forceUpdate = function()
		self:setState(function(prevState)
			return {
				updateCount = (prevState.updateCount or 0) + 1,
			}
		end)
	end
end

function MaterialPreviewStory:didMount()
	local materialVariant = self.props.MaterialVariant
	if materialVariant then
		self.studsPerTileChangedConnection =
			materialVariant:GetPropertyChangedSignal("StudsPerTile"):Connect(self.forceUpdate)
		self.materialPatternChangedConnection =
			materialVariant:GetPropertyChangedSignal("MaterialPattern"):Connect(self.forceUpdate)
		self.restoreMaterialVariantParent = materialVariant.Parent
	end
end

function MaterialPreviewStory:willUnmount()
	local materialVariant = self.props.MaterialVariant
	if materialVariant then
		if self.studsPerTileChangedConnection then
			self.studsPerTileChangedConnection:Disconnect()
			self.studsPerTileChangedConnection = nil
		end
		if self.materialPatternChangedConnection then
			self.materialPatternChangedConnection:Disconnect()
			self.materialPatternChangedConnection = nil
		end
		materialVariant.Parent = self.restoreMaterialVariantParent
	end
end

function MaterialPreviewStory:render()
	local props = self.props
	local state = self.state

	local materialVariant = props.MaterialVariant
	local material = state.material

	local layoutOrderIterator = LayoutOrderIterator.new()

	local children = {
		Preview = React.createElement(MaterialPreview, {
			DisableZoom = true,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Material = material or materialVariant,
			MaterialPreviewGeometryType = state.materialPreviewGeometryType,
			RecenterCameraOnUpdate = false,
			Size = UDim2.fromOffset(200, 200),
			Style = "CornerBox",
		}),
	}

	if material then
		children.MaterialInput = React.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(0, 200, 1, 0),
			Spacing = 10,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			Materialinput = React.createElement(LabeledElement, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Text = "Material",
			}, {
				Input = React.createElement(SelectInput, {
					Items = MATERIAL_ITEMS,
					OnItemActivated = self.materialChanged,
					SelectedId = material,
					Size = UDim2.fromOffset(200, 30),
				}),
			}),

			GeometryInputType = React.createElement(LabeledElement, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Text = "Preview geometry",
			}, {
				Input = React.createElement(SelectInput, {
					Items = MATERIAL_PREVIEW_GEOMETRY_TYPES,
					OnItemActivated = self.onPreviewGeometryTypeChanged,
					SelectedId = state.materialPreviewGeometryType,
					Size = UDim2.fromOffset(200, 30),
				}),
			}),
		})
	end

	if materialVariant then
		children.MaterialVariantPane = React.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(0, 200, 1, 0),
			Spacing = 10,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			StudsPerTile = React.createElement(LabeledElement, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Text = "Studs Per Tile",
			}, {
				Input = React.createElement(PropertyCell, {
					OnChanged = self.studsPerTileChanged,
					Schema = {
						Type = "Slider",
						Min = 0.1,
						Max = 20,
						SnapIncrement = 0.1,
						ShowInput = true,
					},
					Size = UDim2.fromOffset(200, 30),
					Value = materialVariant.StudsPerTile,
				}),
			}),

			MaterialPattern = React.createElement(LabeledElement, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Text = "Material Pattern",
			}, {
				Input = React.createElement(SelectInput, {
					Items = MATERIAL_PATTERN_ITEMS,
					OnItemActivated = self.materialPatternChanged,
					SelectedId = materialVariant.MaterialPattern,
					Size = UDim2.fromOffset(200, 30),
				}),
			}),

			GeometryInputType = React.createElement(LabeledElement, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Text = "Preview geometry",
			}, {
				Input = React.createElement(SelectInput, {
					Items = MATERIAL_PREVIEW_GEOMETRY_TYPES,
					OnItemActivated = self.onPreviewGeometryTypeChanged,
					SelectedId = state.materialPreviewGeometryType,
					Size = UDim2.fromOffset(200, 30),
				}),
			}),
		})
	end

	return React.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Layout = Enum.FillDirection.Horizontal,
		Spacing = 10,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, children)
end

return {
	stories = {
		{
			name = "Material Variant (ColorMap)",
			story = React.createElement(MaterialPreviewStory, {
				MaterialVariant = createMaterialVariants()[1],
				DefaultMaterialPreviewGeometryType = MaterialPreviewGeometryType.ColorMap,
			}),
		},
		{
			name = "Material (Dominus)",
			story = React.createElement(MaterialPreviewStory, {
				Material = Enum.Material.Granite,
				DefaultMaterialPreviewGeometryType = MaterialPreviewGeometryType.Dominus,
			}),
		},
		{
			name = "Material (Metal)",
			story = React.createElement(MaterialPreviewStory, {
				Material = Enum.Material.Metal,
			}),
		},
		{
			name = "Material (Brick)",
			story = React.createElement(MaterialPreviewStory, {
				Material = Enum.Material.Brick,
			}),
		},
		{
			name = "Material Variant",
			story = React.createElement(MaterialPreviewStory, {
				MaterialVariant = createMaterialVariants()[1],
				DefaultMaterialPreviewGeometryType = MaterialPreviewGeometryType.Sphere,
			}),
		},
		{
			name = "MaterialVariant (Plane)",
			story = React.createElement(MaterialPreviewStory, {
				MaterialVariant = createMaterialVariants()[2],
				DefaultMaterialPreviewGeometryType = MaterialPreviewGeometryType.Plane,
			}),
		},
	},
}
