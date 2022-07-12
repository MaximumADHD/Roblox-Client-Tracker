local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Checkbox = UI.Checkbox
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local Constants = require(script.Parent.Parent.Constants)

local GroupListView = Roact.Component:extend("GroupListView")

function GroupListView.getSelectedGroup(Groups)
	local selectedGroup = ""
	for index, group in ipairs(Groups) do
		if group.UISelected then
			selectedGroup = group
			break
		end
	end
	return selectedGroup
end

function GroupListView:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer.GroupListView

	local children = {}
	local selectedGroup = GroupListView.getSelectedGroup(props.Groups)

	if selectedGroup == "" then
		return  Roact.createElement(Pane, {
			Padding = style.UnselectedViewPadding,
		} , {
			TextLabel = Roact.createElement(TextLabel, {
				Size = UDim2.fromScale(1, 1),
				Text = localization:getText("Info", "SelectAGroup"),
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		})
	end

	for index, group in ipairs(props.Groups) do
		local key = group.Name
		local text = group.Name

		if text == "Default" then
			text = localization:getText("Groups", "DefaultGroupName")
		end

		children[key] = Roact.createElement(Pane, {
			LayoutOrder = index,
			Size = UDim2.new(1, 0, 0, Constants.GroupListRowHeight),
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		} , {
			Button = Roact.createElement(Checkbox, {
				Checked = selectedGroup.GetCollidesWith(group),
				Text = text,
				OnClick = function(gui)
					selectedGroup.ToggleCollidesWith(group)
				end,
			}),
		})
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		Padding = style.MainPanePadding,
	}, {
		ListPane = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			Layout = Enum.FillDirection.Vertical,
		}, children),
	})
end

GroupListView = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(GroupListView)

return GroupListView
