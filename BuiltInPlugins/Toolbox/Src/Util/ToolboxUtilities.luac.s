PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Enabled"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R2 K1 [script]
       13 GETTABLEKS                       R2 R2 K2 ["Parent"]
       15 GETTABLEKS                       R2 R2 K5 ["isCli"]
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
       32 GETTABLEKS                       R5 R0 K12 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Util"]
       36 GETTABLEKS                       R5 R5 K14 ["SharedFlags"]
       38 GETTABLEKS                       R5 R5 K15 ["getFFlagToolboxAssetConfigOnboardingLink"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["SharedFlags"]
       49 GETTABLEKS                       R6 R6 K16 ["getFFlagEnablePluginHomeview"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K12 ["Src"]
       56 GETTABLEKS                       R7 R7 K17 ["Types"]
       58 GETTABLEKS                       R7 R7 K18 ["AssetQuotaTypes"]
       60 CALL                             R6 1 1
       61 LOADNIL                          R7
       62 LOADNIL                          R8
       63 MOVE                             R9 R1
       64 CALL                             R9 0 1
       65 JUMPIFNOT                        R9 ; [+24]
       66 DUPTABLE                         R9 K54 [{["CreatorMarketplaceWebUrl"] = "https://create.roblox.com/store/", ["ShowRobloxCreatedAssets"] = False, ["DisableMarketplaceAndRecents"] = False, ["DisableRatings"] = False, ["HideNonRelevanceSorts"] = False, ["HomeViewEnabledAssetTypes"] = "Model;Audio;Plugin", ["MarketplaceAssetConfigUrl"] = "https://create.roblox.com/dashboard/creations/store/%s/configure", ["MarketplaceDisabledCategories"] = "FreePlugins;PaidPlugins;Plugins;FreeVideo", ["MarketplaceOnboardingUrl"], ["MarketplaceShouldUsePluginCreatorWhitelist"] = True, ["DisableAutocomplete"] = False, ["Enabled"] = True, ["VerificationDocumentationUrl"] = "https://create.roblox.com/docs/production/publishing/creator-marketplace#verifying-your-account", ["AudioPrivacyLearnMoreUrl"] = "https://devforum.roblox.com/t/action-needed-upcoming-changes-to-asset-privacy-for-audio/1701697", ["VideoPrivacyLearnMoreUrl"], ["SafetyLearnMoreUrl"] = "https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use", ["CreatorDashboardBaseUrl"] = "https://create.roblox.com/dashboard", ["CreatorDashboardCatalogConfigUrlExtension"], ["AnnouncementConfiguration"], ["AppealsPortalUrl"] = "https://www.roblox.com/report-appeals#/", ["OwnershipPollingWaitTimeInSec"] = 3, ["OwnershipPollingMaxRetries"] = 5}]
       67 MOVE                             R11 R4
       68 CALL                             R11 0 1
       69 JUMPIFNOT                        R11 ; [+2]
       70 LOADK                            R10 K55 ["https://create.roblox.com/settings/eligibility/priced-assets"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R10
       73 SETTABLEKS                       R10 R9 K32 ["MarketplaceOnboardingUrl"]
       75 SETTABLEKS                       R3 R9 K41 ["VideoPrivacyLearnMoreUrl"]
       77 JUMPIFNOT                        R2 ; [+2]
       78 LOADK                            R10 K56 ["/creations/catalog/%d/configure"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R10
       81 SETTABLEKS                       R10 R9 K46 ["CreatorDashboardCatalogConfigUrlExtension"]
       83 DUPTABLE                         R10 K71 [{["ButtonKey"] = "Button_Default", ["Date"] = "2022-08-08 19:45:23", ["DescriptionKey"] = "Description_08092022", ["HeaderKey"] = "Header_Default", ["Image"] = "rbxasset://textures/StudioToolbox/announcementConstruction.png", ["LinkKey"] = "LinkText_Default", ["LinkLocation"] = "https://roblox.com"}]
       84 SETTABLEKS                       R10 R9 K47 ["AnnouncementConfiguration"]
       86 MOVE                             R7 R9
       87 DUPTABLE                         R9 K72 [{["Enabled"] = True}]
       88 MOVE                             R8 R9
       89 JUMP                             ; [+16]
       90 GETIMPORT                        R9 K7 [game]
       92 LOADK                            R11 K73 ["PluginPolicyService"]
       93 NAMECALL                         R9 R9 K74 ["GetService"]
       95 CALL                             R9 2 1
       96 LOADK                            R12 K75 ["Toolbox"]
       97 NAMECALL                         R10 R9 K76 ["getPluginPolicy"]
       99 CALL                             R10 2 1
      100 MOVE                             R7 R10
      101 LOADK                            R12 K77 ["RenameFriendsToConnections"]
      102 NAMECALL                         R10 R9 K76 ["getPluginPolicy"]
      104 CALL                             R10 2 1
      105 MOVE                             R8 R10
      106 NEWTABLE                         R9 32 0
      108 NEWCLOSURE                       R10 P0
      109 CAPTURE                          REF R8
      110 SETTABLEKS                       R10 R9 K78 ["shouldRenameFriendsToConnections"]
      112 NEWCLOSURE                       R10 P1
      113 CAPTURE                          REF R7
      114 SETTABLEKS                       R10 R9 K79 ["showRobloxCreatedAssets"]
      116 NEWCLOSURE                       R10 P2
      117 CAPTURE                          REF R7
      118 SETTABLEKS                       R10 R9 K80 ["disableMarketplaceAndRecents"]
      120 NEWCLOSURE                       R10 P3
      121 CAPTURE                          REF R7
      122 SETTABLEKS                       R10 R9 K81 ["getMaxAudioLength"]
      124 NEWCLOSURE                       R10 P4
      125 CAPTURE                          REF R7
      126 SETTABLEKS                       R10 R9 K82 ["getToolboxEnabled"]
      128 NEWCLOSURE                       R10 P5
      129 CAPTURE                          REF R7
      130 SETTABLEKS                       R10 R9 K83 ["getMarketplaceDisabledCategories"]
      132 MOVE                             R10 R5
      133 CALL                             R10 0 1
      134 JUMPIFNOT                        R10 ; [+4]
      135 NEWCLOSURE                       R10 P6
      136 CAPTURE                          REF R7
      137 SETTABLEKS                       R10 R9 K84 ["getHomeViewEnabledAssetTypes"]
      139 NEWCLOSURE                       R10 P7
      140 CAPTURE                          REF R7
      141 SETTABLEKS                       R10 R9 K85 ["getShouldUsePluginCreatorWhitelist"]
      143 NEWCLOSURE                       R10 P8
      144 CAPTURE                          REF R7
      145 SETTABLEKS                       R10 R9 K86 ["disableRatings"]
      147 NEWCLOSURE                       R10 P9
      148 CAPTURE                          REF R7
      149 SETTABLEKS                       R10 R9 K87 ["getShouldHideNonRelevanceSorts"]
      151 NEWCLOSURE                       R10 P10
      152 CAPTURE                          REF R7
      153 SETTABLEKS                       R10 R9 K88 ["getShouldHideVerifiedCreatorBadges"]
      155 NEWCLOSURE                       R10 P11
      156 CAPTURE                          REF R7
      157 SETTABLEKS                       R10 R9 K89 ["getShouldDisableAutocomplete"]
      159 NEWCLOSURE                       R10 P12
      160 CAPTURE                          REF R7
      161 SETTABLEKS                       R10 R9 K90 ["getAssetConfigMessaging"]
      163 NEWTABLE                         R10 0 0
      165 GETIMPORT                        R11 K92 [pairs]
      167 GETIMPORT                        R12 K95 [Enum.AssetType]
      169 NAMECALL                         R12 R12 K96 ["GetEnumItems"]
      171 CALL                             R12 1 -1
      172 CALL                             R11 -1 3
      173 FORGPREP_NEXT                    R11
      174 GETTABLEKS                       R16 R15 K97 ["Name"]
      176 SETTABLE                         R15 R10 R16
      177 FORGLOOP                         R11 2 ; [-4]
      179 NEWCLOSURE                       R11 P13
      180 CAPTURE                          REF R7
      181 CAPTURE                          VAL R10
      182 SETTABLEKS                       R11 R9 K98 ["getAssetConfigDistributionQuotas"]
      184 NEWCLOSURE                       R11 P14
      185 CAPTURE                          REF R7
      186 SETTABLEKS                       R11 R9 K99 ["getAnnouncementConfiguration"]
      188 NEWCLOSURE                       R11 P15
      189 CAPTURE                          REF R7
      190 SETTABLEKS                       R11 R9 K100 ["getVerificationDocumentationUrl"]
      192 NEWCLOSURE                       R11 P16
      193 CAPTURE                          REF R7
      194 SETTABLEKS                       R11 R9 K101 ["getAudioPrivacyLearnMoreUrl"]
      196 NEWCLOSURE                       R11 P17
      197 CAPTURE                          REF R7
      198 SETTABLEKS                       R11 R9 K102 ["getVideoPrivacyLearnMoreUrl"]
      200 NEWCLOSURE                       R11 P18
      201 CAPTURE                          REF R7
      202 SETTABLEKS                       R11 R9 K103 ["getSafetyLearnMoreUrl"]
      204 NEWCLOSURE                       R11 P19
      205 CAPTURE                          REF R7
      206 SETTABLEKS                       R11 R9 K104 ["getAppealsPortalUrl"]
      208 NEWCLOSURE                       R11 P20
      209 CAPTURE                          REF R7
      210 SETTABLEKS                       R11 R9 K105 ["getCreatorDashboardBaseUrl"]
      212 JUMPIFNOT                        R2 ; [+4]
      213 NEWCLOSURE                       R11 P21
      214 CAPTURE                          REF R7
      215 SETTABLEKS                       R11 R9 K106 ["getCreatorDashboardCatalogConfigUrlExtension"]
      217 NEWCLOSURE                       R11 P22
      218 CAPTURE                          REF R7
      219 SETTABLEKS                       R11 R9 K107 ["hideAssetConfigDistributeLearnMoreLink"]
      221 NEWCLOSURE                       R11 P23
      222 CAPTURE                          REF R7
      223 SETTABLEKS                       R11 R9 K108 ["getMarketplaceAssetConfigUrl"]
      225 MOVE                             R11 R4
      226 CALL                             R11 0 1
      227 JUMPIFNOT                        R11 ; [+4]
      228 NEWCLOSURE                       R11 P24
      229 CAPTURE                          REF R7
      230 SETTABLEKS                       R11 R9 K109 ["getMarketplaceOnboardingUrl"]
      232 NEWCLOSURE                       R11 P25
      233 CAPTURE                          REF R7
      234 SETTABLEKS                       R11 R9 K110 ["getOwnershipPollingWaitTimeInSec"]
      236 NEWCLOSURE                       R11 P26
      237 CAPTURE                          REF R7
      238 SETTABLEKS                       R11 R9 K111 ["getOwnershipPollingMaxRetries"]
      240 CLOSEUPVALS                      R7
      241 RETURN                           R9 1
