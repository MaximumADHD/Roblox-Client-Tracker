PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetProductInfoAsync"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R0 R1 K1 ["Name"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+23]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["current"]
       10 GETUPVAL                         R3 1
       11 DUPTABLE                         R4 K5 [{"state", "name"}]
       12 LOADK                            R5 K6 ["ok"]
       13 SETTABLEKS                       R5 R4 K3 ["state"]
       15 SETTABLEKS                       R1 R4 K4 ["name"]
       17 SETTABLE                         R4 R2 R3
       18 GETUPVAL                         R2 3
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETIMPORT                        R7 K9 [task.spawn]
       24 MOVE                             R8 R6
       25 MOVE                             R9 R1
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-6]
       29 RETURN                           R0 0
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R2 R3 K2 ["current"]
       33 GETUPVAL                         R3 1
       34 DUPTABLE                         R4 K10 [{"state"}]
       35 LOADK                            R5 K11 ["failed"]
       36 SETTABLEKS                       R5 R4 K3 ["state"]
       38 SETTABLE                         R4 R2 R3
       39 GETUPVAL                         R2 3
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 FORGPREP                         R2
       43 GETIMPORT                        R7 K9 [task.spawn]
       45 MOVE                             R8 R6
       46 LOADNIL                          R9
       47 CALL                             R7 2 0
       48 FORGLOOP                         R2 2 ; [-6]
       50 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOTEQKNIL                  R1 ; [+30]
        6 NEWTABLE                         R2 0 1
        8 GETIMPORT                        R3 K3 [coroutine.running]
       10 CALL                             R3 0 -1
       11 SETLIST                          R2 R3 -1 [1]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["current"]
       16 DUPTABLE                         R4 K6 [{"state", "threads"}]
       17 LOADK                            R5 K7 ["loading"]
       18 SETTABLEKS                       R5 R4 K4 ["state"]
       20 SETTABLEKS                       R2 R4 K5 ["threads"]
       22 SETTABLE                         R4 R3 R0
       23 GETIMPORT                        R3 K10 [task.defer]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R2
       30 CALL                             R3 1 0
       31 GETIMPORT                        R3 K12 [coroutine.yield]
       33 CALL                             R3 0 -1
       34 RETURN                           R3 -1
       35 GETTABLEKS                       R2 R1 K4 ["state"]
       37 JUMPIFNOTEQKS                    R2 K7 ["loading"] ; [+14]
       39 GETTABLEKS                       R3 R1 K5 ["threads"]
       41 GETIMPORT                        R4 K3 [coroutine.running]
       43 CALL                             R4 0 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R2 K15 [table.insert]
       47 CALL                             R2 -1 0
       48 GETIMPORT                        R2 K12 [coroutine.yield]
       50 CALL                             R2 0 -1
       51 RETURN                           R2 -1
       52 GETTABLEKS                       R2 R1 K4 ["state"]
       54 JUMPIFNOTEQKS                    R2 K16 ["ok"] ; [+4]
       56 GETTABLEKS                       R2 R1 K17 ["name"]
       58 RETURN                           R2 1
       59 GETTABLEKS                       R2 R1 K4 ["state"]
       61 JUMPIFNOTEQKS                    R2 K18 ["failed"] ; [+3]
       63 LOADNIL                          R2
       64 RETURN                           R2 1
       65 GETTABLEKS                       R2 R1 K4 ["state"]
       67 GETIMPORT                        R3 K20 [error]
       69 LOADK                            R4 K21 ["Unreachable"]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETTABLEKS                       R3 R2 K1 ["state"]
        8 JUMPIFNOTEQKS                    R3 K2 ["loading"] ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["current"]
       14 DUPTABLE                         R4 K4 [{"state", "name"}]
       15 LOADK                            R5 K5 ["ok"]
       16 SETTABLEKS                       R5 R4 K1 ["state"]
       18 SETTABLEKS                       R1 R4 K3 ["name"]
       20 SETTABLE                         R4 R3 R0
       21 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"getAssetNameAsync", "setAssetName"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getAssetNameAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setAssetName"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["useEventCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K1 ["useEventCallback"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R1
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       22 NEWCLOSURE                       R5 P2
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 2
       27 MOVE                             R7 R2
       28 MOVE                             R8 R3
       29 SETLIST                          R6 R7 2 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K3 ["createElement"]
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R6 R7 K4 ["Provider"]
       38 DUPTABLE                         R7 K6 [{"value"}]
       39 SETTABLEKS                       R4 R7 K5 ["value"]
       41 GETTABLEKS                       R8 R0 K7 ["children"]
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MarketplaceService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Properties"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["ReactUtils"]
       24 CALL                             R4 1 1
       25 DUPTABLE                         R5 K15 [{"getAssetNameAsync", "setAssetName"}]
       26 DUPCLOSURE                       R6 K16 [PROTO_0]
       27 SETTABLEKS                       R6 R5 K13 ["getAssetNameAsync"]
       29 DUPCLOSURE                       R6 K17 [PROTO_1]
       30 SETTABLEKS                       R6 R5 K14 ["setAssetName"]
       32 GETTABLEKS                       R6 R3 K18 ["createContext"]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K19 [PROTO_7]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R6
       41 DUPTABLE                         R8 K22 [{"Context", "Provider"}]
       42 SETTABLEKS                       R6 R8 K20 ["Context"]
       44 SETTABLEKS                       R7 R8 K21 ["Provider"]
       46 RETURN                           R8 1
