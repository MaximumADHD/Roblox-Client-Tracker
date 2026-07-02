PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AutoTranslationAllowed"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AutoTranslationTargetLanguages"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SocialMediaReferencesAllowed"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DisablePrivateServersAndPaidAccess"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ShowBadges"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ShowOptInLocations"]
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PlayerAppDownloadLink"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 SETTABLE                         R0 R2 R3
        4 GETUPVAL                         R3 1
        5 SETTABLE                         R1 R2 R3
        6 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 NEWTABLE                         R4 2 0
        3 GETUPVAL                         R6 1
        4 SETTABLE                         R5 R4 R6
        5 GETUPVAL                         R6 2
        6 SETTABLE                         R2 R4 R6
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 MOVE                             R6 R4
       13 MOVE                             R7 R3
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 GETUPVAL                         R5 4
       17 MOVE                             R7 R0
       18 MOVE                             R8 R4
       19 MOVE                             R9 R1
       20 NAMECALL                         R5 R5 K2 ["reportInfluxSeries"]
       22 CALL                             R5 4 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsEdit"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["IsServer"]
        8 CALL                             R1 1 1
        9 NOT                              R0 R1
       10 RETURN                           R0 1

PROTO_11:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 5000
        3 LOADN                            R5 5000
        4 CALL                             R3 2 1
        5 GETIMPORT                        R4 K4 [game]
        7 LOADK                            R6 K5 ["TextService"]
        8 NAMECALL                         R4 R4 K6 ["GetService"]
       10 CALL                             R4 2 1
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 MOVE                             R9 R3
       15 NAMECALL                         R4 R4 K7 ["GetTextSize"]
       17 CALL                             R4 5 -1
       18 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DevPublishChinaRequirementsLink"]
        4 NAMECALL                         R0 R0 K3 ["GetFastString"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RbxAnalyticsService"]
       10 NAMECALL                         R1 R1 K5 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["RunService"]
       16 NAMECALL                         R2 R2 K5 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K7 ["PluginPolicyService"]
       22 NAMECALL                         R3 R3 K5 ["GetService"]
       24 CALL                             R3 2 1
       25 LOADK                            R5 K8 ["GameSettings"]
       26 NAMECALL                         R3 R3 K9 ["getPluginPolicy"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K11 [script]
       31 GETTABLEKS                       R4 R4 K12 ["Parent"]
       33 GETTABLEKS                       R4 R4 K12 ["Parent"]
       35 GETTABLEKS                       R4 R4 K12 ["Parent"]
       37 GETIMPORT                        R5 K14 [require]
       39 GETTABLEKS                       R6 R4 K15 ["Packages"]
       41 GETTABLEKS                       R6 R6 K16 ["Cryo"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K14 [require]
       46 GETTABLEKS                       R7 R4 K17 ["Src"]
       48 GETTABLEKS                       R7 R7 K18 ["Util"]
       50 GETTABLEKS                       R7 R7 K19 ["KeyProvider"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K20 ["getContextKeyName"]
       55 CALL                             R7 0 1
       56 GETTABLEKS                       R8 R6 K21 ["getPluginKeyName"]
       58 CALL                             R8 0 1
       59 GETTABLEKS                       R9 R6 K22 ["getGameSettingsKeyName"]
       61 CALL                             R9 0 1
       62 NEWTABLE                         R10 16 0
       64 DUPCLOSURE                       R11 K23 [PROTO_0]
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R11 R10 K24 ["getAutoTranslationAllowed"]
       68 DUPCLOSURE                       R11 K25 [PROTO_1]
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R11 R10 K26 ["getAutoTranslatedLanguages"]
       72 DUPCLOSURE                       R11 K27 [PROTO_2]
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R11 R10 K28 ["getSocialMediaReferencesAllowed"]
       76 DUPCLOSURE                       R11 K29 [PROTO_3]
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R11 R10 K30 ["shouldDisablePrivateServersAndPaidAccess"]
       80 DUPCLOSURE                       R11 K31 [PROTO_4]
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R11 R10 K32 ["shouldAllowBadges"]
       84 DUPCLOSURE                       R11 K33 [PROTO_5]
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R11 R10 K34 ["shouldShowDevPublishLocations"]
       88 DUPCLOSURE                       R11 K35 [PROTO_6]
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R11 R10 K36 ["getPlayerAppDownloadLink"]
       92 DUPCLOSURE                       R11 K37 [PROTO_7]
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R11 R10 K38 ["getOptInLocationsRequirementsLink"]
       96 DUPCLOSURE                       R11 K39 [PROTO_8]
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R7
       99 DUPCLOSURE                       R12 K40 [PROTO_9]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R1
      105 SETTABLEKS                       R12 R10 K41 ["sendAnalyticsToKibana"]
      107 DUPCLOSURE                       R12 K42 [PROTO_10]
      108 CAPTURE                          VAL R2
      109 SETTABLEKS                       R12 R10 K43 ["isTeamCreateEnabled"]
      111 DUPCLOSURE                       R12 K44 [PROTO_11]
      112 SETTABLEKS                       R12 R10 K45 ["calculateTextSize"]
      114 RETURN                           R10 1
