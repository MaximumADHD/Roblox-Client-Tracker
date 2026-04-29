local Src = script:FindFirstAncestor("ultimate-list")

local React = require(Src.Parent.React)

-- A version of React.joinBindings(data):map(fn) that preserves types.
local function joinAndMapBindings<Ret, T1, T2, T3>(
	fn: (T1, T2, T3) -> Ret,
	binding1: React.Binding<T1>,
	binding2: React.Binding<T2>,
	binding3: React.Binding<T3>?
): React.Binding<Ret>
	return React.joinBindings({ binding1, binding2, binding3 } :: { any }):map(function(data: any)
		return fn(unpack(data))
	end)
end

return joinAndMapBindings
