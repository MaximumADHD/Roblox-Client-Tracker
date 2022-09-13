--[[
	A hook for using a React Roblox binding.

	The binding will only be created on the first render.
	The previously created binding / bindingUpdater will be
	returned on all subsequent renders.

	@return (binding, updateBindingFunction)
]]

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local useInitializedValue = require(script.Parent.useInitializedValue)
local React = require(Packages.React)

local function useBinding(initialValue)
	local packedBinding = useInitializedValue(function()
		return table.pack(React.createBinding(initialValue))
	end)
	return table.unpack(packedBinding)
end

return useBinding
