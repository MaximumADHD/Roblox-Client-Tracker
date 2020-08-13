--[[
	A dropdown element that allows the user to switch between views

	Required Props:
		function setCurrentView: Callback for parent to execute changing the view
		string FirstItem: the item which should be selected at on load

	Style Values:
		table Layout: consistent values for either horizontal or vertical UIListLayout
		table Sizes: consistent sizes across the plugin
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local Actions = Plugin.Src.Actions
local SetView = require(Actions.SetView)
local ChangeCurrentEventName = require(Actions.ChangeCurrentEventName)

local Constants = require(Plugin.Src.Util.Constants)
local VIEW_ID = Constants.VIEW_ID

local UI = require(Plugin.Packages.Framework.UI)
local SelectInput = UI.SelectInput

local Dropdown = Roact.PureComponent:extend("Dropdown")

function Dropdown:init()
	self.selectItem = function (item)
		self.props.SetView(item)
		self.props.ChangeCurrentEventName(item)
	end

	self.toggle = function ()
		self:setState({
			isOpen = not self.state.isOpen
		})
	end

	local createArrayFromHash = function(hash)
		local array = {}

		for _, item in pairs(VIEW_ID) do
			table.insert(array, tostring(item))
		end

		return array
	end

	self.Items = createArrayFromHash(VIEW_ID)
end

function Dropdown:render()
	return Roact.createElement(SelectInput, {
		OnItemActivated = self.selectItem,
		PlaceholderText = self.props.ActiveView,
		Items = self.Items,
	})
end

ContextServices.mapToProps(Dropdown, {
	Theme = ContextServices.Theme,
})

return RoactRodux.connect(
	function(state, props)
		return {
			ActiveView = state.Status.ActiveView,
		}
	end,
	function(dispatch)
		return {
			SetView = function (item)
				dispatch(SetView(item))
			end,
			ChangeCurrentEventName = function (item)
				dispatch(ChangeCurrentEventName(item))
			end
		}
	end
)(Dropdown)