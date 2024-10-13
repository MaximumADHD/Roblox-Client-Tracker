local Foundation = script:FindFirstAncestor("Providers").Parent

local Flags = require(Foundation.Utility.Flags)

return {
	story = function(props)
		for key, value in pairs(props.controls) do
			Flags[key] = value
		end
	end,
	controls = Flags,
}
