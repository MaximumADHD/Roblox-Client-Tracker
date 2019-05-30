--[[
	A widget that contains the game's icon and tips. It is displayed in a
	SettingsPage as a TitledFrame component.

	Props:
		bool Enabled = Whether this widget should be interactable.
		string Icon = The current game's icon, or "None" if no icon exists.
		int LayoutOrder = The order in which this elements displays on the SettingsPage.
		function AddIcon = A callback invoked when the user wants to add a new icon.
		string Title = The title of this widget's TitledFrame
		bool TutorialEnabled = Whether or not we show the tutorial for icons
]]

local FFlagGameSettingsUseUILibrary = settings():GetFFlag("GameSettingsUseUILibrary")

local GuiService = game:GetService("GuiService")

local NOTES_POSITION = UDim2.new(0, 180, 0, 0)
local NOTES_SIZE = UDim2.new(1, -180, 0, 100)

local TUTORIAL_URL = "https://developer.roblox.com/articles/Game-Icons-Tips"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local getMouse = require(Plugin.Src.Consumers.getMouse)
local Constants = require(Plugin.Src.Util.Constants)

local TitledFrame 
if FFlagGameSettingsUseUILibrary then
	TitledFrame = require(Plugin.UILibrary.Components.TitledFrame)
else
	TitledFrame = require(Plugin.Src.Components.TitledFrame)
end
local BulletPoint = require(Plugin.Src.Components.BulletPoint)
local GameIcon = require(Plugin.Src.Components.GameIcon.GameIcon)
local NewGameIcon = require(Plugin.Src.Components.GameIcon.NewGameIcon)

local GameIconWidget = Roact.PureComponent:extend("GameIconWidget")

function GameIconWidget:init()
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
	return withLocalization(function(localized)
		return withTheme(function(theme)
			local active = self.props.Enabled
			local icon = self.props.Icon
			local errorMessage = self.props.ErrorMessage
			local title = self.props.Title
			local tutorialEnabled = self.props.TutorialEnabled

			local preview
			if typeof(icon) == "Instance" then
				icon = icon:GetTemporaryId()
				preview = true
			else
				preview = false
			end
		
			return Roact.createElement(TitledFrame, {
				Title = title,
				MaxHeight = 150,
				LayoutOrder = self.props.LayoutOrder or 1,
				TextSize = Constants.TEXT_SIZE,
			}, {
				Icon = Roact.createElement(GameIcon, {
					Visible = active and icon ~= "None" or preview,
					Preview = preview,
					Image = icon,
					OnClick = self.props.AddIcon,
				}),

				NewIcon = Roact.createElement(NewGameIcon, {
					Visible = active and icon == "None" and not preview,
					OnClick = self.props.AddIcon,
				}),

				Notes = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Position = NOTES_POSITION,
					Size = NOTES_SIZE,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, 4),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					FileHint = Roact.createElement(BulletPoint, {
						LayoutOrder = 1,
						Text = localized.GameIcon.Hint({
							fileTypes = table.concat(Constants.IMAGE_TYPES, ", "),
							newline = "\n",
						}),
					}),
					ModerationHint = Roact.createElement(BulletPoint, {
						LayoutOrder = 2,
						Text = localized.GameIcon.Moderation,
					}),
				}),

				NewNote = tutorialEnabled and Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					Text = localized.GameIcon.Tutorial,
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

				ErrorMessage = errorMessage and Roact.createElement("TextLabel", {
					Size = UDim2.new(1, -180, 0, 40),
					Position = UDim2.new(0, 180, 0, 122),
					BackgroundTransparency = 1,
					TextColor3 = Constants.ERROR_COLOR,
					Text = errorMessage,
					Font = Enum.Font.SourceSans,
					TextSize = 20,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),
			})
		end)
	end)
end

return GameIconWidget
