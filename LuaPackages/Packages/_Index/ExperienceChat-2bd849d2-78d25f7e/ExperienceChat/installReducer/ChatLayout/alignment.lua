local GuiService = game:GetService("GuiService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local ChatLayoutHorizontalAlignmentChanged = require(Actions.ChatLayoutHorizontalAlignmentChanged)
local ChatLayoutVerticalAlignmentChanged = require(Actions.ChatLayoutVerticalAlignmentChanged)

local CHAT_LAYOUT_HORIZONTAL_OFFSET = 8
local CHAT_LAYOUT_VERTICAL_OFFSET = 4
local TOP_BAR_VERTICAL_OFFSET = GuiService:GetGuiInset().Y

local defaultState = {
	Position = UDim2.new(0, CHAT_LAYOUT_HORIZONTAL_OFFSET, 0, CHAT_LAYOUT_VERTICAL_OFFSET),
	AnchorPoint = Vector2.new(0, 0),
	UIListLayoutVerticalAlignment = Enum.VerticalAlignment.Top,
}

return Rodux.createReducer(defaultState, {
	[ChatLayoutHorizontalAlignmentChanged.name] = function(state, action: ChatLayoutHorizontalAlignmentChanged.Action)
		local position = state.Position
		local anchorPoint = state.AnchorPoint

		if action.value == Enum.HorizontalAlignment.Left then
			position = UDim2.new(0, CHAT_LAYOUT_HORIZONTAL_OFFSET, position.Y.Scale, position.Y.Offset)
			anchorPoint = Vector2.new(0, anchorPoint.Y)
		elseif action.value == Enum.HorizontalAlignment.Center then
			position = UDim2.new(0.5, 0, position.Y.Scale, position.Y.Offset)
			anchorPoint = Vector2.new(0.5, anchorPoint.Y)
		elseif action.value == Enum.HorizontalAlignment.Right then
			position = UDim2.new(1, -CHAT_LAYOUT_HORIZONTAL_OFFSET, position.Y.Scale, position.Y.Offset)
			anchorPoint = Vector2.new(1, anchorPoint.Y)
		end

		return Dictionary.join(state, {
			Position = position,
			AnchorPoint = anchorPoint,
		})
	end :: any,

	[ChatLayoutVerticalAlignmentChanged.name] = function(state, action: ChatLayoutVerticalAlignmentChanged.Action)
		local position = state.Position
		local anchorPoint = state.AnchorPoint

		if action.value == Enum.VerticalAlignment.Top then
			position = UDim2.new(position.X.Scale, position.X.Offset, 0, CHAT_LAYOUT_VERTICAL_OFFSET)
			anchorPoint = Vector2.new(anchorPoint.X, 0)
		elseif action.value == Enum.VerticalAlignment.Center then
			position = UDim2.new(position.X.Scale, position.X.Offset, 0.5, -TOP_BAR_VERTICAL_OFFSET)
			anchorPoint = Vector2.new(anchorPoint.X, 0.5)
		elseif action.value == Enum.VerticalAlignment.Bottom then
			position = UDim2.new(position.X.Scale, position.X.Offset, 1, -CHAT_LAYOUT_VERTICAL_OFFSET)
			anchorPoint = Vector2.new(anchorPoint.X, 1)
		end

		return Dictionary.join(state, {
			Position = position,
			AnchorPoint = anchorPoint,
			UIListLayoutVerticalAlignment = action.value,
		})
	end :: any,
})
