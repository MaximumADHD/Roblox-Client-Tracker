PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["Enabled"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ShowRobloxCreatedAssets"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DisableMarketplaceAndRecents"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MaxAudioLength"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MarketplaceDisabledCategories"]
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["HomeViewEnabledAssetTypes"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MarketplaceShouldUsePluginCreatorWhitelist"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DisableRatings"]
        3 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["HideNonRelevanceSorts"]
        3 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["HideVerifiedCreatorBadges"]
        3 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DisableAutocomplete"]
        3 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AssetConfigMessaging"]
        3 JUMPIF                           R0 ; [+2]
        4 NEWTABLE                         R0 0 0
        6 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AssetConfigDistributionQuotas"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K2 [type]
       12 CALL                             R1 1 1
       13 JUMPIFEQKS                       R1 K3 ["table"] ; [+8]
       15 GETIMPORT                        R1 K5 [warn]
       17 LOADK                            R2 K6 ["AssetConfigDistributionQuotas is expected to be a table if defined"]
       18 CALL                             R1 1 0
       19 NEWTABLE                         R1 0 0
       21 RETURN                           R1 1
       22 NEWTABLE                         R1 0 0
       24 GETIMPORT                        R2 K8 [pairs]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 3
       28 FORGPREP_NEXT                    R2
       29 GETUPVAL                         R8 1
       30 GETTABLE                         R7 R8 R5
       31 JUMPIFEQKNIL                     R7 ; [+3]
       33 SETTABLE                         R6 R1 R5
       34 JUMP                             ; [+5]
       35 GETIMPORT                        R8 K5 [warn]
       37 LOADK                            R9 K9 ["Invalid assetType name in getAssetConfigDistributionQuotasEnabledAssetTypes:"]
       38 MOVE                             R10 R5
       39 CALL                             R8 2 0
       40 FORGLOOP                         R2 2 ; [-12]
       42 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AnnouncementConfiguration"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K2 [type]
       12 CALL                             R1 1 1
       13 JUMPIFEQKS                       R1 K3 ["table"] ; [+8]
       15 GETIMPORT                        R1 K5 [warn]
       17 LOADK                            R2 K6 ["AnnouncementConfiguration is expected to be a table if defined"]
       18 CALL                             R1 1 0
       19 NEWTABLE                         R1 0 0
       21 RETURN                           R1 1
       22 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["VerificationDocumentationUrl"]
        3 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AudioPrivacyLearnMoreUrl"]
        3 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["VideoPrivacyLearnMoreUrl"]
        3 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SafetyLearnMoreUrl"]
        3 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AppealsPortalUrl"]
        3 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CreatorDashboardBaseUrl"]
        3 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CreatorDashboardCatalogConfigUrlExtension"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["format"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["HideAssetConfigDistributeLearnMoreLink"]
        3 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["MarketplaceAssetConfigUrl"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["format"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MarketplaceOnboardingUrl"]
        3 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K1 ["OwnershipPollingWaitTimeInSec"]
        3 ORK                              R0 R1 K0 [1]
        4 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K1 ["OwnershipPollingMaxRetries"]
        3 ORK                              R0 R1 K0 [1]
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K2 ["Parent"]
       15 GETTABLEKS                       R2 R3 K5 ["isCli"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K7 [game]
       20 LOADK                            R4 K8 ["DisableSalesPageForAvatarCreations2"]
       21 NAMECALL                         R2 R2 K9 ["GetFastFlag"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K7 [game]
       26 LOADK                            R5 K10 ["ToolboxAssetConfigDisabledVideoSharingLearnMoreLink"]
       27 NAMECALL                         R3 R3 K11 ["GetFastString"]
       29 CALL                             R3 2 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R8 R0 K12 ["Src"]
       34 GETTABLEKS                       R7 R8 K13 ["Util"]
       36 GETTABLEKS                       R6 R7 K14 ["SharedFlags"]
       38 GETTABLEKS                       R5 R6 K15 ["getFFlagToolboxAssetConfigOnboardingLink"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R9 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R9 K13 ["Util"]
       47 GETTABLEKS                       R7 R8 K14 ["SharedFlags"]
       49 GETTABLEKS                       R6 R7 K16 ["getFFlagEnablePluginHomeview"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R9 R0 K12 ["Src"]
       56 GETTABLEKS                       R8 R9 K17 ["Types"]
       58 GETTABLEKS                       R7 R8 K18 ["AssetQuotaTypes"]
       60 CALL                             R6 1 1
       61 LOADNIL                          R7
       62 LOADNIL                          R8
       63 MOVE                             R9 R1
       64 CALL                             R9 0 1
       65 JUMPIFNOT                        R9 ; [+102]
       66 DUPTABLE                         R9 K41 [{"CreatorMarketplaceWebUrl", "ShowRobloxCreatedAssets", "DisableMarketplaceAndRecents", "DisableRatings", "HideNonRelevanceSorts", "HomeViewEnabledAssetTypes", "MarketplaceAssetConfigUrl", "MarketplaceDisabledCategories", "MarketplaceOnboardingUrl", "MarketplaceShouldUsePluginCreatorWhitelist", "DisableAutocomplete", "Enabled", "VerificationDocumentationUrl", "AudioPrivacyLearnMoreUrl", "VideoPrivacyLearnMoreUrl", "SafetyLearnMoreUrl", "CreatorDashboardBaseUrl", "CreatorDashboardCatalogConfigUrlExtension", "AnnouncementConfiguration", "AppealsPortalUrl", "OwnershipPollingWaitTimeInSec", "OwnershipPollingMaxRetries"}]
       67 LOADK                            R10 K42 ["https://create.roblox.com/store/"]
       68 SETTABLEKS                       R10 R9 K19 ["CreatorMarketplaceWebUrl"]
       70 LOADB                            R10 0
       71 SETTABLEKS                       R10 R9 K20 ["ShowRobloxCreatedAssets"]
       73 LOADB                            R10 0
       74 SETTABLEKS                       R10 R9 K21 ["DisableMarketplaceAndRecents"]
       76 LOADB                            R10 0
       77 SETTABLEKS                       R10 R9 K22 ["DisableRatings"]
       79 LOADB                            R10 0
       80 SETTABLEKS                       R10 R9 K23 ["HideNonRelevanceSorts"]
       82 LOADK                            R10 K43 ["Model;Audio;Plugin"]
       83 SETTABLEKS                       R10 R9 K24 ["HomeViewEnabledAssetTypes"]
       85 LOADK                            R10 K44 ["https://create.roblox.com/dashboard/creations/store/%s/configure"]
       86 SETTABLEKS                       R10 R9 K25 ["MarketplaceAssetConfigUrl"]
       88 LOADK                            R10 K45 ["FreePlugins;PaidPlugins;Plugins;FreeVideo"]
       89 SETTABLEKS                       R10 R9 K26 ["MarketplaceDisabledCategories"]
       91 MOVE                             R11 R4
       92 CALL                             R11 0 1
       93 JUMPIFNOT                        R11 ; [+2]
       94 LOADK                            R10 K46 ["https://create.roblox.com/settings/eligibility/priced-assets"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R10
       97 SETTABLEKS                       R10 R9 K27 ["MarketplaceOnboardingUrl"]
       99 LOADB                            R10 1
      100 SETTABLEKS                       R10 R9 K28 ["MarketplaceShouldUsePluginCreatorWhitelist"]
      102 LOADB                            R10 0
      103 SETTABLEKS                       R10 R9 K29 ["DisableAutocomplete"]
      105 LOADB                            R10 1
      106 SETTABLEKS                       R10 R9 K30 ["Enabled"]
      108 LOADK                            R10 K47 ["https://create.roblox.com/docs/production/publishing/creator-marketplace#verifying-your-account"]
      109 SETTABLEKS                       R10 R9 K31 ["VerificationDocumentationUrl"]
      111 LOADK                            R10 K48 ["https://devforum.roblox.com/t/action-needed-upcoming-changes-to-asset-privacy-for-audio/1701697"]
      112 SETTABLEKS                       R10 R9 K32 ["AudioPrivacyLearnMoreUrl"]
      114 SETTABLEKS                       R3 R9 K33 ["VideoPrivacyLearnMoreUrl"]
      116 LOADK                            R10 K49 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
      117 SETTABLEKS                       R10 R9 K34 ["SafetyLearnMoreUrl"]
      119 LOADK                            R10 K50 ["https://create.roblox.com/dashboard"]
      120 SETTABLEKS                       R10 R9 K35 ["CreatorDashboardBaseUrl"]
      122 JUMPIFNOT                        R2 ; [+2]
      123 LOADK                            R10 K51 ["/creations/catalog/%d/configure"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R10
      126 SETTABLEKS                       R10 R9 K36 ["CreatorDashboardCatalogConfigUrlExtension"]
      128 DUPTABLE                         R10 K59 [{"ButtonKey", "Date", "DescriptionKey", "HeaderKey", "Image", "LinkKey", "LinkLocation"}]
      129 LOADK                            R11 K60 ["Button_Default"]
      130 SETTABLEKS                       R11 R10 K52 ["ButtonKey"]
      132 LOADK                            R11 K61 ["2022-08-08 19:45:23"]
      133 SETTABLEKS                       R11 R10 K53 ["Date"]
      135 LOADK                            R11 K62 ["Description_08092022"]
      136 SETTABLEKS                       R11 R10 K54 ["DescriptionKey"]
      138 LOADK                            R11 K63 ["Header_Default"]
      139 SETTABLEKS                       R11 R10 K55 ["HeaderKey"]
      141 LOADK                            R11 K64 ["rbxasset://textures/StudioToolbox/announcementConstruction.png"]
      142 SETTABLEKS                       R11 R10 K56 ["Image"]
      144 LOADK                            R11 K65 ["LinkText_Default"]
      145 SETTABLEKS                       R11 R10 K57 ["LinkKey"]
      147 LOADK                            R11 K66 ["https://roblox.com"]
      148 SETTABLEKS                       R11 R10 K58 ["LinkLocation"]
      150 SETTABLEKS                       R10 R9 K37 ["AnnouncementConfiguration"]
      152 LOADK                            R10 K67 ["https://www.roblox.com/report-appeals#/"]
      153 SETTABLEKS                       R10 R9 K38 ["AppealsPortalUrl"]
      155 LOADN                            R10 3
      156 SETTABLEKS                       R10 R9 K39 ["OwnershipPollingWaitTimeInSec"]
      158 LOADN                            R10 5
      159 SETTABLEKS                       R10 R9 K40 ["OwnershipPollingMaxRetries"]
      161 MOVE                             R7 R9
      162 DUPTABLE                         R9 K68 [{"Enabled"}]
      163 LOADB                            R10 1
      164 SETTABLEKS                       R10 R9 K30 ["Enabled"]
      166 MOVE                             R8 R9
      167 JUMP                             ; [+16]
      168 GETIMPORT                        R9 K7 [game]
      170 LOADK                            R11 K69 ["PluginPolicyService"]
      171 NAMECALL                         R9 R9 K70 ["GetService"]
      173 CALL                             R9 2 1
      174 LOADK                            R12 K71 ["Toolbox"]
      175 NAMECALL                         R10 R9 K72 ["getPluginPolicy"]
      177 CALL                             R10 2 1
      178 MOVE                             R7 R10
      179 LOADK                            R12 K73 ["RenameFriendsToConnections"]
      180 NAMECALL                         R10 R9 K72 ["getPluginPolicy"]
      182 CALL                             R10 2 1
      183 MOVE                             R8 R10
      184 NEWTABLE                         R9 32 0
      186 NEWCLOSURE                       R10 P0
      187 CAPTURE                          REF R8
      188 SETTABLEKS                       R10 R9 K74 ["shouldRenameFriendsToConnections"]
      190 NEWCLOSURE                       R10 P1
      191 CAPTURE                          REF R7
      192 SETTABLEKS                       R10 R9 K75 ["showRobloxCreatedAssets"]
      194 NEWCLOSURE                       R10 P2
      195 CAPTURE                          REF R7
      196 SETTABLEKS                       R10 R9 K76 ["disableMarketplaceAndRecents"]
      198 NEWCLOSURE                       R10 P3
      199 CAPTURE                          REF R7
      200 SETTABLEKS                       R10 R9 K77 ["getMaxAudioLength"]
      202 NEWCLOSURE                       R10 P4
      203 CAPTURE                          REF R7
      204 SETTABLEKS                       R10 R9 K78 ["getToolboxEnabled"]
      206 NEWCLOSURE                       R10 P5
      207 CAPTURE                          REF R7
      208 SETTABLEKS                       R10 R9 K79 ["getMarketplaceDisabledCategories"]
      210 MOVE                             R10 R5
      211 CALL                             R10 0 1
      212 JUMPIFNOT                        R10 ; [+4]
      213 NEWCLOSURE                       R10 P6
      214 CAPTURE                          REF R7
      215 SETTABLEKS                       R10 R9 K80 ["getHomeViewEnabledAssetTypes"]
      217 NEWCLOSURE                       R10 P7
      218 CAPTURE                          REF R7
      219 SETTABLEKS                       R10 R9 K81 ["getShouldUsePluginCreatorWhitelist"]
      221 NEWCLOSURE                       R10 P8
      222 CAPTURE                          REF R7
      223 SETTABLEKS                       R10 R9 K82 ["disableRatings"]
      225 NEWCLOSURE                       R10 P9
      226 CAPTURE                          REF R7
      227 SETTABLEKS                       R10 R9 K83 ["getShouldHideNonRelevanceSorts"]
      229 NEWCLOSURE                       R10 P10
      230 CAPTURE                          REF R7
      231 SETTABLEKS                       R10 R9 K84 ["getShouldHideVerifiedCreatorBadges"]
      233 NEWCLOSURE                       R10 P11
      234 CAPTURE                          REF R7
      235 SETTABLEKS                       R10 R9 K85 ["getShouldDisableAutocomplete"]
      237 NEWCLOSURE                       R10 P12
      238 CAPTURE                          REF R7
      239 SETTABLEKS                       R10 R9 K86 ["getAssetConfigMessaging"]
      241 NEWTABLE                         R10 0 0
      243 GETIMPORT                        R11 K88 [pairs]
      245 GETIMPORT                        R12 K91 [Enum.AssetType]
      247 NAMECALL                         R12 R12 K92 ["GetEnumItems"]
      249 CALL                             R12 1 -1
      250 CALL                             R11 -1 3
      251 FORGPREP_NEXT                    R11
      252 GETTABLEKS                       R16 R15 K93 ["Name"]
      254 SETTABLE                         R15 R10 R16
      255 FORGLOOP                         R11 2 ; [-4]
      257 NEWCLOSURE                       R11 P13
      258 CAPTURE                          REF R7
      259 CAPTURE                          VAL R10
      260 SETTABLEKS                       R11 R9 K94 ["getAssetConfigDistributionQuotas"]
      262 NEWCLOSURE                       R11 P14
      263 CAPTURE                          REF R7
      264 SETTABLEKS                       R11 R9 K95 ["getAnnouncementConfiguration"]
      266 NEWCLOSURE                       R11 P15
      267 CAPTURE                          REF R7
      268 SETTABLEKS                       R11 R9 K96 ["getVerificationDocumentationUrl"]
      270 NEWCLOSURE                       R11 P16
      271 CAPTURE                          REF R7
      272 SETTABLEKS                       R11 R9 K97 ["getAudioPrivacyLearnMoreUrl"]
      274 NEWCLOSURE                       R11 P17
      275 CAPTURE                          REF R7
      276 SETTABLEKS                       R11 R9 K98 ["getVideoPrivacyLearnMoreUrl"]
      278 NEWCLOSURE                       R11 P18
      279 CAPTURE                          REF R7
      280 SETTABLEKS                       R11 R9 K99 ["getSafetyLearnMoreUrl"]
      282 NEWCLOSURE                       R11 P19
      283 CAPTURE                          REF R7
      284 SETTABLEKS                       R11 R9 K100 ["getAppealsPortalUrl"]
      286 NEWCLOSURE                       R11 P20
      287 CAPTURE                          REF R7
      288 SETTABLEKS                       R11 R9 K101 ["getCreatorDashboardBaseUrl"]
      290 JUMPIFNOT                        R2 ; [+4]
      291 NEWCLOSURE                       R11 P21
      292 CAPTURE                          REF R7
      293 SETTABLEKS                       R11 R9 K102 ["getCreatorDashboardCatalogConfigUrlExtension"]
      295 NEWCLOSURE                       R11 P22
      296 CAPTURE                          REF R7
      297 SETTABLEKS                       R11 R9 K103 ["hideAssetConfigDistributeLearnMoreLink"]
      299 NEWCLOSURE                       R11 P23
      300 CAPTURE                          REF R7
      301 SETTABLEKS                       R11 R9 K104 ["getMarketplaceAssetConfigUrl"]
      303 MOVE                             R11 R4
      304 CALL                             R11 0 1
      305 JUMPIFNOT                        R11 ; [+4]
      306 NEWCLOSURE                       R11 P24
      307 CAPTURE                          REF R7
      308 SETTABLEKS                       R11 R9 K105 ["getMarketplaceOnboardingUrl"]
      310 NEWCLOSURE                       R11 P25
      311 CAPTURE                          REF R7
      312 SETTABLEKS                       R11 R9 K106 ["getOwnershipPollingWaitTimeInSec"]
      314 NEWCLOSURE                       R11 P26
      315 CAPTURE                          REF R7
      316 SETTABLEKS                       R11 R9 K107 ["getOwnershipPollingMaxRetries"]
      318 CLOSEUPVALS                      R7
      319 RETURN                           R9 1
