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

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localization = UILibrary.Studio.Localization
local getMouse = require(Plugin.Src.ContextServices.Mouse).getMouse

local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

local MenuEntry = Roact.PureComponent:extend("MenuEntry")

local ErrorImage = "rbxasset://textures/GameSettings/ErrorIcon.png"
local WarningImage = "rbxasset://textures/GameSettings/Warning.png"

function MenuEntry:mouseHoverChanged(hovering)
	getMouse(self).setHoverIcon("PointingHand", hovering)
	self:setState({
		Hovering = hovering,
	})
end

function MenuEntry:render()
	return withTheme(function(theme)
		local hovering = self.state.Hovering
		local selected = self.props.Selected
		local highlight = hovering or selected

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, theme.MenuEntry.Height),
			BackgroundColor3 = highlight and theme.MenuEntry.Hover or theme.MenuBar.BackgroundColor,
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
				Size = theme.MenuEntry.Size,
				BorderSizePixel = 0,
				BackgroundColor3 = theme.MenuEntry.Highlight,

				BackgroundTransparency = selected and 0 or 1,
			}),

			Title = Roact.createElement("TextButton", {
				Font = theme.Labels.MainFont,
				TextSize = 24,
				TextColor3 = theme.Labels.TitleBarText,
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
			}),

			Error = Roact.createElement("ImageLabel", {
				ZIndex = 3,
				Visible = self.props.Error or self.props.Warning or false,
				Size = UDim2.new(0, 18, 0, 18),
				Position = UDim2.new(1, -12, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Image = self.props.Error and ErrorImage or WarningImage,
			}),
		})
	end)
end

return MenuEntry