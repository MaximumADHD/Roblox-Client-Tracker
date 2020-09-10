local ContentProvider = game:GetService("ContentProvider")

local Packages = script.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

return Roact.createContext(ContentProvider)