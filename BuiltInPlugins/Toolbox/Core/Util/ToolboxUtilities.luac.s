PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ShowRobloxCreatedAssets"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DisableMarketplaceAndRecents"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["MaxAudioLength"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Enabled"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["MarketplaceDisabledCategories"]
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HomeViewEnabledAssetTypes"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["MarketplaceShouldUsePluginCreatorWhitelist"]
  JUMPIFNOTEQKNIL R0 [+3]
  LOADB R1 1
  RETURN R1 1
  RETURN R0 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DisableRatings"]
  RETURN R0 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HideNonRelevanceSorts"]
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HideVerifiedCreatorBadges"]
  RETURN R0 1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DisableAutocomplete"]
  RETURN R0 1

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AssetConfigMessaging"]
  JUMPIF R0 [+2]
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CreatorMarketplaceWebUrl"]
  RETURN R0 1

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AssetConfigDistributionQuotas"]
  JUMPIFNOTEQKNIL R0 [+4]
  NEWTABLE R1 0 0
  RETURN R1 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K3 ["table"] [+10]
  GETIMPORT R1 K5 [warn]
  LOADK R3 K0 ["AssetConfigDistributionQuotas"]
  LOADK R4 K6 [" is expected to be a table if defined"]
  CONCAT R2 R3 R4
  CALL R1 1 0
  NEWTABLE R1 0 0
  RETURN R1 1
  NEWTABLE R1 0 0
  GETIMPORT R2 K8 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R8 1
  GETTABLE R7 R8 R5
  JUMPIFEQKNIL R7 [+3]
  SETTABLE R6 R1 R5
  JUMP [+5]
  GETIMPORT R8 K5 [warn]
  LOADK R9 K9 ["Invalid assetType name in getAssetConfigDistributionQuotasEnabledAssetTypes:"]
  MOVE R10 R5
  CALL R8 2 0
  FORGLOOP R2 2 [-12]
  RETURN R1 1

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AnnouncementConfiguration"]
  JUMPIFNOTEQKNIL R0 [+4]
  NEWTABLE R1 0 0
  RETURN R1 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K3 ["table"] [+10]
  GETIMPORT R1 K5 [warn]
  LOADK R3 K0 ["AnnouncementConfiguration"]
  LOADK R4 K6 [" is expected to be a table if defined"]
  CONCAT R2 R3 R4
  CALL R1 1 0
  NEWTABLE R1 0 0
  RETURN R1 1
  RETURN R0 1

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["VerificationDocumentationUrl"]
  RETURN R0 1

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AudioPrivacyLearnMoreUrl"]
  RETURN R0 1

PROTO_17:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["VideoPrivacyLearnMoreUrl"]
  RETURN R0 1

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SafetyLearnMoreUrl"]
  RETURN R0 1

PROTO_19:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AppealsPortalUrl"]
  RETURN R0 1

PROTO_20:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CreatorDashboardBaseUrl"]
  RETURN R0 1

PROTO_21:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CreatorDashboardCatalogConfigUrlExtension"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["format"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_22:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HideAssetConfigDistributeLearnMoreLink"]
  RETURN R0 1

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AssetTypesWithAssetConfigFiatPrice"]
  RETURN R0 1

PROTO_24:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["MarketplaceAssetConfigUrl"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["format"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_25:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["MarketplaceOnboardingUrl"]
  RETURN R0 1

PROTO_26:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["OwnershipPollingWaitTimeInSec"]
  ORK R0 R1 K0 [1]
  RETURN R0 1

PROTO_27:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["OwnershipPollingMaxRetries"]
  ORK R0 R1 K0 [1]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K5 ["isCli"]
  CALL R1 1 1
  GETIMPORT R2 K7 [game]
  LOADK R4 K8 ["DisableSalesPageForAvatarCreations2"]
  NAMECALL R2 R2 K9 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K7 [game]
  LOADK R5 K10 ["EnableAssetUploadCreatorDashboardMessage"]
  NAMECALL R3 R3 K9 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K7 [game]
  LOADK R6 K11 ["ToolboxAssetConfigDisabledVideoSharingLearnMoreLink"]
  NAMECALL R4 R4 K12 ["GetFastString"]
  CALL R4 2 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K13 ["Core"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["SharedFlags"]
  GETTABLEKS R6 R7 K16 ["getFFlagToolboxAddAssetConfigPriceRedirectLink"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K13 ["Core"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["SharedFlags"]
  GETTABLEKS R7 R8 K17 ["getFFlagToolboxRestrictAssetConfig"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K13 ["Core"]
  GETTABLEKS R10 R11 K14 ["Util"]
  GETTABLEKS R9 R10 K15 ["SharedFlags"]
  GETTABLEKS R8 R9 K18 ["getFFlagToolboxEnableFiatPurchasing"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R12 R0 K13 ["Core"]
  GETTABLEKS R11 R12 K14 ["Util"]
  GETTABLEKS R10 R11 K15 ["SharedFlags"]
  GETTABLEKS R9 R10 K19 ["getFFlagToolboxAssetConfigOnboardingLink"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R13 R0 K13 ["Core"]
  GETTABLEKS R12 R13 K14 ["Util"]
  GETTABLEKS R11 R12 K15 ["SharedFlags"]
  GETTABLEKS R10 R11 K20 ["getFFlagEnablePluginHomeview"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K13 ["Core"]
  GETTABLEKS R12 R13 K21 ["Types"]
  GETTABLEKS R11 R12 K22 ["AssetQuotaTypes"]
  CALL R10 1 1
  LOADNIL R11
  MOVE R12 R1
  CALL R12 0 1
  JUMPIFNOT R12 [+118]
  DUPTABLE R12 K44 [{"ShowRobloxCreatedAssets", "DisableMarketplaceAndRecents", "DisableRatings", "HideNonRelevanceSorts", "HomeViewEnabledAssetTypes", "MarketplaceAssetConfigUrl", "MarketplaceDisabledCategories", "MarketplaceOnboardingUrl", "MarketplaceShouldUsePluginCreatorWhitelist", "DisableAutocomplete", "Enabled", "VerificationDocumentationUrl", "AudioPrivacyLearnMoreUrl", "VideoPrivacyLearnMoreUrl", "SafetyLearnMoreUrl", "CreatorDashboardBaseUrl", "CreatorDashboardCatalogConfigUrlExtension", "AnnouncementConfiguration", "AppealsPortalUrl", "OwnershipPollingWaitTimeInSec", "OwnershipPollingMaxRetries"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K23 ["ShowRobloxCreatedAssets"]
  LOADB R13 0
  SETTABLEKS R13 R12 K24 ["DisableMarketplaceAndRecents"]
  LOADB R13 0
  SETTABLEKS R13 R12 K25 ["DisableRatings"]
  LOADB R13 0
  SETTABLEKS R13 R12 K26 ["HideNonRelevanceSorts"]
  LOADK R13 K45 ["Model;Audio;Plugin"]
  SETTABLEKS R13 R12 K27 ["HomeViewEnabledAssetTypes"]
  MOVE R14 R5
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADK R13 K46 ["https://create.roblox.com/dashboard/creations/store/%s/configure"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K28 ["MarketplaceAssetConfigUrl"]
  LOADK R13 K47 ["FreePlugins;PaidPlugins;Plugins;FreeVideo"]
  SETTABLEKS R13 R12 K29 ["MarketplaceDisabledCategories"]
  MOVE R14 R8
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADK R13 K48 ["https://create.roblox.com/settings/eligibility/priced-assets"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K30 ["MarketplaceOnboardingUrl"]
  LOADB R13 1
  SETTABLEKS R13 R12 K31 ["MarketplaceShouldUsePluginCreatorWhitelist"]
  LOADB R13 0
  SETTABLEKS R13 R12 K32 ["DisableAutocomplete"]
  LOADB R13 1
  SETTABLEKS R13 R12 K33 ["Enabled"]
  LOADK R13 K49 ["https://create.roblox.com/docs/production/publishing/creator-marketplace#verifying-your-account"]
  SETTABLEKS R13 R12 K34 ["VerificationDocumentationUrl"]
  LOADK R13 K50 ["https://devforum.roblox.com/t/action-needed-upcoming-changes-to-asset-privacy-for-audio/1701697"]
  SETTABLEKS R13 R12 K35 ["AudioPrivacyLearnMoreUrl"]
  SETTABLEKS R4 R12 K36 ["VideoPrivacyLearnMoreUrl"]
  LOADK R13 K51 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
  SETTABLEKS R13 R12 K37 ["SafetyLearnMoreUrl"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+2]
  LOADK R13 K52 ["https://create.roblox.com/dashboard"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K38 ["CreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+2]
  LOADK R13 K53 ["/creations/catalog/%d/configure"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K39 ["CreatorDashboardCatalogConfigUrlExtension"]
  DUPTABLE R13 K61 [{"ButtonKey", "Date", "DescriptionKey", "HeaderKey", "Image", "LinkKey", "LinkLocation"}]
  LOADK R14 K62 ["Button_Default"]
  SETTABLEKS R14 R13 K54 ["ButtonKey"]
  LOADK R14 K63 ["2022-08-08 19:45:23"]
  SETTABLEKS R14 R13 K55 ["Date"]
  LOADK R14 K64 ["Description_08092022"]
  SETTABLEKS R14 R13 K56 ["DescriptionKey"]
  LOADK R14 K65 ["Header_Default"]
  SETTABLEKS R14 R13 K57 ["HeaderKey"]
  LOADK R14 K66 ["rbxasset://textures/StudioToolbox/announcementConstruction.png"]
  SETTABLEKS R14 R13 K58 ["Image"]
  LOADK R14 K67 ["LinkText_Default"]
  SETTABLEKS R14 R13 K59 ["LinkKey"]
  LOADK R14 K68 ["https://roblox.com"]
  SETTABLEKS R14 R13 K60 ["LinkLocation"]
  SETTABLEKS R13 R12 K40 ["AnnouncementConfiguration"]
  MOVE R14 R6
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADK R13 K69 ["https://www.roblox.com/report-appeals#/"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K41 ["AppealsPortalUrl"]
  MOVE R14 R7
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADN R13 3
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K42 ["OwnershipPollingWaitTimeInSec"]
  MOVE R14 R7
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADN R13 5
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K43 ["OwnershipPollingMaxRetries"]
  MOVE R11 R12
  JUMP [+11]
  GETIMPORT R12 K7 [game]
  LOADK R14 K70 ["PluginPolicyService"]
  NAMECALL R12 R12 K71 ["GetService"]
  CALL R12 2 1
  LOADK R14 K72 ["Toolbox"]
  NAMECALL R12 R12 K73 ["getPluginPolicy"]
  CALL R12 2 1
  MOVE R11 R12
  NEWTABLE R12 32 0
  NEWCLOSURE R13 P0
  CAPTURE REF R11
  SETTABLEKS R13 R12 K74 ["showRobloxCreatedAssets"]
  NEWCLOSURE R13 P1
  CAPTURE REF R11
  SETTABLEKS R13 R12 K75 ["disableMarketplaceAndRecents"]
  NEWCLOSURE R13 P2
  CAPTURE REF R11
  SETTABLEKS R13 R12 K76 ["getMaxAudioLength"]
  NEWCLOSURE R13 P3
  CAPTURE REF R11
  SETTABLEKS R13 R12 K77 ["getToolboxEnabled"]
  NEWCLOSURE R13 P4
  CAPTURE REF R11
  SETTABLEKS R13 R12 K78 ["getMarketplaceDisabledCategories"]
  MOVE R13 R9
  CALL R13 0 1
  JUMPIFNOT R13 [+4]
  NEWCLOSURE R13 P5
  CAPTURE REF R11
  SETTABLEKS R13 R12 K79 ["getHomeViewEnabledAssetTypes"]
  NEWCLOSURE R13 P6
  CAPTURE REF R11
  SETTABLEKS R13 R12 K80 ["getShouldUsePluginCreatorWhitelist"]
  NEWCLOSURE R13 P7
  CAPTURE REF R11
  SETTABLEKS R13 R12 K81 ["disableRatings"]
  NEWCLOSURE R13 P8
  CAPTURE REF R11
  SETTABLEKS R13 R12 K82 ["getShouldHideNonRelevanceSorts"]
  NEWCLOSURE R13 P9
  CAPTURE REF R11
  SETTABLEKS R13 R12 K83 ["getShouldHideVerifiedCreatorBadges"]
  NEWCLOSURE R13 P10
  CAPTURE REF R11
  SETTABLEKS R13 R12 K84 ["getShouldDisableAutocomplete"]
  NEWCLOSURE R13 P11
  CAPTURE REF R11
  SETTABLEKS R13 R12 K85 ["getAssetConfigMessaging"]
  NEWCLOSURE R13 P12
  CAPTURE REF R11
  SETTABLEKS R13 R12 K86 ["getCreatorMarketplaceWebBaseUrl"]
  NEWTABLE R13 0 0
  GETIMPORT R14 K88 [pairs]
  GETIMPORT R15 K91 [Enum.AssetType]
  NAMECALL R15 R15 K92 ["GetEnumItems"]
  CALL R15 1 -1
  CALL R14 -1 3
  FORGPREP_NEXT R14
  GETTABLEKS R19 R18 K93 ["Name"]
  SETTABLE R18 R13 R19
  FORGLOOP R14 2 [-4]
  NEWCLOSURE R14 P13
  CAPTURE REF R11
  CAPTURE VAL R13
  SETTABLEKS R14 R12 K94 ["getAssetConfigDistributionQuotas"]
  NEWCLOSURE R14 P14
  CAPTURE REF R11
  SETTABLEKS R14 R12 K95 ["getAnnouncementConfiguration"]
  NEWCLOSURE R14 P15
  CAPTURE REF R11
  SETTABLEKS R14 R12 K96 ["getVerificationDocumentationUrl"]
  NEWCLOSURE R14 P16
  CAPTURE REF R11
  SETTABLEKS R14 R12 K97 ["getAudioPrivacyLearnMoreUrl"]
  NEWCLOSURE R14 P17
  CAPTURE REF R11
  SETTABLEKS R14 R12 K98 ["getVideoPrivacyLearnMoreUrl"]
  NEWCLOSURE R14 P18
  CAPTURE REF R11
  SETTABLEKS R14 R12 K99 ["getSafetyLearnMoreUrl"]
  MOVE R14 R6
  CALL R14 0 1
  JUMPIFNOT R14 [+4]
  NEWCLOSURE R14 P19
  CAPTURE REF R11
  SETTABLEKS R14 R12 K100 ["getAppealsPortalUrl"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R14 P20
  CAPTURE REF R11
  SETTABLEKS R14 R12 K101 ["getCreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+4]
  NEWCLOSURE R14 P21
  CAPTURE REF R11
  SETTABLEKS R14 R12 K102 ["getCreatorDashboardCatalogConfigUrlExtension"]
  NEWCLOSURE R14 P22
  CAPTURE REF R11
  SETTABLEKS R14 R12 K103 ["hideAssetConfigDistributeLearnMoreLink"]
  MOVE R14 R5
  CALL R14 0 1
  JUMPIFNOT R14 [+8]
  NEWCLOSURE R14 P23
  CAPTURE REF R11
  SETTABLEKS R14 R12 K104 ["getAssetTypesWithAssetConfigPrice"]
  NEWCLOSURE R14 P24
  CAPTURE REF R11
  SETTABLEKS R14 R12 K105 ["getMarketplaceAssetConfigUrl"]
  MOVE R14 R8
  CALL R14 0 1
  JUMPIFNOT R14 [+4]
  NEWCLOSURE R14 P25
  CAPTURE REF R11
  SETTABLEKS R14 R12 K106 ["getMarketplaceOnboardingUrl"]
  MOVE R14 R7
  CALL R14 0 1
  JUMPIFNOT R14 [+8]
  NEWCLOSURE R14 P26
  CAPTURE REF R11
  SETTABLEKS R14 R12 K107 ["getOwnershipPollingWaitTimeInSec"]
  NEWCLOSURE R14 P27
  CAPTURE REF R11
  SETTABLEKS R14 R12 K108 ["getOwnershipPollingMaxRetries"]
  CLOSEUPVALS R11
  RETURN R12 1
