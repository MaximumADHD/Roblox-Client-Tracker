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
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local Cryo = require(Plugin.Packages.Cryo)

local UI = Framework.UI
local BulletList = UI.BulletList
local TitledFrame = UI.TitledFrame

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local TUTORIAL_URL = HttpRbxApiService:GetDocumentationUrl("articles/Game-Icons-Tips")

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

	local theme = self.props.Stylizer
	local localization = self.props.Localization

	local preview
	if typeof(icon) == "Instance" and icon:IsA("File") then
		icon = icon:GetTemporaryId()
		preview = true
	else
		preview = false
	end

	local notes = Roact.createElement(BulletList, {
		Items = {
			localization:getText("General", "GameIconHint", {
				fileTypes = table.concat(DEPRECATED_Constants.IMAGE_TYPES, ", "),
				newline = "\n",
			}),
			localization:getText("General", "GameIconModeration"),
		},
		Position = NOTES_POSITION,
		Size = NOTES_SIZE,
		TextWrapped = true,
	})

	return Roact.createElement(TitledFrame, {
		LayoutOrder = self.props.LayoutOrder or 1,
		Title = title,
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

		Notes = notes,

		NewNote = tutorialEnabled and Roact.createElement(
			"TextButton",
			Cryo.Dictionary.join(theme.fontStyle.Smaller, {
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
			})
		),

		ErrorMessage = errorMessage and Roact.createElement(
			"TextLabel",
			Cryo.Dictionary.join(theme.fontStyle.Error, {
				Size = UDim2.new(1, -180, 0, 40),
				Position = UDim2.new(0, 180, 0, 122),
				BackgroundTransparency = 1,
				Text = errorMessage,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			})
		),
	})
end

UploadableIconWidget = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(UploadableIconWidget)

return UploadableIconWidget
