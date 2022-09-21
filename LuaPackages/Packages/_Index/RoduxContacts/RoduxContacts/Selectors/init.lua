return function(options)
	return {
		sortContacts = require(script.sortContacts)(options),
		getPhoneNumber = require(script.getPhoneNumber),
	}
end
