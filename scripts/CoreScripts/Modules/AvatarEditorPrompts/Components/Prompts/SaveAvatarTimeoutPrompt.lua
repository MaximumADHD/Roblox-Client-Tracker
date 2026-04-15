--!nonstrict
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local useSignalState = require(CorePackages.Packages.SignalsReact).useSignalState

local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local useDispatch = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useDispatch

local AvatarExperienceFlags = require(CorePackages.Workspace.Packages.AvatarExperienceFlags)
local FFlagAXTimeoutPromptLabelAbuseTypeFallback = AvatarExperienceFlags.FFlagAXTimeoutPromptLabelAbuseTypeFallback

local AvatarExperienceCommon = require(CorePackages.Workspace.Packages.AvatarExperienceCommon)
local AXPartialPageModal = AvatarExperienceCommon.Components.AXPartialPageModal
local GetTimeoutStatusStore = AvatarExperienceCommon.Stores.getTimeoutStatusStore
local formatTimeoutEndTime = AvatarExperienceCommon.Utils.formatTimeoutEndTime
local labelAbuseTypeMapping = AvatarExperienceCommon.Constants.LabelAbuseTypeMapping
local Foundation = require(CorePackages.Packages.Foundation)
local View = Foundation.View
local Text = Foundation.Text
local ButtonVariant = Foundation.Enums.ButtonVariant
local InputSize = Foundation.Enums.InputSize

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local CloseOpenPromptThunk = require(AvatarEditorPrompts.Thunks.CloseOpenPrompt)

local function SaveAvatarTimeoutPrompt()
	local dispatch = useDispatch()
	local timeoutStore = GetTimeoutStatusStore()
	local details = useSignalState(timeoutStore.getTimeoutDetails)

	local closePrompt = React.useCallback(function()
		dispatch(CloseOpenPromptThunk)
	end, { dispatch } :: { any })

	local abuseTypeTranslationKey: string?
	if FFlagAXTimeoutPromptLabelAbuseTypeFallback then
		if details and labelAbuseTypeMapping then
			local mapped = labelAbuseTypeMapping[details.labelTranslationKey]
			abuseTypeTranslationKey = if mapped then mapped else "Feature.NotApproved.Label.AbuseType.Other"
		else
			abuseTypeTranslationKey = "Feature.NotApproved.Label.AbuseType.Other"
		end
	else
		if details then
			abuseTypeTranslationKey = labelAbuseTypeMapping[details.labelTranslationKey]
		else
			abuseTypeTranslationKey = nil
		end
	end
	local localizedRule = useLocalization({
		rule = abuseTypeTranslationKey,
	})
	local localized = useLocalization({
		titleText = "Feature.Timeout.Prompt.SaveTitleText",
		bodyText = {
			"Feature.Timeout.Prompt.BodyText",
			rule = localizedRule.rule or "",
			time = if details then formatTimeoutEndTime(details.endDate) else "",
		},
		closeText = "Feature.Timeout.Label.OK",
	})

	return React.createElement(
		AXPartialPageModal :: (AvatarExperienceCommon.AXPartialPageModalPropType) -> React.ReactNode,
		{
			onBackgroundPress = closePrompt,
			buttonStackProps = {
				rowLayout = false,
				buttons = {
					{
						props = {
							onActivated = closePrompt,
							text = localized.closeText,
							variant = ButtonVariant.Standard,
							size = InputSize.Medium,
						},
					},
				} :: { any },
			},
		},
		{
			ViewFrame = React.createElement(View, {
				tag = "auto-y size-full-0 padding-bottom-xxlarge col align-x-left align-y-top",
			}, {
				PromptBodyTitle = React.createElement(Text, {
					tag = "auto-xy padding-bottom-small text-align-x-left text-heading-small text-wrap",
					Text = localized.titleText,
					LayoutOrder = 2,
				}),
				PromptBodyText = React.createElement(Text, {
					tag = "auto-xy text-align-x-left text-body-large text-wrap font-family-code",
					Text = localized.bodyText,
					LayoutOrder = 3,
				}),
			}),
		}
	)
end

return SaveAvatarTimeoutPrompt
