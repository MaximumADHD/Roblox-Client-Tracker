PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETTABLEKS                       R2 R1 K1 ["universeId"]
        8 JUMPIF                           R2 ; [+7]
        9 GETTABLEKS                       R2 R1 K2 ["UniverseId"]
       11 JUMPIF                           R2 ; [+4]
       12 GETTABLEKS                       R2 R1 K3 ["id"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 JUMPIF                           R2 ; [+6]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["reject"]
       20 LOADK                            R4 K5 ["CreateUniverse: response did not contain a universe id"]
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K6 ["resolve"]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 -1
       28 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["composeUrl"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["CREATE_UNIVERSE"]
        9 GETTABLEKS                       R2 R2 K3 ["Prefix"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["CREATE_UNIVERSE"]
       14 GETTABLEKS                       R3 R3 K4 ["Url"]
       16 CALL                             R3 0 -1
       17 CALL                             R1 -1 1
       18 DUPTABLE                         R2 K8 [{["templatePlaceId"], ["isPublish"] = False}]
       19 GETUPVAL                         R4 2
       20 CALL                             R4 0 -1
       21 FASTCALL                         TONUMBER ; [+2]
       22 GETIMPORT                        R3 K10 [tonumber]
       24 CALL                             R3 -1 1
       25 SETTABLEKS                       R3 R2 K5 ["templatePlaceId"]
       27 GETUPVAL                         R3 3
       28 GETUPVAL                         R5 3
       29 MOVE                             R7 R1
       30 GETUPVAL                         R8 4
       31 MOVE                             R10 R2
       32 NAMECALL                         R8 R8 K11 ["JSONEncode"]
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 5
       36 NAMECALL                         R5 R5 K12 ["post"]
       38 CALL                             R5 4 -1
       39 NAMECALL                         R3 R3 K13 ["parseJson"]
       41 CALL                             R3 -1 1
       42 DUPCLOSURE                       R5 K14 [PROTO_0]
       43 CAPTURE                          UPVAL U6
       44 NAMECALL                         R3 R3 K15 ["andThen"]
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1

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
       23 GETTABLEKS                       R3 R3 K9 ["getFStringStudioDefaultNewTemplatePlaceId"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K5 [require]
       28 GETTABLEKS                       R4 R0 K10 ["Packages"]
       30 GETTABLEKS                       R4 R4 K11 ["Framework"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K12 ["Util"]
       39 GETTABLEKS                       R5 R5 K13 ["TypedPromise"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K14 ["Network"]
       48 GETTABLEKS                       R6 R6 K15 ["Urls"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R7 R0 K6 ["Src"]
       55 GETTABLEKS                       R7 R7 K12 ["Util"]
       57 GETTABLEKS                       R7 R7 K16 ["Services"]
       59 CALL                             R6 1 1
       60 GETTABLEKS                       R6 R6 K17 ["Networking"]
       62 GETTABLEKS                       R7 R3 K18 ["RobloxAPI"]
       64 GETTABLEKS                       R7 R7 K19 ["Url"]
       66 GETTABLEKS                       R8 R6 K20 ["new"]
       68 DUPTABLE                         R9 K26 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       69 SETTABLEKS                       R1 R9 K23 ["loggingLevel"]
       71 CALL                             R8 1 1
       72 NEWTABLE                         R9 1 0
       74 LOADK                            R10 K27 ["application/json"]
       75 SETTABLEKS                       R10 R9 K28 ["Content-Type"]
       77 GETIMPORT                        R10 K30 [game]
       79 LOADK                            R12 K31 ["HttpService"]
       80 NAMECALL                         R10 R10 K32 ["GetService"]
       82 CALL                             R10 2 1
       83 DUPCLOSURE                       R11 K33 [PROTO_1]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R4
       91 RETURN                           R11 1
