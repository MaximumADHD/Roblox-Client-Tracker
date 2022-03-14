local Root: any = script:FindFirstAncestor("rodux-friends")
local Packages: any = Root.Parent
local Rodux: any = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(ids: {string})
	return { ids = ids }
end)
