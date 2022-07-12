local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Button = UI.Button
local HoverArea = UI.HoverArea
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local StyleModifier = Framework.Util.StyleModifier

local Constants = require(script.Parent.Parent.Constants)
local GroupRenameTextBox = require(script.Parent.GroupRenameTextBox)
local GroupButton = require(script.Parent.GroupButton)

local GroupLabel = Roact.PureComponent:extend("GroupLabel")

function GroupLabel:init()
	self.state = {
		pressed = false,
	}
	self.onClick = function()
		self:setState({pressed = false})
		-- hardcoded group "Default" cannot be renamed
		if self.props.Group.UISelected and self.props.Group.Name ~= "Default" then
			self.props.Group.OnRenamed()
		else
			self.props.Group.OnSelected()
		end
	end
	self.onPress = function()
		self:setState({pressed = true})
	end
	self.onMouseEnter = function(gui, input)
		self.props.OnRowHovered(gui, self.props.Group.Name, true)
	end
	self.onMouseLeave = function(gui, input)
		self.props.OnRowHovered(gui, self.props.Group.Name, false)
		self:setState({pressed = false})
	end
end

function GroupLabel:render()
	local props = self.props
	local style = props.Stylizer
	local localization = props.Localization

	local renaming = props.Group.Renaming

	local styleModifier
	if self.state.pressed then
		styleModifier = StyleModifier.Pressed
	elseif props.Group.UISelected and not renaming then
		styleModifier = StyleModifier.Selected
	elseif props.Hovered then
		styleModifier = StyleModifier.Hover
	end

	local groupName = props.Group.Name
	if groupName == "Default" then
		groupName = localization:getText("Groups", "DefaultGroupName")
	end

	return Roact.createElement(Pane, {
		Style = "GroupLabel",
		StyleModifier = styleModifier,
		Size = Constants.GroupLabelFixedSize,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,

		OnClick = self.onClick,
		OnPress = self.onPress,
		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
	}, {
		SetMembershipButton = Roact.createElement(GroupButton, {
			Style = "SetMembership",
			TooltipMessage = localization:getText("Tooltip", "Add"),
			OnClick = props.Group.OnMembershipSet,
			LayoutOrder = 1,
		}),

		GroupRenameTextBox = renaming and Roact.createElement(GroupRenameTextBox, {
			Size = style.GroupLabelStyle.GroupNameLabelSize,
			Group = props.Group,
			LayoutOrder = 2,
		 }),

		Text = not renaming and Roact.createElement(TextLabel, {
			Size = style.GroupLabelStyle.GroupNameLabelSize,
			Style = "GroupLabel",
			LayoutOrder = 3,
			Text = groupName,
			TextWrapped = true,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Right,
			StyleModifier = styleModifier,
		}, {
			HoverArea = Roact.createElement(HoverArea, {
				Cursor = "PointingHand",
			}),
		}),
	})
end

GroupLabel = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(GroupLabel)

return GroupLabel
