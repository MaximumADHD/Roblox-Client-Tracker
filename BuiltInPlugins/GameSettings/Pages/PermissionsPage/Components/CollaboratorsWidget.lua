local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local UI = Framework.UI
local Pane = UI.Pane
local Separator = UI.Separator

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UserCollaboratorItem = require(Page.Components.UserCollaboratorItem)
local GroupCollaboratorItem = require(Page.Components.GroupCollaboratorItem)

local GetUserCollaborators = require(Page.Selectors.GetUserCollaborators)
local GetGroupCollaborators = require(Page.Selectors.GetGroupCollaborators)

local CollaboratorsWidget = Roact.PureComponent:extend("CollaboratorsWidget")
local PermissionsConstants = require(Page.Util.PermissionsConstants)

local PERMISSIONS_ID = "Permissions"

function CollaboratorsWidget:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local writable = props.Writable

	-- "Editable" means the permission can be changed to a different permission
	-- Collaborators that are writeable can be removed even if not editable
	local editable = props.Editable

	local theme = props.Stylizer
	local localization = props.Localization

	local userCollaborators = props.UserCollaborators
	local groupCollaborators = props.GroupCollaborators

	local userChildren = {}
	for i, userId in pairs(userCollaborators) do
		userChildren["Separator" .. i] = Roact.createElement(Separator, {
			LayoutOrder = i * 2 - 1,
		})

		userChildren["User" .. userId] = Roact.createElement(UserCollaboratorItem, {
			LayoutOrder = i * 2,
			Writable = writable,
			Editable = editable,
			Id = userId,
		})
	end

	userChildren.LastSeparator = Roact.createElement(Separator, {
		LayoutOrder = #userCollaborators * 2 + 1,
	})

	local groupLabelSpot = #userCollaborators * 2 + 2

	local groupChildren = {}
	for i, groupId in pairs(groupCollaborators) do
		groupChildren["SeparatorGroup" .. i] = Roact.createElement(Separator, {
			LayoutOrder = groupLabelSpot + (i * 2 - 1),
		})

		groupChildren["Group" .. groupId] = Roact.createElement(GroupCollaboratorItem, {
			LayoutOrder = groupLabelSpot + i * 2,
			Writable = writable,
			Id = groupId,
			isOwner = false,
			CurrentPermission = PermissionsConstants.MultipleKey,
		})
	end

	groupChildren.LastSeparator = Roact.createElement(Separator, {
		LayoutOrder = groupLabelSpot + #groupCollaborators * 2 + 1,
	})

	local widgetChildren = {
		UsersTitle = #userCollaborators > 0 and Roact.createElement(
			"TextLabel",
			Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
				LayoutOrder = 0,

				Text = localization:getText(PERMISSIONS_ID, "UsersCollaboratorType"),
				TextXAlignment = Enum.TextXAlignment.Left,

				Visible = #userCollaborators > 0,
				BackgroundTransparency = 1,
			})
		),

		Users = #userCollaborators > 0 and (Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = 1,
		}, userChildren)),

		GroupsTitle = #groupCollaborators > 0 and Roact.createElement(
			"TextLabel",
			Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
				LayoutOrder = groupLabelSpot,

				Text = localization:getText(PERMISSIONS_ID, "GroupsCollaboratorType"),
				TextXAlignment = Enum.TextXAlignment.Left,

				Visible = #groupCollaborators > 0,
				BackgroundTransparency = 1,
			})
		),

		Groups = #groupCollaborators > 0 and (Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = groupLabelSpot + 1,
		}, groupChildren)),
	}

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = layoutOrder,
		Spacing = UDim.new(0, 32),
	}, widgetChildren)
end

CollaboratorsWidget = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(CollaboratorsWidget)

CollaboratorsWidget = RoactRodux.connect(function(state, props)
	return {
		UserCollaborators = GetUserCollaborators(state),
		GroupCollaborators = GetGroupCollaborators(state),
	}
end)(CollaboratorsWidget)

return CollaboratorsWidget
