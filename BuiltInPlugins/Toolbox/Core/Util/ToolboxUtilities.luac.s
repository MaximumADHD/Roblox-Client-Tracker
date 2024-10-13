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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["MarketplaceAssetConfigUrl"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["format"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_24:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["MarketplaceOnboardingUrl"]
  RETURN R0 1

PROTO_25:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["OwnershipPollingWaitTimeInSec"]
  ORK R0 R1 K0 [1]
  RETURN R0 1

PROTO_26:
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
  LOADK R5 K10 ["ToolboxAssetConfigDisabledVideoSharingLearnMoreLink"]
  NAMECALL R3 R3 K11 ["GetFastString"]
  CALL R3 2 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K12 ["Core"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["SharedFlags"]
  GETTABLEKS R5 R6 K15 ["getFFlagToolboxRestrictAssetConfig"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K12 ["Core"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["SharedFlags"]
  GETTABLEKS R6 R7 K16 ["getFFlagToolboxAssetConfigOnboardingLink"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K12 ["Core"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["SharedFlags"]
  GETTABLEKS R7 R8 K17 ["getFFlagEnablePluginHomeview"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K12 ["Core"]
  GETTABLEKS R9 R10 K18 ["Types"]
  GETTABLEKS R8 R9 K19 ["AssetQuotaTypes"]
  CALL R7 1 1
  LOADNIL R8
  MOVE R9 R1
  CALL R9 0 1
  JUMPIFNOT R9 [+99]
  DUPTABLE R9 K41 [{"ShowRobloxCreatedAssets", "DisableMarketplaceAndRecents", "DisableRatings", "HideNonRelevanceSorts", "HomeViewEnabledAssetTypes", "MarketplaceAssetConfigUrl", "MarketplaceDisabledCategories", "MarketplaceOnboardingUrl", "MarketplaceShouldUsePluginCreatorWhitelist", "DisableAutocomplete", "Enabled", "VerificationDocumentationUrl", "AudioPrivacyLearnMoreUrl", "VideoPrivacyLearnMoreUrl", "SafetyLearnMoreUrl", "CreatorDashboardBaseUrl", "CreatorDashboardCatalogConfigUrlExtension", "AnnouncementConfiguration", "AppealsPortalUrl", "OwnershipPollingWaitTimeInSec", "OwnershipPollingMaxRetries"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K20 ["ShowRobloxCreatedAssets"]
  LOADB R10 0
  SETTABLEKS R10 R9 K21 ["DisableMarketplaceAndRecents"]
  LOADB R10 0
  SETTABLEKS R10 R9 K22 ["DisableRatings"]
  LOADB R10 0
  SETTABLEKS R10 R9 K23 ["HideNonRelevanceSorts"]
  LOADK R10 K42 ["Model;Audio;Plugin"]
  SETTABLEKS R10 R9 K24 ["HomeViewEnabledAssetTypes"]
  LOADK R10 K43 ["https://create.roblox.com/dashboard/creations/store/%s/configure"]
  SETTABLEKS R10 R9 K25 ["MarketplaceAssetConfigUrl"]
  LOADK R10 K44 ["FreePlugins;PaidPlugins;Plugins;FreeVideo"]
  SETTABLEKS R10 R9 K26 ["MarketplaceDisabledCategories"]
  MOVE R11 R5
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADK R10 K45 ["https://create.roblox.com/settings/eligibility/priced-assets"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K27 ["MarketplaceOnboardingUrl"]
  LOADB R10 1
  SETTABLEKS R10 R9 K28 ["MarketplaceShouldUsePluginCreatorWhitelist"]
  LOADB R10 0
  SETTABLEKS R10 R9 K29 ["DisableAutocomplete"]
  LOADB R10 1
  SETTABLEKS R10 R9 K30 ["Enabled"]
  LOADK R10 K46 ["https://create.roblox.com/docs/production/publishing/creator-marketplace#verifying-your-account"]
  SETTABLEKS R10 R9 K31 ["VerificationDocumentationUrl"]
  LOADK R10 K47 ["https://devforum.roblox.com/t/action-needed-upcoming-changes-to-asset-privacy-for-audio/1701697"]
  SETTABLEKS R10 R9 K32 ["AudioPrivacyLearnMoreUrl"]
  SETTABLEKS R3 R9 K33 ["VideoPrivacyLearnMoreUrl"]
  LOADK R10 K48 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
  SETTABLEKS R10 R9 K34 ["SafetyLearnMoreUrl"]
  LOADK R10 K49 ["https://create.roblox.com/dashboard"]
  SETTABLEKS R10 R9 K35 ["CreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+2]
  LOADK R10 K50 ["/creations/catalog/%d/configure"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K36 ["CreatorDashboardCatalogConfigUrlExtension"]
  DUPTABLE R10 K58 [{"ButtonKey", "Date", "DescriptionKey", "HeaderKey", "Image", "LinkKey", "LinkLocation"}]
  LOADK R11 K59 ["Button_Default"]
  SETTABLEKS R11 R10 K51 ["ButtonKey"]
  LOADK R11 K60 ["2022-08-08 19:45:23"]
  SETTABLEKS R11 R10 K52 ["Date"]
  LOADK R11 K61 ["Description_08092022"]
  SETTABLEKS R11 R10 K53 ["DescriptionKey"]
  LOADK R11 K62 ["Header_Default"]
  SETTABLEKS R11 R10 K54 ["HeaderKey"]
  LOADK R11 K63 ["rbxasset://textures/StudioToolbox/announcementConstruction.png"]
  SETTABLEKS R11 R10 K55 ["Image"]
  LOADK R11 K64 ["LinkText_Default"]
  SETTABLEKS R11 R10 K56 ["LinkKey"]
  LOADK R11 K65 ["https://roblox.com"]
  SETTABLEKS R11 R10 K57 ["LinkLocation"]
  SETTABLEKS R10 R9 K37 ["AnnouncementConfiguration"]
  MOVE R11 R4
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADK R10 K66 ["https://www.roblox.com/report-appeals#/"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K38 ["AppealsPortalUrl"]
  LOADN R10 3
  SETTABLEKS R10 R9 K39 ["OwnershipPollingWaitTimeInSec"]
  LOADN R10 5
  SETTABLEKS R10 R9 K40 ["OwnershipPollingMaxRetries"]
  MOVE R8 R9
  JUMP [+11]
  GETIMPORT R9 K7 [game]
  LOADK R11 K67 ["PluginPolicyService"]
  NAMECALL R9 R9 K68 ["GetService"]
  CALL R9 2 1
  LOADK R11 K69 ["Toolbox"]
  NAMECALL R9 R9 K70 ["getPluginPolicy"]
  CALL R9 2 1
  MOVE R8 R9
  NEWTABLE R9 32 0
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  SETTABLEKS R10 R9 K71 ["showRobloxCreatedAssets"]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  SETTABLEKS R10 R9 K72 ["disableMarketplaceAndRecents"]
  NEWCLOSURE R10 P2
  CAPTURE REF R8
  SETTABLEKS R10 R9 K73 ["getMaxAudioLength"]
  NEWCLOSURE R10 P3
  CAPTURE REF R8
  SETTABLEKS R10 R9 K74 ["getToolboxEnabled"]
  NEWCLOSURE R10 P4
  CAPTURE REF R8
  SETTABLEKS R10 R9 K75 ["getMarketplaceDisabledCategories"]
  MOVE R10 R6
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  NEWCLOSURE R10 P5
  CAPTURE REF R8
  SETTABLEKS R10 R9 K76 ["getHomeViewEnabledAssetTypes"]
  NEWCLOSURE R10 P6
  CAPTURE REF R8
  SETTABLEKS R10 R9 K77 ["getShouldUsePluginCreatorWhitelist"]
  NEWCLOSURE R10 P7
  CAPTURE REF R8
  SETTABLEKS R10 R9 K78 ["disableRatings"]
  NEWCLOSURE R10 P8
  CAPTURE REF R8
  SETTABLEKS R10 R9 K79 ["getShouldHideNonRelevanceSorts"]
  NEWCLOSURE R10 P9
  CAPTURE REF R8
  SETTABLEKS R10 R9 K80 ["getShouldHideVerifiedCreatorBadges"]
  NEWCLOSURE R10 P10
  CAPTURE REF R8
  SETTABLEKS R10 R9 K81 ["getShouldDisableAutocomplete"]
  NEWCLOSURE R10 P11
  CAPTURE REF R8
  SETTABLEKS R10 R9 K82 ["getAssetConfigMessaging"]
  NEWCLOSURE R10 P12
  CAPTURE REF R8
  SETTABLEKS R10 R9 K83 ["getCreatorMarketplaceWebBaseUrl"]
  NEWTABLE R10 0 0
  GETIMPORT R11 K85 [pairs]
  GETIMPORT R12 K88 [Enum.AssetType]
  NAMECALL R12 R12 K89 ["GetEnumItems"]
  CALL R12 1 -1
  CALL R11 -1 3
  FORGPREP_NEXT R11
  GETTABLEKS R16 R15 K90 ["Name"]
  SETTABLE R15 R10 R16
  FORGLOOP R11 2 [-4]
  NEWCLOSURE R11 P13
  CAPTURE REF R8
  CAPTURE VAL R10
  SETTABLEKS R11 R9 K91 ["getAssetConfigDistributionQuotas"]
  NEWCLOSURE R11 P14
  CAPTURE REF R8
  SETTABLEKS R11 R9 K92 ["getAnnouncementConfiguration"]
  NEWCLOSURE R11 P15
  CAPTURE REF R8
  SETTABLEKS R11 R9 K93 ["getVerificationDocumentationUrl"]
  NEWCLOSURE R11 P16
  CAPTURE REF R8
  SETTABLEKS R11 R9 K94 ["getAudioPrivacyLearnMoreUrl"]
  NEWCLOSURE R11 P17
  CAPTURE REF R8
  SETTABLEKS R11 R9 K95 ["getVideoPrivacyLearnMoreUrl"]
  NEWCLOSURE R11 P18
  CAPTURE REF R8
  SETTABLEKS R11 R9 K96 ["getSafetyLearnMoreUrl"]
  MOVE R11 R4
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  NEWCLOSURE R11 P19
  CAPTURE REF R8
  SETTABLEKS R11 R9 K97 ["getAppealsPortalUrl"]
  NEWCLOSURE R11 P20
  CAPTURE REF R8
  SETTABLEKS R11 R9 K98 ["getCreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+4]
  NEWCLOSURE R11 P21
  CAPTURE REF R8
  SETTABLEKS R11 R9 K99 ["getCreatorDashboardCatalogConfigUrlExtension"]
  NEWCLOSURE R11 P22
  CAPTURE REF R8
  SETTABLEKS R11 R9 K100 ["hideAssetConfigDistributeLearnMoreLink"]
  NEWCLOSURE R11 P23
  CAPTURE REF R8
  SETTABLEKS R11 R9 K101 ["getMarketplaceAssetConfigUrl"]
  MOVE R11 R5
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  NEWCLOSURE R11 P24
  CAPTURE REF R8
  SETTABLEKS R11 R9 K102 ["getMarketplaceOnboardingUrl"]
  NEWCLOSURE R11 P25
  CAPTURE REF R8
  SETTABLEKS R11 R9 K103 ["getOwnershipPollingWaitTimeInSec"]
  NEWCLOSURE R11 P26
  CAPTURE REF R8
  SETTABLEKS R11 R9 K104 ["getOwnershipPollingMaxRetries"]
  CLOSEUPVALS R8
  RETURN R9 1
