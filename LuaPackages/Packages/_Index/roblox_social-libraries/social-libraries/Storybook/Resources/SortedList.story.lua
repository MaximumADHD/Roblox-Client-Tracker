local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact

local SortedList = require(SocialLibraries.Components.SortedList)

return Roact.createElement("Frame", {
	BackgroundTransparency = 0,
	BackgroundColor3 = Color3.fromRGB(242, 242, 242),
	Size = UDim2.new(0, 512, 0, 512),
}, {
	Roact.createElement(SortedList, {
		entries = {
			{
				BackgroundColor3 = Color3.new(1,0,0),
			},
			{
				BackgroundColor3 = Color3.new(0,0,1),
			},
		},

		renderEntry = function(props)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = props.BackgroundColor3,
			})
		end,
	})
})
