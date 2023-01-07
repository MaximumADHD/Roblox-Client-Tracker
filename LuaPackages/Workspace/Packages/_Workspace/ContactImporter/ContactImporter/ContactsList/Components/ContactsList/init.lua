local ContactImporter = script.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local useSelector = dependencies.useSelector
local ContactsListContainer = require(script.ContactsListContainer)
local ContactsListContainerV2 = require(script.ContactsListContainerV2)

local getFFlagFriendInvitesEnabledForSoothsayers =
	require(ContactImporter.Flags.getFFlagFriendInvitesEnabledForSoothsayers)
local OffPlatformFriendRequestsIXP = require(ContactImporter.Flags.OffPlatformFriendRequestsIXP)
local Dash = dependencies.Dash
local getFStringFriendInviteVariantForSoothsayers =
	require(ContactImporter.Flags.getFStringFriendInviteVariantForSoothsayers)
local Roact = dependencies.Roact
local getFFlagContactImporterCatchErrorWithGetUserSettings =
	require(ContactImporter.Flags.getFFlagContactImporterCatchErrorWithGetUserSettings)

--* We can't flag the props here, so wil need to do or until one is released.
export type Props = ContactsListContainerV2.Props | ContactsListContainer.Props

if getFFlagFriendInvitesEnabledForSoothsayers() then
	function ContactsList(props)
		local isSoothsayer = useSelector(function(state)
			return state.IsLocalUserSoothsayer
		end)

		local variant = OffPlatformFriendRequestsIXP.useOffPlatformFriendRequestsVariant()

		if
			isSoothsayer
			or variant == OffPlatformFriendRequestsIXP.IXPVariants.BLENDED
			or variant == OffPlatformFriendRequestsIXP.IXPVariants.INVITES_ONLY
		then
			return Roact.createElement(
				ContactsListContainerV2,
				Dash.join(
					{ variant = if isSoothsayer then getFStringFriendInviteVariantForSoothsayers() else variant },
					props or {}
				)
			)
		end

		if getFFlagContactImporterCatchErrorWithGetUserSettings() then
			return nil :: any
		end

		return Roact.createElement(ContactsListContainer, props)
	end

	return ContactsList
else
	export type Props = ContactsListContainer.Props
	return ContactsListContainer
end
