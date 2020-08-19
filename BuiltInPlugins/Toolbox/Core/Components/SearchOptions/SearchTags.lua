--[[
	Search Tags

	A collection of search tags, including a prompt and clear all button.

	Props:
		array Tags = An array of tags to display.
			string Tags.prefix = the text re-appended before the text
			string Tags.text = the main text to display
			function Tags.onDelete(table tag) = A callback when the user wants to delete a tag.
		function OnClearTags = A callback when the user wants to clear all tags.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Constants = require(Plugin.Core.Util.Constants)
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local SearchTag = require(Plugin.Core.Components.SearchOptions.SearchTag)

local ITEM_HEIGHT = Constants.SEARCH_TAG_HEIGHT
local TEXT_PADDING = UDim.new(0, 3)

local SearchTags = Roact.PureComponent:extend("SearchTags")

function SearchTags:createTag(tag, index)
	local name = tag.text
	local prefix = tag.prefix

	return Roact.createElement(SearchTag, {
		Name = name,
		LayoutOrder = index,
		onDelete = function()
			if tag.onDelete then
				tag.onDelete(tag)
			end
		end,
		prefix = prefix,
	})
end

function SearchTags:createTags(tags)
	local children = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = TEXT_PADDING,
		}),
	}

	for index, tag in ipairs(tags) do
		children[tag] = self:createTag(tag, index)
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
		Position = UDim2.new(0, 0, 1, 0),
		AnchorPoint = Vector2.new(0, 1),
	}, children)
end

function SearchTags:createPrompt(searchTerm, theme, localizedContent)
	if searchTerm == "" or searchTerm == nil then
		local prompt = localizedContent.SearchResults.SearchResults .. ":"
		return Roact.createElement("TextLabel", {
			Font = Constants.FONT,
			Text = prompt,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextColor3 = theme.searchTag.textColor,
			Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
			BackgroundTransparency = 1,
		})
	else
		local prompt = localizedContent.SearchResults.SearchResultsKeyword
		local promptWidth = Constants.getTextSize(prompt, nil, Constants.FONT_BOLD).X
		local searchTermSize = UDim2.new(1, -promptWidth, 0, ITEM_HEIGHT)

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = TEXT_PADDING,
			}),

			Prompt = Roact.createElement("TextLabel", {
				LayoutOrder = 1,
				Font = Constants.FONT,
				Text = prompt,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextColor3 = theme.searchTag.textColor,
				Size = UDim2.new(0, promptWidth, 0, ITEM_HEIGHT),
				BackgroundTransparency = 1,
			}),

			SearchTerm = Roact.createElement("TextLabel", {
				LayoutOrder = 2,
				Font = Constants.FONT_BOLD,
				Text = searchTerm .. ":",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextColor3 = theme.searchTag.textColor,
				Size = searchTermSize,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
			}),
		})
	end
end

function SearchTags:render()
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local tags = self.props.Tags
			local searchTerm = self.props.searchTerm
			local onClearTags = self.props.onClearTags
			local clearAll = localizedContent.SearchResults.ClearAll
			local clearAllWidth = Constants.getTextSize(clearAll).x
			local promptName = searchTerm or "Prompt"

			local hasTags = tags and #tags > 0

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				[promptName] = self:createPrompt(searchTerm, theme, localizedContent),

				ClearAll = hasTags and Roact.createElement("TextButton", {
					Font = Constants.FONT,
					Text = clearAll,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					TextColor3 = theme.searchTag.clearAllText,
					Size = UDim2.new(0, clearAllWidth, 0, ITEM_HEIGHT),
					Position = UDim2.new(1, 0, 0, 0),
					AnchorPoint = Vector2.new(1, 0),
					BackgroundTransparency = 1,
					LayoutOrder = #tags + 1,

					[Roact.Event.Activated] = onClearTags,
				}),

				Tags = hasTags and self:createTags(tags),
			})
		end)
	end)
end

return SearchTags