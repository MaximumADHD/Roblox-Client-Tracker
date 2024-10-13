local Foundation = script:FindFirstAncestor("Providers").Parent

local ColorUpdateStory = require(Foundation.Providers.Foundation.ColorUpdateStory)

return {
	story = function(props)
		for key, value in pairs(props.controls) do
			ColorUpdateStory[key] = value
		end
	end,
	controls = ColorUpdateStory,
}
