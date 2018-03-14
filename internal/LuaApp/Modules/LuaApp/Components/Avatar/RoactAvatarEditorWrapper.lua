local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local Modules = CoreGui.RobloxGui.Modules
local Roact = require(Modules.Common.Roact)

local AvatarEditorSetup = require(Modules.Mobile.AvatarEditorSetup)

local RemoveLoadingHUDOniOS = settings():GetFFlag("RemoveLoadingHUDOniOS")

local RoactAvatarEditorWrapper = Roact.Component:extend("RoactAvatarEditorWrapper")

function RoactAvatarEditorWrapper:init()
	if RemoveLoadingHUDOniOS then
		AvatarEditorSetup:Initialize()
	else
		local function notifyAppReady()
			GuiService:BroadcastNotification(self.props.pageType, GuiService:GetNotificationTypeList().APP_READY)
		end
		AvatarEditorSetup:Initialize(notifyAppReady)
	end
	self.isPageOpen = false
end

function RoactAvatarEditorWrapper:didMount()
	self:updateAvatarEditor()
end

function RoactAvatarEditorWrapper:render()
	return nil
end

function RoactAvatarEditorWrapper:didUpdate(prevProps, prevState)
	self:updateAvatarEditor()
end

function RoactAvatarEditorWrapper:willUnmount()
	AvatarEditorSetup:Close()
end

function RoactAvatarEditorWrapper:updateAvatarEditor()
	if not self.isPageOpen and self.props.isVisible then
		AvatarEditorSetup:Open()
		self.isPageOpen = true
	elseif self.isPageOpen and not self.props.isVisible then
		AvatarEditorSetup:Close()
		self.isPageOpen = false
	end
end

return RoactAvatarEditorWrapper