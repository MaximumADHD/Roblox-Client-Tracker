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
local FFlagToolboxSearchResultsBackButton = game:GetFastFlag("ToolboxSearchResultsBackButton")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Constants = require(Plugin.Core.Util.Constants)
local withLocalization = ContextHelper.withLocalization

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local LinkText = Framework.UI.LinkText
local GetTextSize = Framework.Util.GetTextSize

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
	if FFlagToolboxSearchResultsBackButton then
		local textColor = theme.searchTag.textColor
		local textSize = Constants.FONT_SIZE_SMALL

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = TEXT_PADDING,
			}),

			BackToHome = Roact.createElement(LinkText, {
				LayoutOrder = 1,
				OnClick = self.props.onBackToHome,
				Style = "Unobtrusive",
				Text = self.props.Localization:getText("General", "SearchResultsBackToHome", {
					-- NB - there is a custom mapping in the Toolbox localization system for categoryName -> string key which is not implemented in the DevFramework system
					assetType = localizedContent.Category[self.props.categoryName],
				}),
			}),

			Prompt = Roact.createElement("TextLabel", {
				LayoutOrder = 2,
				Font = Constants.FONT,
				Text = if searchTerm == "" or searchTerm == nil
					then localizedContent.SearchResults.SearchResults
					else localizedContent.SearchResults.SearchResultsKeyword,
				TextSize = textSize,
				TextColor3 = textColor,
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
			}),

			SearchTerm = Roact.createElement("TextLabel", {
				LayoutOrder = 3,
				Font = Constants.FONT_BOLD,
				Text = (searchTerm or ""),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = textSize,
				TextColor3 = textColor,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
			}),
		})
	else
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
			local promptWidth = GetTextSize(prompt, nil, Constants.FONT_BOLD, Vector2.new(0, 0)).X
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
end

function SearchTags:render()
	return withLocalization(function(DEPRECATED_localization, localizedContent)
		return self:renderContent(nil, DEPRECATED_localization, localizedContent)
	end)
end

function SearchTags:renderContent(theme, DEPRECATED_localization, localizedContent)
	theme = self.props.Stylizer

	local tags = self.props.Tags
	local searchTerm = self.props.searchTerm
	local onClearTags = self.props.onClearTags
	local clearAll = localizedContent.SearchResults.ClearAll
	local clearAllWidth = GetTextSize(clearAll, nil, nil, Vector2.new(0, 0)).x
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
			-- Position ClearAll to be inline with the text basis of the tag chips
			Position = UDim2.new(1, 0, 0, if FFlagToolboxSearchResultsBackButton then 29 else 0),
			AnchorPoint = Vector2.new(1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = #tags + 1,

			[Roact.Event.Activated] = onClearTags,
		}),

		Tags = hasTags and self:createTags(tags),
	})
end

SearchTags = withContext({
	Localization = if FFlagToolboxSearchResultsBackButton then ContextServices.Localization else nil,
	Stylizer = ContextServices.Stylizer,
})(SearchTags)

return SearchTags
