local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = ContextServices.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local Tooltip = UI.Tooltip

local PropertyStatus = require(Plugin.Src.Components.PropertyStatus)

local Properties = script.Parent.Properties
local BooleanProperty = require(Properties.BooleanProperty)
local EnumProperty = require(Properties.EnumProperty)
local NumberProperty = require(Properties.NumberProperty)
local StringProperty = require(Properties.StringProperty)
local PathProperty = require(Properties.PathProperty)
local VectorProperty = require(Properties.VectorProperty)

local getFFlagAssetImportUsePropertyFactories = require(Plugin.Src.Flags.getFFlagAssetImportUsePropertyFactories)
local getFFlagAssetImportUpdatePropertySpacing = require(Plugin.Src.Flags.getFFlagAssetImportUpdatePropertySpacing)

local UpdatePreviewInstance = require(Plugin.Src.Thunks.UpdatePreviewInstance)


local ELEMENT_CLASSES = {
	["boolean"] = BooleanProperty,
	["userdata"] = EnumProperty,
	["number"] = NumberProperty,
	["string"] = StringProperty,
	["vector"] = VectorProperty,
}

if not getFFlagAssetImportUsePropertyFactories() then
	ELEMENT_CLASSES["path"] = PathProperty
end

local function GetPropertyComponent(instance, valueType)
	local constructor

	if valueType then
		-- Remove valueType with getFFlagAssetImportUsePropertyFactories
		constructor = ELEMENT_CLASSES[valueType]
	else
		constructor = ELEMENT_CLASSES[type(instance)]
	end

	assert(constructor, "Unsupported settings type")

	return constructor
end

local PropertyView = Roact.PureComponent:extend("PropertyView")

function PropertyView:_connect()
	local linkedProp = nil

	if getFFlagAssetImportUsePropertyFactories() then
		local propertyMetadata = self.props.PropertyMetadata

		if propertyMetadata.LinkedProp then
			linkedProp = propertyMetadata.LinkedProp
		else
			linkedProp = propertyMetadata.Name
		end
	else
		linkedProp = self.props.PropertyName
	end

	if self.props.Instance then
		local event = self.props.Instance:GetPropertyChangedSignal(linkedProp)
		self._changedConnection = event:Connect(function()
			-- Update the render
			self:setState({})
		end)
	end
end

function PropertyView:_disconnect()
	if self._changedConnection then
		self._changedConnection:Disconnect()
		self._changedConnection = nil
	end
end

function PropertyView:init()
	
	local function updatePreviewInstance()
		self.props.UpdatePreviewInstance(self.props.AssetImportSession:GetInstance(self.props.Instance.Id))
	end
	self.onToggleItem = function()
		if getFFlagAssetImportUsePropertyFactories() then
			local propertyMetadata = self.props.PropertyMetadata
			self.props.Instance[propertyMetadata.Name] = not self.props.Instance[propertyMetadata.Name]
		else
			self.props.Instance[self.props.PropertyName] = not self.props.Instance[self.props.PropertyName]
		end

		updatePreviewInstance()
	end
	self.onSetItem = function(newText)
		if getFFlagAssetImportUsePropertyFactories() then
			local propertyMetadata = self.props.PropertyMetadata
			self.props.Instance[propertyMetadata.Name] = newText
		else
			self.props.Instance[self.props.PropertyName] = newText
		end
	end
	self.onSelectItem = function(itemName)
		if getFFlagAssetImportUsePropertyFactories() then
			local propertyMetadata = self.props.PropertyMetadata
			self.props.Instance[propertyMetadata.Name] = self.props.Instance[propertyMetadata.Name].EnumType[itemName]
		else
			self.props.Instance[self.props.PropertyName] = self.props.Instance[self.props.PropertyName].EnumType[itemName]
		end

		updatePreviewInstance()
	end
end

function PropertyView:didMount()
	self:_connect()
end

function PropertyView:willUnmount()
	self.state.connections = nil
	self:_disconnect()
end

function PropertyView:didUpdate(prevProps, nextState)
	if prevProps.Instance ~= self.props.Instance then
		self:_disconnect()
		self:_connect()
	end
end

local function getDependentValues(dependencies, settingsInstance)
	local dependentValues = {}
	for _, dep in ipairs(dependencies) do
		dependentValues[dep] = settingsInstance[dep]
	end
	return dependentValues
end

function PropertyView:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	local propertyMetadata = props.PropertyMetadata

	local instance = props.Instance
	local statusLevel = props.StatusLevel
	local statusMessage = props.StatusMessage
	local statusContext = props.StatusContext
	local editable = nil
	local propertyName = nil
	local allowPickFile = nil
	if getFFlagAssetImportUsePropertyFactories() then
		editable = propertyMetadata.Editable
		propertyName = propertyMetadata.Name
		allowPickFile = propertyMetadata.AllowPickFile
	else
		editable = props.Editable
		propertyName = props.PropertyName
		allowPickFile = props.AllowPickFile
	end
	local value = instance[propertyName]

	local dependentValues
	if getFFlagAssetImportUsePropertyFactories() then
		if propertyMetadata.Dependencies then
			dependentValues = getDependentValues(propertyMetadata.Dependencies, instance)
		end
	else
		if self.props.Dependencies then
			dependentValues = getDependentValues(self.props.Dependencies, instance)
		end
	end

	local editorComponent = nil
	if getFFlagAssetImportUsePropertyFactories() then
		if propertyMetadata.ComponentFactory then
			editorComponent = propertyMetadata.ComponentFactory
		else
			editorComponent = GetPropertyComponent(value)
		end
	else
		editorComponent = GetPropertyComponent(value, props.ValueType)
	end

	local iconSize = style.PropertyView.IconSize
	local spacing = style.PropertyView.Spacing
	local scrollBarOffset = 0
	local labelOffset = iconSize + spacing

	if getFFlagAssetImportUpdatePropertySpacing() then
		scrollBarOffset = style.PropertyView.ScrollBarOffset
	end

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, 28),
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
	}, {
		StatusArea = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 2,
			Size = UDim2.new(0, labelOffset, 1, 0),
		}, {
			Icon = statusLevel and Roact.createElement(PropertyStatus, {
				StatusLevel = statusLevel,
				StatusMessage = statusMessage,
				StatusContext = statusContext,
			}) or nil,
		}),
		Label = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Text = localization:getText("Properties", propertyName),
			TextWrapped = false,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 1,
			Size = UDim2.new(0.5, -labelOffset, 0, 0),
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = localization:getText("PropertiesTooltip", propertyName),
			})
		}),
		Editor = Roact.createElement(editorComponent, {
			DependentValues = dependentValues,
			Editable = editable,
			LayoutOrder = 3,
			Name = propertyName,
			OnSelectItem = self.onSelectItem,
			OnSetItem = self.onSetItem,
			OnToggleItem = self.onToggleItem,
			Size = UDim2.new(0.5, -scrollBarOffset, 0, 24),
			Value = value,
			Localization = localization,
			PropertyMetadata = propertyMetadata,
			AllowPickFile = allowPickFile,
			Instance = instance
		}),
	})
end

PropertyView = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(PropertyView)

local function mapStateToProps(state)
	return {
		AssetImportSession = state.assetImportSession,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		UpdatePreviewInstance = function(previewInstance)
			dispatch(UpdatePreviewInstance(previewInstance))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PropertyView)
