local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local ToggleButton = UI.ToggleButton
local Separator = UI.Separator
local TextInput = UI.TextInput
local SelectInput = UI.SelectInput

local Properties = script.Parent.Properties
local BooleanProperty = require(Properties.BooleanProperty)
local EnumProperty = require(Properties.EnumProperty)
local NumberProperty = require(Properties.NumberProperty)
local StringProperty = require(Properties.StringProperty)
local VectorProperty = require(Properties.VectorProperty)

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
	self.onToggleItem = function()
		self.props.Instance[self.props.PropertyName] = not self.props.Instance[self.props.PropertyName]
	end
	self.onSetItem = function(newText)
		self.props.Instance[self.props.PropertyName] = newText
	end
	self.onSelectItem = function(itemName)
		self.props.Instance[self.props.PropertyName] = self.props.Instance[self.props.PropertyName].EnumType[itemName]
	end
end

function PropertyView:didMount()
	self:_connect()
end

function PropertyView:willUnmount()
	self:_disconnect()
end

function PropertyView:didUpdate(prevProps, nextState)
	if prevProps.Instance ~= self.props.Instance then
		self:_disconnect()
		self:_connect()
	end
end

function PropertyView:render()
	local props = self.props

	local editable = props.Editable
	local value = props.Instance[props.PropertyName]

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, 28),
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Spacing = 4,
	}, {
		Label = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Text = props.PropertyName,
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
		}),
	})
end

return PropertyView
