local Packages = script.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local SelectionImageContext = Roact.createContext(function()
	-- By default, provides no cursors
	return nil
end)

return SelectionImageContext