--[[
    PresenceContext.lua
    
    Creates the React Context used throughout the animation system to share presence state.
    This context allows components to:
    - Know if they are present/visible
    - Access their unique presence ID
    - Coordinate exit animations
    - Share custom data between presence components
    
    The context is consumed by usePresence hook and provided by PresenceChild/PresenceProvider
]]

local Motion = script.Parent.Parent
local Packages = Motion.Parent
local React = require(Packages.React)

-- Type definition for presence context structure
export type PresenceContext = {
	-- Unique identifier for this presence instance
	id: string,
	-- Current presence state
	isPresent: boolean,
	-- Custom data passed through context
	passThroughData: any?,
	-- Callback for exit animation completion
	onExitComplete: ((string) -> ())?,
}

-- Create context with nil default value - components will warn if used outside provider
return React.createContext({
	isPresent = true,
	id = "",
	onExitComplete = nil,
	passThroughData = nil,
} :: PresenceContext)
