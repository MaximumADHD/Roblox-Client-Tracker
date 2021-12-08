--[[
	The Suggestions at the top of the toolbox, "Try searching for: NPC Vehicle etc."

	Props:
		UDim2 Position = UDim2.new(0, 0, 0, 0)
		UDim2 Size = UDim2.new(1, 0, 1, 0)
		number ZIndex
		number maxWidth
		Suggestions suggestions

		callback onSuggestionSelected(number index)
]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local FFlagToolboxRemoveUnusedSuggestionsFeature = game:GetFastFlag("ToolboxRemoveUnusedSuggestionsFeature")
if FFlagToolboxRemoveUnusedSuggestionsFeature then
	return {}
end

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Layouter = require(Plugin.Core.Util.Layouter)

local withTheme = ContextHelper.withTheme

local function renderContent(props, theme)
	local position = props.Position or UDim2.new(0, 0, 0, 0)
	local size = props.Size or UDim2.new(1, 0, 1, 0)
	local zindex = props.ZIndex or 1

	local initialText = props.initialText
	local suggestions = props.suggestions
	local maxWidth = props.maxWidth
	local onSuggestionSelected = props.onSuggestionSelected

	local rows = Layouter.layoutSuggestions(initialText,
		suggestions,
		maxWidth,
		onSuggestionSelected)

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		ZIndex = zindex,
		BackgroundTransparency = 1,
	}, rows)
end

if FFlagToolboxRemoveWithThemes then
	local Suggestions = Roact.PureComponent:extend("Suggestions")

	function Suggestions:render()
		return renderContent(self.props, nil)
	end

	return Suggestions
else
	local function Suggestions(props)
		return withTheme(function(theme)
			return renderContent(props, theme)
		end)
	end

	return Suggestions
end