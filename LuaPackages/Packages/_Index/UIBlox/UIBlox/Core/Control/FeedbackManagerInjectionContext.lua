local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local FeedbackManagerInjectionContext = React.createContext(nil)

return FeedbackManagerInjectionContext
