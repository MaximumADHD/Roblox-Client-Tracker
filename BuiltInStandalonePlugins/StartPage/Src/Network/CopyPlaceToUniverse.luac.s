PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["composeUrl"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["COPY_PLACE_TO_UNIVERSE"]
        9 GETTABLEKS                       R4 R4 K3 ["Prefix"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["COPY_PLACE_TO_UNIVERSE"]
       14 GETTABLEKS                       R5 R5 K4 ["Url"]
       16 MOVE                             R6 R0
       17 CALL                             R5 1 -1
       18 CALL                             R3 -1 1
       19 DUPTABLE                         R4 K6 [{"TemplatePlaceId"}]
       20 SETTABLEKS                       R1 R4 K5 ["TemplatePlaceId"]
       22 GETUPVAL                         R5 2
       23 GETUPVAL                         R7 2
       24 MOVE                             R9 R3
       25 GETUPVAL                         R10 3
       26 MOVE                             R12 R4
       27 NAMECALL                         R10 R10 K7 ["JSONEncode"]
       29 CALL                             R10 2 1
       30 GETUPVAL                         R11 4
       31 NAMECALL                         R7 R7 K8 ["post"]
       33 CALL                             R7 4 -1
       34 NAMECALL                         R5 R5 K9 ["parseJson"]
       36 CALL                             R5 -1 -1
       37 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Network"]
       30 GETTABLEKS                       R4 R4 K12 ["Urls"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["Services"]
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R4 R4 K15 ["Networking"]
       44 GETTABLEKS                       R5 R2 K16 ["RobloxAPI"]
       46 GETTABLEKS                       R5 R5 K17 ["Url"]
       48 GETTABLEKS                       R6 R4 K18 ["new"]
       50 DUPTABLE                         R7 K24 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       51 SETTABLEKS                       R1 R7 K21 ["loggingLevel"]
       53 CALL                             R6 1 1
       54 NEWTABLE                         R7 1 0
       56 LOADK                            R8 K25 ["application/json"]
       57 SETTABLEKS                       R8 R7 K26 ["Content-Type"]
       59 GETIMPORT                        R8 K28 [game]
       61 LOADK                            R10 K29 ["HttpService"]
       62 NAMECALL                         R8 R8 K30 ["GetService"]
       64 CALL                             R8 2 1
       65 DUPCLOSURE                       R9 K31 [PROTO_0]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 RETURN                           R9 1
