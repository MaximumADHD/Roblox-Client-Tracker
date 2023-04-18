local ContactImporter = script.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local ContactsListContainerV2 = require(script.ContactsListContainerV2)

local OffPlatformFriendRequestsIXP = require(ContactImporter.Flags.OffPlatformFriendRequestsIXP)
local Dash = dependencies.Dash
local Roact = dependencies.Roact

export type Props = ContactsListContainerV2.Props

function ContactsList(props)
	local variant = OffPlatformFriendRequestsIXP.useOffPlatformFriendRequestsVariant()

	if
		variant == OffPlatformFriendRequestsIXP.IXPVariants.BLENDED
		or variant == OffPlatformFriendRequestsIXP.IXPVariants.INVITES_ONLY
	then
		return Roact.createElement(ContactsListContainerV2, Dash.join({ variant = variant }, props or {}))
	end
	return nil :: any
end

return ContactsList
