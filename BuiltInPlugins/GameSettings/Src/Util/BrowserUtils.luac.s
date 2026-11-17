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
        0 DUPTABLE                         R0 K2 [{"userId", "machineTimeStamp"}]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K3 ["GetUserId"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K0 ["userId"]
        7 GETIMPORT                        R1 K6 [os.time]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K1 ["machineTimeStamp"]
       12 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        ASSERT R1 ; [+2]
        2 GETIMPORT                        R0 K1 [assert]
        4 CALL                             R0 1 0
        5 DUPCLOSURE                       R0 K2 [PROTO_5]
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 RETURN                           R0 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_11:
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
        4 LOADK                            R2 K2 ["dashboard/creations/experiences/%d/monetization/developer-products"]
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
        4 LOADK                            R2 K2 ["dashboard/creations/experiences/%d/places"]
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
        4 LOADK                            R2 K2 ["dashboard/creations/experiences/%d/localization"]
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
        4 LOADK                            R2 K2 ["dashboard/creations/experiences/%d/associated-items?activeTab=Badge"]
        5 GETUPVAL                         R3 1
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_20:
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
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["StudioService"]
       18 NAMECALL                         R2 R2 K8 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K4 [game]
       23 LOADK                            R5 K9 ["GuiService"]
       24 NAMECALL                         R3 R3 K8 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K11 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Src"]
       31 GETTABLEKS                       R5 R5 K13 ["Networking"]
       33 GETTABLEKS                       R5 R5 K14 ["Http"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K11 [require]
       38 GETTABLEKS                       R6 R0 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K15 ["Util"]
       42 GETTABLEKS                       R6 R6 K16 ["Analytics"]
       44 CALL                             R5 1 1
       45 NEWTABLE                         R6 16 0
       47 DUPCLOSURE                       R7 K17 [PROTO_0]
       48 SETTABLEKS                       R7 R6 K18 ["BuildWatchUrl"]
       50 DUPCLOSURE                       R7 K19 [PROTO_1]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R6 K20 ["BuildPlaceSettingsUrl"]
       54 DUPCLOSURE                       R7 K21 [PROTO_2]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R7 R6 K22 ["OpenVideo"]
       59 DUPCLOSURE                       R7 K23 [PROTO_3]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R7 R6 K24 ["OpenPlaceSettings"]
       64 DUPCLOSURE                       R7 K25 [PROTO_4]
       65 CAPTURE                          VAL R2
       66 SETGLOBAL                        R7 K26 ["getAdditionalArgs"]
       68 DUPCLOSURE                       R7 K27 [PROTO_6]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R7 R6 K28 ["OpenExperienceGuidelines"]
       75 DUPCLOSURE                       R7 K29 [PROTO_8]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R7 R6 K30 ["OpenExperienceQuestionnaire"]
       82 DUPCLOSURE                       R7 K31 [PROTO_10]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R7 R6 K32 ["OpenExperienceSettings"]
       87 DUPCLOSURE                       R7 K33 [PROTO_12]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R7 R6 K34 ["OpenExperienceAccess"]
       92 DUPCLOSURE                       R7 K35 [PROTO_14]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R3
       95 SETTABLEKS                       R7 R6 K36 ["OpenDevProductSettings"]
       97 DUPCLOSURE                       R7 K37 [PROTO_16]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R3
      100 SETTABLEKS                       R7 R6 K38 ["OpenPlaceConfiguration"]
      102 DUPCLOSURE                       R7 K39 [PROTO_18]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R3
      105 SETTABLEKS                       R7 R6 K40 ["OpenLocalizationSettings"]
      107 DUPCLOSURE                       R7 K41 [PROTO_20]
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R3
      110 SETTABLEKS                       R7 R6 K42 ["OpenBadgesSettings"]
      112 RETURN                           R6 1
