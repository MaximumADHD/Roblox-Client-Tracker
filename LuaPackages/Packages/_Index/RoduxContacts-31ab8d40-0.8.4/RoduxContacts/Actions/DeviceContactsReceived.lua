local RoduxContacts = script.Parent.Parent
local Packages = RoduxContacts.Parent
local Rodux = require(Packages.Rodux) :: any
local ContactTypes = require(RoduxContacts.Types.ContactTypes)
local ActionDomain = require(script.Parent.ActionDomain)

return Rodux.makeActionCreator(ActionDomain .. script.Name, function(contacts: { ContactTypes.ContactFromDevice })
	return {
		payload = contacts,
	}
end)
