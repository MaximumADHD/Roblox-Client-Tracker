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
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local FFlagEnableGameSettingsStylizer = game:GetFastFlag("EnableGameSettingsStylizer")

local DropdownEntry = Roact.PureComponent:extend("DropdownEntry")

function DropdownEntry:init()
	self.state = {
		Hovering = false,
	}
end

function DropdownEntry:mouseHoverChanged(hovering)
	local props = self.props

	-- TODO: change to use HoverArea from Developer Framework
	if hovering then
		props.Mouse:__pushCursor("PointingHand")
	else
		props.Mouse:__resetCursor()
	end

	self:setState({
		Hovering = hovering,
	})
end

function DropdownEntry:render()
	local props = self.props
	local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")

	local title = self.props.Title or self.props.Id
	local layoutOrder = self.props.LayoutOrder
	local hover = self.state.Hovering
	local current = self.props.Current
	local color = hover and theme.dropDownEntry.hover or theme.dropDownEntry.background

	local currentFont = current and Enum.Font.SourceSansSemibold or Enum.Font.SourceSans

	local highlightVisible
	if FFlagEnableGameSettingsStylizer or theme.isDarkerTheme then
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
				Size = if FFlagEnableGameSettingsStylizer or theme.isDarkerTheme then UDim2.new(1, 0, 1, 0) else UDim2.new(0, 4, 1, 0),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				BackgroundColor3 = theme.dropDownEntry.highlight,
			}),

			Title = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
				Size = UDim2.new(1, -12, 1, 0),
				Position = UDim2.new(0, 12, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = currentFont,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = title or "",
				ZIndex = 5,
			})),
		}),
	})
end


DropdownEntry = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Mouse = ContextServices.Mouse,
})(DropdownEntry)



return DropdownEntry
