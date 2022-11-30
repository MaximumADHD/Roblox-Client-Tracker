local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact

local UserCarousel = require(script.Parent)

return function()
	return Roact.createElement(UserCarousel, {
		createUserEntry = function()
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
			})
		end,
	})
end
