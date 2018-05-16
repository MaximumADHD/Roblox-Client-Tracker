--[[
		A simple base screen for Roact components.

		Props:
			BackPageTitle : string - The title of the parent page
			Content : Roact.Component - The content of the frame
]]
local RobloxGui = game:GetService("CoreGui").RobloxGui
local Modules = RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local GlobalSettings = require(Modules.Shell.GlobalSettings)
local ContextActionEvent = require(Modules.Shell.Components.ContextActionEvent)

local BaseScreen = Roact.PureComponent:extend("BaseScreen")

local BACK_IMAGE = "rbxasset://textures/ui/Shell/Icons/BackIcon@1080.png"
local BACK_IMAGE_SIZE = 48

function BaseScreen:init()
	self.onBack = function(actionName, inputState, inputObject)
		print("onBack")
		if inputState == Enum.UserInputState.Begin then
			self._seenPressed = true
		elseif inputState == Enum.UserInputState.End and self._seenPressed then
			self.props.onUnmount()
		end
	end
	self.onCreate = function(rbx)
	end
end

function BaseScreen:render()
	local backPageTitle = self.props.BackPageTitle
	local onCreate = self.props.OnCreate or self.onCreate
	return Roact.createElement("Frame",
	{
		[Roact.Ref] = function(rbx)
			onCreate(rbx)
		end,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0.5,0,0.5,0),
		AnchorPoint = Vector2.new(0.5,0.5),
		BackgroundTransparency = 1,
	},{
		backImage = Roact.createElement("ImageButton",
		{
			Size = UDim2.new(0,BACK_IMAGE_SIZE,0,BACK_IMAGE_SIZE),
			BackgroundTransparency = 1,
			Image = BACK_IMAGE,
			Selectable = false,
			[Roact.Event.Activated] = self.onBack
		}),
		BackPageTitleLabel = Roact.createElement("TextLabel",
		{
			Size = UDim2.new(0, 0, 0, BACK_IMAGE_SIZE),
			Position = UDim2.new(0,BACK_IMAGE_SIZE+8,0,BACK_IMAGE_SIZE/2),
			AnchorPoint = Vector2.new(0,0.5),
			BackgroundTransparency = 1,
			Font = GlobalSettings.RegularFont,
			FontSize = GlobalSettings.ButtonSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = GlobalSettings.WhiteTextColor,
			Text = backPageTitle
		}),
		-- NOTE: This will need to be changed when the screen is actually connected to the tree.
		BackConnector = Roact.createElement(ContextActionEvent, {
			name = "GoBackTo" .. backPageTitle,
			callback = self.onBack,
			binds = { Enum.KeyCode.ButtonB },
		}),
		view = Roact.createElement("Frame",
		{
			Size = UDim2.new(1,0,1,-(BACK_IMAGE_SIZE+2)),
			BackgroundTransparency = 1,
			Position = UDim2.new(0,0,0,(BACK_IMAGE_SIZE+2)),
		},{self.props.Content})
	})
end



return BaseScreen