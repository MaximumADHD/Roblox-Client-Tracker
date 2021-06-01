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
		entries = {
			{
				titleText = "Apple",
				thumbnails = {
					"rbxassetid://2610133241",
				},
			},

			{
				titleText = "Banana",
				thumbnails = {
					"rbxassetid://2610133241",
				},
			},

			{
				titleText = "Cucumber",
				thumbnails = {
					"rbxassetid://2610133241",
				},
			},
		},

		renderEntry = function(conversation)
			return Roact.createElement(ConversationCell, {
				titleText = conversation.titleText,
				thumbnails = conversation.thumbnails,
			})
		end,

		searchFilterPredicate = function(filterInput, entry)
			if not filterInput or filterInput == "" then
				return true
			end

			return string.find(string.lower(entry.titleText), string.lower(filterInput), 1, true) ~= nil
		end,

		sortComparator = function(entryA, entryB)
			return entryA.titleText < entryB.titleText
		end,
	})
})
