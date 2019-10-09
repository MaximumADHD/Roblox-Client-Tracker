local Roact = require(script.Parent.Parent.Parent.modules.Roact)

local HeaderRow = require(script.Parent.HeaderRow)
local AddGroup = require(script.Parent.AddGroup)
local GroupLabelColumn = require(script.Parent.GroupLabelColumn)
local GroupCollisionMatrix = require(script.Parent.GroupCollisionMatrix)
local Constants = require(script.Parent.Parent.Constants)

local Table = Roact.Component:extend("Table")

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

function Table:init()
	self.RowHover = hover("", nil)
	self.ColHover = hover("", nil)

	function self.OnRowHovered(gui, groupName, hoverStarted)
		if hoverStarted then
			self:setState{RowHovered = groupName}
		else
			if self.RowHover.Gui == gui then
				self:setState{RowHovered = ""}
			end
		end
	end

	function self.OnColHovered(gui, groupName, hoverStarted)
		if hoverStarted then
			self:setState{ColHovered = groupName}
		else
			if self.ColHover.Gui == gui then
				self:setState{ColHovered = ""}
			end
		end
	end

	function self.OnScrolled(newScrollPosition)
		self:setState{
			ScrollPosition = newScrollPosition,
		}
	end

	self.state = {
		ScrollPosition = Vector2.new(),
		RowHovered = "",
		ColHovered = "",
	}
end

function Table:render()
	local props = self.props

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		HeaderRow = Roact.createElement(HeaderRow, {
			Groups = props.Groups,

			ColHovered = self.state.ColHovered,
			OnColHovered = self.OnColHovered,

			ScrollPosition = self.state.ScrollPosition,
		}),

		Middle = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, -Constants.GroupRowHeight * 2),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			LayoutContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				GroupLabelColumn = Roact.createElement(GroupLabelColumn, {
					Groups = props.Groups,
					Window = props.Window,
					RowHovered = self.state.RowHovered,
					OnRowHovered = self.OnRowHovered,
					ScrollPosition = self.state.ScrollPosition,
				}),
				GroupCollisionMatrix = Roact.createElement(GroupCollisionMatrix, {
					Groups = props.Groups,
					RowHovered = self.state.RowHovered,
					OnColHovered = self.OnColHovered,
					OnRowHovered = self.OnRowHovered,
					OnScrolled = self.OnScrolled,
				}),
			}),
		}),

		AddGroup = Roact.createElement(AddGroup, {
			OnGroupAdded = props.OnGroupAdded,
			LayoutOrder = #props.Groups + 2,
			Groups = props.Groups,
		}),
	}

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, children)
end

return Table