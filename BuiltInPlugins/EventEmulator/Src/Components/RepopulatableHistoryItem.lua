local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration
local Button = UI.Button
local TextInput = UI.TextInput

local Actions = Plugin.Src.Actions
local RemoveHistoryItem = require(Actions.RemoveHistoryItem)
local SetMemStoragePair = require(Actions.SetMemStoragePair)
local SetRBXParameters = require(Actions.SetRBXParameters)
local SetView = require(Actions.SetView)

local Constants = require(Plugin.Src.Util.Constants)
local VIEW_ID = Constants.VIEW_ID

local RepopulatableHistoryItem = Roact.PureComponent:extend("RepopulatableHistoryItem")

function RepopulatableHistoryItem:init()
	self.repopulateHistoryItem = function ()
		local props = self.props
		local currentView = props.CurrentView
		local eventView = props.View
		local data = props.Data

		if currentView ~= eventView then
			self.props.SetView(eventView)
		end

		if eventView == VIEW_ID.RBXEvent then
			self.props.SetRBXParameters(data)
		end
		if eventView == VIEW_ID.MemStorage then
			self.props.SetMemStoragePair(data)
		end
	end

	self.deleteHistoryItem = function ()
		self.props.RemoveHistoryItem(self.props.Name)
	end
end

function RepopulatableHistoryItem:render()

	local props = self.props
	local name = props.Name
	local view = props.View

	local theme = props.Theme
	local sizes = theme:get("Sizes")
	local layout = theme:get("Layout")
	local textStyle = theme:get("Text")

	return Roact.createElement(Container, {
		Background = Decoration.Box,
		Size = UDim2.new(1, 0, 0, sizes.HistoryButtonMinor),
	}, {
		Layout = Roact.createElement("UIListLayout", layout.HistoryItem),
		View = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, sizes.HistoryButtonMajor, 0, sizes.HistoryButtonMinor),
			Text = view,
			LayoutOrder = 2,
			TextColor3 = textStyle.BrightText.Color,
			BackgroundTransparency = 1,
			TextSize = 18,
			Font = Enum.Font.SourceSans,

		}),
		Name = Roact.createElement(Button, {
			Size = UDim2.new(0, sizes.HistoryButtonMajor, 0, sizes.HistoryButtonMinor),
			Text = name,
			LayoutOrder = 3,
			OnClick = self.repopulateHistoryItem,
		}),
		DeleteButton = Roact.createElement(Button, {
			Size = UDim2.new(0, sizes.HistoryButtonMinor, 0, sizes.HistoryButtonMinor),
			Text = " 🗑",
			LayoutOrder = 4,
			OnClick = self.deleteHistoryItem,
		})
	})
end

ContextServices.mapToProps(RepopulatableHistoryItem,{
	Theme = ContextServices.Theme,
})

return RoactRodux.connect(
	function(state, props)
		return {
			CurrentView = state.Status.CurrentView,
		}
	end,
	function(dispatch)
		return {
			RemoveHistoryItem = function (item)
				dispatch(RemoveHistoryItem(item))
			end,
			SetMemStoragePair = function (item)
				dispatch(SetMemStoragePair(item))
			end,
			SetRBXParameters = function (item)
				dispatch(SetRBXParameters(item))
			end,
			SetView = function (item)
				dispatch(SetView(item))
			end,
		}
	end
)(RepopulatableHistoryItem)