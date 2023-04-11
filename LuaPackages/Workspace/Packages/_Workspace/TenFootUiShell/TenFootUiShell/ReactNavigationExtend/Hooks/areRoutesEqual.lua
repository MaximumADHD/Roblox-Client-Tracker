local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local TenFootUiNavigatorTypes = require(ReactNavigationExtend.TenFootUiNavigatorTypes)
type RouteState = TenFootUiNavigatorTypes.RouteState

local function areRoutesEqual(routes: { RouteState }, otherRoutes: { RouteState }): boolean
	if routes == otherRoutes then
		return true
	end
	if #routes ~= #otherRoutes then
		return false
	end

	for index, route in routes do
		if route.key ~= otherRoutes[index].key then
			return false
		end
	end

	return true
end

return areRoutesEqual
