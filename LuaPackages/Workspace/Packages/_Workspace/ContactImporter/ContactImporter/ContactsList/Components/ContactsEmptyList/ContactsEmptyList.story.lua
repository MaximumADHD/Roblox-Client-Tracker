local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Roact = dependencies.Roact
local ContactsEmptyList = require(script.Parent)

return {
	controls = nil,
	stories = {
		ContactsEmptyList = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(1000, 600),
				BackgroundTransparency = 1,
			}, {
				EmptyList = Roact.createElement(ContactsEmptyList),
			})
		end,
	},
}
