local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact

local new = require(script.Parent.new)

local function vertical(array)
	local layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
	})
	return new(layout, array)
end

return vertical
