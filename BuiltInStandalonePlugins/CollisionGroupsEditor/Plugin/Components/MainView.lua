local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame

local Constants = require(script.Parent.Parent.Constants)
local ControlsHeaderRow = require(script.Parent.ControlsHeaderRow)
local GroupCollisionMatrix = require(script.Parent.GroupCollisionMatrix)
local GroupLabelColumn = require(script.Parent.GroupLabelColumn)
local GroupListView = require(script.Parent.GroupListView)
local ListHeader = require(script.Parent.ListHeader)
local TableHeader = require(script.Parent.TableHeader)

local MainView = Roact.Component:extend("MainView")

-- a hover is an object which holds a key and remembers which gui
-- is being hovered. because hover starts and hover ends are not
-- guaranteed to be in any specific order, "unhovering" should only
-- be done if the unhovering object is the object that created
-- the hover in the first place. this object assists that approach
function hover(key, gui)
	return {
		Key = key,
		Gui = gui,
	}
end

function MainView:init()
	self.rowHover = hover("", nil)
	self.colHover = hover("", nil)

	function self.rowHoverForced(groupName)
		self:setState({RowHovered = groupName})
	end

	function self.onRowHovered(gui, groupName, hoverStarted)
		if hoverStarted then
			self:setState({RowHovered = groupName})
		else
			if self.rowHover.Gui == gui then
				self:setState({RowHovered = ""})
			end
		end
	end

	function self.onColHovered(gui, groupName, hoverStarted)
		if hoverStarted then
			self:setState({ColHovered = groupName})
		else
			if self.colHover.Gui == gui then
				self:setState({ColHovered = ""})
			end
		end
	end

	function self.onScrolled(newScrollPosition)
		self:setState({
			ScrollPositionX = newScrollPosition.X,
			ScrollPositionY = newScrollPosition.Y
		})
	end

	function self.onViewModeToggled()
		self:setState(function(state)
			return {
				ToggleListView = not state.ToggleListView
			}
		end)
	end

	self.state = {
		ScrollPositionX = 0,
		ScrollPositionY = 0,
		RowHovered = "",
		ColHovered = "",
		ToggleListView = true,
	}
end

function MainView:render()
	local props = self.props
	local style = props.Stylizer.MainView

	local children = {
		ControlsHeaderRow = Roact.createElement(ControlsHeaderRow, {
			OnGroupAdded = props.OnGroupAdded,
			OnGroupDeleted = props.OnGroupDeleted,
			OnGroupRenamed = props.OnGroupRenamed,
			UISelectedId = props.UISelectedId,
			OnViewModeToggled = self.onViewModeToggled,
			ToggleListView = self.state.ToggleListView,
			LayoutOrder = 1,
			Groups = props.Groups,
			Window = props.Window,
		}),

		Header = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, Constants.GroupRowHeight),
			LayoutOrder = 2,
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {
			TableHeader = Roact.createElement(TableHeader, {
				LayoutOrder = if self.state.ToggleListView then 2 else 1,
				Groups = props.Groups,
				ColHovered = self.state.ColHovered,
				OnColHovered = self.onColHovered,
				ScrollPositionX = self.state.ScrollPositionX,
			}),
			ListHeader = Roact.createElement(ListHeader, {
				LayoutOrder = if self.state.ToggleListView then 1 else 2,
				SelectedGroupName = if GroupListView.getSelectedGroup(props.Groups)  ~= "" then
					GroupListView.getSelectedGroup(props.Groups).Name else
					"",
				GroupCount = #props.Groups,
			}),
		}),

		Middle = Roact.createElement(Pane, {
			Size = style.MiddlePaneSize,
			LayoutOrder = 3,
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			GroupLabelColumn =  Roact.createElement(GroupLabelColumn, {
				LayoutOrder = 1,
				Groups = props.Groups,
				Window = props.Window,
				RowHovered = self.state.RowHovered,
				OnRowHovered = self.onRowHovered,
				ScrollPositionY = self.state.ScrollPositionY,
				ToggleListView = self.state.ToggleListView,
			}),

			GridFrame = Roact.createElement(ScrollingFrame, {
				Size = style.GridFrameSize,
				AutomaticCanvasSize = Enum.AutomaticSize.XY,
				ScrollingDirection = Enum.ScrollingDirection.XY,
				LayoutOrder = if self.state.ToggleListView then 3 else 2,
				OnScrollUpdate = self.onScrolled,
				Layout = Enum.FillDirection.Horizontal,
				Padding = 0,
			}, {
				GroupCollisionMatrix = not self.state.ToggleListView and Roact.createElement(GroupCollisionMatrix, {
					Groups = props.Groups,
					RowHovered = self.state.RowHovered,
					OnColHovered = self.onColHovered,
					OnRowHovered = self.rowHoverForced,
				}),
			}),
			ListFrame = self.state.ToggleListView and Roact.createElement(ScrollingFrame, {
				Size = style.ListFrameSize,
				AutomaticCanvasSize = Enum.AutomaticSize.XY,
				LayoutOrder = if self.state.ToggleListView then 2 else 3,
				Layout = Enum.FillDirection.Horizontal,
				ScrollingDirection = Enum.ScrollingDirection.Y,
			}, {
				GroupListView = Roact.createElement(GroupListView, {
					Groups = props.Groups,
					UISelectedId = props.UISelectedId,
					RowHovered = self.state.RowHovered,
					OnColHovered = self.onColHovered,
					OnRowHovered = self.onRowHovered,
				}),
			}),
		}),
	}

	return Roact.createElement(Pane, {
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, children)
end

MainView = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(MainView)

return MainView
