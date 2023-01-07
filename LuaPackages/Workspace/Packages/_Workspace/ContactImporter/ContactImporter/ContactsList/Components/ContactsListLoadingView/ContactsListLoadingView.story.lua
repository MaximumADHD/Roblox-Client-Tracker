local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Roact = dependencies.Roact

local ContactsListLoadingView = require(script.Parent)

return {
	controls = nil,
	stories = {
		ContactsListLoadingView = function()
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(ContactsListLoadingView, { screenSize = Vector2.new(500, 750) }),
			})
		end,
	},
}
