local Root = script.Parent
local Packages = Root.Parent
local Roact = require(Packages.Roact)

local RoactServicesTypes = require(script.Parent.RoactServicesTypes)

type Context<T> = RoactServicesTypes.Context<T>

local RoactServicesContext = Roact.createContext(nil :: Context<any>?)

return RoactServicesContext
