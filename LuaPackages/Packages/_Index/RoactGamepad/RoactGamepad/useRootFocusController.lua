--!strict
--[[
	Hook that returns a new FocusController object.

	The same FocusController instance is returned on every render.

	NOTE: This hook should only be used at the root of a focus tree
	(typically the top-level screen or page component).
	All other components should use `useFocusController` instead to
	obtain this focus controller instance via context.
]]
local Packages = script.Parent.Parent
local React = require(Packages.React)

local FocusController = require(script.Parent.FocusController)

type FocusController = typeof(FocusController.createPublicApiWrapper()())

local function useRootFocusController(): FocusController
	local ref = React.useRef(nil)
	if ref.current == nil then
		ref.current = FocusController.createPublicApiWrapper()
	end
	return ref.current :: any
end

return useRootFocusController
