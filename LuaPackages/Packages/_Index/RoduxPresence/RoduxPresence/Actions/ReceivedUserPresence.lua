local Root = script.Parent.Parent
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)
local ActionDomain = require(script.Parent.ActionDomain)

return Rodux.makeActionCreator(ActionDomain .. script.Name, function(presenceModel)
	return {
		payload = presenceModel,
	}
end)
