local PlayerService = game:GetService("Players")

local Modules = script.Parent.Parent
local Text = require(Modules.Text)
local GetUser = require(Modules.Actions.GetUser)
local PaddedImageButton = require(Modules.Components.PaddedImageButton)
local Constants = require(Modules.Constants)
local DialogInfo = require(Modules.DialogInfo)

local BaseHeader = {}

--[[
	This type of pseudo-inheritance for components is usually bad, but this is a special exception.
	It is not recommended to do this.
]]
function BaseHeader:Template()
	local class = {}
	for key, value in pairs(self) do
		class[key] = value
	end
	return class
end

function BaseHeader:SetTitle(text)
	local label = self.innerTitles:FindFirstChild("Title")
	if label then
		label.Text = text

		Text.TruncateTextLabel(label, "...")
	end
	self.title = text
end

function BaseHeader:SetDefaultSubtitle()
	if (self.dialogType ~= DialogInfo.DialogType.Centered) and (self.dialogType ~= DialogInfo.DialogType.Left) then
		self:SetSubtitle("")
		return
	end

	local displayText = ""
	local player = PlayerService.LocalPlayer
	if player then
		local userId = tostring(player.UserId)
		local localUser = self.appState.store:GetState().Users[userId]
		if localUser and not localUser.isFetching then
			if player:GetUnder13() then
				displayText = string.format("%s: <13", localUser.name)
			else
				displayText = string.format("%s: 13+", localUser.name)
			end
		else
			self.appState.store:Dispatch(GetUser(userId))
			return
		end
	end

	self:SetSubtitle(displayText)
end

--[[
	Sets the Header's subtitle

	Pass an empty string to hide the subtitle completely.

	Otherwise pass nil to default to the userAge label.
]]
function BaseHeader:SetSubtitle(displayText)
	assert(type(displayText) == "nil" or type(displayText) == "string",
		"Invalid argument number #1 to SetSubtitle, expected string or nil.")

	self.subtitle = displayText

	if displayText == "" then
		self.innerSubtitle.Visible = false
	else
		self.innerSubtitle.Visible = true
		self.innerSubtitle.Text = displayText
	end
end

function BaseHeader:SetBackButtonEnabled(enabled)
	self.backButton.rbx.Visible = enabled
end


function BaseHeader:AddButton(button)
	table.insert(self.buttons, button)
	button.rbx.Parent = self.innerButtons
	button.rbx.LayoutOrder = #self.buttons
end

function BaseHeader:AddContent(content)
	content.rbx.Parent = self.innerContent
end

function BaseHeader:SetConnectionState(connectionState)
	if not self.subtitle then
		self:SetDefaultSubtitle()
	end

	if self.dialogType == DialogInfo.DialogType.Right then
		return
	end

	if connectionState ~= self.connectionState and self.rbx.Parent ~= nil and self.rbx.Parent.Parent ~= nil then
		if connectionState == Enum.ConnectionState.Disconnected then
			-- Tween in the header size to accomodate the disconnect message:
			local size = UDim2.new(1, 0, 0, self.heightOfHeader + self.heightOfDisconnected)
			self.rbx:TweenSize(size, Enum.EasingDirection.Out, Constants.Tween.DEFAULT_TWEEN_STYLE,
				Constants.Tween.DEFAULT_TWEEN_TIME, true);

			-- At the same time as we increase the header size, reveal the message itself:
			local sizeDisconnect = UDim2.new(1, 0, 0, self.heightOfDisconnected)
			self.rbx.Disconnected:TweenSize(sizeDisconnect, Enum.EasingDirection.Out, Constants.Tween.DEFAULT_TWEEN_STYLE,
				Constants.Tween.DEFAULT_TWEEN_TIME, true)
			self.rbx.Disconnected.Visible = true
		else
			-- Tween the header back to conceal the disconnect message:
			local size = UDim2.new(1, 0, 0, self.heightOfHeader)
			self.rbx:TweenSize(size, Enum.EasingDirection.In, Constants.Tween.DEFAULT_TWEEN_STYLE,
				Constants.Tween.DEFAULT_TWEEN_TIME, true);

			-- Immediately scale the disconnect message back down to nothing and hide it:
			local sizeDisconnect = UDim2.new(1, 0, 0, 0)
			self.rbx.Disconnected.Size = sizeDisconnect
			self.rbx.Disconnected.Visible = false
		end
		self.connectionState = connectionState
	end
end

function BaseHeader:GetNewBackButton(dialogType)
	local backButton
	if dialogType == DialogInfo.DialogType.Modal then
		backButton = PaddedImageButton.new(self.appState, "Close", "rbxasset://textures/ui/LuaChat/icons/ic-close-gray2.png")
	elseif dialogType == DialogInfo.DialogType.Popup then
		backButton = PaddedImageButton.new(self.appState, "Close", "rbxasset://textures/ui/LuaChat/icons/ic-close-white.png")
	else
		backButton = PaddedImageButton.new(self.appState, "Back", Constants.PlatformSpecific.BACK_BUTTON_ASSET_ID)
	end
	backButton.rbx.Position = UDim2.new(0, 0, 0.5, 0)
	backButton.rbx.AnchorPoint = Vector2.new(0, 0.5)
	return backButton
end

function BaseHeader:Destroy()
	for _, conn in pairs(self.connections) do
		conn:Disconnect()
	end
	self.connections = {}
	self.buttons = {}
end

return BaseHeader