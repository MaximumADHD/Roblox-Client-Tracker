PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Plugin is required for StudioNetworkingImpl"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["HostDataModelType"]
       11 GETUPVAL                         R3 1
       12 LOADB                            R5 0
       13 NAMECALL                         R3 R3 K4 ["GenerateGUID"]
       15 CALL                             R3 2 1
       16 LOADN                            R4 1
       17 LOADN                            R5 8
       18 FASTCALL                         STRING_SUB ; [+2]
       19 GETIMPORT                        R2 K7 [string.sub]
       21 CALL                             R2 3 1
       22 JUMPIFNOT                        R1 ; [+9]
       23 LOADK                            R3 K8 ["%*_%*"]
       24 GETTABLEKS                       R5 R1 K9 ["Name"]
       26 MOVE                             R6 R2
       27 NAMECALL                         R3 R3 K10 ["format"]
       29 CALL                             R3 3 1
       30 MOVE                             R0 R3
       31 JUMP                             ; [+1]
       32 MOVE                             R0 R2
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K11 ["Implementations"]
       36 GETTABLEKS                       R3 R3 K12 ["StudioNetworking"]
       38 GETTABLEKS                       R3 R3 K13 ["new"]
       40 DUPTABLE                         R4 K18 [{"isHost", "isGuest", "plugin", "identity"}]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K14 ["isHost"]
       44 SETTABLEKS                       R5 R4 K14 ["isHost"]
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R5 R5 K15 ["isGuest"]
       49 SETTABLEKS                       R5 R4 K15 ["isGuest"]
       51 GETUPVAL                         R5 0
       52 SETTABLEKS                       R5 R4 K16 ["plugin"]
       54 SETTABLEKS                       R0 R4 K17 ["identity"]
       56 CALL                             R3 1 -1
       57 RETURN                           R3 -1

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
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R4 0 1
       21 MOVE                             R5 R1
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K5 ["useEffect"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R5 0 1
       32 MOVE                             R6 R2
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 0
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       39 NEWCLOSURE                       R4 P2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R5 0 2
       44 MOVE                             R6 R1
       45 MOVE                             R7 R2
       46 SETLIST                          R5 R6 2 [1]
       48 CALL                             R3 2 1
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       52 NEWCLOSURE                       R5 P3
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R6 0 1
       56 MOVE                             R7 R3
       57 SETLIST                          R6 R7 1 [1]
       59 CALL                             R4 2 1
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       63 NEWCLOSURE                       R6 P4
       64 CAPTURE                          VAL R4
       65 NEWTABLE                         R7 0 1
       67 MOVE                             R8 R4
       68 SETLIST                          R7 R8 1 [1]
       70 CALL                             R5 2 1
       71 GETUPVAL                         R6 1
       72 GETTABLEKS                       R6 R6 K7 ["createElement"]
       74 GETUPVAL                         R7 4
       75 GETTABLEKS                       R7 R7 K8 ["Provider"]
       77 DUPTABLE                         R8 K10 [{"value"}]
       78 SETTABLEKS                       R5 R8 K9 ["value"]
       80 GETTABLEKS                       R9 R0 K11 ["children"]
       82 CALL                             R6 3 -1
       83 RETURN                           R6 -1

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
       41 DUPTABLE                         R6 K16 [{"getNetworking"}]
       42 GETTABLEKS                       R7 R5 K17 ["createUnimplemented"]
       44 LOADK                            R8 K15 ["getNetworking"]
       45 CALL                             R7 1 1
       46 SETTABLEKS                       R7 R6 K15 ["getNetworking"]
       48 GETTABLEKS                       R7 R4 K18 ["createContext"]
       50 MOVE                             R8 R6
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K19 [PROTO_6]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R7
       58 DUPCLOSURE                       R9 K20 [PROTO_10]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R7
       62 DUPCLOSURE                       R10 K21 [PROTO_13]
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R11 K22 [PROTO_14]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R8
       68 DUPCLOSURE                       R12 K23 [PROTO_15]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R8
       71 DUPTABLE                         R13 K29 [{"Context", "TestCallbackProvider", "TestProvider", "EditableDataModelProvider", "UIDataModelProvider"}]
       72 SETTABLEKS                       R7 R13 K24 ["Context"]
       74 SETTABLEKS                       R9 R13 K25 ["TestCallbackProvider"]
       76 SETTABLEKS                       R10 R13 K26 ["TestProvider"]
       78 SETTABLEKS                       R11 R13 K27 ["EditableDataModelProvider"]
       80 SETTABLEKS                       R12 R13 K28 ["UIDataModelProvider"]
       82 RETURN                           R13 1
