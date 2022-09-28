
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)

local Modules = RobloxGui.Modules
local SettingsHubDirectory = Modules.Settings

local ShareGameDirectory = SettingsHubDirectory.Pages.ShareGame
local FullModalShareGameComponent = require(ShareGameDirectory.Components.FullModalShareGameComponent)
local AppReducer = require(ShareGameDirectory.AppReducer)

local HIDE_INVITE_CONTEXT_BIND = "hideInvitePrompt"

export type InviteCustomizationProps = {
	promptMessage: string?,
	inviteUserId: number?,
}

local InviteToGamePrompt: any = {}
InviteToGamePrompt.__index = InviteToGamePrompt

function InviteToGamePrompt.new(mountTarget: any?)
	local self = {
		mountTarget = mountTarget,
		isActive = false,
	}
	setmetatable(self, InviteToGamePrompt)

	return self
end

function InviteToGamePrompt:withSocialServiceAndLocalPlayer(socialService, localPlayer)
	self.socialService = socialService
	self.localPlayer = localPlayer
	return self
end

function InviteToGamePrompt:withAnalytics(analytics)
	self.analytics = analytics
	return self
end

function InviteToGamePrompt:_createTree(isVisible, props: InviteCustomizationProps?)
	return Roact.createElement(FullModalShareGameComponent, {
		store = Rodux.Store.new(AppReducer, nil, { Rodux.thunkMiddleware }),
		isVisible = isVisible,
		analytics = self.analytics,
		promptMessage = props and props.promptMessage,
		inviteUserId = props and props.inviteUserId,
		onAfterClosePage = function(_)
			-- * "Why are we no-opting sentToUserIds?"
			-- Originally our specs required us to pass the userIds of
			-- invited users to our creators through this event.
			-- After reviewing and observing how this information could be misused,
			-- we have determined we do not want to incentivize inviting friends
			-- needlessly this way and have disabled this feature in the meantime.
			local sentToUserIds = {}
			self:hide(sentToUserIds)
		end,
	})
end

function InviteToGamePrompt:show(props: InviteCustomizationProps?)
	if self.isActive then
		return
	end
	self.isActive = true

	if not self.instance then
		self.instance = Roact.mount(self:_createTree(true, props), self.mountTarget, "invitePrompt")
	else
		self.instance = Roact.update(self.instance, self:_createTree(true, props))
	end

	if self.analytics then
		self.analytics:inputShareGameEntryPoint()
	end

	ContextActionService:BindCoreAction(HIDE_INVITE_CONTEXT_BIND, function(_, userInputState, inputObject)
		if userInputState == Enum.UserInputState.Begin then
			self:hide()
		end
	end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Backspace)
end

function InviteToGamePrompt:hide(sentToUserIds)
	if not self.isActive then
		return
	end
	self.isActive = false

	self.instance = Roact.update(self.instance, self:_createTree(false))
	if self.socialService and self.localPlayer then
		self.socialService:InvokeGameInvitePromptClosed(self.localPlayer, {})
	end

	ContextActionService:UnbindCoreAction(HIDE_INVITE_CONTEXT_BIND)
	GuiService.SelectedCoreObject = nil
	GuiService:RemoveSelectionGroup("invitePrompt")
end

function InviteToGamePrompt:destruct()
	if self.instance then
		Roact.unmount(self.instance)
	end
end

return InviteToGamePrompt
