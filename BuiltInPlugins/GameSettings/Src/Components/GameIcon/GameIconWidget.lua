--[[
	A widget that contains the game's icon and tips. It is displayed in a
	SettingsPage as a TitledFrame component.

	Props:
		bool Enabled = Whether this widget should be interactable.
		string Icon = The current game's icon, or "None" if no icon exists.
		int LayoutOrder = The order in which this elements displays on the SettingsPage.
		function AddIcon = A callback invoked when the user wants to add a new icon.
]]

local GuiService = game:GetService("GuiService")

local NOTES_POSITION = UDim2.new(0, 180, 0, 0)
local NOTES_SIZE = UDim2.new(1, -180, 0, 100)

local MAX_SIZE = 512

local NOTES = {
	string.format("Acceptable files: jpg, gif, png, tga, bmp\nMax: %d x %d", MAX_SIZE, MAX_SIZE),
	"Image will be reviewed by moderators before being made visible to other users"
}

local TUTORIAL_URL = "http://wiki.roblox.com/index.php?title=Game_Icon_Tutorial"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local TitledFrame = require(Plugin.Src.Components.TitledFrame)
local BulletPoint = require(Plugin.Src.Components.BulletPoint)
local GameIcon = require(Plugin.Src.Components.GameIcon.GameIcon)
local NewGameIcon = require(Plugin.Src.Components.GameIcon.NewGameIcon)

local GameIconWidget = Roact.PureComponent:extend("GameIconWidget")

function GameIconWidget:init()
	self.notesList = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 4),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for i, item in ipairs(NOTES) do
		table.insert(self.notesList, Roact.createElement(BulletPoint, {
			LayoutOrder = i,
			Text = item,
		}))
	end

	self.mouseEnter = function()
		if self.props.Enabled then
			self:mouseHoverChanged(true)
		end
	end

	self.mouseLeave = function()
		if self.props.Enabled then
			self:mouseHoverChanged(false)
		end
	end
end

function GameIconWidget:mouseHoverChanged(hovering)
	getMouse(self).setHoverIcon("PointingHand", hovering)
end

function GameIconWidget:render()
	return withTheme(function(theme)
		local active = self.props.Enabled
		local icon = self.props.Icon

		return Roact.createElement(TitledFrame, {
			Title = "Game Icon",
			MaxHeight = 150,
			LayoutOrder = self.props.LayoutOrder or 1,
		}, {
			Icon = Roact.createElement(GameIcon, {
				Visible = active and icon ~= "None",
				Image = icon,
				OnClick = self.props.AddIcon,
			}),

			NewIcon = Roact.createElement(NewGameIcon, {
				Visible = active and icon == "None",
				OnClick = self.props.AddIcon,
			}),

			Notes = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = NOTES_POSITION,
				Size = NOTES_SIZE,
			}, self.notesList),

			NewNote = Roact.createElement("TextButton", {
				BackgroundTransparency = 1,
				Text = "New to making icons? Check out the Icon Tutorial.",
				TextSize = 20,
				Font = Enum.Font.SourceSans,
				TextColor3 = theme.hyperlink,
				Size = UDim2.new(1, 0, 0, 18),
				Position = UDim2.new(0, 180, 0, 92),
				TextXAlignment = Enum.TextXAlignment.Left,

				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,

				[Roact.Event.Activated] = function()
					GuiService:OpenBrowserWindow(TUTORIAL_URL)
				end,
			}),
		})
	end)
end

return GameIconWidget