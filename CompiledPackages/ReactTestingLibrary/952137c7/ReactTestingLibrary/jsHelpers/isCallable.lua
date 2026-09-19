-- ROBLOX upstream: no upstream

-- ROBLOX comment: we use callable tables instead of functions sometimes, so typeof() == "function" isn't enough
-- https://github.com/Roblox/roact-alignment/blob/2e9a4b4b4683da6c603d9c6a9b27b776c5a006c7/modules/react-reconciler/src/ReactFiberDevToolsHook.new.lua#L27-L42
local function isCallable(value: any): boolean
	if typeof(value) == "function" then
		return true
	end
	if typeof(value) == "table" then
		local mt = getmetatable(value)
		if mt and rawget(mt, "__call") then
			return true
		end
		if value._isMockFunction then
			return true
		end
	end
	return false
end

return isCallable
