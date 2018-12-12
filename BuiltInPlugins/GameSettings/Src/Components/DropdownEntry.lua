--[[
	A single entry that lives inside a Dropdown component.
	Can have a unique Id and Title. If a Title is defined, that is displayed
	for this Entry. If no Title is given, the Id is used for display.

	Props:
		string Title = The name to display for this entry. If nil, the Id will be used.
		variant Id = A unique identifier that represents the value of this entry.
		bool Current = Whether this entry is the currently selected entry in the Dropdown.
		int LayoutOrder = The order in which this entry appears in the Dropdown.
		function OnClick = Callback when this entry is clicked by the user.
]]

local DEFAULT_SIZE = UDim2.new(0, 220, 0, 38)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local DropdownEntry = Roact.PureComponent:extend("DropdownEntry")

function DropdownEntry:init()
	self.state = {
		Hovering = false,
	}
end

function DropdownEntry:mouseHoverChanged(hovering)
	getMouse(self).setHoverIcon("PointingHand", hovering)
	self:setState({
		Hovering = hovering,
	})
end

function DropdownEntry:render()
	return withTheme(function(theme)
		local title = self.props.Title or self.props.Id
		local layoutOrder = self.props.LayoutOrder
		local hover = self.state.Hovering
		local current = self.props.Current
		local color = hover and theme.dropDownEntry.hover or theme.dropDownEntry.background

		local currentFont = Enum.Font.SourceSans
		if not theme.isDarkerTheme and current then
			currentFont = current and Enum.Font.SourceSansSemibold
		end

		local highlightVisible
		if theme.isDarkerTheme then
			highlightVisible = current
		else
			highlightVisible = hover
		end

		return Roact.createElement("ImageButton", {
			Size = DEFAULT_SIZE,
			BorderSizePixel = 0,
			LayoutOrder = layoutOrder,
			ZIndex = 3,

			[Roact.Event.MouseEnter] = function()
				self:mouseHoverChanged(true)
			end,

			[Roact.Event.MouseLeave] = function()
				self:mouseHoverChanged(false)
			end,

			[Roact.Event.Activated] = self.props.OnClick
		}, {
			Main = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = color,
				ZIndex = 4,
			}, {
				Highlight = Roact.createElement("Frame", {
					Visible = highlightVisible,
					ZIndex = 5,
					Size = theme.isDarkerTheme and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 4, 1, 0),
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					BackgroundColor3 = theme.dropDownEntry.highlight,
				}),

				Title = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, -12, 1, 0),
					Position = UDim2.new(0, 12, 0, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = currentFont,
					TextColor3 = theme.dropDown.text,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextSize = 22,
					Text = title or "",
					ZIndex = 5,
				}),
			}),
		})
	end)
end

return DropdownEntry