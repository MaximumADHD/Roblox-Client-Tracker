local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Dash = dependencies.Dash
local LocalTypes = require(ContactImporter.Common.LocalTypes)
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue

return function(contactsList, roduxContacts: LocalTypes.RoduxContactsReducer)
	local hasSentRequest = getDeepValue(roduxContacts or {}, "hasSentRequest") or {}

	return Dash.map(contactsList or {}, function(matchedContact)
		return Dash.join(matchedContact, {
			hasSentRequest = hasSentRequest[matchedContact.contactId],
			isMatchedContact = true,
		})
	end)
end
