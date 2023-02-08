--!nonstrict
local Root = script.Parent
local Packages = Root.Parent

local AppSystemBarPlacements = require(Packages.AppSystemBar).Enum.Placements
local IsVRAppBuild = require(Packages.AppCommonLib).IsVRAppBuild

local SharedFlags = require(Packages.SharedFlags)
local isSubjectToDesktopPolicies = SharedFlags.isSubjectToDesktopPolicies
local getFFlagLuaProfileShareWithDesktopPolicy = SharedFlags.getFFlagLuaProfileShareWithDesktopPolicy
local GetFFlagEnableSwapToSourceButton = SharedFlags.GetFFlagEnableSwapToSourceButton
local FFlagDesktopLaunchLinksInExternalBrowser = SharedFlags.FFlagDesktopLaunchLinksInExternalBrowser
local GetFFlagLuaAppUseOmniRecDefaultPolicy = SharedFlags.GetFFlagLuaAppUseOmniRecDefaultPolicy
local GetFFlagEnableTopBarVRPolicyOverride = SharedFlags.GetFFlagEnableTopBarVRPolicyOverride
local isRunningInStudio = require(Packages.AppCommonLib).isRunningInStudio
local GetFFlagUseVoiceExitBetaLanguage = SharedFlags.GetFFlagUseVoiceExitBetaLanguage
local GetFFlagVRAvatarExperienceNoLandingPage = SharedFlags.GetFFlagVRAvatarExperienceNoLandingPage
local getFFlagLuaAppDiscoverPageGrid = SharedFlags.getFFlagLuaAppDiscoverPageGrid

local FFlagUseGUACforDUARPolicy = game:DefineFastFlag("UseGUACforDUARPolicy", false)
local FFlagOpenCreateGamesInExternalBrowser = game:DefineFastFlag("OpenCreateGamesInExternalBrowser", false)
local FFLagLuaAppEnableRecommendedCarouselForDesktop =
	game:DefineFastFlag("LuaAppEnableRecommendedCarouselForDesktop", false)
local GetFFlagFixOmniDefaultPolicy = require(script.Parent.Flags.GetFFlagFixOmniDefaultPolicy)
local FFlagDisableWebViewSupportInStudio = game:DefineFastFlag("DisableWebViewSupportInStudio", false)

local function AppFeaturePolicies(policy): any
	local function getVRDefaultPolicy(policyKey, defaultValueVR)
		if policy[policyKey] ~= nil then
			return policy[policyKey]
		elseif IsVRAppBuild() then
			return defaultValueVR
		end

		return not defaultValueVR
	end

	return {
		getFriendFinder = function()
			return policy.FriendFinder or false
		end,
		getGameDetailsMorePage = function()
			return policy.GameDetailsMorePage or false
		end,
		getGameDetailsSubtitle = function()
			return policy.GameDetailsSubtitle or false
		end,
		getShowGlobalCounters = function()
			return policy.GameDetailsShowGlobalCounters or false
		end,
		getGameDetailsPlayWithFriends = function()
			return policy.GameDetailsPlayWithFriends or false
		end,
		getGameInfoList = function()
			return policy.GameInfoList or false
		end,
		getGamePlaysAndRatings = function()
			return policy.GamePlaysAndRatings or false
		end,
		getGamePlayerCounts = function()
			return policy.GamePlayerCounts or false
		end,
		getNotifications = function()
			return policy.Notifications or false
		end,
		getRecommendedGames = function()
			if FFLagLuaAppEnableRecommendedCarouselForDesktop then
				return policy.RecommendedGames or false
			else
				if not FFlagUseGUACforDUARPolicy then
					if isSubjectToDesktopPolicies() then
						return false
					end
				end
				return policy.RecommendedGames or false
			end
		end,
		getSearchBar = function()
			return policy.SearchBar or false
		end,
		getSwapToSourceButton = function()
			return GetFFlagEnableSwapToSourceButton() or policy.SwapToSourceButton or false
		end,
		getGiftCardsEnabled = function()
			return policy.GiftCardsEnabled or false
		end,
		getOfficialStoreEnabled = function()
			return policy.OfficialStoreEnabled or false
		end,
		getMorePageType = function()
			return policy.MorePageType or "SimplifiedMore"
		end,
		getAboutPageType = function()
			return policy.AboutPageType or "CJVAbout"
		end,
		getSettingsPageType = function()
			return policy.SettingsPageType or "Settings"
		end,
		getSocialLinks = function()
			return policy.SocialLinks or false
		end,
		getSocialGroupLinks = function()
			return policy.SocialGroupLinks or false
		end,
		getGameInfoShowBadges = function()
			return policy.GameInfoShowBadges or false
		end,
		getGameInfoShowCreated = function()
			return policy.GameInfoShowCreated or false
		end,
		getGameInfoShowGamepasses = function()
			return policy.GameInfoShowGamepasses or false
		end,
		getGameInfoShowGenre = function()
			return policy.GameInfoShowGenre or false
		end,
		getGameInfoShowMaxPlayers = function()
			return policy.GameInfoShowMaxPlayers or false
		end,
		getGameInfoShowServers = function()
			return policy.GameInfoShowServers or false
		end,
		getGameInfoShowUpdated = function()
			return policy.GameInfoShowUpdated or false
		end,
		getSiteMessageBanner = function()
			return policy.SiteMessageBanner or false
		end,
		getAlertRateLimit = function()
			-- min time in seconds between alert message updates, 5 min default
			return policy.AlertRateLimit or 300
		end,
		getSearchAutoComplete = function()
			return policy.SearchAutoComplete or false
		end,
		getUseBottomBar = function()
			if policy.UseBottomBar == nil then
				return true
			end
			return policy.UseBottomBar
		end,
		getSystemBarPlacement = function()
			if IsVRAppBuild() then
				return AppSystemBarPlacements.VR
			end
			if not FFlagUseGUACforDUARPolicy then
				-- for now systembar is hardcoded on the left in windows
				if isSubjectToDesktopPolicies() then
					return AppSystemBarPlacements.Left
				end
			end
			return if AppSystemBarPlacements[policy.SystemBarPlacement] ~= nil
				then policy.SystemBarPlacement
				else AppSystemBarPlacements.Bottom
		end,
		getShowStudioCTA = function()
			return policy.ShowStudioCTA or false
		end,
		getUseOmniRecommendation = function()
			if GetFFlagFixOmniDefaultPolicy() then
				-- Default to true if omni policy is not passed
				if policy.UseOmniRecommendation == nil then
					return true
				else
					return policy.UseOmniRecommendation
				end
			end
			if GetFFlagLuaAppUseOmniRecDefaultPolicy() then
				if not policy.UseOmniRecommendation then
					return true
				else
					return policy.UseOmniRecommendation
				end
			else
				return policy.UseOmniRecommendation
			end
		end,
		getUseWidthBasedFormFactorRule = function()
			return policy.UseWidthBasedFormFactorRule or false
		end,
		getShowYouTubeAgeAlert = function()
			if policy.ShowYouTubeAgeAlert == nil then
				return true
			end
			return policy.ShowYouTubeAgeAlert
		end,
		getShowVideoThumbnails = function()
			return policy.ShowVideoThumbnails or false
		end,
		getHomeIcon = function()
			return policy.HomeIcon or "LuaApp/icons/ic-roblox-close"
		end,
		getGameInfoListShowRNVDeveloper = function()
			return policy.GameInfoListShowRNVDeveloper or false
		end,
		getGameInfoListDeveloper = function()
			return policy.GameInfoListDeveloper or false
		end,
		getShowDisplayName = function()
			if policy.ShowDisplayName == nil then
				return true
			end
			return policy.ShowDisplayName
		end,
		getShowAlias = function()
			if policy.ShowUserAlias == nil then
				return true
			end
			return policy.ShowUserAlias
		end,
		getCatalogReportingDisabled = function()
			return policy.CatalogReportingDisabled or false
		end,
		getGameReportingDisabled = function()
			return policy.GameReportingDisabled or false
		end,
		getGamesPageCreationCenterTitle = function()
			return policy.GamesPageCreationCenterTitle or false
		end,
		shouldUseExternalBrowserForDisclaimerLinks = function()
			if FFlagDesktopLaunchLinksInExternalBrowser then
				return policy.UseExternalBrowserForDisclaimerLinks or false
			else
				local engineFeatureAvailable = game:GetEngineFeature("OpenExternalBrowser")
				if not FFlagUseGUACforDUARPolicy then
					-- Short-circuit for DUAR so that we don't have to modify back-end
					if isSubjectToDesktopPolicies() then
						return engineFeatureAvailable or false
					end
				end
				return (engineFeatureAvailable and policy.UseExternalBrowserForDisclaimerLinks) or false
			end
		end,
		shouldUseExternalBrowserForMorePageItem = function(itemType)
			-- The itemType property is no longer used once this flag is enabled, so when we clean up the
			-- flag, we should also clean up this property since it is no longer needed
			if FFlagDesktopLaunchLinksInExternalBrowser then
				return policy.UseExternalBrowserForMoreLinks or false
			else
				local engineFeatureAvailable = game:GetEngineFeature("OpenExternalBrowser")
				-- Short-circuit for DUAR so that we don't have to modify back-end
				if isSubjectToDesktopPolicies() then
					if not engineFeatureAvailable then
						return false
					end
					return itemType == "About_Privacy"
						or itemType == "About_Terms"
						or itemType == "Help"
						or (FFlagOpenCreateGamesInExternalBrowser and itemType == "CreateGames")
						or false
				end
				return (engineFeatureAvailable and policy.MorePageExternalBrowserLinks[itemType] == true) or false
			end
		end,
		getFullscreenTitleBarEnabled = function()
			return policy.FullscreenTitleBarEnabled or false
		end,
		getShowExitFullscreenToast = function()
			return if policy.ExitFullscreenToastEnabled == nil then false else policy.ExitFullscreenToastEnabled
		end,
		getCatalogShow3dView = function()
			return policy.CatalogShow3dView or false
		end,
		getItemDetailsFullView = function()
			return policy.ItemDetailsFullView or false
		end,
		getCatalogCommunityCreations = function()
			return policy.CatalogCommunityCreations or false
		end,
		getCatalogPremiumCategory = function()
			return policy.CatalogPremiumCategory or false
		end,
		getShowCatalogPremiumContent = function()
			return policy.CatalogPremiumContent or false
		end,
		getRobloxCreatedItemsCreatedByLuobu = function()
			if policy.RobloxCreatedItemsCreatedByLuobu == nil then
				return true
			end
			return policy.RobloxCreatedItemsCreatedByLuobu
		end,
		getHomePageFriendSection = function()
			return policy.HomePageFriendSection or false
		end,
		getHomePageProfileLink = function()
			return policy.HomePageProfileLink or false
		end,
		getPurchasePromptIncludingWarning = function()
			if policy.PurchasePromptIncludingWarning == nil then
				return true
			end
			return policy.PurchasePromptIncludingWarning
		end,
		getCheckUserAgreementsUpdatedOnLogin = function()
			if policy.CheckUserAgreementsUpdatedOnLogin == nil then
				return true
			end
			return policy.CheckUserAgreementsUpdatedOnLogin
		end,
		getAddUserAgreementIdsToSignupRequest = function()
			return policy.AddUserAgreementIdsToSignupRequest or false
		end,
		getShowAgeVerificationOverlayEnabled = function()
			return policy.ShowAgeVerificationOverlayEnabled or false
		end,
		RequireExplicitVoiceConsent = function()
			return policy.RequireExplicitVoiceConsent or false
		end,
		getShowVoiceUpsell = function()
			return policy.ShowVoiceUpsell or false
		end,
		getShouldShowGroupsTile = function()
			return policy.ShouldShowGroupsTile or false
		end,
		useLuobuAuthentication = function()
			return policy.UseLuobuAuthentication or false
		end,
		useMSDKWebAuthentication = function()
			return policy.UseMSDKWebAuthentication or false
		end,
		getQrFriendingEnabled = function()
			return policy.QrFriendingEnabled or false
		end,
		getShouldShowCameraPermissionInAgreementsPrompt = function()
			return policy.ShouldShowCameraPermissionInAgreementsPrompt or false
		end,
		getProfileShareEnabled = function()
			if getFFlagLuaProfileShareWithDesktopPolicy() and isSubjectToDesktopPolicies() then
				return false
			else
				return policy.ProfileShareEnabled or false
			end
		end,
		getCsatSurveyRestrictTextInput = function()
			return policy.CsatSurveyRestrictTextInput or false
		end,
		useGridHomePage = function()
			return policy.UseGridHomePage or false
		end,
		useGridPageLayout = function()
			return if getFFlagLuaAppDiscoverPageGrid() then (policy.UseGridPageLayout or false) else nil
		end,
		getUseTileBackgrounds = function()
			return policy.UseTileBackgrounds or false
		end,
		getShouldSystemBarUsuallyBePresent = function()
			-- Use a special policy to override VR behavior for now since we won't have VR platform targeting working
			-- until QuestVR useragent is deployed.
			if GetFFlagEnableTopBarVRPolicyOverride() and IsVRAppBuild() then
				return getVRDefaultPolicy("ShouldSystemBarUsuallyBePresentForVR", --[[VRdefault=]] true)
			else
				return policy.ShouldSystemBarUsuallyBePresent or false
			end
		end,
		getContactImporterEnabled = function()
			-- non-desktop and 13+
			if isSubjectToDesktopPolicies() then
				return false
			else
				return policy.ContactImporterEnabled or false
			end
		end,
		getUse3DPanels = function()
			return getVRDefaultPolicy("Use3DPanels", true)
		end,
		getUseVRFTUXPanel = function()
			return getVRDefaultPolicy("UseVRFTUXPanel", true)
		end,
		getWebViewSupport = function()
			-- disable webviews in Studio
			if isRunningInStudio() then
				if FFlagDisableWebViewSupportInStudio then
					return false
				else
					return true
				end
			end
			return getVRDefaultPolicy("EnableWebViewSupport", false)
		end,
		getThrottleFramerate = function()
			return getVRDefaultPolicy("ThrottleFramerate", false)
		end,
		getUseRoundedCorners = function()
			if IsVRAppBuild() then
				return getVRDefaultPolicy("UseRoundedCorners", true)
			end

			return false
		end,
		getGameInfoShowChatFeatures = function()
			if GetFFlagUseVoiceExitBetaLanguage() then
				return policy.GameInfoShowChatFeatures or false
			end
			return false
		end,
		getAllowCameraMovements = function()
			return getVRDefaultPolicy("AllowCameraMovements", false)
		end,
		getShouldSkipAvatarLandingPage = function()
			if GetFFlagVRAvatarExperienceNoLandingPage() then
				return getVRDefaultPolicy("ShouldSkipAvatarLandingPage", false)
			else
				return false
			end
		end,
	}
end

export type Type = typeof(AppFeaturePolicies(...))

return AppFeaturePolicies
