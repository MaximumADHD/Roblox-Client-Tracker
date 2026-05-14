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
        3 LOADK                            R1 K1 ["www"]
        4 LOADK                            R2 K2 ["localization/games/%d/configure"]
        5 GETUPVAL                         R3 1
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GameSettingsExperienceGuidelines"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K5 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["GuiService"]
       16 NAMECALL                         R2 R2 K5 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K8 [script]
       21 GETTABLEKS                       R3 R3 K9 ["Parent"]
       23 GETTABLEKS                       R3 R3 K9 ["Parent"]
       25 GETTABLEKS                       R3 R3 K9 ["Parent"]
       27 GETIMPORT                        R4 K11 [require]
       29 GETTABLEKS                       R5 R3 K12 ["Src"]
       31 GETTABLEKS                       R5 R5 K13 ["Networking"]
       33 GETTABLEKS                       R5 R5 K14 ["Http"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K11 [require]
       38 GETTABLEKS                       R6 R3 K12 ["Src"]
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
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R7 R6 K22 ["OpenVideo"]
       59 DUPCLOSURE                       R7 K23 [PROTO_3]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R7 R6 K24 ["OpenPlaceSettings"]
       64 DUPCLOSURE                       R7 K25 [PROTO_5]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R7 R6 K26 ["OpenLocalizationSettings"]
       69 DUPCLOSURE                       R7 K27 [PROTO_6]
       70 CAPTURE                          VAL R1
       71 SETGLOBAL                        R7 K28 ["getAdditionalArgs"]
       73 DUPCLOSURE                       R7 K29 [PROTO_8]
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R7 R6 K30 ["OpenExperienceGuidelines"]
       80 DUPCLOSURE                       R7 K31 [PROTO_10]
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R7 R6 K32 ["OpenExperienceQuestionnaire"]
       87 DUPCLOSURE                       R7 K33 [PROTO_12]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R7 R6 K34 ["OpenExperienceSettings"]
       92 DUPCLOSURE                       R7 K35 [PROTO_14]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R7 R6 K36 ["OpenExperienceAccess"]
       97 RETURN                           R6 1
