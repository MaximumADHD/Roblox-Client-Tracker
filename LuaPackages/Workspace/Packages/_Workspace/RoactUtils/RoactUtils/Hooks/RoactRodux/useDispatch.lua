--[[
	A hook to access the Rodux dispatch function.
]]
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local useStore = require(script.Parent.useStore)

local function useDispatch()
	local store = useStore()

	local dispatch = React.useCallback(function(...)
		return store:dispatch(...)
	end, { store })

	return dispatch
end

return useDispatch
