--[[
	See useProperties.lua for usage.

	This changes the behavior of useProperties by delaying the update callback to the end of the frame.

	This might be useful to prevent reentrant cycles during layout of GUI objects 
	or to batch multiple updates into a single callback.
]]

local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)
local usePropertiesBase = require(script.Parent.usePropertiesBase)

type ChangeFunc = usePropertiesBase.ChangeFunc
type PropNames = usePropertiesBase.PropNames

local function usePropertiesDeferred<T>(forwardRef: React.Ref<T>, update: ChangeFunc, ...: PropNames): React.Ref<T>
	return usePropertiesBase(forwardRef, update, true, ...)
end

return usePropertiesDeferred
