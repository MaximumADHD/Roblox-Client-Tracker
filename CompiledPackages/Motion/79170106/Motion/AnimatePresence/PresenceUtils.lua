local Motion = script.Parent.Parent
local Packages = Motion.Parent
local React = require(Packages.React)
local PresenceContext = require(script.Parent.PresenceContext)
type PresenceContext = PresenceContext.PresenceContext

--[[
    usePresence.lua
    
    Custom hooks for accessing presence state within components.
    Provides a simple API for components to:
    - Check their current presence state
    - Signal when exit animations complete
    - Access their presence ID
    - Handle custom presence data
    
    Main exports:
    - usePresence: Full presence API
    - useIsPresent: Simple boolean presence check
    - isPresent: Utility for manual context checking
]]

--[[
    isPresent utility
    Directly checks presence state from context
]]
local function isPresent(context: PresenceContext): boolean
	-- This function checks if the component is present based on the context.
	if context == nil then
		return true
	end
	return context.isPresent
end

--[[
    useIsPresent hook
    Simplified hook that only returns boolean presence state
]]
local function useIsPresent(): boolean
	-- This hook returns a boolean indicating whether the component is present.
	local context: PresenceContext = React.useContext(PresenceContext)
	return isPresent(context)
end

return {
	useIsPresent = useIsPresent,
	isPresent = isPresent,
}
