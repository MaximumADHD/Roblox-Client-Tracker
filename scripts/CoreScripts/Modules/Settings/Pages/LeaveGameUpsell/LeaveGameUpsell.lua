local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Button = UIBlox.App.Button.Button
local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local useStyle = UIBlox.Core.Style.useStyle
local PhoneLegalDisclaimer = require(CorePackages.Workspace.Packages.PhoneUpsell).PhoneLegalDisclaimer
local InExperienceProviderContainer = require(CorePackages.Workspace.Packages.InExperienceContainer).InExperienceProviderContainer
local PostPhoneUpsellDisplayed =
	require(CorePackages.Workspace.Packages.PhoneUpsell).Http.Requests.PostPhoneUpsellDisplayed
local PhoneUpsellController = require(CorePackages.Workspace.Packages.PhoneUpsell).PhoneUpsellController
local PhoneConstants = require(CorePackages.Workspace.Packages.PhoneUpsell).Constants
local RoactNetworking = require(CorePackages.Workspace.Packages.RoactServiceTags).RoactNetworking
local useAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy).useAppPolicy
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local useRoactService = require(CorePackages.Workspace.Packages.RobloxAppHooks).useRoactService
local useInputType = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.useInputType
local InputTypeConstants = require(CorePackages.Workspace.Packages.InputType).InputTypeConstants
local ReactUtils = require(CorePackages.Packages.ReactUtils)
local useEventConnection = ReactUtils.useEventConnection
local getPlatformTarget = require(CorePackages.Workspace.Packages.Analytics).getPlatformTarget
local EventStreamConstants = require(CorePackages.Workspace.Packages.AuthAnalytics).EventStreamConstants
local leaveGame = require(RobloxGui.Modules.Settings.leaveGame)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMSettingsAddPlaySessionID = SharedFlags.FFlagIEMSettingsAddPlaySessionID
local getFFlagDisablePVUpsellDataConsent = SharedFlags.GetFFlagDisablePVUpsellDataConsent

local EngineFeatureRbxAnalyticsServiceExposePlaySessionId =
	game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

local GetFFlagAddMorePhoneUpsellEvents =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAddMorePhoneUpsellEvents

RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")

local Constants =
	require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local UpsellStates = {
	Incomplete = "Incomplete",
	Completed = "Completed",
	CompletedAndClosed = "CompletedAndClosed",
}

local eventContext = "verificationUpsell"

local LEAVE_GAME_ACTION = "LeaveGameCancelAction"

local PageInstance = nil

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	this.playsessionid = ""
	if FFlagIEMSettingsAddPlaySessionID and EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		this.playsessionid = AnalyticsService:GetPlaySessionId()
	end

	this.DontLeaveFunc = function(isUsingGamepad)
		if this.HubRef then
			this.HubRef:PopMenu(isUsingGamepad, true)
		end

		AnalyticsService:SetRBXEventStream(
			Constants.AnalyticsTargetName,
			Constants.AnalyticsInGameMenuName,
			Constants.AnalyticsLeaveGameName,
			{
				confirmed = Constants.AnalyticsCancelledName,
				universeid = tostring(game.GameId),
				source = Constants.AnalyticsLeaveGameSource,
				playsessionid = if FFlagIEMSettingsAddPlaySessionID then this.playsessionid else nil,
			}
		)
	end
	this.DontLeaveFromHotkey = function(name, state, input)
		if state == Enum.UserInputState.Begin then
			local isUsingGamepad = input.UserInputType == Enum.UserInputType.Gamepad1
				or input.UserInputType == Enum.UserInputType.Gamepad2
				or input.UserInputType == Enum.UserInputType.Gamepad3
				or input.UserInputType == Enum.UserInputType.Gamepad4

			this.DontLeaveFunc(isUsingGamepad)
		end
	end
	this.DontLeaveFromButton = function(isUsingGamepad)
		this.DontLeaveFunc(isUsingGamepad)
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader = nil -- no tab for this page

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "LeaveGameUpsellPage"
	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false
	this.DisableTopPadding = true

	this.UpsellComponent = function(props)
		local upsellType = this.upsellType
		local style = useStyle()
		local localizedText = useLocalization({
			headerKey = if upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
				then "Feature.VerificationUpsell.Heading.UnlockVoiceChat"
				else "Feature.VerificationUpsell.Heading.DontLoseAccess",
			bodyKey = if upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
				then "Feature.VerificationUpsell.Description.UnlockVoiceChatBody"
				else "Feature.VerificationUpsell.Description.RecoverAccountEasily",
			voiceConsent = "Feature.VerificationUpsell.Description.VoiceLegalConsent2",
			voiceDisclaimer = "Feature.VerificationUpsell.Description.VoiceLegalDisclaimer2",
			button = "Feature.VerificationUpsell.Action.AddPhoneNumber",
			termsOfUse = "Feature.VerificationUpsell.Action.SMSTerms",
			privacyPolicy = "Feature.VerificationUpsell.Action.Privacy",
		})
		localizedText.voiceDisclaimer = localizedText.voiceDisclaimer:gsub("{buttonText}", localizedText.button)
		local requireExplicitVoiceConsent = useAppPolicy(function(appPolicy)
			return upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
				and appPolicy.RequireExplicitVoiceConsent()
		end)
		local legalChecked, setLegalChecked = React.useState(false)

		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = props.LayoutOrder,
		}, {
			ListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 12),
			}),
			Header = React.createElement(StyledTextLabel, {
				text = localizedText.headerKey,
				fontStyle = style.Font.Header2,
				colorStyle = style.Theme.TextEmphasis,
				layoutOrder = 1,
			}),
			Body = React.createElement(StyledTextLabel, {
				text = localizedText.bodyKey,
				textWrapped = true,
				size = UDim2.new(1, 0, 0, 0),
				automaticSize = Enum.AutomaticSize.Y,
				fontStyle = style.Font.Body,
				lineHeight = 1.1,
				colorStyle = style.Theme.TextDefault,
				layoutOrder = 2,
			}),
			Button = React.createElement(Button, {
				buttonType = ButtonType.Secondary,
				size = UDim2.new(1, 0, 0, style.Tokens.Global.Size_600),
				layoutOrder = 3,
				text = localizedText.button,
				onActivated = function()
					this.HubRef:SetVisibility(false, true)
					if GetFFlagAddMorePhoneUpsellEvents() then
						AnalyticsService:SendEventDeferred(getPlatformTarget(), eventContext, "modalAction", {
							origin = props.origin,
							btn = EventStreamConstants.Button.Continue,
							section = props.section,
						})
					end
					PhoneUpsellController.openPhoneUpsell({
						origin = props.origin,
						eventContext = "verificationUpsell",
						onSuccessBeforeToast = function()
							VoiceChatServiceManager:DisablePhoneVerificationUpsell()
							props.onUpsellComplete()
							this.HubRef:SetVisibility(true, false)
							this.HubRef:SwitchToPage(this.HubRef.LeaveGameUpsellPage, true)
						end,
						onSuccess = function()
							if upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat then
								VoiceChatServiceManager:EnableVoice()
								props.setVoiceEnabled(true)
							end
						end,
					})
				end,
				isDisabled = requireExplicitVoiceConsent and not legalChecked,
			}),
			PhoneLegalDisclaimer = if not getFFlagDisablePVUpsellDataConsent()
				then React.createElement(PhoneLegalDisclaimer, {
					legalText = if requireExplicitVoiceConsent
						then localizedText.voiceConsent
						else localizedText.voiceDisclaimer,
					termsOfUse = localizedText.termsOfUse,
					privacyPolicy = localizedText.privacyPolicy,
					showLegalText = upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat,
					showLegalButtons = true,
					showLegalTextCheckbox = requireExplicitVoiceConsent,
					legalTextChecked = legalChecked,
					setLegalTextChecked = function()
						setLegalChecked(not legalChecked)
					end,
					onTermsOfUseClick = function()
						if GetFFlagAddMorePhoneUpsellEvents() then
							AnalyticsService:SendEventDeferred(
								getPlatformTarget(),
								eventContext,
								"modalAction",
								{ origin = props.origin, field = "termsOfService", section = props.section }
							)
						end
						props.showWebpage(PhoneConstants.TERMS_OF_SERVICE_URL)
					end,
					onPrivacyPolicyClick = function()
						if GetFFlagAddMorePhoneUpsellEvents() then
							AnalyticsService:SendEventDeferred(
								getPlatformTarget(),
								eventContext,
								"modalAction",
								{ origin = props.origin, field = "privacyPolicy", section = props.section }
							)
						end
						props.showWebpage(PhoneConstants.PRIVACY_POLICY_URL)
					end,
					LayoutOrder = 4,
				})
				else nil,
		})
	end

	this.LeaveGameComponent = function(props)
		local style = useStyle()
		local localizedText = useLocalization({
			confirmLeave = "Feature.VerificationUpsell.Action.ConfirmLeave",
			dontLeave = "Feature.VerificationUpsell.Action.DontLeave",
			returnWithVoice = "Feature.VerificationUpsell.Action.ReturnWithVoice",
		})
		local upsellState, setUpsellState = React.useState(UpsellStates.Incomplete)
		local showUpsell = upsellState == UpsellStates.Incomplete
		local upsellType = this.upsellType
		local origin = if upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
			then "exitConfirmationScreenVoice"
			else "exitConfirmationScreenSecurity"
		local section = if GetFFlagAddMorePhoneUpsellEvents()
			then (if upsellState == UpsellStates.Incomplete then "entry" else "verifyPhoneSuccess")
			else nil
		local leaveButtonRef = React.useRef(nil)
		local voiceEnabled, setVoiceEnabled = React.useState(false)

		local networking = useRoactService(RoactNetworking)

		local inputType = useInputType()

		local displayedCallback = function()
			if inputType ~= InputTypeConstants.Touch then
				GuiService.SelectedCoreObject = leaveButtonRef.current
			end
			ContextActionService:BindCoreAction(
				LEAVE_GAME_ACTION,
				this.DontLeaveFromHotkey,
				false,
				Enum.KeyCode.ButtonB
			)

			if not this.postSent then
				local result = PostPhoneUpsellDisplayed(
					networking,
					VoiceConstants.EXIT_CONFIRMATION_PHONE_UPSELL_IXP_LAYER,
					os.time(),
					true,
					true
				)
				result:catch(function(error)
					-- It's fine if this fails, just means the user will see upsell again on next session.
				end)

				if GetFFlagAddMorePhoneUpsellEvents() then
					AnalyticsService:SendEventDeferred(getPlatformTarget(), eventContext, "modalAction", {
						origin = props.origin,
						aType = EventStreamConstants.ActionType.Shown,
						section = props.section,
					})
				end
				this.postSent = true
			end
		end

		local hiddenCallback = function()
			ContextActionService:UnbindCoreAction(LEAVE_GAME_ACTION)
			if upsellState == UpsellStates.Completed then
				setUpsellState(UpsellStates.CompletedAndClosed)
			end
		end

		useEventConnection(this.Displayed.Event, displayedCallback)
		useEventConnection(this.Hidden.Event, hiddenCallback)

		-- Really this should be responsive, but setting up the responsive container when this component is getting modified for Up Next
		-- Isn't worth the effort / perf cost. If this comment still exists after a few months then replace this with responsive breakpoint
		-- TODO ACCID-1431 change this as described above
		local verticalOffset = if RobloxGui.AbsoluteSize.Y < 500 or RobloxGui.AbsoluteSize.X < 500 then 0 else 200

		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 0, verticalOffset),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			ListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			LeaveGame = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 1,
			}, {
				ListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, style.Tokens.Global.Space_300),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				LeaveGameButtons = React.createElement(ButtonStack, {
					buttons = {
						{
							buttonType = ButtonType.PrimarySystem,
							isDefaultChild = true,
							props = {
								layoutOrder = 1,
								text = localizedText.confirmLeave,
								onActivated = function()
									-- If user tries to leave before the phone verified toast is finished showing, make sure we send enable voice call first
									if
										not voiceEnabled
										and (upsellState == UpsellStates.Completed or upsellState == UpsellStates.CompletedAndClosed)
										and upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
									then
										VoiceChatServiceManager:EnableVoice()
										setVoiceEnabled(true)
									end
									if GetFFlagAddMorePhoneUpsellEvents() then
										AnalyticsService:SendEventDeferred(
											getPlatformTarget(),
											eventContext,
											"formInteraction",
											{ origin = origin, btn = "confirmLeave", section = section }
										)
									end
									leaveGame(false)
								end,
								buttonRef = leaveButtonRef,
							},
						} :: any,
						{
							buttonType = ButtonType.Secondary,
							props = {
								layoutOrder = 2,
								text = if upsellState == UpsellStates.Completed
										and upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
									then localizedText.returnWithVoice
									else localizedText.dontLeave,
								onActivated = function()
									if GetFFlagAddMorePhoneUpsellEvents() then
										if
											upsellState == UpsellStates.Completed
											and upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
										then
											AnalyticsService:SendEventDeferred(
												getPlatformTarget(),
												eventContext,
												"formInteraction",
												{ origin = origin, btn = "returnWithVoice", section = section }
											)
										elseif upsellState == UpsellStates.Incomplete then
											AnalyticsService:SendEventDeferred(
												getPlatformTarget(),
												eventContext,
												"modalAction",
												{
													origin = origin,
													aType = EventStreamConstants.ActionType.Dismiss,
													section = section,
												}
											)
										end
									end
									this.DontLeaveFromButton()
								end,
							},
						},
					},
					buttonHeight = style.Tokens.Global.Size_600,
					disableGamepadRefs = true,
					isRoactGamepadEnabled = false,
				}),
			}),
			TopSpacer = React.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, style.Tokens.Global.Space_300),
			}),
			UpsellComponents = if showUpsell
				then React.createElement(React.Fragment, {}, {
					Divider = React.createElement("Frame", {
						LayoutOrder = 3,
						BackgroundColor3 = style.Tokens.Semantic.Color.Common.Divider.Color3,
						BackgroundTransparency = style.Tokens.Semantic.Color.Common.Divider.Transparency,
						BorderSizePixel = 0,
						Size = UDim2.new(1, 0, 0, 1),
					}),
					BottomSpacer = React.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 4,
						Size = UDim2.new(1, 0, 0, style.Tokens.Global.Space_300),
					}),
					Upsell = React.createElement(this.UpsellComponent, {
						origin = origin,
						section = section,
						LayoutOrder = 5,
						showWebpage = props.showWebpage,
						onUpsellComplete = function()
							setUpsellState(UpsellStates.Completed)
						end,
						setVoiceEnabled = setVoiceEnabled,
					}),
				})
				else nil,
		})
	end

	local container = React.createElement(
		InExperienceProviderContainer,
		{},
		React.createElement(this.LeaveGameComponent, { showWebpage = function() end }, {})
	)

	this.handle = Roact.mount(container, this.Page, "LeaveGameUpsell")

	this.Page.Size = UDim2.new(1, 0, 0, 0)
	this.Page.AutomaticSize = Enum.AutomaticSize.Y

	return this
end

----------- Public Facing API Additions --------------
PageInstance = Initialize()

function PageInstance:SetUpsellProp(upsellProp)
	-- This page doesn't get shown if theres no upsell. This prevents the logic on this page from getting
	-- messed up after the upsell finishes and all entrypoints are disabled
	if upsellProp == VoiceConstants.PHONE_UPSELL_VALUE_PROP.None then
		return
	end

	self.upsellType = upsellProp
	self.handle = Roact.update(
		self.handle,
		React.createElement(
			InExperienceProviderContainer,
			{},
			React.createElement(self.LeaveGameComponent, { showWebpage = function() end }, {})
		)
	)
end

return PageInstance
