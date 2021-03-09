--[[
	A widget that contains an icon and tips. It is displayed in a
	SettingsPage as a TitledFrame component.

	Props:
		bool Enabled = Whether this widget should be interactable.
		string Icon = The current icon, or "None" if no icon exists.
		int LayoutOrder = The order in which this elements displays on the SettingsPage.
		function AddIcon = A callback invoked when the user wants to add a new icon.
		string Title = The title of this widget's TitledFrame
		bool TutorialEnabled = Whether or not we show the tutorial for icons
]]

local GuiService = game:GetService("GuiService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local NOTES_POSITION = UDim2.new(0, 180, 0, 0)
local NOTES_SIZE = UDim2.new(1, -180, 0, 100)

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local UILibrary = require(Plugin.UILibrary)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local ContextServices = require(Plugin.Framework.ContextServices)

local TUTORIAL_URL = HttpRbxApiService:GetDocumentationUrl("articles/Game-Icons-Tips")

local TitledFrame = UILibrary.Component.TitledFrame
local BulletPoint = UILibrary.Component.BulletPoint
local UploadableIcon = require(Plugin.Src.Components.UploadableIcon.UploadableIcon)
local NewUploadableIcon = require(Plugin.Src.Components.UploadableIcon.NewUploadableIcon)

local UploadableIconWidget = Roact.PureComponent:extend("UploadableIconWidget")

function UploadableIconWidget:init()
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

function UploadableIconWidget:mouseHoverChanged(hovering)
	local props = self.props

	-- TODO: change to use HoverArea from Developer Framework
	if hovering then
		props.Mouse:__pushCursor("PointingHand")
	else
		props.Mouse:__resetCursor()
	end
end

function UploadableIconWidget:render()
	local active = self.props.Enabled
	local icon = self.props.Icon
	local errorMessage = self.props.ErrorMessage
	local title = self.props.Title
	local tutorialEnabled = self.props.TutorialEnabled

	local theme = self.props.Theme:get("Plugin")
	local localization = self.props.Localization

	local preview
	if typeof(icon) == "Instance" and icon:IsA("File") then
		icon = icon:GetTemporaryId()
		preview = true
	else
		preview = false
	end

	return Roact.createElement(TitledFrame, {
		Title = title,
		MaxHeight = 150,
		LayoutOrder = self.props.LayoutOrder or 1,
		TextSize = theme.fontStyle.Title.TextSize,
	}, {
		Icon = Roact.createElement(UploadableIcon, {
			Visible = active and icon ~= "None" or preview,
			Preview = preview,
			Image = icon,
			OnClick = self.props.AddIcon,
		}),

		NewIcon = Roact.createElement(NewUploadableIcon, {
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
				TextWrapped = true,
				Text = localization:getText("General", "GameIconHint", {
					fileTypes = table.concat(DEPRECATED_Constants.IMAGE_TYPES, ", "),
					newline = "\n",
				}),
			}),
			ModerationHint = Roact.createElement(BulletPoint, {
				LayoutOrder = 2,
				TextWrapped = true,
				Text = localization:getText("General", "GameIconModeration"),
			}),
		}),

		NewNote = tutorialEnabled and Roact.createElement("TextButton", Cryo.Dictionary.join(theme.fontStyle.Smaller, {
			BackgroundTransparency = 1,
			Text = localization:getText("General", "GameIconTutorial"),
			TextColor3 = theme.hyperlink,
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 180, 0, 92),
			TextXAlignment = Enum.TextXAlignment.Left,

			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,

			[Roact.Event.Activated] = function()
				GuiService:OpenBrowserWindow(TUTORIAL_URL)
			end,
		})),

		ErrorMessage = errorMessage and Roact.createElement("TextLabel",Cryo.Dictionary.join(theme.fontStyle.Error, {
			Size = UDim2.new(1, -180, 0, 40),
			Position = UDim2.new(0, 180, 0, 122),
			BackgroundTransparency = 1,
			Text = errorMessage,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		})),
	})
end

ContextServices.mapToProps(UploadableIconWidget, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})

return UploadableIconWidget
