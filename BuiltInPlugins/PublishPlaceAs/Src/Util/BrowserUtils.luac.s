PROTO_0:
        0 DUPTABLE                         R0 K2 [{"userId", "machineTimeStamp"}]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K3 ["GetUserId"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K0 ["userId"]
        7 GETIMPORT                        R1 K6 [os.time]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K1 ["machineTimeStamp"]
       12 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

PROTO_3:
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

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Network"]
       27 GETTABLEKS                       R4 R4 K12 ["Http"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K9 [require]
       32 GETTABLEKS                       R5 R2 K10 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Util"]
       36 GETTABLEKS                       R5 R5 K14 ["Analytics"]
       38 CALL                             R4 1 1
       39 NEWTABLE                         R5 2 0
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 CAPTURE                          VAL R0
       43 SETGLOBAL                        R6 K16 ["getAdditionalArgs"]
       45 DUPCLOSURE                       R6 K17 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R6 R5 K18 ["OpenExperienceQuestionnaire"]
       51 DUPCLOSURE                       R6 K19 [PROTO_4]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R6 R5 K20 ["OpenCreatorHubSettings"]
       56 RETURN                           R5 1
