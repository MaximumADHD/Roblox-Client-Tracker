PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetProductInfoAsync"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R0 R0 K1 ["Name"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+20]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["current"]
       10 GETUPVAL                         R3 1
       11 DUPTABLE                         R4 K6 [{["state"] = "ok", ["name"]}]
       12 SETTABLEKS                       R1 R4 K5 ["name"]
       14 SETTABLE                         R4 R2 R3
       15 GETUPVAL                         R2 3
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETIMPORT                        R7 K9 [task.spawn]
       21 MOVE                             R8 R6
       22 MOVE                             R9 R1
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-6]
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K2 ["current"]
       30 GETUPVAL                         R3 1
       31 DUPTABLE                         R4 K11 [{["state"] = "failed"}]
       32 SETTABLE                         R4 R2 R3
       33 GETUPVAL                         R2 3
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 GETIMPORT                        R7 K9 [task.spawn]
       39 MOVE                             R8 R6
       40 LOADNIL                          R9
       41 CALL                             R7 2 0
       42 FORGLOOP                         R2 2 ; [-6]
       44 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOTEQKNIL                  R1 ; [+27]
        6 NEWTABLE                         R2 0 1
        8 GETIMPORT                        R3 K3 [coroutine.running]
       10 CALL                             R3 0 -1
       11 SETLIST                          R2 R3 -1 [1]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["current"]
       16 DUPTABLE                         R4 K7 [{["state"] = "loading", ["threads"]}]
       17 SETTABLEKS                       R2 R4 K6 ["threads"]
       19 SETTABLE                         R4 R3 R0
       20 GETIMPORT                        R3 K10 [task.defer]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R2
       27 CALL                             R3 1 0
       28 GETIMPORT                        R3 K12 [coroutine.yield]
       30 CALL                             R3 0 -1
       31 RETURN                           R3 -1
       32 GETTABLEKS                       R2 R1 K4 ["state"]
       34 JUMPIFNOTEQKS                    R2 K5 ["loading"] ; [+14]
       36 GETTABLEKS                       R3 R1 K6 ["threads"]
       38 GETIMPORT                        R4 K3 [coroutine.running]
       40 CALL                             R4 0 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R2 K15 [table.insert]
       44 CALL                             R2 -1 0
       45 GETIMPORT                        R2 K12 [coroutine.yield]
       47 CALL                             R2 0 -1
       48 RETURN                           R2 -1
       49 GETTABLEKS                       R2 R1 K4 ["state"]
       51 JUMPIFNOTEQKS                    R2 K16 ["ok"] ; [+4]
       53 GETTABLEKS                       R2 R1 K17 ["name"]
       55 RETURN                           R2 1
       56 GETTABLEKS                       R2 R1 K4 ["state"]
       58 JUMPIFNOTEQKS                    R2 K18 ["failed"] ; [+3]
       60 LOADNIL                          R2
       61 RETURN                           R2 1
       62 GETTABLEKS                       R2 R1 K4 ["state"]
       64 GETIMPORT                        R3 K20 [error]
       66 LOADK                            R4 K21 ["Unreachable"]
       67 CALL                             R3 1 0
       68 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETTABLEKS                       R3 R2 K1 ["state"]
        8 JUMPIFNOTEQKS                    R3 K2 ["loading"] ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["current"]
       14 DUPTABLE                         R4 K5 [{["state"] = "ok", ["name"]}]
       15 SETTABLEKS                       R1 R4 K4 ["name"]
       17 SETTABLE                         R4 R3 R0
       18 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"getAssetNameAsync", "setAssetName"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getAssetNameAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setAssetName"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["useEventCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["useEventCallback"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R1
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       22 NEWCLOSURE                       R5 P2
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 2
       27 MOVE                             R7 R2
       28 MOVE                             R8 R3
       29 SETLIST                          R6 R7 2 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K3 ["createElement"]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K4 ["Provider"]
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
       36 LOADK                            R7 K19 ["AssetNameContext"]
       37 SETTABLEKS                       R7 R6 K20 ["displayName"]
       39 DUPCLOSURE                       R7 K21 [PROTO_7]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R6
       44 DUPTABLE                         R8 K24 [{"Context", "Provider"}]
       45 SETTABLEKS                       R6 R8 K22 ["Context"]
       47 SETTABLEKS                       R7 R8 K23 ["Provider"]
       49 RETURN                           R8 1
