-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/hooks/utils/useAfterFastRefresh.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local reactModule = require(rootWorkspace.React)
local useEffect = reactModule.useEffect
local useRef = reactModule.useRef

local function useAfterFastRefresh(effectFn: () -> ...any)
	if _G.__DEV__ then
		local didRefresh = useRef(false)
		useEffect(function()
			return function()
				didRefresh.current = true
			end
		end, {})
		useEffect(function()
			if didRefresh.current == true then
				didRefresh.current = false
				effectFn()
			end
		end, {})
	end
end
exports.useAfterFastRefresh = useAfterFastRefresh

return exports
