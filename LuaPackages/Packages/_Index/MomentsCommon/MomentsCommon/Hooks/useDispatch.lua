local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local React = require(Packages.React)

local useStore = require(MomentsCommon.Hooks.useStore)

local function useDispatch()
	local store = useStore()

	local dispatch = React.useCallback(function(...)
		return store:dispatch(...)
	end, { store })

	return dispatch
end

return useDispatch
