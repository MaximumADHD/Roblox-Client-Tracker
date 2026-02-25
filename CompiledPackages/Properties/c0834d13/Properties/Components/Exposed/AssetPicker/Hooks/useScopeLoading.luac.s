PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["loadedScope"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["scopeIdRef"]
        7 GETTABLEKS                       R2 R0 K1 ["id"]
        9 SETTABLEKS                       R2 R1 K2 ["current"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["userId"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["networking"]
        6 GETTABLEKS                       R1 R2 K2 ["fetchScopesAsync"]
        8 MOVE                             R2 R0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["getGameIdAsync"]
       12 CALL                             R3 0 -1
       13 CALL                             R1 -1 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K4 ["current"]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R3 R4 K5 ["scopeIdRef"]
       24 GETTABLEKS                       R2 R3 K4 ["current"]
       26 JUMPIFEQKNIL                     R2 ; [+4]
       28 GETTABLE                         R3 R1 R2
       29 JUMPIFNOTEQKNIL                  R3 ; [+7]
       31 MOVE                             R2 R0
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R3 R4 K5 ["scopeIdRef"]
       35 SETTABLEKS                       R2 R3 K4 ["current"]
       37 JUMPIFNOTEQKNIL                  R2 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       43 LOADK                            R5 K6 ["Luau"]
       44 GETIMPORT                        R3 K8 [assert]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 5
       48 DUPTABLE                         R4 K11 [{"loadedScope", "loadedScopeMap"}]
       49 GETTABLE                         R5 R1 R2
       50 SETTABLEKS                       R5 R4 K9 ["loadedScope"]
       52 SETTABLEKS                       R1 R4 K10 ["loadedScopeMap"]
       54 CALL                             R3 1 0
       55 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K1 ["current"]
        3 ADDK                             R0 R1 K0 [1]
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R0 R1 K1 ["current"]
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_4:
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
       15 GETTABLEKS                       R3 R4 K2 ["useState"]
       17 DUPTABLE                         R4 K5 [{"loadedScope", "loadedScopeMap"}]
       18 LOADNIL                          R5
       19 SETTABLEKS                       R5 R4 K3 ["loadedScope"]
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R4 K4 ["loadedScopeMap"]
       24 CALL                             R3 1 2
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K6 ["useRef"]
       28 LOADN                            R6 0
       29 CALL                             R5 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K7 ["useCallback"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R8 0 0
       38 CALL                             R6 2 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       42 NEWCLOSURE                       R8 P1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R9 0 3
       50 GETTABLEKS                       R10 R0 K9 ["networking"]
       52 GETTABLEKS                       R11 R0 K10 ["getGameIdAsync"]
       54 GETTABLEKS                       R12 R2 K11 ["userId"]
       56 SETLIST                          R9 R10 3 [1]
       58 CALL                             R7 2 0
       59 DUPTABLE                         R7 K13 [{"loadedScope", "loadedScopeMap", "onScopeChanged"}]
       60 GETTABLEKS                       R8 R3 K3 ["loadedScope"]
       62 SETTABLEKS                       R8 R7 K3 ["loadedScope"]
       64 GETTABLEKS                       R8 R3 K4 ["loadedScopeMap"]
       66 SETTABLEKS                       R8 R7 K4 ["loadedScopeMap"]
       68 SETTABLEKS                       R6 R7 K12 ["onScopeChanged"]
       70 RETURN                           R7 1

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
       22 GETTABLEKS                       R4 R1 K9 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R1 K10 ["Contexts"]
       29 GETTABLEKS                       R5 R6 K11 ["UserContext"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R1 K10 ["Contexts"]
       36 GETTABLEKS                       R6 R7 K12 ["ViewContext"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K13 [PROTO_4]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 RETURN                           R6 1
