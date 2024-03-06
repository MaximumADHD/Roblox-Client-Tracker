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
  GETTABLEKS R0 R1 K0 ["MarketplaceShouldUsePluginCreatorWhitelist"]
  JUMPIFNOTEQKNIL R0 [+3]
  LOADB R1 1
  RETURN R1 1
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DisableRatings"]
  RETURN R0 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HideNonRelevanceSorts"]
  RETURN R0 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HideVerifiedCreatorBadges"]
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DisableAutocomplete"]
  RETURN R0 1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AssetConfigMessaging"]
  JUMPIF R0 [+2]
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CreatorMarketplaceWebUrl"]
  RETURN R0 1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["VerificationDocumentationUrl"]
  RETURN R0 1

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AudioPrivacyLearnMoreUrl"]
  RETURN R0 1

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["VideoPrivacyLearnMoreUrl"]
  RETURN R0 1

PROTO_17:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SafetyLearnMoreUrl"]
  RETURN R0 1

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CreatorDashboardBaseUrl"]
  RETURN R0 1

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CreatorDashboardCatalogConfigUrlExtension"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["format"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_20:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HideAssetConfigDistributeLearnMoreLink"]
  RETURN R0 1

PROTO_21:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AssetTypesWithAssetConfigFiatPrice"]
  RETURN R0 1

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["MarketplaceAssetConfigUrl"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["format"]
  CALL R1 2 -1
  RETURN R1 -1

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
  GETTABLEKS R9 R0 K13 ["Core"]
  GETTABLEKS R8 R9 K17 ["Types"]
  GETTABLEKS R7 R8 K18 ["AssetQuotaTypes"]
  CALL R6 1 1
  LOADNIL R7
  MOVE R8 R1
  CALL R8 0 1
  JUMPIFNOT R8 [+83]
  DUPTABLE R8 K35 [{"ShowRobloxCreatedAssets", "DisableMarketplaceAndRecents", "DisableRatings", "HideNonRelevanceSorts", "MarketplaceAssetConfigUrl", "MarketplaceDisabledCategories", "MarketplaceShouldUsePluginCreatorWhitelist", "DisableAutocomplete", "Enabled", "VerificationDocumentationUrl", "AudioPrivacyLearnMoreUrl", "VideoPrivacyLearnMoreUrl", "SafetyLearnMoreUrl", "CreatorDashboardBaseUrl", "CreatorDashboardCatalogConfigUrlExtension", "AnnouncementConfiguration"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K19 ["ShowRobloxCreatedAssets"]
  LOADB R9 0
  SETTABLEKS R9 R8 K20 ["DisableMarketplaceAndRecents"]
  LOADB R9 0
  SETTABLEKS R9 R8 K21 ["DisableRatings"]
  LOADB R9 0
  SETTABLEKS R9 R8 K22 ["HideNonRelevanceSorts"]
  MOVE R10 R5
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  LOADK R9 K36 ["https://create.roblox.com/dashboard/creations/store/%s/configure"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K23 ["MarketplaceAssetConfigUrl"]
  LOADK R9 K37 ["FreePlugins;PaidPlugins;Plugins;FreeVideo"]
  SETTABLEKS R9 R8 K24 ["MarketplaceDisabledCategories"]
  LOADB R9 1
  SETTABLEKS R9 R8 K25 ["MarketplaceShouldUsePluginCreatorWhitelist"]
  LOADB R9 0
  SETTABLEKS R9 R8 K26 ["DisableAutocomplete"]
  LOADB R9 1
  SETTABLEKS R9 R8 K27 ["Enabled"]
  LOADK R9 K38 ["https://create.roblox.com/docs/production/publishing/creator-marketplace#verifying-your-account"]
  SETTABLEKS R9 R8 K28 ["VerificationDocumentationUrl"]
  LOADK R9 K39 ["https://devforum.roblox.com/t/action-needed-upcoming-changes-to-asset-privacy-for-audio/1701697"]
  SETTABLEKS R9 R8 K29 ["AudioPrivacyLearnMoreUrl"]
  SETTABLEKS R4 R8 K30 ["VideoPrivacyLearnMoreUrl"]
  LOADK R9 K40 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
  SETTABLEKS R9 R8 K31 ["SafetyLearnMoreUrl"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+2]
  LOADK R9 K41 ["https://create.roblox.com/dashboard"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K32 ["CreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+2]
  LOADK R9 K42 ["/creations/catalog/%d/configure"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K33 ["CreatorDashboardCatalogConfigUrlExtension"]
  DUPTABLE R9 K50 [{"ButtonKey", "Date", "DescriptionKey", "HeaderKey", "Image", "LinkKey", "LinkLocation"}]
  LOADK R10 K51 ["Button_Default"]
  SETTABLEKS R10 R9 K43 ["ButtonKey"]
  LOADK R10 K52 ["2022-08-08 19:45:23"]
  SETTABLEKS R10 R9 K44 ["Date"]
  LOADK R10 K53 ["Description_08092022"]
  SETTABLEKS R10 R9 K45 ["DescriptionKey"]
  LOADK R10 K54 ["Header_Default"]
  SETTABLEKS R10 R9 K46 ["HeaderKey"]
  LOADK R10 K55 ["rbxasset://textures/StudioToolbox/announcementConstruction.png"]
  SETTABLEKS R10 R9 K47 ["Image"]
  LOADK R10 K56 ["LinkText_Default"]
  SETTABLEKS R10 R9 K48 ["LinkKey"]
  LOADK R10 K57 ["https://roblox.com"]
  SETTABLEKS R10 R9 K49 ["LinkLocation"]
  SETTABLEKS R9 R8 K34 ["AnnouncementConfiguration"]
  MOVE R7 R8
  JUMP [+11]
  GETIMPORT R8 K7 [game]
  LOADK R10 K58 ["PluginPolicyService"]
  NAMECALL R8 R8 K59 ["GetService"]
  CALL R8 2 1
  LOADK R10 K60 ["Toolbox"]
  NAMECALL R8 R8 K61 ["getPluginPolicy"]
  CALL R8 2 1
  MOVE R7 R8
  NEWTABLE R8 32 0
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  SETTABLEKS R9 R8 K62 ["showRobloxCreatedAssets"]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  SETTABLEKS R9 R8 K63 ["disableMarketplaceAndRecents"]
  NEWCLOSURE R9 P2
  CAPTURE REF R7
  SETTABLEKS R9 R8 K64 ["getMaxAudioLength"]
  NEWCLOSURE R9 P3
  CAPTURE REF R7
  SETTABLEKS R9 R8 K65 ["getToolboxEnabled"]
  NEWCLOSURE R9 P4
  CAPTURE REF R7
  SETTABLEKS R9 R8 K66 ["getMarketplaceDisabledCategories"]
  NEWCLOSURE R9 P5
  CAPTURE REF R7
  SETTABLEKS R9 R8 K67 ["getShouldUsePluginCreatorWhitelist"]
  NEWCLOSURE R9 P6
  CAPTURE REF R7
  SETTABLEKS R9 R8 K68 ["disableRatings"]
  NEWCLOSURE R9 P7
  CAPTURE REF R7
  SETTABLEKS R9 R8 K69 ["getShouldHideNonRelevanceSorts"]
  NEWCLOSURE R9 P8
  CAPTURE REF R7
  SETTABLEKS R9 R8 K70 ["getShouldHideVerifiedCreatorBadges"]
  NEWCLOSURE R9 P9
  CAPTURE REF R7
  SETTABLEKS R9 R8 K71 ["getShouldDisableAutocomplete"]
  NEWCLOSURE R9 P10
  CAPTURE REF R7
  SETTABLEKS R9 R8 K72 ["getAssetConfigMessaging"]
  NEWCLOSURE R9 P11
  CAPTURE REF R7
  SETTABLEKS R9 R8 K73 ["getCreatorMarketplaceWebBaseUrl"]
  NEWTABLE R9 0 0
  GETIMPORT R10 K75 [pairs]
  GETIMPORT R11 K78 [Enum.AssetType]
  NAMECALL R11 R11 K79 ["GetEnumItems"]
  CALL R11 1 -1
  CALL R10 -1 3
  FORGPREP_NEXT R10
  GETTABLEKS R15 R14 K80 ["Name"]
  SETTABLE R14 R9 R15
  FORGLOOP R10 2 [-4]
  NEWCLOSURE R10 P12
  CAPTURE REF R7
  CAPTURE VAL R9
  SETTABLEKS R10 R8 K81 ["getAssetConfigDistributionQuotas"]
  NEWCLOSURE R10 P13
  CAPTURE REF R7
  SETTABLEKS R10 R8 K82 ["getAnnouncementConfiguration"]
  NEWCLOSURE R10 P14
  CAPTURE REF R7
  SETTABLEKS R10 R8 K83 ["getVerificationDocumentationUrl"]
  NEWCLOSURE R10 P15
  CAPTURE REF R7
  SETTABLEKS R10 R8 K84 ["getAudioPrivacyLearnMoreUrl"]
  NEWCLOSURE R10 P16
  CAPTURE REF R7
  SETTABLEKS R10 R8 K85 ["getVideoPrivacyLearnMoreUrl"]
  NEWCLOSURE R10 P17
  CAPTURE REF R7
  SETTABLEKS R10 R8 K86 ["getSafetyLearnMoreUrl"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R10 P18
  CAPTURE REF R7
  SETTABLEKS R10 R8 K87 ["getCreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+4]
  NEWCLOSURE R10 P19
  CAPTURE REF R7
  SETTABLEKS R10 R8 K88 ["getCreatorDashboardCatalogConfigUrlExtension"]
  NEWCLOSURE R10 P20
  CAPTURE REF R7
  SETTABLEKS R10 R8 K89 ["hideAssetConfigDistributeLearnMoreLink"]
  MOVE R10 R5
  CALL R10 0 1
  JUMPIFNOT R10 [+8]
  NEWCLOSURE R10 P21
  CAPTURE REF R7
  SETTABLEKS R10 R8 K90 ["getAssetTypesWithAssetConfigPrice"]
  NEWCLOSURE R10 P22
  CAPTURE REF R7
  SETTABLEKS R10 R8 K91 ["getMarketplaceAssetConfigUrl"]
  CLOSEUPVALS R7
  RETURN R8 1
