--[[
		Creates a Roact component that is a blue rounded button
		Props:
			position : UDim2 - Position of the button.
			zIndex : number - Determines the order of UI element rendering.
			anchorPoint : UDim2 - The anchor point of the button.
			objRef : Ref - The ref of this button.
]]
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local Settings = script.Parent.Parent
local Modules = Settings.Parent
local Common = Modules.Common
local Analytics = require(Common.Analytics)
local Constants = require(Settings.Pages.LeaveGameScreen.Constants)
local RoundedSelectionImage = require(Settings.Common.RoundedSelectionImage)
local RobloxTranslator = require(Modules.RobloxTranslator)

local LeaveButton = Roact.PureComponent:extend("LeaveButton")

local LEAVE_GAME_FRAME_WAITS = 2
local LEAVE_GAME_BUTTON_LABEL = "Feature.SettingsHub.Label.LeaveButton"

-- NOTE: event context might need to be changed for other platforms.
local EVENT_CONTEXT = "XboxOne"
function LeaveButton:init()
	self.analytics = Analytics.new()
	self.onSelectionGained = function()
		self:setState({
			focused = true,
		})
	end
	self.onSelectionLost = function()
		self:setState({
			focused = false,
		})
	end
	self.leaveFunc = function()
		GuiService.SelectedCoreObject = nil -- deselects the button and prevents spamming the popup to save in studio when using gamepad

		-- need to wait for render frames so on slower devices the leave button highlight will update
		-- otherwise, since on slow devices it takes so long to leave you are left wondering if you pressed the button
		for i = 1, LEAVE_GAME_FRAME_WAITS do
			RunService.RenderStepped:wait()
		end
		local eventName = "LeaveGame"
		self.analytics.EventStream:setRBXEventStream(EVENT_CONTEXT, eventName)
		game:Shutdown()
	end
end

function LeaveButton:render()
	local size = UDim2.new(0, 320, 0, 80)
	local position = self.props.position or UDim2.new(0.5, 0, 0.5, 0)
	local anchorPoint = self.props.anchorPoint or Vector2.new(0.5, 0.5)
	local zIndex = self.props.zIndex
	local text = RobloxTranslator:FormatByKey(LEAVE_GAME_BUTTON_LABEL)
	local textColor = Constants.Color.WHITE
	local selector = RoundedSelectionImage()
	if self.state.focused then
		textColor = Constants.Color.DARK
	end
	local label = Roact.createElement("TextLabel", {
		Text = text,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Font = Enum.Font.SourceSans,
		TextSize = Constants.TextSize.BUTTON,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextColor3 = textColor,
		BackgroundTransparency = 1,
		ZIndex = zIndex + 1,
	})
	return Roact.createElement("ImageButton", {
		Image = Constants.Image.BUTTON,
		Size = size,
		Position = position,
		AnchorPoint = anchorPoint,
		[Roact.Ref] = self.props.objRef,
		[Roact.Event.SelectionGained] = self.onSelectionGained,
		[Roact.Event.SelectionLost] = self.onSelectionLost,
		[Roact.Event.Activated] = self.leaveFunc,
		ImageColor3 = Constants.Color.BLUE,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8, 8, 9, 9),
		SelectionImageObject = selector,
		BackgroundTransparency = 1,
		ZIndex = zIndex,
	},{
		Label = label,
	})
end
return LeaveButton
