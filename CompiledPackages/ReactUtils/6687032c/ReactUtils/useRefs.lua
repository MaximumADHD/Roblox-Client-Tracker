--[[ 
    Returns the same refs every time.
    That is, if useRefs(3) returns [A, B, C],
    then the following useRefs(2) call will return [A, B],
    and a following useRefs(3) call will return [A, B, C].
    The refs will be reset back to default when shrunk, but the identity will be the same.
]]
--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

local function useRefs<T>(count: number, default: T): { { current: T } }
	local createdRefsRef = React.useRef({} :: { { current: T } })

	local lastCountRef = React.useRef(count)

	if #createdRefsRef.current < count then
		for _ = 1, count - #createdRefsRef.current do
			local newRef = React.createRef()
			newRef.current = default
			table.insert(createdRefsRef.current, newRef)
		end
	elseif lastCountRef.current > count then
		for index = count + 1, lastCountRef.current do
			createdRefsRef.current[index].current = default
		end
	end

	lastCountRef.current = count

	local limitedRefs = React.useMemo(function(): { { current: T } }
		return table.move(createdRefsRef.current, 1, count, 1, {})
	end, { count })

	return limitedRefs
end

return useRefs
