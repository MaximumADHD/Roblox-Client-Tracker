PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R1
        5 NEWTABLE                         R2 0 0
        7 JUMPIFNOT                        R1 ; [+21]
        8 GETTABLEKS                       R3 R1 K1 ["data"]
       10 JUMPIFNOT                        R3 ; [+18]
       11 GETTABLEKS                       R3 R1 K1 ["data"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETTABLEKS                       R8 R7 K2 ["id"]
       18 JUMPIFNOT                        R8 ; [+8]
       19 GETTABLEKS                       R10 R7 K2 ["id"]
       21 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       23 MOVE                             R9 R2
       24 GETIMPORT                        R8 K5 [table.insert]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R3 2 ; [-12]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K6 ["resolve"]
       32 MOVE                             R4 R2
       33 CALL                             R3 1 -1
       34 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["composeUrl"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["UNIVERSE_PLACES"]
        9 GETTABLEKS                       R3 R3 K3 ["Prefix"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["UNIVERSE_PLACES"]
       14 GETTABLEKS                       R4 R4 K4 ["Url"]
       16 MOVE                             R5 R0
       17 CALL                             R4 1 1
       18 GETUPVAL                         R5 2
       19 CALL                             R2 3 1
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R5 3
       22 MOVE                             R7 R2
       23 NAMECALL                         R5 R5 K5 ["get"]
       25 CALL                             R5 2 -1
       26 NAMECALL                         R3 R3 K6 ["parseJson"]
       28 CALL                             R3 -1 1
       29 DUPCLOSURE                       R5 K7 [PROTO_0]
       30 CAPTURE                          UPVAL U4
       31 NAMECALL                         R3 R3 K8 ["andThen"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

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
       28 GETTABLEKS                       R4 R4 K11 ["Util"]
       30 GETTABLEKS                       R4 R4 K12 ["TypedPromise"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Network"]
       39 GETTABLEKS                       R5 R5 K14 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K11 ["Util"]
       48 GETTABLEKS                       R6 R6 K15 ["Services"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R5 R5 K16 ["Networking"]
       53 GETTABLEKS                       R6 R2 K17 ["RobloxAPI"]
       55 GETTABLEKS                       R6 R6 K18 ["Url"]
       57 GETTABLEKS                       R7 R5 K19 ["new"]
       59 DUPTABLE                         R8 K25 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       60 SETTABLEKS                       R1 R8 K22 ["loggingLevel"]
       62 CALL                             R7 1 1
       63 DUPTABLE                         R8 K30 [{["limit"] = 100, ["sortOrder"] = "Asc"}]
       64 DUPCLOSURE                       R9 K31 [PROTO_1]
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R3
       70 RETURN                           R9 1
