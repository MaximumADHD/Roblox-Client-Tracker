local Motion = script.Parent.Parent
local Packages = Motion.Parent
local React = require(Packages.React)
local PresenceContext = require(script.Parent.PresenceContext)
local PresenceUtils = require(script.Parent.PresenceUtils)
local isPresent = PresenceUtils.isPresent

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

-- Type definition for the usePresence hook's return value
type UsePresenceReturnType = {
	id: string,
	isPresent: boolean,
	passThroughData: any?,
	onExitComplete: () -> (),
}

--[[
    usePresence hook
    Returns presence state and utilities for a component.
    Must be used within a PresenceContext provider.
]]
local function usePresence(): UsePresenceReturnType
	-- This hook provides information about the presence state of the component.
	-- It must be used within a component that is a child of AnimatePresence.
	local context = React.useContext(PresenceContext)

	-- Extract what we need from context
	local id = context.id
	local _isPresentValue = context.isPresent
	local onExitComplete = context.onExitComplete
	local passThroughData = context.passThroughData

	-- Create a safeToRemove function that calls onExitComplete with our ID
	local safeToRemove = React.useCallback(function()
		if onExitComplete then
			onExitComplete(id)
		end
	end, { onExitComplete :: any, id })

	return {
		isPresent = isPresent(context),
		id = id,
		onExitComplete = safeToRemove,
		passThroughData = passThroughData,
	}
end

return usePresence
