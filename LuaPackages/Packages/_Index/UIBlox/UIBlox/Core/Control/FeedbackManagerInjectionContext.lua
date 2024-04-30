local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
export type InteractionType = "Press" | "Hover" | "Release"

local FeedbackManagerInjectionContext = React.createContext(
	function() end :: (contextKey: string, interactionType: InteractionType) -> ()
)

return FeedbackManagerInjectionContext
