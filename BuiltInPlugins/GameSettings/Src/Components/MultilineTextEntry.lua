--[[
	A multiline text entry with a dynmically appearing scrollbar.
	Used in a RoundTextBox when Multiline is true.

	Props:
		string Text = The text to display
		bool Visible = Whether to display this component
		function SetText(text) = Callback to tell parent that text has changed
		function FocusChanged(focus) = Callback to tell parent that this component has focus
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local StyledScrollingFrame = require(Plugin.Src.Components.StyledScrollingFrame)

local SCROLL_BAR_OUTSET = 9

local function MultilineTextEntry(props)
	return Roact.createElement(StyledScrollingFrame, {
		Size = UDim2.new(1, SCROLL_BAR_OUTSET, 1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,

		[Roact.Ref] = function(instance)
			if instance ~= nil then
				local sizeX = instance.AbsoluteSize.x
				local textSize = TextService:GetTextSize(
					props.Text,
					22,
					Enum.Font.SourceSans,
					Vector2.new(sizeX, 10000)
				)
				instance.CanvasSize = UDim2.new(0, textSize.x, 0, textSize.y)
			end
		end,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingRight = UDim.new(0, SCROLL_BAR_OUTSET),
		}),

		Text = Roact.createElement("TextBox", {
			Visible = props.Visible,
			MultiLine = true,
			TextWrapped = true,

			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			ClearTextOnFocus = false,
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = props.TextColor3,
			Text = props.Text,

			[Roact.Event.Focused] = function()
				props.FocusChanged(true)
			end,

			[Roact.Event.FocusLost] = function()
				props.FocusChanged(false)
			end,

			[Roact.Change.Text] = function(rbx)
				if rbx.Text ~= props.Text then
					props.SetText(rbx.Text)
				end
			end,
		}),
	})
end

return MultilineTextEntry
