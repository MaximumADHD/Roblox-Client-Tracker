PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Plugin is required for StudioNetworkingImpl"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["Implementations"]
       10 GETTABLEKS                       R0 R0 K4 ["StudioNetworking"]
       12 GETTABLEKS                       R0 R0 K5 ["new"]
       14 DUPTABLE                         R1 K9 [{"isHost", "isGuest", "plugin"}]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K6 ["isHost"]
       18 SETTABLEKS                       R2 R1 K6 ["isHost"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K7 ["isGuest"]
       23 SETTABLEKS                       R2 R1 K7 ["isGuest"]
       25 GETUPVAL                         R2 0
       26 SETTABLEKS                       R2 R1 K8 ["plugin"]
       28 CALL                             R0 1 -1
       29 RETURN                           R0 -1

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
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R1
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K5 ["useEffect"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R5 0 1
       31 MOVE                             R6 R2
       32 SETLIST                          R5 R6 1 [1]
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       38 NEWCLOSURE                       R4 P2
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R5 0 2
       43 MOVE                             R6 R1
       44 MOVE                             R7 R2
       45 SETLIST                          R5 R6 2 [1]
       47 CALL                             R3 2 1
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       51 NEWCLOSURE                       R5 P3
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R6 0 1
       55 MOVE                             R7 R3
       56 SETLIST                          R6 R7 1 [1]
       58 CALL                             R4 2 1
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       62 NEWCLOSURE                       R6 P4
       63 CAPTURE                          VAL R4
       64 NEWTABLE                         R7 0 1
       66 MOVE                             R8 R4
       67 SETLIST                          R7 R8 1 [1]
       69 CALL                             R5 2 1
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K7 ["createElement"]
       73 GETUPVAL                         R7 3
       74 GETTABLEKS                       R7 R7 K8 ["Provider"]
       76 DUPTABLE                         R8 K10 [{"value"}]
       77 SETTABLEKS                       R5 R8 K9 ["value"]
       79 GETTABLEKS                       R9 R0 K11 ["children"]
       81 CALL                             R6 3 -1
       82 RETURN                           R6 -1

PROTO_7:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Implementations"]
        4 GETTABLEKS                       R1 R1 K1 ["CallbackNetworking"]
        6 GETTABLEKS                       R1 R1 K2 ["new"]
        8 DUPTABLE                         R2 K5 [{"isHost", "isGuest"}]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K3 ["isHost"]
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K4 ["isGuest"]
       15 CALL                             R1 1 1
       16 MOVE                             R0 R1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K2 ["new"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 RETURN                           R1 1

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
        4 DUPTABLE                         R3 K3 [{"isHost", "isGuest"}]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["isHost"]
        8 LOADB                            R4 0
        9 SETTABLEKS                       R4 R3 K2 ["isGuest"]
       11 GETTABLEKS                       R4 R0 K4 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"isHost", "isGuest"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K1 ["isHost"]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K2 ["isGuest"]
       11 GETTABLEKS                       R4 R0 K4 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 DUPTABLE                         R5 K12 [{"getNetworking"}]
       36 GETTABLEKS                       R6 R4 K13 ["createUnimplemented"]
       38 LOADK                            R7 K11 ["getNetworking"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K11 ["getNetworking"]
       42 GETTABLEKS                       R6 R3 K14 ["createContext"]
       44 MOVE                             R7 R5
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K15 [PROTO_6]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 DUPCLOSURE                       R8 K16 [PROTO_10]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R6
       55 DUPCLOSURE                       R9 K17 [PROTO_13]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 DUPCLOSURE                       R10 K18 [PROTO_14]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R7
       61 DUPCLOSURE                       R11 K19 [PROTO_15]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 DUPTABLE                         R12 K25 [{"Context", "TestCallbackProvider", "TestProvider", "EditableDataModelProvider", "UIDataModelProvider"}]
       65 SETTABLEKS                       R6 R12 K20 ["Context"]
       67 SETTABLEKS                       R8 R12 K21 ["TestCallbackProvider"]
       69 SETTABLEKS                       R9 R12 K22 ["TestProvider"]
       71 SETTABLEKS                       R10 R12 K23 ["EditableDataModelProvider"]
       73 SETTABLEKS                       R11 R12 K24 ["UIDataModelProvider"]
       75 RETURN                           R12 1
