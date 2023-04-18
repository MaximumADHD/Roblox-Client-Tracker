local LocalziationRoot = script.Parent
local IAPExperienceRoot = LocalziationRoot.Parent

local Packages = IAPExperienceRoot.Parent
local Roact = require(Packages.Roact)

local LocaleRoactContext = Roact.createContext()

return LocaleRoactContext
