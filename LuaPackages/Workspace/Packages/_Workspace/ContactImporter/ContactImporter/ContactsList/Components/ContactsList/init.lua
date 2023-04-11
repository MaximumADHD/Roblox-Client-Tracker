local ContactImporter = script.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local useSelector = dependencies.useSelector
local ContactsListContainerV2 = require(script.ContactsListContainerV2)

local OffPlatformFriendRequestsIXP = require(ContactImporter.Flags.OffPlatformFriendRequestsIXP)
local Dash = dependencies.Dash
local getFStringFriendInviteVariantForSoothsayers =
	require(ContactImporter.Flags.getFStringFriendInviteVariantForSoothsayers)
local Roact = dependencies.Roact

export type Props = ContactsListContainerV2.Props

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
	return nil :: any
end

return ContactsList
