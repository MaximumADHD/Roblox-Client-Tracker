local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Roact = dependencies.Roact

local ContactsGlimmer = require(script.Parent)

return {
	controls = nil,
	stories = {
		ContactsGlimmer = function()
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(ContactsGlimmer, { layoutOrder = 1 }),
			})
		end,
	},
}
