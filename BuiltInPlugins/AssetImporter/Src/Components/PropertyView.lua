local AssetImportService = game:GetService("AssetImportService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local Properties = script.Parent.Properties
local BooleanProperty = require(Properties.BooleanProperty)
local EnumProperty = require(Properties.EnumProperty)
local NumberProperty = require(Properties.NumberProperty)
local StringProperty = require(Properties.StringProperty)
local VectorProperty = require(Properties.VectorProperty)

local SetInstanceMap = require(Plugin.Src.Actions.SetInstanceMap)

local ELEMENT_CLASSES = {
	["boolean"] = BooleanProperty,
	["userdata"] = EnumProperty,
	["number"] = NumberProperty,
	["string"] = StringProperty,
	["vector"] = VectorProperty,
}

local function GetPropertyComponent(instance)
	local constructor = ELEMENT_CLASSES[type(instance)]
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
	self:setState({
		connections = {},
	})

	self.updateInstanceMap = function()
		local instanceMap = AssetImportService:GetCurrentImportMap()
		self.props.SetInstanceMap(instanceMap)
	end
	self.onToggleItem = function()
		self.props.Instance[self.props.PropertyName] = not self.props.Instance[self.props.PropertyName]
		AssetImportService:UpdateSettings(self.props.Instance)

		self.updateInstanceMap()
	end
	self.onSetItem = function(newText)
		self.props.Instance[self.props.PropertyName] = newText
		AssetImportService:UpdateSettings(self.props.Instance)

		self.updateInstanceMap()
	end
	self.onSelectItem = function(itemName)
		self.props.Instance[self.props.PropertyName] = self.props.Instance[self.props.PropertyName].EnumType[itemName]
		AssetImportService:UpdateSettings(self.props.Instance)

		self.updateInstanceMap()
	end
end

function PropertyView:didMount()
	self:_connect()
	if self.props.Dependencies then
		for _, dep in ipairs(self.props.Dependencies) do
			local signal = self.props.Instance:GetPropertyChangedSignal(dep)
			local connection = signal:connect(function()
				self:setState(self.state)
			end)

			table.insert(self.state.connections, connection)
		end
	end
end

function PropertyView:willUnmount()
	for _, connection in ipairs(self.state.connections) do
		connection:Disconnect()
	end
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

	local editable = props.Editable
	local value = props.Instance[props.PropertyName]

	local dependentValues
	if self.props.Dependencies then
		dependentValues = getDependentValues(self.props.Dependencies, props.Instance)
	end

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, 28),
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Spacing = 4,
	}, {
		Label = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Text = localization:getText("Properties", props.PropertyName),
			TextWrapped = false,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 1,
			Size = UDim2.fromScale(0.5, 0),
		}),
		Editor = Roact.createElement(GetPropertyComponent(value), {
			Value = value,
			LayoutOrder = 3,
			OnToggleItem = self.onToggleItem,
			OnSetItem = self.onSetItem,
			OnSelectItem = self.onSelectItem,
			Size = UDim2.new(0.5, 0, 0, 24),
			DependentValues = dependentValues,
			Name = props.PropertyName
		}),
	})
end

PropertyView = withContext({
	Localization = Localization,
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
