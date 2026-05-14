-- PresenceChild.lua
--[[
    PresenceChild wraps individual children of AnimatePresence
    It provides presence context and manages the lifecycle of exit animations
    
    Key responsibilities:
    - Provides PresenceContext to child components
    - Manages exit animation state
    - Coordinates with AnimatePresence for cleanup
]]

local Motion = script.Parent.Parent
local Packages = Motion.Parent
local React = require(Packages.React)
local useIdFallback = require(script.Parent.utils).useIdFallback

local PresenceContext = require(script.Parent.PresenceContext)

-- Type definitions first
export type ChildIdMap = { [string]: boolean }

export type PresenceChildProps = {
	-- The child component to wrap
	children: any,
	-- Current presence state
	isPresent: boolean?,
	-- Callback when exit complete
	onExitComplete: (() -> ())?,
	-- Custom data to pass down
	passThroughData: any?,
	-- Custom identifier
	presenceId: string?,
}

-- Helper function to create new children map
local function newChildrenMap(): ChildIdMap
	return {} :: ChildIdMap
end

local function PresenceChild(props: PresenceChildProps): any
	-- This component provides context to its children about their presence state.
	-- It also handles the exit animation of its children when they are removed.

	-- Validate props
	if not props.children or typeof(props.children) == "string" then
		error("PresenceChild: children must be a React.Element")
	end

	-- Only check for .type if children is not a string
	if not props.children.type then
		error("PresenceChild: children must be a React.Element")
	end

	if
		props.onExitComplete
		and typeof(props.onExitComplete) ~= "function"
		and not (props.onExitComplete :: any)._isMockFunction
	then
		error("PresenceChild: onExitComplete must be a function")
	end

	local children = props.children
	local isPresent = props.isPresent
	local onExitComplete = props.onExitComplete
	local passThroughData = props.passThroughData
	local presenceId = props.presenceId

	-- Create a ref to store the presenceChildren map - using our custom function
	local presenceChildrenRef = React.useRef(newChildrenMap())
	local presenceChildren = presenceChildrenRef.current

	-- Generate ID for this presence
	local id = presenceId or useIdFallback()

	-- Define exit complete handler
	local function handleExitComplete(childId: string): ()
		presenceChildren[childId] = true

		local allComplete = true
		for _, isComplete in pairs(presenceChildren) do
			if not isComplete then
				allComplete = false
				break
			end
		end

		if allComplete and onExitComplete then
			onExitComplete()
		end
		return
	end

	-- Create the context value
	local isActuallyPresent = isPresent ~= false
	local contextValue = {
		id = id,
		isPresent = isActuallyPresent,
		passThroughData = passThroughData,
		onExitComplete = handleExitComplete,
	}

	-- Reset children map when isPresent changes
	if isPresent ~= nil then
		for key, _ in pairs(presenceChildren) do
			presenceChildren[key] = false
		end
	end

	-- Handle child element
	local childElement = children

	return React.createElement(PresenceContext.Provider, {
		value = contextValue,
	}, childElement)
end

return PresenceChild
