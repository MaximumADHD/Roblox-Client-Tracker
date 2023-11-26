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
  GETTABLEKS R10 R0 K13 ["Core"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["SharedFlags"]
  GETTABLEKS R7 R8 K17 ["getFFlagToolboxStoreRename"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K13 ["Core"]
  GETTABLEKS R9 R10 K18 ["Types"]
  GETTABLEKS R8 R9 K19 ["AssetQuotaTypes"]
  CALL R7 1 1
  LOADNIL R8
  MOVE R9 R1
  CALL R9 0 1
  JUMPIFNOT R9 [+88]
  DUPTABLE R9 K36 [{"ShowRobloxCreatedAssets", "DisableMarketplaceAndRecents", "DisableRatings", "HideNonRelevanceSorts", "MarketplaceAssetConfigUrl", "MarketplaceDisabledCategories", "MarketplaceShouldUsePluginCreatorWhitelist", "DisableAutocomplete", "Enabled", "VerificationDocumentationUrl", "AudioPrivacyLearnMoreUrl", "VideoPrivacyLearnMoreUrl", "SafetyLearnMoreUrl", "CreatorDashboardBaseUrl", "CreatorDashboardCatalogConfigUrlExtension", "AnnouncementConfiguration"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K20 ["ShowRobloxCreatedAssets"]
  LOADB R10 0
  SETTABLEKS R10 R9 K21 ["DisableMarketplaceAndRecents"]
  LOADB R10 0
  SETTABLEKS R10 R9 K22 ["DisableRatings"]
  LOADB R10 0
  SETTABLEKS R10 R9 K23 ["HideNonRelevanceSorts"]
  MOVE R11 R5
  CALL R11 0 1
  JUMPIFNOT R11 [+7]
  MOVE R11 R6
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADK R10 K37 ["https://create.roblox.com/dashboard/creations/store/%s/configure"]
  JUMP [+3]
  LOADK R10 K38 ["https://create.roblox.com/dashboard/creations/marketplace/%s/configure"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K24 ["MarketplaceAssetConfigUrl"]
  LOADK R10 K39 ["FreePlugins;PaidPlugins;Plugins;FreeVideo"]
  SETTABLEKS R10 R9 K25 ["MarketplaceDisabledCategories"]
  LOADB R10 1
  SETTABLEKS R10 R9 K26 ["MarketplaceShouldUsePluginCreatorWhitelist"]
  LOADB R10 0
  SETTABLEKS R10 R9 K27 ["DisableAutocomplete"]
  LOADB R10 1
  SETTABLEKS R10 R9 K28 ["Enabled"]
  LOADK R10 K40 ["https://create.roblox.com/docs/production/publishing/creator-marketplace#verifying-your-account"]
  SETTABLEKS R10 R9 K29 ["VerificationDocumentationUrl"]
  LOADK R10 K41 ["https://devforum.roblox.com/t/action-needed-upcoming-changes-to-asset-privacy-for-audio/1701697"]
  SETTABLEKS R10 R9 K30 ["AudioPrivacyLearnMoreUrl"]
  SETTABLEKS R4 R9 K31 ["VideoPrivacyLearnMoreUrl"]
  LOADK R10 K42 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
  SETTABLEKS R10 R9 K32 ["SafetyLearnMoreUrl"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+2]
  LOADK R10 K43 ["https://create.roblox.com/dashboard"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K33 ["CreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+2]
  LOADK R10 K44 ["/creations/catalog/%d/configure"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K34 ["CreatorDashboardCatalogConfigUrlExtension"]
  DUPTABLE R10 K52 [{"ButtonKey", "Date", "DescriptionKey", "HeaderKey", "Image", "LinkKey", "LinkLocation"}]
  LOADK R11 K53 ["Button_Default"]
  SETTABLEKS R11 R10 K45 ["ButtonKey"]
  LOADK R11 K54 ["2022-08-08 19:45:23"]
  SETTABLEKS R11 R10 K46 ["Date"]
  LOADK R11 K55 ["Description_08092022"]
  SETTABLEKS R11 R10 K47 ["DescriptionKey"]
  LOADK R11 K56 ["Header_Default"]
  SETTABLEKS R11 R10 K48 ["HeaderKey"]
  LOADK R11 K57 ["rbxasset://textures/StudioToolbox/announcementConstruction.png"]
  SETTABLEKS R11 R10 K49 ["Image"]
  LOADK R11 K58 ["LinkText_Default"]
  SETTABLEKS R11 R10 K50 ["LinkKey"]
  LOADK R11 K59 ["https://roblox.com"]
  SETTABLEKS R11 R10 K51 ["LinkLocation"]
  SETTABLEKS R10 R9 K35 ["AnnouncementConfiguration"]
  MOVE R8 R9
  JUMP [+11]
  GETIMPORT R9 K7 [game]
  LOADK R11 K60 ["PluginPolicyService"]
  NAMECALL R9 R9 K61 ["GetService"]
  CALL R9 2 1
  LOADK R11 K62 ["Toolbox"]
  NAMECALL R9 R9 K63 ["getPluginPolicy"]
  CALL R9 2 1
  MOVE R8 R9
  NEWTABLE R9 32 0
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  SETTABLEKS R10 R9 K64 ["showRobloxCreatedAssets"]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  SETTABLEKS R10 R9 K65 ["disableMarketplaceAndRecents"]
  NEWCLOSURE R10 P2
  CAPTURE REF R8
  SETTABLEKS R10 R9 K66 ["getMaxAudioLength"]
  NEWCLOSURE R10 P3
  CAPTURE REF R8
  SETTABLEKS R10 R9 K67 ["getToolboxEnabled"]
  NEWCLOSURE R10 P4
  CAPTURE REF R8
  SETTABLEKS R10 R9 K68 ["getMarketplaceDisabledCategories"]
  NEWCLOSURE R10 P5
  CAPTURE REF R8
  SETTABLEKS R10 R9 K69 ["getShouldUsePluginCreatorWhitelist"]
  NEWCLOSURE R10 P6
  CAPTURE REF R8
  SETTABLEKS R10 R9 K70 ["disableRatings"]
  NEWCLOSURE R10 P7
  CAPTURE REF R8
  SETTABLEKS R10 R9 K71 ["getShouldHideNonRelevanceSorts"]
  NEWCLOSURE R10 P8
  CAPTURE REF R8
  SETTABLEKS R10 R9 K72 ["getShouldHideVerifiedCreatorBadges"]
  NEWCLOSURE R10 P9
  CAPTURE REF R8
  SETTABLEKS R10 R9 K73 ["getShouldDisableAutocomplete"]
  NEWCLOSURE R10 P10
  CAPTURE REF R8
  SETTABLEKS R10 R9 K74 ["getAssetConfigMessaging"]
  NEWCLOSURE R10 P11
  CAPTURE REF R8
  SETTABLEKS R10 R9 K75 ["getCreatorMarketplaceWebBaseUrl"]
  NEWTABLE R10 0 0
  GETIMPORT R11 K77 [pairs]
  GETIMPORT R12 K80 [Enum.AssetType]
  NAMECALL R12 R12 K81 ["GetEnumItems"]
  CALL R12 1 -1
  CALL R11 -1 3
  FORGPREP_NEXT R11
  GETTABLEKS R16 R15 K82 ["Name"]
  SETTABLE R15 R10 R16
  FORGLOOP R11 2 [-4]
  NEWCLOSURE R11 P12
  CAPTURE REF R8
  CAPTURE VAL R10
  SETTABLEKS R11 R9 K83 ["getAssetConfigDistributionQuotas"]
  NEWCLOSURE R11 P13
  CAPTURE REF R8
  SETTABLEKS R11 R9 K84 ["getAnnouncementConfiguration"]
  NEWCLOSURE R11 P14
  CAPTURE REF R8
  SETTABLEKS R11 R9 K85 ["getVerificationDocumentationUrl"]
  NEWCLOSURE R11 P15
  CAPTURE REF R8
  SETTABLEKS R11 R9 K86 ["getAudioPrivacyLearnMoreUrl"]
  NEWCLOSURE R11 P16
  CAPTURE REF R8
  SETTABLEKS R11 R9 K87 ["getVideoPrivacyLearnMoreUrl"]
  NEWCLOSURE R11 P17
  CAPTURE REF R8
  SETTABLEKS R11 R9 K88 ["getSafetyLearnMoreUrl"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R11 P18
  CAPTURE REF R8
  SETTABLEKS R11 R9 K89 ["getCreatorDashboardBaseUrl"]
  JUMPIFNOT R2 [+4]
  NEWCLOSURE R11 P19
  CAPTURE REF R8
  SETTABLEKS R11 R9 K90 ["getCreatorDashboardCatalogConfigUrlExtension"]
  NEWCLOSURE R11 P20
  CAPTURE REF R8
  SETTABLEKS R11 R9 K91 ["hideAssetConfigDistributeLearnMoreLink"]
  MOVE R11 R5
  CALL R11 0 1
  JUMPIFNOT R11 [+8]
  NEWCLOSURE R11 P21
  CAPTURE REF R8
  SETTABLEKS R11 R9 K92 ["getAssetTypesWithAssetConfigPrice"]
  NEWCLOSURE R11 P22
  CAPTURE REF R8
  SETTABLEKS R11 R9 K93 ["getMarketplaceAssetConfigUrl"]
  CLOSEUPVALS R8
  RETURN R9 1
