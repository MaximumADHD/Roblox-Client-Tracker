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
  GETTABLEKS R6 R7 K16 ["getFFlagToolboxRestrictAssetConfig"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K13 ["Core"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["SharedFlags"]
  GETTABLEKS R7 R8 K17 ["getFFlagToolboxEnableFiatPurchasing"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K13 ["Core"]
  GETTABLEKS R10 R11 K14 ["Util"]
  GETTABLEKS R9 R10 K15 ["SharedFlags"]
  GETTABLEKS R8 R9 K18 ["getFFlagToolboxAssetConfigOnboardingLink"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R12 R0 K13 ["Core"]
  GETTABLEKS R11 R12 K14 ["Util"]
  GETTABLEKS R10 R11 K15 ["SharedFlags"]
  GETTABLEKS R9 R10 K19 ["getFFlagEnablePluginHomeview"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K13 ["Core"]
  GETTABLEKS R11 R12 K20 ["Types"]
  GETTABLEKS R10 R11 K21 ["AssetQuotaTypes"]
  CALL R9 1 1
  LOADNIL R10
  MOVE R11 R1
  CALL R11 0 1
  JUMPIFNOT R11 [+113]
  DUPTABLE R11 K43 [{"ShowRobloxCreatedAssets", "DisableMarketplaceAndRecents", "DisableRatings", "HideNonRelevanceSorts", "HomeViewEnabledAssetTypes", "MarketplaceAssetConfigUrl", "MarketplaceDisabledCategories", "MarketplaceOnboardingUrl", "MarketplaceShouldUsePluginCreatorWhitelist", "DisableAutocomplete", "Enabled", "VerificationDocumentationUrl", "AudioPrivacyLearnMoreUrl", "VideoPrivacyLearnMoreUrl", "SafetyLearnMoreUrl", "CreatorDashboardBaseUrl", "CreatorDashboardCatalogConfigUrlExtension", "AnnouncementConfiguration", "AppealsPortalUrl", "OwnershipPollingWaitTimeInSec", "OwnershipPollingMaxRetries"}]
  LOADB R12 0
  SETTABLEKS R12 R11 K22 ["ShowRobloxCreatedAssets"]
  LOADB R12 0
  SETTABLEKS R12 R11 K23 ["DisableMarketplaceAndRecents"]
  LOADB R12 0
  SETTABLEKS R12 R11 K24 ["DisableRatings"]
  LOADB R12 0
  SETTABLEKS R12 R11 K25 ["HideNonRelevanceSorts"]
  LOADK R12 K44 ["Model;Audio;Plugin"]
  SETTABLEKS R12 R11 K26 ["HomeViewEnabledAssetTypes"]
  LOADK R12 K45 ["https://create.roblox.com/dashboard/creations/store/%s/configure"]
  SETTABLEKS R12 R11 K27 ["MarketplaceAssetConfigUrl"]
  LOADK R12 K46 ["FreePlugins;PaidPlugins;Plugins;FreeVideo"]
  SETTABLEKS R12 R11 K28 ["MarketplaceDisabledCategories"]
  MOVE R13 R7
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  LOADK R12 K47 ["https://create.roblox.com/settings/eligibility/priced-assets"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K29 ["MarketplaceOnboardingUrl"]
  LOADB R12 1
  SETTABLEKS R12 R11 K30 ["MarketplaceShouldUsePluginCreatorWhitelist"]
  LOADB R12 0
  SETTABLEKS R12 R11 K31 ["DisableAutocomplete"]
  LOADB R12 1
  SETTABLEKS R12 R11 K32 ["Enabled"]
  LOADK R12 K48 ["https://create.roblox.com/docs/production/publishing/creator-marketplace#verifying-your-account"]
  SETTABLEKS R12 R11 K33 ["VerificationDocumentationUrl"]
  LOADK R12 K49 ["https://devforum.roblox.com/t/action-needed-upcoming-changes-to-asset-privacy-for-audio/1701697"]
  SETTABLEKS R12 R11 K34 ["AudioPrivacyLearnMoreUrl"]
  SETTABLEKS R4 R11 K35 ["VideoPrivacyLearnMoreUrl"]
  LOADK R12 K50 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
  SETTABLEKS R12 R11 K36 ["SafetyLearnMoreUrl"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+2]
  LOADK R12 K51 ["https://create.roblox.com/dashboard"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K37 ["CreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+2]
  LOADK R12 K52 ["/creations/catalog/%d/configure"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K38 ["CreatorDashboardCatalogConfigUrlExtension"]
  DUPTABLE R12 K60 [{"ButtonKey", "Date", "DescriptionKey", "HeaderKey", "Image", "LinkKey", "LinkLocation"}]
  LOADK R13 K61 ["Button_Default"]
  SETTABLEKS R13 R12 K53 ["ButtonKey"]
  LOADK R13 K62 ["2022-08-08 19:45:23"]
  SETTABLEKS R13 R12 K54 ["Date"]
  LOADK R13 K63 ["Description_08092022"]
  SETTABLEKS R13 R12 K55 ["DescriptionKey"]
  LOADK R13 K64 ["Header_Default"]
  SETTABLEKS R13 R12 K56 ["HeaderKey"]
  LOADK R13 K65 ["rbxasset://textures/StudioToolbox/announcementConstruction.png"]
  SETTABLEKS R13 R12 K57 ["Image"]
  LOADK R13 K66 ["LinkText_Default"]
  SETTABLEKS R13 R12 K58 ["LinkKey"]
  LOADK R13 K67 ["https://roblox.com"]
  SETTABLEKS R13 R12 K59 ["LinkLocation"]
  SETTABLEKS R12 R11 K39 ["AnnouncementConfiguration"]
  MOVE R13 R5
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  LOADK R12 K68 ["https://www.roblox.com/report-appeals#/"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K40 ["AppealsPortalUrl"]
  MOVE R13 R6
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  LOADN R12 3
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K41 ["OwnershipPollingWaitTimeInSec"]
  MOVE R13 R6
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  LOADN R12 5
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K42 ["OwnershipPollingMaxRetries"]
  MOVE R10 R11
  JUMP [+11]
  GETIMPORT R11 K7 [game]
  LOADK R13 K69 ["PluginPolicyService"]
  NAMECALL R11 R11 K70 ["GetService"]
  CALL R11 2 1
  LOADK R13 K71 ["Toolbox"]
  NAMECALL R11 R11 K72 ["getPluginPolicy"]
  CALL R11 2 1
  MOVE R10 R11
  NEWTABLE R11 32 0
  NEWCLOSURE R12 P0
  CAPTURE REF R10
  SETTABLEKS R12 R11 K73 ["showRobloxCreatedAssets"]
  NEWCLOSURE R12 P1
  CAPTURE REF R10
  SETTABLEKS R12 R11 K74 ["disableMarketplaceAndRecents"]
  NEWCLOSURE R12 P2
  CAPTURE REF R10
  SETTABLEKS R12 R11 K75 ["getMaxAudioLength"]
  NEWCLOSURE R12 P3
  CAPTURE REF R10
  SETTABLEKS R12 R11 K76 ["getToolboxEnabled"]
  NEWCLOSURE R12 P4
  CAPTURE REF R10
  SETTABLEKS R12 R11 K77 ["getMarketplaceDisabledCategories"]
  MOVE R12 R8
  CALL R12 0 1
  JUMPIFNOT R12 [+4]
  NEWCLOSURE R12 P5
  CAPTURE REF R10
  SETTABLEKS R12 R11 K78 ["getHomeViewEnabledAssetTypes"]
  NEWCLOSURE R12 P6
  CAPTURE REF R10
  SETTABLEKS R12 R11 K79 ["getShouldUsePluginCreatorWhitelist"]
  NEWCLOSURE R12 P7
  CAPTURE REF R10
  SETTABLEKS R12 R11 K80 ["disableRatings"]
  NEWCLOSURE R12 P8
  CAPTURE REF R10
  SETTABLEKS R12 R11 K81 ["getShouldHideNonRelevanceSorts"]
  NEWCLOSURE R12 P9
  CAPTURE REF R10
  SETTABLEKS R12 R11 K82 ["getShouldHideVerifiedCreatorBadges"]
  NEWCLOSURE R12 P10
  CAPTURE REF R10
  SETTABLEKS R12 R11 K83 ["getShouldDisableAutocomplete"]
  NEWCLOSURE R12 P11
  CAPTURE REF R10
  SETTABLEKS R12 R11 K84 ["getAssetConfigMessaging"]
  NEWCLOSURE R12 P12
  CAPTURE REF R10
  SETTABLEKS R12 R11 K85 ["getCreatorMarketplaceWebBaseUrl"]
  NEWTABLE R12 0 0
  GETIMPORT R13 K87 [pairs]
  GETIMPORT R14 K90 [Enum.AssetType]
  NAMECALL R14 R14 K91 ["GetEnumItems"]
  CALL R14 1 -1
  CALL R13 -1 3
  FORGPREP_NEXT R13
  GETTABLEKS R18 R17 K92 ["Name"]
  SETTABLE R17 R12 R18
  FORGLOOP R13 2 [-4]
  NEWCLOSURE R13 P13
  CAPTURE REF R10
  CAPTURE VAL R12
  SETTABLEKS R13 R11 K93 ["getAssetConfigDistributionQuotas"]
  NEWCLOSURE R13 P14
  CAPTURE REF R10
  SETTABLEKS R13 R11 K94 ["getAnnouncementConfiguration"]
  NEWCLOSURE R13 P15
  CAPTURE REF R10
  SETTABLEKS R13 R11 K95 ["getVerificationDocumentationUrl"]
  NEWCLOSURE R13 P16
  CAPTURE REF R10
  SETTABLEKS R13 R11 K96 ["getAudioPrivacyLearnMoreUrl"]
  NEWCLOSURE R13 P17
  CAPTURE REF R10
  SETTABLEKS R13 R11 K97 ["getVideoPrivacyLearnMoreUrl"]
  NEWCLOSURE R13 P18
  CAPTURE REF R10
  SETTABLEKS R13 R11 K98 ["getSafetyLearnMoreUrl"]
  MOVE R13 R5
  CALL R13 0 1
  JUMPIFNOT R13 [+4]
  NEWCLOSURE R13 P19
  CAPTURE REF R10
  SETTABLEKS R13 R11 K99 ["getAppealsPortalUrl"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R13 P20
  CAPTURE REF R10
  SETTABLEKS R13 R11 K100 ["getCreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+4]
  NEWCLOSURE R13 P21
  CAPTURE REF R10
  SETTABLEKS R13 R11 K101 ["getCreatorDashboardCatalogConfigUrlExtension"]
  NEWCLOSURE R13 P22
  CAPTURE REF R10
  SETTABLEKS R13 R11 K102 ["hideAssetConfigDistributeLearnMoreLink"]
  NEWCLOSURE R13 P23
  CAPTURE REF R10
  SETTABLEKS R13 R11 K103 ["getAssetTypesWithAssetConfigPrice"]
  NEWCLOSURE R13 P24
  CAPTURE REF R10
  SETTABLEKS R13 R11 K104 ["getMarketplaceAssetConfigUrl"]
  MOVE R13 R7
  CALL R13 0 1
  JUMPIFNOT R13 [+4]
  NEWCLOSURE R13 P25
  CAPTURE REF R10
  SETTABLEKS R13 R11 K105 ["getMarketplaceOnboardingUrl"]
  MOVE R13 R6
  CALL R13 0 1
  JUMPIFNOT R13 [+8]
  NEWCLOSURE R13 P26
  CAPTURE REF R10
  SETTABLEKS R13 R11 K106 ["getOwnershipPollingWaitTimeInSec"]
  NEWCLOSURE R13 P27
  CAPTURE REF R10
  SETTABLEKS R13 R11 K107 ["getOwnershipPollingMaxRetries"]
  CLOSEUPVALS R10
  RETURN R11 1
