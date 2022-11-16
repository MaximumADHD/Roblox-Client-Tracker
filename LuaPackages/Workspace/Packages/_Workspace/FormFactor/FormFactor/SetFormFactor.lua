local FormFactor = script:FindFirstAncestor("FormFactor")
local Packages = FormFactor.Parent

local Action = require(Packages.Rodux).makeActionCreator

return Action(script.Name, function(formFactor)
	return {
		formFactor = formFactor,
	}
end)
