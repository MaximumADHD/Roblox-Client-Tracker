local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Roact = dependencies.Roact
local ContactsUploadErrorModal = require(script.Parent)

return {
	controls = nil,
	stories = {
		ContactsUploadErrorModal = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(500, 500),
				BackgroundTransparency = 1,
			}, {
				ErrorModal = Roact.createElement(ContactsUploadErrorModal),
			})
		end,
	},
}
