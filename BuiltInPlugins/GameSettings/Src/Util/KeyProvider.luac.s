PROTO_0:
        0 LOADK                            R0 K0 ["CopyIDToClipboard"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["Configure"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 ["isFriendsOnly"]
        1 RETURN                           R0 1

PROTO_3:
        0 LOADK                            R0 K0 ["isActive"]
        1 RETURN                           R0 1

PROTO_4:
        0 LOADK                            R0 K0 ["isForSale"]
        1 RETURN                           R0 1

PROTO_5:
        0 LOADK                            R0 K0 ["isRewardedOnDemandAdsAllowed"]
        1 RETURN                           R0 1

PROTO_6:
        0 LOADK                            R0 K0 ["vipServersIsEnabled"]
        1 RETURN                           R0 1

PROTO_7:
        0 LOADK                            R0 K0 ["Edit"]
        1 RETURN                           R0 1

PROTO_8:
        0 LOADK                            R0 K0 ["VersionHistory"]
        1 RETURN                           R0 1

PROTO_9:
        0 LOADK                            R0 K0 ["OptInLocations"]
        1 RETURN                           R0 1

PROTO_10:
        0 LOADK                            R0 K0 ["China"]
        1 RETURN                           R0 1

PROTO_11:
        0 LOADK                            R0 K0 ["selected"]
        1 RETURN                           R0 1

PROTO_12:
        0 LOADK                            R0 K0 ["AvatarChatAudioEnabled"]
        1 RETURN                           R0 1

PROTO_13:
        0 LOADK                            R0 K0 ["AvatarChatVideoEnabled"]
        1 RETURN                           R0 1

PROTO_14:
        0 LOADK                            R0 K0 ["ChatGroupApiEnabled"]
        1 RETURN                           R0 1

PROTO_15:
        0 LOADK                            R0 K0 ["Approved"]
        1 RETURN                           R0 1

PROTO_16:
        0 LOADK                            R0 K0 ["InReview"]
        1 RETURN                           R0 1

PROTO_17:
        0 LOADK                            R0 K0 ["Rejected"]
        1 RETURN                           R0 1

PROTO_18:
        0 LOADK                            R0 K0 ["PlayerAcceptance"]
        1 RETURN                           R0 1

PROTO_19:
        0 LOADK                            R0 K0 ["GameSettings"]
        1 RETURN                           R0 1

PROTO_20:
        0 LOADK                            R0 K0 ["plugin"]
        1 RETURN                           R0 1

PROTO_21:
        0 LOADK                            R0 K0 ["context"]
        1 RETURN                           R0 1

PROTO_22:
        0 LOADK                            R0 K0 ["LuobuStudioDevPublish"]
        1 RETURN                           R0 1

PROTO_23:
        0 LOADK                            R0 K0 ["TermsOfUseDialog"]
        1 RETURN                           R0 1

PROTO_24:
        0 LOADK                            R0 K0 ["CheckboxToggle"]
        1 RETURN                           R0 1

PROTO_25:
        0 LOADK                            R0 K0 ["buttonClicked"]
        1 RETURN                           R0 1

PROTO_26:
        0 LOADK                            R0 K0 ["Footer"]
        1 RETURN                           R0 1

PROTO_27:
        0 LOADK                            R0 K0 ["ScriptCollaborationEnabledOnServer"]
        1 RETURN                           R0 1

PROTO_28:
        0 LOADK                            R0 K0 ["TeamCreateEnabled"]
        1 RETURN                           R0 1

PROTO_29:
        0 LOADK                            R0 K0 ["AudioApiByDefault"]
        1 RETURN                           R0 1

PROTO_30:
        0 LOADK                            R0 K0 ["Delete"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getCopyIdKeyName"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["getConfigureKeyName"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["getIsFriendOnlyKeyName"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["getIsActiveKeyName"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["getIsForSaleKeyName"]
       18 DUPCLOSURE                       R1 K10 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K11 ["getIsRewardedOnDemandAdsAllowedKeyName"]
       21 DUPCLOSURE                       R1 K12 [PROTO_6]
       22 SETTABLEKS                       R1 R0 K13 ["getVipServersIsEnabledKeyName"]
       24 DUPCLOSURE                       R1 K14 [PROTO_7]
       25 SETTABLEKS                       R1 R0 K15 ["getEditKeyName"]
       27 DUPCLOSURE                       R1 K16 [PROTO_8]
       28 SETTABLEKS                       R1 R0 K17 ["getVersionHistoryKeyName"]
       30 DUPCLOSURE                       R1 K18 [PROTO_9]
       31 SETTABLEKS                       R1 R0 K19 ["getOptInLocationsKeyName"]
       33 DUPCLOSURE                       R1 K20 [PROTO_10]
       34 SETTABLEKS                       R1 R0 K21 ["getChinaKeyName"]
       36 DUPCLOSURE                       R1 K22 [PROTO_11]
       37 SETTABLEKS                       R1 R0 K23 ["getSelectedKeyName"]
       39 DUPCLOSURE                       R1 K24 [PROTO_12]
       40 SETTABLEKS                       R1 R0 K25 ["getAvatarChatAudioEnabledKeyName"]
       42 DUPCLOSURE                       R1 K26 [PROTO_13]
       43 SETTABLEKS                       R1 R0 K27 ["getAvatarChatVideoEnabledKeyName"]
       45 DUPCLOSURE                       R1 K28 [PROTO_14]
       46 SETTABLEKS                       R1 R0 K29 ["getChatGroupApiEnabledKeyName"]
       48 DUPCLOSURE                       R1 K30 [PROTO_15]
       49 SETTABLEKS                       R1 R0 K31 ["getApprovedKeyName"]
       51 DUPCLOSURE                       R1 K32 [PROTO_16]
       52 SETTABLEKS                       R1 R0 K33 ["getInReviewKeyName"]
       54 DUPCLOSURE                       R1 K34 [PROTO_17]
       55 SETTABLEKS                       R1 R0 K35 ["getRejectedKeyName"]
       57 DUPCLOSURE                       R1 K36 [PROTO_18]
       58 SETTABLEKS                       R1 R0 K37 ["getPlayerAcceptanceKeyName"]
       60 DUPCLOSURE                       R1 K38 [PROTO_19]
       61 SETTABLEKS                       R1 R0 K39 ["getGameSettingsKeyName"]
       63 DUPCLOSURE                       R1 K40 [PROTO_20]
       64 SETTABLEKS                       R1 R0 K41 ["getPluginKeyName"]
       66 DUPCLOSURE                       R1 K42 [PROTO_21]
       67 SETTABLEKS                       R1 R0 K43 ["getContextKeyName"]
       69 DUPCLOSURE                       R1 K44 [PROTO_22]
       70 SETTABLEKS                       R1 R0 K45 ["getLuobuStudioDevPublishKeyName"]
       72 DUPCLOSURE                       R1 K46 [PROTO_23]
       73 SETTABLEKS                       R1 R0 K47 ["getTermsOfUseDialogKeyName"]
       75 DUPCLOSURE                       R1 K48 [PROTO_24]
       76 SETTABLEKS                       R1 R0 K49 ["getCheckboxToggleKeyName"]
       78 DUPCLOSURE                       R1 K50 [PROTO_25]
       79 SETTABLEKS                       R1 R0 K51 ["getButtonClickedKeyName"]
       81 DUPCLOSURE                       R1 K52 [PROTO_26]
       82 SETTABLEKS                       R1 R0 K53 ["getFooterKeyName"]
       84 DUPCLOSURE                       R1 K54 [PROTO_27]
       85 SETTABLEKS                       R1 R0 K55 ["getScriptCollaborationEnabledOnServerKeyName"]
       87 DUPCLOSURE                       R1 K56 [PROTO_28]
       88 SETTABLEKS                       R1 R0 K57 ["getTeamCreateEnabledKeyName"]
       90 DUPCLOSURE                       R1 K58 [PROTO_29]
       91 SETTABLEKS                       R1 R0 K59 ["getAudioApiByDefaultKeyName"]
       93 DUPCLOSURE                       R1 K60 [PROTO_30]
       94 SETTABLEKS                       R1 R0 K61 ["getDeleteKeyName"]
       96 RETURN                           R0 1
