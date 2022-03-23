local root = script.Parent
local Packages = root.Parent

local Roact = require(Packages.Roact)

-- Pseudo-flag that indicates whether or not we're in Roact17
return function()
	return Roact.Ref == "ref"
end
