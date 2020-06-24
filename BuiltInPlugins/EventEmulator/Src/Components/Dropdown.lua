-- TODO: DevFramework
-- sworzalla 5/12/20
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

local Constants = require(Plugin.Src.Util.Constants)
local VIEW_ID = Constants.VIEW_ID
local VIEW_ORDER = Constants.VIEW_ORDER
local INPUT_PANE_LAYOUT = Constants.INPUT_PANE_LAYOUT

local Dropdown = Roact.PureComponent:extend("Dropdown")

function Dropdown:init()
	local props = self.props
	self.state = {
		isOpen = false,
	}

	self.selectItem = function (item)
		self.props.SetView(item)
	end

	self.toggle = function ()
		self:setState({
			isOpen = not self.state.isOpen
		})
	end

	self.createChildren = function ()
		local theme = props.Theme
		local layout = theme:get("Layout")
		local sizes = theme:get("Sizes")

		local children = {
			LayoutOrder = Roact.createElement("UIListLayout", layout.Vertical),
		}

		for _, item in pairs(VIEW_ID) do
			children[item] = Roact.createElement("TextButton", {
				Text = item,
				LayoutOrder = VIEW_ORDER[item],
				Size = UDim2.new(1, 0, 0, sizes.ShortHeight),
				[Roact.Event.Activated] = function ()
					self.selectItem(item)
					self.toggle()
				end,
			})
		end

		return Roact.createFragment(children)
	end
end

function Dropdown:render()
	local state = self.state
	local isOpen = state.isOpen

	local props = self.props
	local selected = props.ActiveView

	local theme = props.Theme
	local sizes = theme:get("Sizes")

	return Roact.createElement("TextButton", {
		LayoutOrder = INPUT_PANE_LAYOUT.Navigation,
		Size = UDim2.new(1, 0, 0, sizes.ShortHeight),
		Text = selected,
		[Roact.Event.Activated] = self.toggle,
	}, {
		Container = Roact.createElement("Frame", {
			ZIndex = 5,
			Size = UDim2.new(0, sizes.DropdownWidth, 1, 0),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, sizes.ShortHeight),
			Visible = isOpen,
		}, self.createChildren())
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
			SetView = function (pair)
				dispatch(SetView(pair))
			end
		}
	end
)(Dropdown)