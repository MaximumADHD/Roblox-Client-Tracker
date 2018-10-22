--[[
	The suggestions at the top of the toolbox, "Try searching for: NPC Vehicle etc."

	Props:
		UDim2 Position = UDim2.new(0, 0, 0, 0)
		UDim2 Size = UDim2.new(1, 0, 1, 0)
		number ZIndex
		number maxWidth
		Suggestions suggestions

		callback onSuggestionSelected(number index)
]]

local Plugin = script.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Layouter = require(Plugin.Core.Util.Layouter)

local withTheme = require(Plugin.Core.Consumers.withTheme)

local function Suggestions(props)
	return withTheme(function(theme)
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
	end)
end

return Suggestions
