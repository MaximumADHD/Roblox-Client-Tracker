-- AnimatePresence.lua
--[[
    AnimatePresence is a component that manages the presence/absence lifecycle of its children.
    It enables exit animations by keeping removed children in the DOM until their exit animations complete.
    
    Key features:
    - Tracks presence state of child components
    - Manages exit animations
    - Coordinates removal of components after animations complete
    - Supports custom presence IDs for fine-grained control
]]

local Motion = script.Parent.Parent
local Packages = Motion.Parent
local React = require(Packages.React)
local PresenceChild = require(script.Parent.PresenceChild)
local PresenceStateEnum = require(Motion.Enums.PresenceState)

-- Type definitions for tracking component presence state
type PresenceEntry = {
	-- Whether the component should be visible
	isPresent: boolean,
	-- The React component to render
	component: any,
	-- Whether it's safe to remove from DOM
	safeToRemove: boolean?,
	-- The ID used to track this component
	lastPresenceId: string,
}

-- Type definition for React element
type ReactElement = {
	type: any,
	props: any?,
}

-- Type definition for AnimatePresence props
type AnimatePresenceProps = {
	-- Changed to allow any type of children
	children: { [string]: any } | any | nil,
	-- Custom data to pass to children
	childData: any?,
	-- Callback when all exits complete
	onExitComplete: ((compositeKey: string) -> ())?,
}

-- Update the updates type to use the enum
type PresenceUpdate = {
	type: typeof(PresenceStateEnum.Entering) | typeof(PresenceStateEnum.Exiting),
	component: any,
	dictionaryKey: string,
}

-- Helper to generate a composite key
local function getCompositeKey(dictionaryKey: string, child: any): string
	if typeof(child) == "table" and child.props and child.props.presenceId then
		return string.format("%s:%s", dictionaryKey, tostring(child.props.presenceId))
	end
	return dictionaryKey
end

-- Create the AnimatePresence function
local function AnimatePresence(props: AnimatePresenceProps)
	local children = props.children
	local childData = if props.childData ~= nil then props.childData else nil
	local onExitComplete = if props.onExitComplete ~= nil then props.onExitComplete else nil

	-- Track presence entries by composite key (dictionary key + presenceId)
	local presenceEntries, setPresenceEntries = React.useState({})
	local pendingExitsRef = React.useRef({})

	-- Update entries when children change
	React.useEffect(function()
		local updates: { [string]: PresenceUpdate } = {}

		-- Track current children and their composite keys
		if children ~= nil and typeof(children) == "table" then
			for key, child in pairs(children) do
				-- Check if child is a valid React element
				if typeof(child) == "table" and child.type ~= nil then
					local compositeKey = getCompositeKey(key, child)
					updates[compositeKey] = {
						type = PresenceStateEnum.Entering,
						component = child,
						dictionaryKey = key,
					}
				end
			end
		end

		-- Check for exits
		for compositeKey, entry in pairs(presenceEntries) do
			local isPresent = false

			-- Check if this composite key exists in current children
			if children ~= nil and typeof(children) == "table" then
				for key, child in pairs(children) do
					if typeof(child) == "table" and child.type ~= nil then
						local currentCompositeKey = getCompositeKey(key, child)
						if currentCompositeKey == compositeKey then
							isPresent = true
							break
						end
					end
				end
			end

			-- If not present and not already exiting, mark for exit
			if not isPresent and entry.isPresent then
				updates[compositeKey] = {
					type = PresenceStateEnum.Exiting,
					component = entry.component,
					dictionaryKey = entry.dictionaryKey,
				}
			end
		end

		-- Apply all updates
		if next(updates) ~= nil then
			setPresenceEntries(function(prev)
				local newEntries = table.clone(prev)

				for compositeKey, update in pairs(updates) do
					if update.type == PresenceStateEnum.Entering then
						newEntries[compositeKey] = {
							isPresent = true,
							component = update.component,
							safeToRemove = false,
							dictionaryKey = update.dictionaryKey,
						}
					elseif update.type == PresenceStateEnum.Exiting then
						if newEntries[compositeKey] and newEntries[compositeKey].isPresent then
							newEntries[compositeKey] = {
								isPresent = false,
								component = update.component,
								safeToRemove = false,
								dictionaryKey = update.dictionaryKey,
							}
							pendingExitsRef.current[compositeKey] = true
						end
					end
				end

				return newEntries
			end)
		end
	end, { children })

	-- Handle component exit
	local handleExitComplete = React.useCallback(function(compositeKey)
		if pendingExitsRef.current[compositeKey] then
			pendingExitsRef.current[compositeKey] = nil

			setPresenceEntries(function(prev)
				local newEntries = table.clone(prev)
				if newEntries[compositeKey] then
					newEntries[compositeKey] = {
						isPresent = false,
						component = newEntries[compositeKey].component,
						safeToRemove = true,
						dictionaryKey = newEntries[compositeKey].dictionaryKey,
					}
				end
				return newEntries
			end)
		end
	end, {})

	-- Cleanup completed animations
	React.useEffect(function()
		local entriesToCleanup = {}
		local hasEntriesForCleanup = false

		for compositeKey, entry in pairs(presenceEntries) do
			if entry.safeToRemove then
				hasEntriesForCleanup = true
				entriesToCleanup[compositeKey] = true
			end
		end

		if hasEntriesForCleanup then
			setPresenceEntries(function(prev)
				local newEntries = {}
				for compositeKey, entry in pairs(prev) do
					if not entriesToCleanup[compositeKey] then
						newEntries[compositeKey] = entry
					else
						if onExitComplete then
							onExitComplete(compositeKey)
						end
					end
				end
				return newEntries
			end)
		end
	end, { presenceEntries })

	-- Render components
	local renderedComponents = {}
	for compositeKey, entry in pairs(presenceEntries) do
		if not entry.safeToRemove then
			table.insert(
				renderedComponents,
				React.createElement(PresenceChild, {
					key = compositeKey,
					presenceId = compositeKey,
					isPresent = entry.isPresent,
					onExitComplete = function()
						handleExitComplete(compositeKey)
					end,
					childData = childData,
					children = entry.component,
				}, entry.component)
			)
		end
	end

	return React.createElement(React.Fragment, {}, renderedComponents)
end

return AnimatePresence
