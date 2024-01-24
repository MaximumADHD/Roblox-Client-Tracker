--!strict
--[[
	Hook that returns a ref cache (see createRefCache).

	The same ref cache instance is returned on every render.
]]
local Packages = script.Parent.Parent
local React = require(Packages.React)

local createRefCache = require(script.Parent.createRefCache)

type Ref = { current: any }

export type RefCache = {
	[any]: Ref,
}

local function useRefCache(): RefCache
	local ref = React.useRef(nil)
	if ref.current == nil then
		ref.current = createRefCache()
	end
	return ref.current :: any
end

return useRefCache
