--[[
	Hoverable and clickable menu entry in the left-side menu.

	Props:
		int Index = The index of this menu entry as it appears in the menu, top to bottom
		bool Selected = Whether this entry is the currently opened page
		bool Error = Whether to display an error icon in this MenuEntry tab
		string Title = The text to display on this menu entry
		function OnClicked = Callback invoked when this MenuEntry is clicked
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local MenuEntry = Roact.PureComponent:extend("MenuEntry")

function MenuEntry:mouseHoverChanged(hovering)
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

function MenuEntry:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")

	local hovering = self.state.Hovering
	local selected = self.props.Selected
	local highlight = hovering or selected

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.MENU_ENTRY_HEIGHT),
		BackgroundColor3 = highlight and theme.menuEntry.hover or theme.menuBar.backgroundColor,
		BorderSizePixel = 0,

		--Highlight this selection when the mouse hovers over it
		[Roact.Event.MouseEnter] = function()
			self:mouseHoverChanged(true)
		end,

		[Roact.Event.MouseLeave] = function()
			self:mouseHoverChanged(false)
		end,
	}, {
		Highlight = Roact.createElement("Frame", {
			ZIndex = 1,
			Size = theme.isDarkerTheme and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 4, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = theme.menuEntry.highlight,

			BackgroundTransparency = selected and 0 or 1,
		}),

		Title = Roact.createElement("TextButton", Cryo.Dictionary.join(theme.fontStyle.Title, {
			ZIndex = 2,
			Size = UDim2.new(1, -15, 1, 0),
			Position = UDim2.new(0, 15, 0, 0),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,

			Text = self.props.Title,
			Font = selected and Enum.Font.SourceSansSemibold or Enum.Font.SourceSans,

			[Roact.Event.Activated] = function()
				self.props.OnClicked(self.props.Index)
			end,
		})),

		Error = Roact.createElement("ImageLabel", {
			ZIndex = 3,
			Visible = self.props.Error or self.props.Warning or false,
			Size = UDim2.new(0, 18, 0, 18),
			Position = UDim2.new(1, -12, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundTransparency = 1,
			Image = self.props.Error and DEPRECATED_Constants.ERROR_IMAGE or DEPRECATED_Constants.WARNING_IMAGE,
		}),
	})
end

ContextServices.mapToProps(MenuEntry,{
	Theme = ContextServices.Theme,
	Mouse = ContextServices.Mouse,
})

return MenuEntry