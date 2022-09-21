local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

return function(state: any, action: any)
	state = state or {}

	if action.type == "SetTagData" then
		--sort for display order so keyboard nav can use array indicies
		table.sort(action.data, function(a: _Types.Tag, b: _Types.Tag)
			local ag = a.Group or ""
			local bg = b.Group or ""

			if ag < bg then
				return true
			end
			if bg < ag then
				return false
			end

			local an = a.Name or ""
			local bn = b.Name or ""

			return an < bn
		end)
		return action.data
	end

	return state
end
