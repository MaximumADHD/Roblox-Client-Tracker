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

PROTO_31:
        0 LOADK                            R0 K0 ["ScriptCollabEnabled"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Flags"]
       11 GETTABLEKS                       R1 R1 K6 ["getFFlagPruneGameSettings"]
       13 CALL                             R0 1 1
       14 NEWTABLE                         R1 32 0
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 SETTABLEKS                       R2 R1 K8 ["getCopyIdKeyName"]
       19 DUPCLOSURE                       R2 K9 [PROTO_1]
       20 SETTABLEKS                       R2 R1 K10 ["getConfigureKeyName"]
       22 DUPCLOSURE                       R2 K11 [PROTO_2]
       23 SETTABLEKS                       R2 R1 K12 ["getIsFriendOnlyKeyName"]
       25 DUPCLOSURE                       R2 K13 [PROTO_3]
       26 SETTABLEKS                       R2 R1 K14 ["getIsActiveKeyName"]
       28 DUPCLOSURE                       R2 K15 [PROTO_4]
       29 SETTABLEKS                       R2 R1 K16 ["getIsForSaleKeyName"]
       31 DUPCLOSURE                       R2 K17 [PROTO_5]
       32 SETTABLEKS                       R2 R1 K18 ["getIsRewardedOnDemandAdsAllowedKeyName"]
       34 DUPCLOSURE                       R2 K19 [PROTO_6]
       35 SETTABLEKS                       R2 R1 K20 ["getVipServersIsEnabledKeyName"]
       37 DUPCLOSURE                       R2 K21 [PROTO_7]
       38 SETTABLEKS                       R2 R1 K22 ["getEditKeyName"]
       40 DUPCLOSURE                       R2 K23 [PROTO_8]
       41 SETTABLEKS                       R2 R1 K24 ["getVersionHistoryKeyName"]
       43 DUPCLOSURE                       R2 K25 [PROTO_9]
       44 SETTABLEKS                       R2 R1 K26 ["getOptInLocationsKeyName"]
       46 DUPCLOSURE                       R2 K27 [PROTO_10]
       47 SETTABLEKS                       R2 R1 K28 ["getChinaKeyName"]
       49 DUPCLOSURE                       R2 K29 [PROTO_11]
       50 SETTABLEKS                       R2 R1 K30 ["getSelectedKeyName"]
       52 DUPCLOSURE                       R2 K31 [PROTO_12]
       53 SETTABLEKS                       R2 R1 K32 ["getAvatarChatAudioEnabledKeyName"]
       55 DUPCLOSURE                       R2 K33 [PROTO_13]
       56 SETTABLEKS                       R2 R1 K34 ["getAvatarChatVideoEnabledKeyName"]
       58 DUPCLOSURE                       R2 K35 [PROTO_14]
       59 SETTABLEKS                       R2 R1 K36 ["getChatGroupApiEnabledKeyName"]
       61 DUPCLOSURE                       R2 K37 [PROTO_15]
       62 SETTABLEKS                       R2 R1 K38 ["getApprovedKeyName"]
       64 DUPCLOSURE                       R2 K39 [PROTO_16]
       65 SETTABLEKS                       R2 R1 K40 ["getInReviewKeyName"]
       67 DUPCLOSURE                       R2 K41 [PROTO_17]
       68 SETTABLEKS                       R2 R1 K42 ["getRejectedKeyName"]
       70 DUPCLOSURE                       R2 K43 [PROTO_18]
       71 SETTABLEKS                       R2 R1 K44 ["getPlayerAcceptanceKeyName"]
       73 DUPCLOSURE                       R2 K45 [PROTO_19]
       74 SETTABLEKS                       R2 R1 K46 ["getGameSettingsKeyName"]
       76 DUPCLOSURE                       R2 K47 [PROTO_20]
       77 SETTABLEKS                       R2 R1 K48 ["getPluginKeyName"]
       79 DUPCLOSURE                       R2 K49 [PROTO_21]
       80 SETTABLEKS                       R2 R1 K50 ["getContextKeyName"]
       82 DUPCLOSURE                       R2 K51 [PROTO_22]
       83 SETTABLEKS                       R2 R1 K52 ["getLuobuStudioDevPublishKeyName"]
       85 DUPCLOSURE                       R2 K53 [PROTO_23]
       86 SETTABLEKS                       R2 R1 K54 ["getTermsOfUseDialogKeyName"]
       88 DUPCLOSURE                       R2 K55 [PROTO_24]
       89 SETTABLEKS                       R2 R1 K56 ["getCheckboxToggleKeyName"]
       91 DUPCLOSURE                       R2 K57 [PROTO_25]
       92 SETTABLEKS                       R2 R1 K58 ["getButtonClickedKeyName"]
       94 DUPCLOSURE                       R2 K59 [PROTO_26]
       95 SETTABLEKS                       R2 R1 K60 ["getFooterKeyName"]
       97 DUPCLOSURE                       R2 K61 [PROTO_27]
       98 SETTABLEKS                       R2 R1 K62 ["getScriptCollaborationEnabledOnServerKeyName"]
      100 DUPCLOSURE                       R2 K63 [PROTO_28]
      101 SETTABLEKS                       R2 R1 K64 ["getTeamCreateEnabledKeyName"]
      103 DUPCLOSURE                       R2 K65 [PROTO_29]
      104 SETTABLEKS                       R2 R1 K66 ["getAudioApiByDefaultKeyName"]
      106 DUPCLOSURE                       R2 K67 [PROTO_30]
      107 SETTABLEKS                       R2 R1 K68 ["getDeleteKeyName"]
      109 MOVE                             R2 R0
      110 CALL                             R2 0 1
      111 JUMPIFNOT                        R2 ; [+3]
      112 DUPCLOSURE                       R2 K69 [PROTO_31]
      113 SETTABLEKS                       R2 R1 K70 ["getScriptCollaborationEnabledKeyName"]
      115 RETURN                           R1 1
