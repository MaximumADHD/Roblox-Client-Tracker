local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

if FFlagDevFrameworkUseCreateContext then
	return Roact.createContext({})
else
	return {}
end
