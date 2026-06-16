PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K5 [string.match]
       10 MOVE                             R2 R0
       11 LOADK                            R3 K6 ["^rbxassetid://([0-9]+)$"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+5]
       14 GETIMPORT                        R1 K5 [string.match]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K7 ["^([0-9]+)$"]
       18 CALL                             R1 2 1
       19 MOVE                             R2 R1
       20 JUMPIFNOT                        R2 ; [+5]
       21 FASTCALL1                        TONUMBER R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K9 [tonumber]
       25 CALL                             R2 1 1
       26 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAssetNameFromIdAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["current"]
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R3 K4 [{"state", "name"}]
       10 LOADK                            R4 K5 ["ok"]
       11 SETTABLEKS                       R4 R3 K2 ["state"]
       13 SETTABLEKS                       R0 R3 K3 ["name"]
       15 SETTABLE                         R3 R1 R2
       16 GETUPVAL                         R1 3
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 GETIMPORT                        R6 K8 [coroutine.status]
       22 MOVE                             R7 R5
       23 CALL                             R6 1 1
       24 JUMPIFNOTEQKS                    R6 K9 ["suspended"] ; [+6]
       26 GETIMPORT                        R6 K12 [task.spawn]
       28 MOVE                             R7 R5
       29 MOVE                             R8 R0
       30 CALL                             R6 2 0
       31 FORGLOOP                         R1 2 ; [-12]
       33 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+3]
        7 MOVE                             R1 R0
        8 JUMP                             ; [+19]
        9 GETIMPORT                        R2 K5 [string.match]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K6 ["^rbxassetid://([0-9]+)$"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+5]
       15 GETIMPORT                        R2 K5 [string.match]
       17 MOVE                             R3 R0
       18 LOADK                            R4 K7 ["^([0-9]+)$"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 JUMPIFNOT                        R1 ; [+6]
       22 FASTCALL1                        TONUMBER R2 ; [+3]
       23 MOVE                             R4 R2
       24 GETIMPORT                        R3 K9 [tonumber]
       26 CALL                             R3 1 1
       27 MOVE                             R1 R3
       28 JUMPIFNOTEQKNIL                  R1 ; [+3]
       30 LOADNIL                          R2
       31 RETURN                           R2 1
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K10 ["current"]
       35 GETTABLE                         R2 R3 R1
       36 JUMPIFNOTEQKNIL                  R2 ; [+30]
       38 NEWTABLE                         R3 0 1
       40 GETIMPORT                        R4 K13 [coroutine.running]
       42 CALL                             R4 0 -1
       43 SETLIST                          R3 R4 -1 [1]
       45 DUPTABLE                         R4 K16 [{"state", "threads"}]
       46 LOADK                            R5 K17 ["loading"]
       47 SETTABLEKS                       R5 R4 K14 ["state"]
       49 SETTABLEKS                       R3 R4 K15 ["threads"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K10 ["current"]
       54 SETTABLE                         R4 R5 R1
       55 GETIMPORT                        R5 K20 [task.defer]
       57 NEWCLOSURE                       R6 P0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R3
       62 CALL                             R5 1 0
       63 GETIMPORT                        R5 K22 [coroutine.yield]
       65 CALL                             R5 0 -1
       66 RETURN                           R5 -1
       67 GETTABLEKS                       R3 R2 K14 ["state"]
       69 JUMPIFNOTEQKS                    R3 K17 ["loading"] ; [+14]
       71 GETTABLEKS                       R4 R2 K15 ["threads"]
       73 GETIMPORT                        R5 K13 [coroutine.running]
       75 CALL                             R5 0 -1
       76 FASTCALL                         TABLE_INSERT ; [+2]
       77 GETIMPORT                        R3 K25 [table.insert]
       79 CALL                             R3 -1 0
       80 GETIMPORT                        R3 K22 [coroutine.yield]
       82 CALL                             R3 0 -1
       83 RETURN                           R3 -1
       84 GETTABLEKS                       R3 R2 K14 ["state"]
       86 JUMPIFNOTEQKS                    R3 K26 ["ok"] ; [+4]
       88 GETTABLEKS                       R3 R2 K27 ["name"]
       90 RETURN                           R3 1
       91 GETTABLEKS                       R3 R2 K14 ["state"]
       93 GETIMPORT                        R4 K29 [error]
       95 LOADK                            R5 K30 ["Unreachable"]
       96 CALL                             R4 1 0
       97 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"getAssetNameAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getAssetNameAsync"]
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["useEventCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R5 0 1
       20 MOVE                             R6 R2
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K3 ["createElement"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K4 ["Provider"]
       30 DUPTABLE                         R6 K6 [{"value"}]
       31 SETTABLEKS                       R3 R6 K5 ["value"]
       33 GETTABLEKS                       R7 R0 K7 ["children"]
       35 CALL                             R4 3 -1
       36 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetProductInfoAsync"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R1 R1 K1 ["Name"]
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_6]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["createElement"]
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K4 [{"getAssetNameFromIdAsync"}]
       13 SETTABLEKS                       R1 R4 K3 ["getAssetNameFromIdAsync"]
       15 GETTABLEKS                       R5 R0 K5 ["children"]
       17 CALL                             R2 3 -1
       18 RETURN                           R2 -1

PROTO_8:
        0 LOADK                            R2 K0 ["ASSET ID %*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEventCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_8]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K4 [{"getAssetNameFromIdAsync"}]
       10 SETTABLEKS                       R1 R4 K3 ["getAssetNameFromIdAsync"]
       12 GETTABLEKS                       R5 R0 K5 ["children"]
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MarketplaceService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 DUPTABLE                         R4 K14 [{"getAssetNameAsync"}]
       28 DUPCLOSURE                       R5 K15 [PROTO_0]
       29 SETTABLEKS                       R5 R4 K13 ["getAssetNameAsync"]
       31 GETTABLEKS                       R5 R2 K16 ["createContext"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K17 [PROTO_1]
       36 DUPCLOSURE                       R7 K18 [PROTO_5]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R8 K19 [PROTO_7]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R7
       44 DUPCLOSURE                       R9 K20 [PROTO_9]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R7
       48 DUPTABLE                         R10 K24 [{"Context", "Provider", "MockProvider"}]
       49 SETTABLEKS                       R5 R10 K21 ["Context"]
       51 SETTABLEKS                       R8 R10 K22 ["Provider"]
       53 SETTABLEKS                       R9 R10 K23 ["MockProvider"]
       55 RETURN                           R10 1
