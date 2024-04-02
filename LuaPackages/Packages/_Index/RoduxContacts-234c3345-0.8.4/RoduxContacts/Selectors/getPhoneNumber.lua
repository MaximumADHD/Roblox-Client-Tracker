local ContactTypes = require(script.Parent.Parent.Types.ContactTypes)

return function(contact: ContactTypes.DeviceContact)
	return contact.phoneNumbers[1]
end
