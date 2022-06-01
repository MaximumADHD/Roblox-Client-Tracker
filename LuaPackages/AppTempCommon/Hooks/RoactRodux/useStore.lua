--!strict
--[[
	A hook to access the Rodux store.

	It will throw an error if the StoreContext Provider is not present
	so callers of this function are guaranteed a valid return value
	(if it returns at all).
]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local RoactRodux = require(CorePackages.RoactRodux)
local StoreContext = RoactRodux.StoreContext

local function useStore()
	local store = React.useContext(StoreContext)
	assert(store, "useDispatch and useSelector can only be called from a descendant of the Rodux Store Provider")
	return store
end

return useStore
