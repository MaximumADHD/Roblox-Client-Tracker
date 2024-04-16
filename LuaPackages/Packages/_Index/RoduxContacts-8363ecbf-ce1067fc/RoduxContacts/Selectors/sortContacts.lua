local RoduxContacts = script.Parent.Parent
local getDeepValue = require(RoduxContacts.getDeepValue)

return function(options)
	local keyPath: string = options.keyPath
	return function(state)
		local byContactId = getDeepValue(state, keyPath .. ".byContactId") or {}
		local sortedContacts = {}
		for contactId, contact in pairs(byContactId) do
			table.insert(sortedContacts, {
				contactId = contactId,
				contactName = contact.contactName,
				headshotThumbnailUrl = contact.headshotThumbnailUrl,
				avatarThumbnailUrl = contact.avatarThumbnailUrl,
			})
		end

		table.sort(sortedContacts, function(a, b)
			if (a.contactName and b.contactName) and (a.contactName ~= b.contactName) then
				return a.contactName < b.contactName
			end
			return a.contactId < b.contactId
		end)

		return sortedContacts
	end
end
