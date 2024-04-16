local RoduxContacts = script.Parent.Parent
local Packages: any = RoduxContacts.Parent
local Rodux: any = require(Packages.Rodux) :: any
local ActionDomain = require(script.Parent.ActionDomain)

return Rodux.makeActionCreator(ActionDomain .. script.Name, function(requestSent: { id: string })
	return {
		payload = requestSent,
	}
end)
