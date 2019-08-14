--[[
	Hoverable and clickable menu entry in the left-side menu.

	Props:
		bool Selected = Whether this entry is the currently opened page
		bool ShowError = Whether to display an error icon in this MenuEntry tab
		bool ShowWarning = Whether to display an warning icon in this MenuEntry tab
		string Title = The text to display on this menu entry
		function onClicked = Callback invoked when this MenuEntry is clicked
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Theming = require(Plugin.Src.ContextServices.Theming)

local ERROR_IMAGE = "rbxasset://textures/GameSettings/ErrorIcon.png"
local WARNING_IMAGE = "rbxasset://textures/GameSettings/Warning.png"
local MENU_ENTRY_HEIGHT = 42

local MenuEntry = Roact.PureComponent:extend("MenuEntry")

function MenuEntry:mouseHoverChanged(hovering)
	-- TODO (kstephan) 2019/07/09 Change mouse cursor
	self:setState({
		hovering = hovering,
	})
end

function MenuEntry:render()
	return Theming.withTheme(function(theme)
		local hovering = self.state.hovering

		local onClicked = self.props.OnClicked
		local title = self.props.Title
		local showError = self.props.ShowError
		local showWarning = self.props.ShowWarning
		local selected = self.props.Selected
		local highlight = hovering or selected

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, MENU_ENTRY_HEIGHT),
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
				Size = UDim2.new(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = theme.menuEntry.highlight,

				BackgroundTransparency = selected and 0 or 1,
			}),

			Title = Roact.createElement("TextButton", {
				ZIndex = 2,
				Size = UDim2.new(1, -15, 1, 0),
				Position = UDim2.new(0, 15, 0, 0),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,

				Text = title,
				Font = selected and theme.menuEntry.font.selected or theme.menuEntry.font.unselected,
				TextSize = 24,
				TextColor3 = theme.menuEntry.text,

				[Roact.Event.Activated] = onClicked,
			}),

			Error = Roact.createElement("ImageLabel", {
				ZIndex = 3,
				Visible = showError or showWarning or false,
				Size = UDim2.new(0, 18, 0, 18),
				Position = UDim2.new(1, -12, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Image = showError and ERROR_IMAGE or WARNING_IMAGE,
			}),
		})
	end)
end

return MenuEntry
