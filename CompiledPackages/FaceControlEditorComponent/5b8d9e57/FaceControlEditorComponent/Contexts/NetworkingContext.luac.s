PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Implementations"]
        4 GETTABLEKS                       R1 R1 K1 ["StudioNetworking"]
        6 GETTABLEKS                       R1 R1 K2 ["new"]
        8 DUPTABLE                         R2 K6 [{"isEditableDM", "isUIDM", "plugin"}]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["isEditableDM"]
       12 SETTABLEKS                       R3 R2 K3 ["isEditableDM"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["isUIDM"]
       17 SETTABLEKS                       R3 R2 K4 ["isUIDM"]
       19 GETUPVAL                         R3 2
       20 SETTABLEKS                       R3 R2 K5 ["plugin"]
       22 CALL                             R1 1 1
       23 MOVE                             R0 R1
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K2 ["new"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 1
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 1
       11 MOVE                             R5 R1
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R5 0 1
       22 MOVE                             R6 R2
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 DUPTABLE                         R4 K4 [{"getNetworking"}]
       27 SETTABLEKS                       R3 R4 K3 ["getNetworking"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K5 ["createElement"]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K6 ["Provider"]
       35 DUPTABLE                         R7 K8 [{"value"}]
       36 SETTABLEKS                       R4 R7 K7 ["value"]
       38 GETTABLEKS                       R8 R0 K9 ["children"]
       40 CALL                             R5 3 -1
       41 RETURN                           R5 -1

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Implementations"]
        4 GETTABLEKS                       R1 R1 K1 ["CallbackNetworking"]
        6 GETTABLEKS                       R1 R1 K2 ["new"]
        8 DUPTABLE                         R2 K6 [{["isEditableDM"] = True, ["isUIDM"] = True}]
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["new"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_3]
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
       23 DUPTABLE                         R3 K6 [{"getNetworking"}]
       24 SETTABLEKS                       R2 R3 K5 ["getNetworking"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K7 ["createElement"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K8 ["Provider"]
       32 DUPTABLE                         R6 K10 [{"value"}]
       33 SETTABLEKS                       R3 R6 K9 ["value"]
       35 GETTABLEKS                       R7 R0 K11 ["children"]
       37 CALL                             R4 3 -1
       38 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["isEditableDM"] = True, ["isUIDM"] = False, ["plugin"]}]
        5 GETTABLEKS                       R4 R0 K5 ["plugin"]
        7 SETTABLEKS                       R4 R3 K5 ["plugin"]
        9 GETTABLEKS                       R4 R0 K7 ["children"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["isEditableDM"] = False, ["isUIDM"] = True, ["plugin"]}]
        5 GETTABLEKS                       R4 R0 K5 ["plugin"]
        7 SETTABLEKS                       R4 R3 K5 ["plugin"]
        9 GETTABLEKS                       R4 R0 K7 ["children"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 DUPTABLE                         R5 K11 [{"getNetworking"}]
       25 GETTABLEKS                       R6 R4 K12 ["createUnimplemented"]
       27 LOADK                            R7 K10 ["getNetworking"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R5 K10 ["getNetworking"]
       31 GETTABLEKS                       R6 R2 K13 ["createContext"]
       33 MOVE                             R7 R5
       34 CALL                             R6 1 1
       35 DUPCLOSURE                       R7 K14 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R6
       39 DUPCLOSURE                       R8 K15 [PROTO_5]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R6
       43 DUPCLOSURE                       R9 K16 [PROTO_6]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R7
       46 DUPCLOSURE                       R10 K17 [PROTO_7]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R7
       49 DUPTABLE                         R11 K22 [{"Context", "TestCallbackProvider", "EditableDataModelProvider", "UIDataModelProvider"}]
       50 SETTABLEKS                       R6 R11 K18 ["Context"]
       52 SETTABLEKS                       R8 R11 K19 ["TestCallbackProvider"]
       54 SETTABLEKS                       R9 R11 K20 ["EditableDataModelProvider"]
       56 SETTABLEKS                       R10 R11 K21 ["UIDataModelProvider"]
       58 RETURN                           R11 1
