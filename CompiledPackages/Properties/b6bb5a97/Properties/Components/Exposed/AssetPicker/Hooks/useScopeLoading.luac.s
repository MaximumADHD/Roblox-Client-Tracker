PROTO_0:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+6]
        2 GETUPVAL                         R2 0
        3 LOADK                            R3 K1 ["User"]
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1
        7 GETUPVAL                         R2 0
        8 LOADK                            R3 K2 ["Universe"]
        9 MOVE                             R4 R0
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["gameId"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["getScopes"]
        6 DUPTABLE                         R2 K2 [{"gameId"}]
        7 SETTABLEKS                       R0 R2 K0 ["gameId"]
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+12]
       12 DUPTABLE                         R2 K6 [{"loadedScope", "loadedScopeMap", "universeCreatorInfo"}]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K3 ["loadedScope"]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K4 ["loadedScopeMap"]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K5 ["universeCreatorInfo"]
       22 RETURN                           R2 1
       23 GETTABLEKS                       R2 R1 K7 ["scopeMap"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K8 ["scopeUniqueIdRef"]
       28 GETTABLEKS                       R3 R4 K9 ["current"]
       30 MOVE                             R4 R3
       31 JUMPIFNOT                        R4 ; [+1]
       32 GETTABLE                         R4 R2 R3
       33 JUMPIFNOTEQKNIL                  R4 ; [+18]
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R6 R7 K10 ["userId"]
       38 JUMPIFNOTEQKN                    R0 K11 [0] ; [+7]
       40 GETUPVAL                         R7 4
       41 LOADK                            R8 K12 ["User"]
       42 MOVE                             R9 R6
       43 CALL                             R7 2 1
       44 MOVE                             R5 R7
       45 JUMP                             ; [+5]
       46 GETUPVAL                         R7 4
       47 LOADK                            R8 K13 ["Universe"]
       48 MOVE                             R9 R0
       49 CALL                             R7 2 1
       50 MOVE                             R5 R7
       51 GETTABLE                         R4 R2 R5
       52 DUPTABLE                         R5 K6 [{"loadedScope", "loadedScopeMap", "universeCreatorInfo"}]
       53 SETTABLEKS                       R4 R5 K3 ["loadedScope"]
       55 SETTABLEKS                       R2 R5 K4 ["loadedScopeMap"]
       57 GETTABLEKS                       R6 R1 K5 ["universeCreatorInfo"]
       59 SETTABLEKS                       R6 R5 K5 ["universeCreatorInfo"]
       61 RETURN                           R5 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["loadedScope"]
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["scopeUniqueIdRef"]
        7 GETTABLEKS                       R2 R0 K1 ["uniqueId"]
        9 SETTABLEKS                       R2 R1 K2 ["current"]
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["userId"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["gameId"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["networking"]
        9 GETTABLEKS                       R2 R3 K3 ["fetchScopesAsync"]
       11 DUPTABLE                         R3 K4 [{"userId", "gameId"}]
       12 SETTABLEKS                       R0 R3 K0 ["userId"]
       14 SETTABLEKS                       R1 R3 K1 ["gameId"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K5 ["setScopes"]
       20 DUPTABLE                         R4 K8 [{"gameId", "scopeMap", "universeCreatorInfo"}]
       21 SETTABLEKS                       R1 R4 K1 ["gameId"]
       23 GETTABLEKS                       R5 R2 K6 ["scopeMap"]
       25 SETTABLEKS                       R5 R4 K6 ["scopeMap"]
       27 GETTABLEKS                       R5 R2 K7 ["universeCreatorInfo"]
       29 SETTABLEKS                       R5 R4 K7 ["universeCreatorInfo"]
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 3
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R4 R5 K9 ["current"]
       36 JUMPIFEQ                         R3 R4 ; [+2]
       38 RETURN                           R0 0
       39 GETTABLEKS                       R3 R2 K6 ["scopeMap"]
       41 GETUPVAL                         R6 5
       42 GETTABLEKS                       R5 R6 K10 ["scopeUniqueIdRef"]
       44 GETTABLEKS                       R4 R5 K9 ["current"]
       46 MOVE                             R5 R4
       47 JUMPIFNOT                        R5 ; [+1]
       48 GETTABLE                         R5 R3 R4
       49 JUMPIFNOTEQKNIL                  R5 ; [+13]
       51 JUMPIFNOTEQKN                    R1 K11 [0] ; [+6]
       53 GETUPVAL                         R6 6
       54 LOADK                            R7 K12 ["User"]
       55 MOVE                             R8 R0
       56 CALL                             R6 2 1
       57 JUMP                             ; [+4]
       58 GETUPVAL                         R6 6
       59 LOADK                            R7 K13 ["Universe"]
       60 MOVE                             R8 R1
       61 CALL                             R6 2 1
       62 GETTABLE                         R5 R3 R6
       63 GETUPVAL                         R6 7
       64 DUPTABLE                         R7 K16 [{"loadedScope", "loadedScopeMap", "universeCreatorInfo"}]
       65 SETTABLEKS                       R5 R7 K14 ["loadedScope"]
       67 SETTABLEKS                       R3 R7 K15 ["loadedScopeMap"]
       69 GETTABLEKS                       R8 R2 K7 ["universeCreatorInfo"]
       71 SETTABLEKS                       R8 R7 K7 ["universeCreatorInfo"]
       73 CALL                             R6 1 0
       74 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K1 ["current"]
        3 ADDK                             R0 R1 K0 [1]
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R0 R1 K1 ["current"]
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K2 ["useState"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U4
       30 CALL                             R4 1 2
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K3 ["useRef"]
       34 LOADN                            R7 0
       35 CALL                             R6 1 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R1
       42 NEWTABLE                         R9 0 0
       44 CALL                             R7 2 1
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       48 NEWCLOSURE                       R9 P2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R10 0 3
       58 GETTABLEKS                       R11 R0 K6 ["networking"]
       60 GETTABLEKS                       R12 R0 K7 ["gameId"]
       62 GETTABLEKS                       R13 R3 K8 ["userId"]
       64 SETLIST                          R10 R11 3 [1]
       66 CALL                             R8 2 0
       67 DUPTABLE                         R8 K13 [{"loadedScope", "loadedScopeMap", "universeCreatorInfo", "onScopeChanged"}]
       68 GETTABLEKS                       R9 R4 K9 ["loadedScope"]
       70 SETTABLEKS                       R9 R8 K9 ["loadedScope"]
       72 GETTABLEKS                       R9 R4 K10 ["loadedScopeMap"]
       74 SETTABLEKS                       R9 R8 K10 ["loadedScopeMap"]
       76 GETTABLEKS                       R9 R4 K11 ["universeCreatorInfo"]
       78 SETTABLEKS                       R9 R8 K11 ["universeCreatorInfo"]
       80 SETTABLEKS                       R7 R8 K12 ["onScopeChanged"]
       82 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R4 R0 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K8 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Contexts"]
       24 GETTABLEKS                       R4 R5 K10 ["ScopeCacheContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R6 R1 K9 ["Contexts"]
       31 GETTABLEKS                       R5 R6 K11 ["ScopeUniqueIdContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K12 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R1 K9 ["Contexts"]
       43 GETTABLEKS                       R7 R8 K13 ["UserContext"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R9 R1 K14 ["Util"]
       50 GETTABLEKS                       R8 R9 K15 ["createScopeUniqueId"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K16 [PROTO_0]
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R9 K17 [PROTO_6]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 RETURN                           R9 1
