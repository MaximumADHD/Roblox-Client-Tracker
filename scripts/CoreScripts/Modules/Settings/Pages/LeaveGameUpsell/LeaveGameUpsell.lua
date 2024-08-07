local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)

local Roact = require(CorePackages.Roact)
local React = require(CorePackages.Workspace.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Button = UIBlox.App.Button.Button
local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local useStyle = UIBlox.Core.Style.useStyle
local PhoneLegalDisclaimer = require(CorePackages.Workspace.Packages.PhoneUpsell).PhoneLegalDisclaimer
local InGameContainer = require(CorePackages.Workspace.Packages.PhoneUpsell).InGameContainer
local PostPhoneUpsellDisplayed =
	require(CorePackages.Workspace.Packages.PhoneUpsell).Http.Requests.PostPhoneUpsellDisplayed
local PhoneUpsellController = require(CorePackages.Workspace.Packages.PhoneUpsell).PhoneUpsellController
local PhoneConstants = require(CorePackages.Workspace.Packages.PhoneUpsell).Constants
local RoactNetworking = require(CorePackages.Workspace.Packages.RoactServiceTags).RoactNetworking
local useAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy).useAppPolicy
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local useRoactService = require(CorePackages.Workspace.Packages.RobloxAppHooks).useRoactService
local leaveGame = require(RobloxGui.Modules.Settings.leaveGame)

RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")

local Constants =
	require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local LEAVE_GAME_ACTION = "LeaveGameCancelAction"

local PageInstance = nil

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

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
					PhoneUpsellController.openPhoneUpsell({
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
			PhoneLegalDisclaimer = React.createElement(PhoneLegalDisclaimer, {
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
					props.showWebpage(PhoneConstants.TERMS_OF_SERVICE_URL)
				end,
				onPrivacyPolicyClick = function()
					props.showWebpage(PhoneConstants.PRIVACY_POLICY_URL)
				end,
				LayoutOrder = 4,
			}),
		})
	end

	this.LeaveGameComponent = function(props)
		local style = useStyle()
		local localizedText = useLocalization({
			confirmLeave = "Feature.VerificationUpsell.Action.ConfirmLeave",
			dontLeave = "Feature.VerificationUpsell.Action.DontLeave",
			returnWithVoice = "Feature.VerificationUpsell.Action.ReturnWithVoice",
		})
		local upsellCompleted, setUpsellCompleted = React.useState(false)
		local showUpsell = not upsellCompleted
		local upsellType = this.upsellType
		local leaveButtonRef = React.useRef(nil)
		local voiceEnabled, setVoiceEnabled = React.useState(false)

		local networking = useRoactService(RoactNetworking)

		React.useEffect(function()
			this.Displayed.Event:connect(function()
				GuiService.SelectedCoreObject = leaveButtonRef.current
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
					this.postSent = true
				end
			end)
		end, {})

		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
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
										and upsellCompleted
										and upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
									then
										VoiceChatServiceManager:EnableVoice()
										setVoiceEnabled(true)
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
								text = if upsellCompleted
										and upsellType == VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
									then localizedText.returnWithVoice
									else localizedText.dontLeave,
								onActivated = this.DontLeaveFromButton,
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
						LayoutOrder = 5,
						showWebpage = props.showWebpage,
						onUpsellComplete = function()
							setUpsellCompleted(true)
						end,
						setVoiceEnabled = setVoiceEnabled,
					}),
				})
				else nil,
		})
	end

	local container = React.createElement(
		InGameContainer,
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

-- We connect to the Displayed event in React tree so that we can access ref, but can connect to Hidden event here
PageInstance.Hidden.Event:connect(function()
	ContextActionService:UnbindCoreAction(LEAVE_GAME_ACTION)
end)

function PageInstance:SetUpsellProp(upsellProp)
	self.upsellType = upsellProp
	self.handle = Roact.update(
		self.handle,
		React.createElement(
			InGameContainer,
			{},
			React.createElement(self.LeaveGameComponent, { showWebpage = function() end }, {})
		)
	)
end

return PageInstance
