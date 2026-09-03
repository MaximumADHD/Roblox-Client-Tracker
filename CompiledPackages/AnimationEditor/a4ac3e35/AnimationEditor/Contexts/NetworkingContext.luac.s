PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Plugin is required for StudioNetworkingImpl"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+25]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["HostDataModelType"]
       14 GETUPVAL                         R3 2
       15 LOADB                            R5 0
       16 NAMECALL                         R3 R3 K4 ["GenerateGUID"]
       18 CALL                             R3 2 1
       19 LOADN                            R4 1
       20 LOADN                            R5 8
       21 FASTCALL                         STRING_SUB ; [+2]
       22 GETIMPORT                        R2 K7 [string.sub]
       24 CALL                             R2 3 1
       25 JUMPIFNOT                        R1 ; [+9]
       26 LOADK                            R3 K8 ["%*_%*"]
       27 GETTABLEKS                       R5 R1 K9 ["Name"]
       29 MOVE                             R6 R2
       30 NAMECALL                         R3 R3 K10 ["format"]
       32 CALL                             R3 3 1
       33 MOVE                             R0 R3
       34 JUMP                             ; [+1]
       35 MOVE                             R0 R2
       36 GETUPVAL                         R1 3
       37 GETTABLEKS                       R1 R1 K11 ["Implementations"]
       39 GETTABLEKS                       R1 R1 K12 ["StudioNetworking"]
       41 GETTABLEKS                       R1 R1 K13 ["new"]
       43 DUPTABLE                         R2 K18 [{"isHost", "isGuest", "plugin", "identity"}]
       44 GETUPVAL                         R3 4
       45 GETTABLEKS                       R3 R3 K14 ["isHost"]
       47 SETTABLEKS                       R3 R2 K14 ["isHost"]
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R3 R3 K15 ["isGuest"]
       52 SETTABLEKS                       R3 R2 K15 ["isGuest"]
       54 GETUPVAL                         R3 0
       55 SETTABLEKS                       R3 R2 K16 ["plugin"]
       57 SETTABLEKS                       R0 R2 K17 ["identity"]
       59 CALL                             R1 1 -1
       60 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"getNetworking"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getNetworking"]
        4 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R1
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K5 ["useEffect"]
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R5 0 1
       33 MOVE                             R6 R2
       34 SETLIST                          R5 R6 1 [1]
       36 CALL                             R3 2 0
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       40 NEWCLOSURE                       R4 P2
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R5 0 2
       45 MOVE                             R6 R1
       46 MOVE                             R7 R2
       47 SETLIST                          R5 R6 2 [1]
       49 CALL                             R3 2 1
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       53 NEWCLOSURE                       R5 P3
       54 CAPTURE                          VAL R3
       55 NEWTABLE                         R6 0 1
       57 MOVE                             R7 R3
       58 SETLIST                          R6 R7 1 [1]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       64 NEWCLOSURE                       R6 P4
       65 CAPTURE                          VAL R4
       66 NEWTABLE                         R7 0 1
       68 MOVE                             R8 R4
       69 SETLIST                          R7 R8 1 [1]
       71 CALL                             R5 2 1
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K7 ["createElement"]
       75 GETUPVAL                         R7 5
       76 GETTABLEKS                       R7 R7 K8 ["Provider"]
       78 DUPTABLE                         R8 K10 [{"value"}]
       79 SETTABLEKS                       R5 R8 K9 ["value"]
       81 GETTABLEKS                       R9 R0 K11 ["children"]
       83 CALL                             R6 3 -1
       84 RETURN                           R6 -1

PROTO_7:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Implementations"]
        4 GETTABLEKS                       R1 R1 K1 ["CallbackNetworking"]
        6 GETTABLEKS                       R1 R1 K2 ["new"]
        8 DUPTABLE                         R2 K6 [{["isHost"] = True, ["isGuest"] = True}]
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["new"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R0 K1 [{"getNetworking"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getNetworking"]
        4 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_7]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETIMPORT                        R4 K3 [plugin]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["useCallback"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 1
       19 MOVE                             R5 R1
       20 SETLIST                          R4 R5 1 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       26 NEWCLOSURE                       R4 P2
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R5 0 1
       30 MOVE                             R6 R2
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K5 ["createElement"]
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R5 R5 K6 ["Provider"]
       40 DUPTABLE                         R6 K8 [{"value"}]
       41 SETTABLEKS                       R3 R6 K7 ["value"]
       43 GETTABLEKS                       R7 R0 K9 ["children"]
       45 CALL                             R4 3 -1
       46 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["networkingInterface"]
        3 RETURN                           R0 1

PROTO_12:
        0 DUPTABLE                         R0 K1 [{"getNetworking"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getNetworking"]
        4 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["networkingInterface"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 1
       19 MOVE                             R5 R1
       20 SETLIST                          R4 R5 1 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K3 ["createElement"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K4 ["Provider"]
       29 DUPTABLE                         R5 K6 [{"value"}]
       30 SETTABLEKS                       R2 R5 K5 ["value"]
       32 GETTABLEKS                       R6 R0 K7 ["children"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["isHost"] = True, ["isGuest"] = False}]
        5 GETTABLEKS                       R4 R0 K6 ["children"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["isHost"] = False, ["isGuest"] = True}]
        5 GETTABLEKS                       R4 R0 K6 ["children"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["HttpService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Parent"]
       38 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getFFlagAnimGraphUI_RunTimeDebug"]
       47 CALL                             R6 1 1
       48 DUPTABLE                         R7 K18 [{"getNetworking"}]
       49 GETTABLEKS                       R8 R5 K19 ["createUnimplemented"]
       51 LOADK                            R9 K17 ["getNetworking"]
       52 CALL                             R8 1 1
       53 SETTABLEKS                       R8 R7 K17 ["getNetworking"]
       55 GETTABLEKS                       R8 R4 K20 ["createContext"]
       57 MOVE                             R9 R7
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K21 [PROTO_6]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R10 K22 [PROTO_10]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R8
       70 DUPCLOSURE                       R11 K23 [PROTO_13]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R8
       73 DUPCLOSURE                       R12 K24 [PROTO_14]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R9
       76 DUPCLOSURE                       R13 K25 [PROTO_15]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R9
       79 DUPTABLE                         R14 K31 [{"Context", "TestCallbackProvider", "TestProvider", "EditableDataModelProvider", "UIDataModelProvider"}]
       80 SETTABLEKS                       R8 R14 K26 ["Context"]
       82 SETTABLEKS                       R10 R14 K27 ["TestCallbackProvider"]
       84 SETTABLEKS                       R11 R14 K28 ["TestProvider"]
       86 SETTABLEKS                       R12 R14 K29 ["EditableDataModelProvider"]
       88 SETTABLEKS                       R13 R14 K30 ["UIDataModelProvider"]
       90 RETURN                           R14 1
