PROTO_0:
        0 LOADK                            R2 K0 ["https://"]
        1 LOADK                            R3 K1 ["www.youtube.com"]
        2 GETIMPORT                        R4 K4 [string.format]
        4 LOADK                            R5 K5 ["/watch?v=%s"]
        5 MOVE                             R6 R0
        6 CALL                             R4 2 1
        7 CONCAT                           R1 R2 R4
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["BuildRobloxUrl"]
        3 LOADK                            R2 K1 ["www"]
        4 LOADK                            R3 K2 ["places/%d/update#"]
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["BuildWatchUrl"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["OpenBrowserWindow"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["BuildPlaceSettingsUrl"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["OpenBrowserWindow"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADK                            R1 K1 ["create"]
        6 JUMP                             ; [+1]
        7 LOADK                            R1 K2 ["www"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 1
       11 GETUPVAL                         R1 4
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K3 ["OpenBrowserWindow"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"userId", "machineTimeStamp"}]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K3 ["GetUserId"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K0 ["userId"]
        7 GETIMPORT                        R1 K6 [os.time]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K1 ["machineTimeStamp"]
       12 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendEventDeferred"]
        3 LOADK                            R1 K1 ["click_learn_more"]
        4 GETGLOBAL                        R2 K2 ["getAdditionalArgs"]
        6 CALL                             R2 0 -1
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["BuildRobloxUrl"]
       11 LOADK                            R1 K4 ["create"]
       12 LOADK                            R2 K5 ["docs/production/promotion/experience-guidelines"]
       13 CALL                             R0 2 1
       14 GETUPVAL                         R1 2
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K6 ["OpenBrowserWindow"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        ASSERT R1 ; [+2]
        2 GETIMPORT                        R0 K1 [assert]
        4 CALL                             R0 1 0
        5 DUPCLOSURE                       R0 K2 [PROTO_7]
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendEventDeferred"]
        3 LOADK                            R1 K1 ["click_experience_questionnaire"]
        4 GETGLOBAL                        R2 K2 ["getAdditionalArgs"]
        6 CALL                             R2 0 -1
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["BuildRobloxUrl"]
       11 LOADK                            R1 K4 ["create"]
       12 LOADK                            R2 K5 ["dashboard/creations/experiences/%d/experience-questionnaire"]
       13 GETUPVAL                         R3 2
       14 CALL                             R0 3 1
       15 GETUPVAL                         R1 3
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K6 ["OpenBrowserWindow"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["create"]
        4 LOADK                            R2 K2 ["dashboard/creations/experiences/%d/configure"]
        5 GETUPVAL                         R3 1
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_12:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["create"]
        4 LOADK                            R2 K2 ["dashboard/creations/experiences/%d/access"]
        5 GETUPVAL                         R3 1
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_14:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["create"]
        4 LOADK                            R2 K2 ["dashboard/creations/experiences/%d/monetization/developer-products"]
        5 GETUPVAL                         R3 1
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["create"]
        4 LOADK                            R2 K2 ["dashboard/creations/experiences/%d/places"]
        5 GETUPVAL                         R3 1
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_18:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["create"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 3
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["create"]
        4 LOADK                            R2 K2 ["dashboard/creations/experiences/%d/associated-items?activeTab=Badge"]
        5 GETUPVAL                         R3 1
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_22:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["GameSettingsExperienceGuidelines"]
       12 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R0 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Flags"]
       21 GETTABLEKS                       R3 R3 K11 ["getFFlagPruneGameSettings"]
       23 CALL                             R2 1 1
       24 CALL                             R2 0 1
       25 GETIMPORT                        R3 K4 [game]
       27 LOADK                            R5 K12 ["StudioService"]
       28 NAMECALL                         R3 R3 K13 ["GetService"]
       30 CALL                             R3 2 1
       31 GETIMPORT                        R4 K4 [game]
       33 LOADK                            R6 K14 ["GuiService"]
       34 NAMECALL                         R4 R4 K13 ["GetService"]
       36 CALL                             R4 2 1
       37 JUMPIFNOT                        R2 ; [+2]
       38 LOADK                            R5 K15 ["dashboard/creations/experiences/%d/localization"]
       39 JUMP                             ; [+1]
       40 LOADK                            R5 K16 ["localization/games/%d/configure"]
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R7 K17 ["Networking"]
       47 GETTABLEKS                       R7 R7 K18 ["Http"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R8 K19 ["Util"]
       56 GETTABLEKS                       R8 R8 K20 ["Analytics"]
       58 CALL                             R7 1 1
       59 NEWTABLE                         R8 16 0
       61 DUPCLOSURE                       R9 K21 [PROTO_0]
       62 SETTABLEKS                       R9 R8 K22 ["BuildWatchUrl"]
       64 DUPCLOSURE                       R9 K23 [PROTO_1]
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R9 R8 K24 ["BuildPlaceSettingsUrl"]
       68 DUPCLOSURE                       R9 K25 [PROTO_2]
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R9 R8 K26 ["OpenVideo"]
       73 DUPCLOSURE                       R9 K27 [PROTO_3]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R9 R8 K28 ["OpenPlaceSettings"]
       78 DUPCLOSURE                       R9 K29 [PROTO_5]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R4
       83 SETTABLEKS                       R9 R8 K30 ["OpenLocalizationSettings"]
       85 DUPCLOSURE                       R9 K31 [PROTO_6]
       86 CAPTURE                          VAL R3
       87 SETGLOBAL                        R9 K32 ["getAdditionalArgs"]
       89 DUPCLOSURE                       R9 K33 [PROTO_8]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R9 R8 K34 ["OpenExperienceGuidelines"]
       96 DUPCLOSURE                       R9 K35 [PROTO_10]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R9 R8 K36 ["OpenExperienceQuestionnaire"]
      103 DUPCLOSURE                       R9 K37 [PROTO_12]
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R9 R8 K38 ["OpenExperienceSettings"]
      108 DUPCLOSURE                       R9 K39 [PROTO_14]
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R9 R8 K40 ["OpenExperienceAccess"]
      113 JUMPIFNOT                        R2 ; [+21]
      114 DUPCLOSURE                       R9 K41 [PROTO_16]
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R9 R8 K42 ["OpenDevProductSettings"]
      119 DUPCLOSURE                       R9 K43 [PROTO_18]
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R4
      122 SETTABLEKS                       R9 R8 K44 ["OpenPlaceConfiguration"]
      124 DUPCLOSURE                       R9 K45 [PROTO_20]
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R4
      128 SETTABLEKS                       R9 R8 K30 ["OpenLocalizationSettings"]
      130 DUPCLOSURE                       R9 K46 [PROTO_22]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R4
      133 SETTABLEKS                       R9 R8 K47 ["OpenBadgesSettings"]
      135 RETURN                           R8 1
