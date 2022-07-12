local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Framework = require(Plugin.Packages.Framework)
local Stylizer = Framework.Style.Stylizer

local createFitToContent = require(Plugin.Src.Util.CreateFitToContent)

local UserCollaboratorItem = require(Plugin.Src.Components.UserCollaboratorItem)
local GroupCollaboratorItem = require(Plugin.Src.Components.GroupCollaboratorItem)

local GetUserCollaborators = require(Plugin.Src.Selectors.GetUserCollaborators)
local GetGroupCollaborators = require(Plugin.Src.Selectors.GetGroupCollaborators)

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local FitToContentWidget = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	FillDirection = Enum.FillDirection.Vertical,
	Padding = UDim.new(0, 0),
	HorizontalAlignment = Enum.HorizontalAlignment.Center
})

local CollaboratorsWidget = Roact.PureComponent:extend("CollaboratorsWidget")
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

function CollaboratorsWidget:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local writable = props.Writable

	local newUserCollaborators = props.NewUserCollaborators
	local currentUserCollaborators = props.CurrentUserCollaborators
	
	local newGroupCollaborators = props.NewGroupCollaborators
	local currentGroupCollaborators = props.CurrentGroupCollaborators
	
	local ownerId = props.OwnerId
	local ownerType = props.OwnerType

	local userChildren = {}

	local isUserOwned = if ownerType == Enum.CreatorType.User then true else false

	local ownerCollaboratorItemType = if isUserOwned then UserCollaboratorItem else GroupCollaboratorItem
	
	local layoutOrderIterator = LayoutOrderIterator.new()

	local owner = Roact.createElement(ownerCollaboratorItemType, {
		Id = ownerId,
		Writable = writable,
		LayoutOrder = layoutOrderIterator:getNextOrder(),
		HideSeparator = false
	})

	table.insert(userChildren, owner)

	for _, userId in pairs(newUserCollaborators) do
		local user = Roact.createElement(UserCollaboratorItem, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Writable = writable,
			Id = userId,
			HideSeparator = false
		})

		table.insert(userChildren, user)
	end
	
	for _, groupId in pairs(newGroupCollaborators) do
		local group = Roact.createElement(GroupCollaboratorItem, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Writable = writable,
			Id = groupId,
			CurrentPermission = PermissionsConstants.MultipleKey,
			HideSeparator = false,
		})

		table.insert(userChildren, group)
	end
	
	for _, userId in pairs(currentUserCollaborators) do
		local user = Roact.createElement(UserCollaboratorItem, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Writable = writable,
			Id = userId,
			HideSeparator = false
		})

		table.insert(userChildren, user)
	end

	for _, groupId in pairs(currentGroupCollaborators) do
		local group = Roact.createElement(GroupCollaboratorItem, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Writable = writable,
			Id = groupId,
			CurrentPermission = PermissionsConstants.MultipleKey,
			HideSeparator = false
		})

		table.insert(userChildren, group)
	end
	
	userChildren[#userChildren].props["HideSeparator"] = true

	return Roact.createElement(FitToContentWidget, {
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
	}, { userChildren })
end

CollaboratorsWidget = withContext({
	Stylizer = Stylizer,
	Localization = ContextServices.Localization,
})(CollaboratorsWidget)

CollaboratorsWidget = RoactRodux.connect(
	function(state, props)
		local newUserCollaborators, currentUserCollaborators = GetUserCollaborators(state)
		local newGroupCollaborators, currentGroupCollaborators = GetGroupCollaborators(state)
		
		return {
			NewUserCollaborators = newUserCollaborators,
			CurrentUserCollaborators = currentUserCollaborators,
			NewGroupCollaborators = newGroupCollaborators,
			CurrentGroupCollaborators = currentGroupCollaborators,
			OwnerId = state.GameOwnerMetadata.creatorId,
			OwnerType = state.GameOwnerMetadata.creatorType
		}
	end
)(CollaboratorsWidget)

return CollaboratorsWidget
