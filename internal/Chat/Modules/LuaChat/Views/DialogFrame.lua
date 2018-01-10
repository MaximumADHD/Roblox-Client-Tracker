local Modules = script.Parent.Parent

local BaseScreen = require(Modules.Views.Phone.BaseScreen)
local Create = require(Modules.Create)
local Constants = require(Modules.Constants)
local DialogInfo = require(Modules.DialogInfo)
local DefaultScreenComponent = require(Modules.Components.DefaultScreen)

local DialogFrame = BaseScreen:Template()
DialogFrame.__index = DialogFrame

--Constants
local RIGHT_SIDE_POS = UDim2.new(1, 0, 0, 0)
local LEFT_SIDE_POS = UDim2.new(-1, 0, 0, 0)
local CENTERED_POS = UDim2.new(0, 0, 0, 0)

local FFlagZIndexBehaviorEnabled = settings():GetFFlag("ZIndexBehaviorEnabled")
local FFlagLuaChatUsesZIndexSibling = settings():GetFFlag("LuaChatUsesZIndexSibling")


DialogFrame.TransitionType = {
	Start = "Start",
	Stop = "Stop",
	Resume = "Resume",
	Pause = "Pause",
}

local LuaChatDisplayInFront = settings():GetFFlag("LuaChatDisplayInFront")

function DialogFrame.new(appState, route)
	local self = {}
	self.appState = appState
	self.route = route
	setmetatable(self, DialogFrame)

	self.rbx = Instance.new("ScreenGui")
	if FFlagZIndexBehaviorEnabled and FFlagLuaChatUsesZIndexSibling then
		self.rbx.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	end
	self.rbx.Name = "ChatScreen"

	if LuaChatDisplayInFront then
		--Offseting the display order by 2 in hopes of working around
		--un-reproducable bug where the AE screenGui isn't being de-parented
		self.rbx.DisplayOrder = 3
	else
		self.rbx.DisplayOrder = 1
	end

	self.baseFrame = Create.new "Frame" {
		Visible = false,
		Name = "BaseFrame",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Constants.Color.GRAY6,
		BorderSizePixel = 0,

		Create.new "Frame" {
			Name = "LeftHandFrame",
			Size = UDim2.new(0.37, 0, 1, 0),
			BackgroundTransparency = 1.0,
		},

		Create.new "Frame" {
			Name = "RightHandFrame",
			Size = UDim2.new(0.63, 0, 1, 0),
			Position = UDim2.new(0.37, 0, 0, 0),
			BackgroundTransparency = 1.0,
		},

		Create.new "Frame" {
			Name = "Divider",
			BackgroundColor3 = Constants.Color.GRAY1,
			BackgroundTransparency = Constants.Color.ALPHA_SHADOW_HOVER,
			BorderSizePixel = 0.0,
			Size = UDim2.new(0, 1, 1, 0),
			Position = UDim2.new(0.37, 0, 0, 0),
		},

		Create.new "Frame" {
			Name = "ModalFrameBase",
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = Constants.Color.ALPHA_SHADOW_PRIMARY,
			Visible = false,

			Create.new "TextButton" {
				Name = "TapBlocker",
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1
			},

			Create.new "Frame" {
				Name = "ModalFrame",
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, -360, 1, -36 -36),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1
			}
		}
	}

	self.baseFrame.Parent = self.rbx
	self.leftHandFrame = self.baseFrame.LeftHandFrame
	self.rightHandFrame = self.baseFrame.RightHandFrame
	self.modalFrameBase = self.baseFrame.ModalFrameBase
	self.modalFrame = self.modalFrameBase.ModalFrame
	self.initialized = false

	return self
end

function DialogFrame:Initialize()
	self.baseFrame.Visible = true
	self.initialized = true

	local defaultScreen = DefaultScreenComponent.new(self.appState)
	defaultScreen.rbx.Parent = self.rightHandFrame
end

function DialogFrame:AddDialogFrame(intent)
	if not self.initialized then
		self:Initialize()
	end

	local dialogType = DialogInfo.GetTypeBasedOnIntent(self.appState.store:GetState().FormFactor, intent)

	local newFrame = Create.new "Frame" {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1.0,
	}

	if dialogType == DialogInfo.DialogType.Centered then
		newFrame.Parent = self.baseFrame
	elseif dialogType == DialogInfo.DialogType.Left then
		newFrame.Parent = self.leftHandFrame
	elseif dialogType == DialogInfo.DialogType.Right then
		newFrame.Parent = self.rightHandFrame
	elseif dialogType == DialogInfo.DialogType.Modal then
		newFrame.Parent = self.modalFrame
	elseif dialogType == DialogInfo.DialogType.Popup then
		newFrame.Parent = self.baseFrame
	end

	self:ConfigureModalFrame()

	return newFrame
end

function DialogFrame:ConfigureModalFrame()
	local children = self.modalFrame:GetChildren()
	if #children > 0 then
		self.modalFrameBase.Visible = true
	else
		self.modalFrameBase.Visible = false
	end
end

function DialogFrame:TransitionDialogFrame(frame, intent, otherIntent, transitionType, callback)
	if (not self.appState) or (not intent) or (not otherIntent) then
		if callback ~= nil then
			callback()
		end
		return
	end

	local dialogType = DialogInfo.GetTypeBasedOnIntent(self.appState.store:GetState().FormFactor, intent)
	local otherDialogType = DialogInfo.GetTypeBasedOnIntent(self.appState.store:GetState().FormFactor, otherIntent)

	if dialogType ~= DialogInfo.DialogType.Centered or otherDialogType ~= DialogInfo.DialogType.Centered then
		if callback ~= nil then
			callback()
		end
		return
	end

	local startingPos
	local endingPos
	if transitionType == self.TransitionType.Start then
		startingPos = RIGHT_SIDE_POS
		endingPos = CENTERED_POS
	elseif transitionType == self.TransitionType.Stop then
		startingPos = CENTERED_POS
		endingPos = RIGHT_SIDE_POS
	elseif transitionType == self.TransitionType.Resume then
		startingPos = LEFT_SIDE_POS
		endingPos = CENTERED_POS
	elseif transitionType == self.TransitionType.Pause then
		startingPos = CENTERED_POS
		endingPos = LEFT_SIDE_POS
	end

	frame.rbx.Position = startingPos
	frame.rbx:TweenPosition(endingPos, Constants.Tween.DEFAULT_TWEEN_EASING_DIRECTION,
		Constants.Tween.DEFAULT_TWEEN_STYLE, Constants.Tween.DEFAULT_TWEEN_TIME, true, callback)
end

return DialogFrame