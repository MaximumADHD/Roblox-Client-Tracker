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
       19 DUPTABLE                         R4 K7 [{"TemplatePlaceId", "AnyLatestVersion"}]
       20 SETTABLEKS                       R1 R4 K5 ["TemplatePlaceId"]
       22 GETUPVAL                         R6 2
       23 CALL                             R6 0 1
       24 JUMPIFNOT                        R6 ; [+2]
       25 LOADB                            R5 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K6 ["AnyLatestVersion"]
       30 GETUPVAL                         R5 3
       31 GETUPVAL                         R7 3
       32 MOVE                             R9 R3
       33 GETUPVAL                         R10 4
       34 MOVE                             R12 R4
       35 NAMECALL                         R10 R10 K8 ["JSONEncode"]
       37 CALL                             R10 2 1
       38 GETUPVAL                         R11 5
       39 NAMECALL                         R7 R7 K9 ["post"]
       41 CALL                             R7 4 -1
       42 NAMECALL                         R5 R5 K10 ["parseJson"]
       44 CALL                             R5 -1 -1
       45 RETURN                           R5 -1

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
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagStartPageEscapeHatchCopyAnyLatestVersion"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K5 [require]
       28 GETTABLEKS                       R4 R0 K10 ["Packages"]
       30 GETTABLEKS                       R4 R4 K11 ["Framework"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K12 ["Network"]
       39 GETTABLEKS                       R5 R5 K13 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K14 ["Util"]
       48 GETTABLEKS                       R6 R6 K15 ["Services"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R5 R5 K16 ["Networking"]
       53 GETTABLEKS                       R6 R3 K17 ["RobloxAPI"]
       55 GETTABLEKS                       R6 R6 K18 ["Url"]
       57 GETTABLEKS                       R7 R5 K19 ["new"]
       59 DUPTABLE                         R8 K25 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       60 SETTABLEKS                       R1 R8 K22 ["loggingLevel"]
       62 CALL                             R7 1 1
       63 NEWTABLE                         R8 1 0
       65 LOADK                            R9 K26 ["application/json"]
       66 SETTABLEKS                       R9 R8 K27 ["Content-Type"]
       68 GETIMPORT                        R9 K29 [game]
       70 LOADK                            R11 K30 ["HttpService"]
       71 NAMECALL                         R9 R9 K31 ["GetService"]
       73 CALL                             R9 2 1
       74 DUPCLOSURE                       R10 K32 [PROTO_0]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R8
       81 RETURN                           R10 1
