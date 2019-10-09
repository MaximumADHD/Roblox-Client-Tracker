local Roact = require(script.Parent.Parent.Parent.modules.Roact)
local UILibrary = require(script.Parent.Parent.Parent.modules.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local Constants = require(script.Parent.Parent.Constants)

local GroupDeleteButton = require(script.Parent.GroupDeleteButton)
local GroupRenameButton = require(script.Parent.GroupRenameButton)
local GroupSetMembershipButton = require(script.Parent.GroupSetMembershipButton)
local GroupLabel = require(script.Parent.GroupLabel)

local GroupRow = Roact.PureComponent:extend("GroupRow")

function GroupRow.CalculateWidth()
	local width = (Constants.GroupRowHeight * 3) + (Constants.GroupRowHeight * Constants.GroupLabelSize.X.Scale)
	return width
end

function GroupRow:render()
	return withLocalization(function(localized)
		return self:renderConsolidated(localized)
	end)
end

function GroupRow:renderConsolidated(localized)
	local props = self.props

	local groupName = props.Group.Name
	if groupName == "Default" then
		groupName = localized:getText("Groups", "DefaultGroupName")
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, Constants.GroupRowHeight),
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,

		[Roact.Event.MouseEnter] = function(gui, input)
			props.OnRowHovered(gui, props.Group.Name, true)
		end,
		[Roact.Event.MouseLeave] = function(gui, input)
			props.OnRowHovered(gui, props.Group.Name, false)
		end,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}),

		Frame = Roact.createElement("Frame", {
			-- we need this -1 here to correct for borders being
			-- a little silly and drawing outside the defined
			-- boundaries of a ui element
			Size = UDim2.new(3 + Constants.GroupLabelSize.X.Scale, -1, 1, 0),
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 1),
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}),

			DeleteButton = Roact.createElement(GroupDeleteButton, props),
			RenameButton = Roact.createElement(GroupRenameButton, props),
			SetMembershipButton = Roact.createElement(GroupSetMembershipButton, props),
			Label = Roact.createElement(GroupLabel, {
				Group = props.Group,
				Hovered = props.Hovered,
				groupName = groupName,
			}),
		}),

		-- put in this 1-pixel-wide spacer to correct for the
		-- border correction that we did up top
		Spacer = Roact.createElement("Frame", {
			Size = UDim2.new(0, 1, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 5,
		}),
	})
end

return GroupRow