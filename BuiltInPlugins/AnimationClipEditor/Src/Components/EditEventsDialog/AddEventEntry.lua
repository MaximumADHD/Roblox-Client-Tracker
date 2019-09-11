--[[
	Represents the entry at the bottom of the Events list which the
	user can click to add a new event to the list.

	Props:
		UDim2 Size = The size of the entry.
		UDim PaddingLeft = The left text padding.
		UDim PaddingRight = The right text padding.

		function OnAddEvent() = A callback for when the user wants to
			add a new event to the event list.
]]

local ICON_SIZE = UDim2.new(0, 9, 0, 8)

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local Localizing = require(Plugin.UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local Mouse = require(Plugin.Src.Context.Mouse)
local getMouse = Mouse.getMouse

local AddEventEntry = Roact.PureComponent:extend("AddEventEntry")

function AddEventEntry:init()
	self.mouseEnter = function()
		getMouse(self).pushCursor("PointingHand")
	end

	self.mouseLeave = function()
		getMouse(self).popCursor()
	end
end

function AddEventEntry:willUnmount()
	getMouse(self).resetCursor()
end

function AddEventEntry:render()
	return withTheme(function(theme)
		return withLocalization(function(localization)
			local props = self.props
			local size = props.Size
			local paddingLeft = props.PaddingLeft
			local paddingRight = props.PaddingRight

			local dialogTheme = theme.dialogTheme

			return Roact.createElement("ImageButton", {
				Size = size,
				BackgroundTransparency = 1,
				AutoButtonColor = false,

				[Roact.Event.Activated] = props.OnAddEvent,
				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = paddingLeft,
					PaddingRight = paddingRight,
					PaddingTop = UDim.new(0, 2),
					PaddingBottom = UDim.new(0, 2),
				}),

				Label = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, -Constants.TRACKLIST_BUTTON_SIZE, 1, 0),
					Text = localization:getText("Title", "AddEvent"),
					TextColor3 = dialogTheme.subTextColor,
					Font = theme.font,
					TextSize = dialogTheme.textSize,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
				}),

				AddImage = Roact.createElement("ImageLabel", {
					Size = ICON_SIZE,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0, -paddingLeft.Offset / 2, 0.5, 0),
					BackgroundTransparency = 1,

					Image = dialogTheme.addImage,
					ImageColor3 = dialogTheme.subTextColor,
				}),
			})
		end)
	end)
end

return AddEventEntry
