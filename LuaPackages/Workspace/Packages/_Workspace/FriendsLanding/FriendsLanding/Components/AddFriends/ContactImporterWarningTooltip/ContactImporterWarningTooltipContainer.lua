local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AppStorageService = game:GetService("AppStorageService")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local Roact = dependencies.Roact
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local Dash = dependencies.Dash
local llama = dependencies.llama
local ContactImporterWarningSeen = require(FriendsLanding.installReducer.Actions.ContactImporterWarningSeen)
local RoactRodux = dependencies.RoactRodux
local HideableTooltip = require(script.Parent.HideableTooltip)
local withLocalization = dependencies.withLocalization
local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local ImpressionEvents = require(FriendsLanding.FriendsLandingAnalytics.ImpressionEvents)
local contactImporterTooltip = require(FriendsLanding.Utils.contactImporterTooltip)

local getFFlagShowContactImporterTooltipOnce = require(FriendsLanding.Flags.getFFlagShowContactImporterTooltipOnce)
local getFFlagMockAppStorageService = require(FriendsLanding.Flags.getFFlagMockAppStorageService)

local Constants = require(FriendsLanding.Common.Constants)
local TextKeys = require(FriendsLanding.Common.TextKeys)

type Props = {
	appStorageService: any,
}

local mapStateToProps = function(state, props: Props)
	local contactImporterFriendRequests = getDeepValue(
		state,
		Constants.RODUX_KEY .. ".ContactImporterWarning.contactImporterFriendRequests"
	) or {}
	local seenContactImporterFriendRequest = getDeepValue(
		state,
		Constants.RODUX_KEY .. ".ContactImporterWarning.seenContactImporterFriendRequest"
	) or false
	local hasRequestsFromContactImporter = not llama.isEmpty(contactImporterFriendRequests)

	if getFFlagShowContactImporterTooltipOnce() then
		if getFFlagMockAppStorageService() then
			seenContactImporterFriendRequest = contactImporterTooltip.getKey(props.appStorageService)
		else
			seenContactImporterFriendRequest = contactImporterTooltip.getKey(AppStorageService)
		end
	end
	return {
		showTooltip = hasRequestsFromContactImporter and not seenContactImporterFriendRequest,
	}
end

local mapDispatchToProps = function(dispatch)
	return {
		onClick = function()
			dispatch(ContactImporterWarningSeen())
		end,
	}
end

local ContactImporterWarningTooltipContainer = Roact.PureComponent:extend("ContactImporterWarningTooltipContainer")

ContactImporterWarningTooltipContainer.defaultProps = {
	appStorageService = AppStorageService,
}

function ContactImporterWarningTooltipContainer:render()
	return withLocalization({
		bodyText = TextKeys.CONTACT_IMPORTER_TOOLTIP_BODY,
		headerText = TextKeys.CONTACT_IMPORTER_TOOLTIP_HEADER,
	})(function(localizedStrings)
		return Roact.createElement(
			HideableTooltip,
			Dash.join(self.props, {
				bodyText = localizedStrings.bodyText,
				headerText = localizedStrings.headerText,
				analytics = Dash.None,
			})
		)
	end)
end

function ContactImporterWarningTooltipContainer:didMount()
	if self.props.showTooltip then
		self.props.analytics:impressionEvent(ImpressionEvents.ContactWarningSeen)
	end
end

function ContactImporterWarningTooltipContainer:didUpdate(prevProps)
	if self.props.showTooltip and prevProps.showTooltip == false then
		self.props.analytics:impressionEvent(ImpressionEvents.ContactWarningSeen)
	end
end

local ContactImporterWarningTooltipContainerConnected =
	RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ContactImporterWarningTooltipContainer)

ContactImporterWarningTooltipContainerConnected = FriendsLandingAnalytics.connect(function(analytics)
	return {
		analytics = analytics,
	}
end)(ContactImporterWarningTooltipContainerConnected)

return {
	Component = ContactImporterWarningTooltipContainerConnected,
	mapStateToProps = mapStateToProps,
	mapDispatchToProps = mapDispatchToProps,
}
