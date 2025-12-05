local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)

local Modules = RobloxGui.Modules
local SettingsHubDirectory = Modules.Settings
local Constants = require(Modules.Settings.Pages.ShareGame.Constants)
local InviteEvents = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents

local ShareGameDirectory = SettingsHubDirectory.Pages.ShareGame
local FullModalShareGameComponent = require(ShareGameDirectory.Components.FullModalShareGameComponent)
local AppReducer = require(ShareGameDirectory.AppReducer)

local renderWithCoreScriptsStyleProvider = require(Modules.Common.renderWithCoreScriptsStyleProvider)

local InviteStore = require(ShareGameDirectory.InviteStore)
local GetFFlagEnableSharedInviteStore = require(Modules.Flags.GetFFlagEnableSharedInviteStore)
local GetFFlagAbuseReportAnalyticsHasLaunchData =
	require(Modules.Settings.Flags.GetFFlagAbuseReportAnalyticsHasLaunchData)

local HIDE_INVITE_CONTEXT_BIND = "hideInvitePrompt"

export type InviteCustomizationProps = {
	promptMessage: string?,
	inviteUserId: number?,
	launchData: string?,
	inviteMessageId: string?,
	isLoading: boolean?,
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

function InviteToGamePrompt:_createTree(isVisible: boolean, props: InviteCustomizationProps?)
	local store = if GetFFlagEnableSharedInviteStore()
		then InviteStore
		else Rodux.Store.new(AppReducer, nil, { Rodux.thunkMiddleware })
	return renderWithCoreScriptsStyleProvider({
		FullModalShareGame = Roact.createElement(FullModalShareGameComponent, {
			store = store,
			isVisible = isVisible,
			analytics = self.analytics,
			promptMessage = props and props.promptMessage,
			inviteUserId = props and props.inviteUserId,
			inviteMessageId = props and props.inviteMessageId,
			launchData = props and props.launchData,
			isLoading = props and props.isLoading,
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
	})
end

function InviteToGamePrompt:show(props: InviteCustomizationProps?)
	if self.isActive then
		return
	end
	self.isLoading = props and props.isLoading
	self.isActive = not self.isLoading

	if props then
		local triggerId = if props.inviteUserId
			then Constants.Triggers.DeveloperSingle
			else Constants.Triggers.DeveloperMultiple
		local isLaunchDataProvided = props.launchData ~= nil and props.launchData ~= ""
		self.analytics:sendEvent(
			triggerId,
			InviteEvents.ModalOpened,
			if GetFFlagAbuseReportAnalyticsHasLaunchData() then { isLaunchDataProvided = isLaunchDataProvided } else nil
		)
	end

	if not self.instance then
		self.instance = Roact.mount(self:_createTree(true, props), self.mountTarget, "invitePrompt")
	else
		self.instance = Roact.update(self.instance, self:_createTree(true, props))
	end

	if self.analytics and not self.isLoading then
		self.analytics:inputShareGameEntryPoint()
	end

	ContextActionService:BindCoreAction(HIDE_INVITE_CONTEXT_BIND, function(_, userInputState, inputObject)
		if userInputState == Enum.UserInputState.Begin then
			self:hide()
		end
	end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Backspace)
end

function InviteToGamePrompt:hide(sentToUserIds)
	if not (self.isActive or self.isLoading) then
		return
	end
	self.isLoading = false
	self.isActive = false

	self.instance = Roact.update(self.instance, self:_createTree(false))
	if self.socialService and self.localPlayer then
		self.socialService:InvokeGameInvitePromptClosed(self.localPlayer, {})
	end

	ContextActionService:UnbindCoreAction(HIDE_INVITE_CONTEXT_BIND)
	GuiService.SelectedCoreObject = nil; -- AddSelectionParent/RemoveSelectionGroup is deprecated
	(GuiService :: any):RemoveSelectionGroup("invitePrompt")
end

function InviteToGamePrompt:destruct()
	if self.instance then
		Roact.unmount(self.instance)
	end
end

return InviteToGamePrompt
