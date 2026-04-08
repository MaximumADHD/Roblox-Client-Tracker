local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local React = require(Packages.React)
local RoactRodux = require(Packages.RoactRodux)

local StoreContext = RoactRodux.StoreContext

local function useStore()
	local store = React.useContext(StoreContext)
	assert(store, "useDispatch and useSelector can only be called from a descendant of the Rodux Store Provider")
	return store
end

return useStore
