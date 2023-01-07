local ContactImporter = script.Parent
local dependencies = require(ContactImporter.dependencies)
local RoactNavigation = dependencies.RoactNavigation
local EnumScreens = dependencies.SocialModalsCommon.EnumScreens
local FindFriendsModal = require(ContactImporter.FindFriendsModal)
local ContactsList = require(ContactImporter.ContactsList.Components.ContactsList)
local ContactsRevokedAccessDialog = require(ContactImporter.ContactsList.Components.ContactsRevokedAccessDialog)
local ContactImporterContext = require(ContactImporter.ContactsList.Components.ContactImporterContext)
local DiscoverabilityOverlay = dependencies.DiscoverabilityOverlay

local Roact = dependencies.Roact

local CINavigator = RoactNavigation.createRobloxSwitchNavigator({
	{
		[EnumScreens.FindFriendsModal] = FindFriendsModal,
	},
	{
		[EnumScreens.ContactsList] = ContactsList,
	},
	{
		[EnumScreens.ContactsRevokedAccessDialog] = ContactsRevokedAccessDialog,
	},
	{
		[EnumScreens.DiscoverabilityOverlay] = DiscoverabilityOverlay,
	},
}, {
	defaultNavigationOptions = {
		overlayEnabled = true,
		absorbInput = true,
		overlayTransparency = 1,
	},
	mode = RoactNavigation.StackPresentationStyle.Modal,
})

local CINavigatorWrapped = Roact.PureComponent:extend("CINavigatorWrapped")

function CINavigatorWrapped:render()
	local component = function(props)
		return Roact.createElement(CINavigator, {
			navigation = self.props.navigation,
		})
	end

	return Roact.createElement(ContactImporterContext(component), self.props)
end

CINavigatorWrapped.router = CINavigator.router

return CINavigatorWrapped
