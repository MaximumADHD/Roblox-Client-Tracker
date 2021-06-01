local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact

local FilteredScrollingList = require(SocialLibraries.Components.FilteredScrollingList)
local ConversationCell = require(SocialLibraries.Components.Cells.ConversationCell)

return Roact.createElement("Frame", {
	BackgroundTransparency = 0,
	Size = UDim2.new(0, 512 * (9/16), 0, 512),
}, {
	Roact.createElement(FilteredScrollingList, {
		renderEntry = function(conversation)
			return Roact.createElement(ConversationCell, {
				thumbnails = conversation.thumbnails,
			})
		end,

		entries = {
			{
				thumbnails = {
					"rbxassetid://2610133241",
				},
			},

			{
				thumbnails = {
					"rbxassetid://2610133241",
				},
			},

			{
				thumbnails = {
					"rbxassetid://2610133241",
				},
			},
		},
	})
})
