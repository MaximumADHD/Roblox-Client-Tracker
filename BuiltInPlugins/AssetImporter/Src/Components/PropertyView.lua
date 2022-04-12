local AssetImportService = game:GetService("AssetImportService")

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

local SetInstanceMap = require(Plugin.Src.Actions.SetInstanceMap)

local FFlagAssetImporterPbrSupport = game:GetFastFlag("AssetImporterPbrSupport")

local ELEMENT_CLASSES = {
	["boolean"] = BooleanProperty,
	["userdata"] = EnumProperty,
	["number"] = NumberProperty,
	["string"] = StringProperty,
	["vector"] = VectorProperty,
	["path"] = if FFlagAssetImporterPbrSupport then PathProperty else StringProperty,
}

local function GetPropertyComponent(instance, valueType)
	local constructor

	if valueType then
		constructor = ELEMENT_CLASSES[valueType]
	else
		constructor = ELEMENT_CLASSES[type(instance)]
	end

	assert(constructor, "Unsupported settings type")

	return constructor
end

local PropertyView = Roact.PureComponent:extend("PropertyView")

function PropertyView:_connect()
	if self.props.Instance then
		local event = self.props.Instance:GetPropertyChangedSignal(self.props.PropertyName)
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
	self.updateInstanceMap = function()
		local instanceMap = AssetImportService:GetCurrentImportMap()
		self.props.SetInstanceMap(instanceMap)
	end
	self.onToggleItem = function()
		self.props.Instance[self.props.PropertyName] = not self.props.Instance[self.props.PropertyName]
		self.updateInstanceMap()
	end
	self.onSetItem = function(newText)
		self.props.Instance[self.props.PropertyName] = newText
	end
	self.onSelectItem = function(itemName)
		self.props.Instance[self.props.PropertyName] = self.props.Instance[self.props.PropertyName].EnumType[itemName]
		self.updateInstanceMap()
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

	local editable = props.Editable
	local instance = props.Instance
	local statusLevel = props.StatusLevel
	local statusMessage = props.StatusMessage
	local value = instance[props.PropertyName]

	local dependentValues
	if self.props.Dependencies then
		dependentValues = getDependentValues(self.props.Dependencies, instance)
	end

	local iconSize = style.PropertyView.IconSize
	local spacing = style.PropertyView.Spacing
	local labelOffset = iconSize + spacing

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
			}) or nil,
		}),
		Label = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Text = localization:getText("Properties", props.PropertyName),
			TextWrapped = false,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 1,
			Size = UDim2.new(0.5, -labelOffset, 0, 0),
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = localization:getText("PropertiesTooltip", props.PropertyName),
			})
		}),
		Editor = Roact.createElement(GetPropertyComponent(value, props.ValueType), {
			DependentValues = dependentValues,
			Editable = editable,
			LayoutOrder = 3,
			Name = props.PropertyName,
			OnSelectItem = self.onSelectItem,
			OnSetItem = self.onSetItem,
			OnToggleItem = self.onToggleItem,
			Size = UDim2.new(0.5, 0, 0, 24),
			Value = value,
			Localization = localization,
		}),
	})
end

PropertyView = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(PropertyView)

local function mapStateToProps(state)
	return {}
end

local function mapDispatchToProps(dispatch)
	return {
		SetInstanceMap = function(instanceMap)
			dispatch(SetInstanceMap(instanceMap))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PropertyView)
