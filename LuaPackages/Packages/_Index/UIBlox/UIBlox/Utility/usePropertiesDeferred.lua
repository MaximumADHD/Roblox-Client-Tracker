--[[
	See useProperties.lua for usage.

	This changes the behavior of useProperties by delaying the update callback to the end of the frame.

	This might be useful to prevent reentrant cycles during layout of GUI objects 
	or to batch multiple updates into a single callback.
]]

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)
local usePropertiesBase = require(UtilityRoot.usePropertiesBase)

type ChangeFunc = usePropertiesBase.ChangeFunc
type PropNames = usePropertiesBase.PropNames

return function<T>(forwardRef: React.Ref<T>, update: ChangeFunc, ...: PropNames): React.Ref<T>
	return usePropertiesBase(forwardRef, update, true, ...)
end
