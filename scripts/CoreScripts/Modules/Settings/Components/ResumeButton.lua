--[[
		Creates a Roact component that is a grey rounded button
		Props:
			position : UDim2 - Position of the button.
			zIndex : number - Determines the order of UI element rendering.
			anchorPoint : UDim2 - The anchor point of the button.
			onResume : function() - Fires when the button is activated.
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local Settings = script.Parent.Parent
local Modules = Settings.Parent
local Constants = require(Settings.Pages.LeaveGameScreen.Constants)
local RoundedSelectionImage = require(Settings.Common.RoundedSelectionImage)
local RobloxTranslator = require(Modules.RobloxTranslator)

local ResumeButton = Roact.PureComponent:extend("ResumeButton")

local RESUME_GAME_BUTTON_LABEL = "Feature.SettingsHub.Label.DontLeaveButton"

function ResumeButton:init()
	self.onSelectionGained = function()
		self:setState({
			focused = true
		})
	end
	self.onSelectionLost = function()
		self:setState({
			focused = false
		})
	end
end

function ResumeButton:render()
	local size = UDim2.new(0, 320, 0, 80)
	local position = self.props.position or UDim2.new(0.5, 0, 0.5, 0)
	local anchorPoint = self.props.anchorPoint or Vector2.new(0.5, 0.5)
	local zIndex = self.props.zIndex
	local text = RobloxTranslator:FormatByKey(RESUME_GAME_BUTTON_LABEL)
	local buttonColor = Constants.Color.GREY
	local textColor = Constants.Color.WHITE
	local selector = RoundedSelectionImage()
	if self.state.focused then
		buttonColor = Constants.Color.BLUE
		textColor = Constants.Color.DARK
	end
	local label = Roact.createElement("TextLabel",{
		Text = text,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Font = Enum.Font.SourceSans,
		TextSize = Constants.TextSize.BUTTON,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextColor3 = textColor,
		BackgroundTransparency = 1,
		ZIndex = zIndex + 1
	})
	return Roact.createElement("ImageButton",{
		Image = Constants.Image.BUTTON,
		Size = size,
		Position = position,
		AnchorPoint = anchorPoint,
		[Roact.Event.SelectionGained] = self.onSelectionGained,
		[Roact.Event.SelectionLost] = self.onSelectionLost,
		[Roact.Event.Activated] = self.props.onResume,
		ImageColor3 = buttonColor,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8, 8, 9, 9),
		SelectionImageObject = selector,
		BackgroundTransparency = 1,
		ZIndex = zIndex
	},{
		Label = label,
	})
end
return ResumeButton
