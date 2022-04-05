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
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Constants = require(Plugin.Src.Util.Constants)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AddEventEntry = Roact.PureComponent:extend("AddEventEntry")

function AddEventEntry:init()
	self.mouseEnter = function()
		if self.props.Mouse then
			self.props.Mouse:__pushCursor("PointingHand")
		end
	end

	self.mouseLeave = function()
		if self.props.Mouse then
			self.props.Mouse:__popCursor()
		end
	end
end

function AddEventEntry:render()
	local localization = self.props.Localization
	local props = self.props
	local theme = props.Stylizer.PluginTheme
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
end

AddEventEntry = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(AddEventEntry)

return AddEventEntry