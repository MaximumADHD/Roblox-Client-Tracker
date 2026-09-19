PROTO_0:
        0 DUPTABLE                         R1 K2 [{"focusEnabled", "setFocusEnabledAsync"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["useReplicatedStateListener"]
        4 LOADK                            R3 K4 ["FocusOnFaceContext_FocusEnabled"]
        5 LOADB                            R4 0
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["focusEnabled"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K5 ["useBoundAction"]
       12 LOADK                            R3 K6 ["FocusOnFaceContext_SetFocusEnabledAsync"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K1 ["setFocusEnabledAsync"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K7 ["createElement"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K8 ["Provider"]
       22 DUPTABLE                         R4 K10 [{"value"}]
       23 SETTABLEKS                       R1 R4 K9 ["value"]
       25 GETTABLEKS                       R5 R0 K11 ["children"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["focusCameraOnFace"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["SelectionChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1
       16 LOADNIL                          R0
       17 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["selectedInstance"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["selectedInstance"]
        5 SETUPVAL                         R1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["useState"]
        9 LOADB                            R2 0
       10 CALL                             R1 1 2
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U0
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R0 K0 ["selectedInstance"]
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R6 0 1
       32 MOVE                             R7 R3
       33 SETLIST                          R6 R7 1 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       39 NEWCLOSURE                       R6 P2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U3
       43 NEWTABLE                         R7 0 2
       45 MOVE                             R8 R1
       46 MOVE                             R9 R3
       47 SETLIST                          R7 R8 2 [1]
       49 CALL                             R5 2 0
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R5 R5 K4 ["useReplicatedState"]
       53 LOADK                            R6 K5 ["FocusOnFaceContext_FocusEnabled"]
       54 MOVE                             R7 R1
       55 CALL                             R5 2 0
       56 DUPTABLE                         R5 K8 [{"focusEnabled", "setFocusEnabledAsync"}]
       57 SETTABLEKS                       R1 R5 K6 ["focusEnabled"]
       59 GETUPVAL                         R6 4
       60 GETTABLEKS                       R6 R6 K9 ["useBoundAction"]
       62 LOADK                            R7 K10 ["FocusOnFaceContext_SetFocusEnabledAsync"]
       63 MOVE                             R8 R4
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R5 K7 ["setFocusEnabledAsync"]
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K11 ["createElement"]
       70 GETUPVAL                         R7 5
       71 GETTABLEKS                       R7 R7 K12 ["Provider"]
       73 DUPTABLE                         R8 K14 [{"value"}]
       74 SETTABLEKS                       R5 R8 K13 ["value"]
       76 GETTABLEKS                       R9 R0 K15 ["children"]
       78 CALL                             R6 3 -1
       79 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utils"]
       13 GETTABLEKS                       R3 R3 K8 ["FocusOnFaceUtils"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Hooks"]
       20 GETTABLEKS                       R4 R4 K10 ["Networking"]
       22 GETTABLEKS                       R4 R4 K11 ["NetworkingUtils"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K12 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K13 ["ReactUtils"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K15 [game]
       37 LOADK                            R8 K16 ["Selection"]
       38 NAMECALL                         R6 R6 K17 ["GetService"]
       40 CALL                             R6 2 1
       41 LOADNIL                          R7
       42 DUPTABLE                         R8 K20 [{["FOCUS_ENABLED"] = "FocusOnFaceContext_FocusEnabled"}]
       43 DUPTABLE                         R9 K23 [{["SET_FOCUS_ENABLED_ASYNC"] = "FocusOnFaceContext_SetFocusEnabledAsync"}]
       44 DUPTABLE                         R10 K27 [{["focusEnabled"] = False, ["setFocusEnabledAsync"]}]
       45 GETTABLEKS                       R11 R5 K28 ["createUnimplemented"]
       47 LOADK                            R12 K26 ["setFocusEnabledAsync"]
       48 CALL                             R11 1 1
       49 SETTABLEKS                       R11 R10 K26 ["setFocusEnabledAsync"]
       51 GETTABLEKS                       R11 R4 K29 ["createContext"]
       53 MOVE                             R12 R10
       54 CALL                             R11 1 1
       55 DUPCLOSURE                       R12 K30 [PROTO_0]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R11
       59 NEWCLOSURE                       R13 P1
       60 CAPTURE                          REF R7
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R11
       66 DUPTABLE                         R14 K34 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       67 SETTABLEKS                       R11 R14 K31 ["Context"]
       69 SETTABLEKS                       R13 R14 K32 ["EditableDataModelProvider"]
       71 SETTABLEKS                       R12 R14 K33 ["UIDataModelProvider"]
       73 CLOSEUPVALS                      R7
       74 RETURN                           R14 1
