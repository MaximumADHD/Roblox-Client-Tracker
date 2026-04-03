PROTO_0:
        0 DUPTABLE                         R1 K2 [{"focusEnabled", "setFocusEnabledAsync"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["useReplicatedStateListener"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K4 ["FOCUS_ENABLED"]
        7 LOADB                            R4 0
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R1 K0 ["focusEnabled"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K5 ["useBoundAction"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K6 ["SET_FOCUS_ENABLED_ASYNC"]
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K1 ["setFocusEnabledAsync"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K7 ["createElement"]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R3 R4 K8 ["Provider"]
       26 DUPTABLE                         R4 K10 [{"value"}]
       27 SETTABLEKS                       R1 R4 K9 ["value"]
       29 GETTABLEKS                       R5 R0 K11 ["children"]
       31 CALL                             R2 3 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["focusCameraOnFace"]
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
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["SelectionChanged"]
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
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["useState"]
        9 LOADB                            R2 0
       10 CALL                             R1 1 2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U0
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R0 K0 ["selectedInstance"]
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R6 0 1
       32 MOVE                             R7 R3
       33 SETLIST                          R6 R7 1 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R5 R6 K3 ["useEffect"]
       39 NEWCLOSURE                       R6 P2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U3
       43 NEWTABLE                         R7 0 2
       45 MOVE                             R8 R1
       46 MOVE                             R9 R3
       47 SETLIST                          R7 R8 2 [1]
       49 CALL                             R5 2 0
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R5 R6 K4 ["useReplicatedState"]
       53 GETUPVAL                         R7 5
       54 GETTABLEKS                       R6 R7 K5 ["FOCUS_ENABLED"]
       56 MOVE                             R7 R1
       57 CALL                             R5 2 0
       58 DUPTABLE                         R5 K8 [{"focusEnabled", "setFocusEnabledAsync"}]
       59 SETTABLEKS                       R1 R5 K6 ["focusEnabled"]
       61 GETUPVAL                         R7 4
       62 GETTABLEKS                       R6 R7 K9 ["useBoundAction"]
       64 GETUPVAL                         R8 6
       65 GETTABLEKS                       R7 R8 K10 ["SET_FOCUS_ENABLED_ASYNC"]
       67 MOVE                             R8 R4
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K7 ["setFocusEnabledAsync"]
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R6 R7 K11 ["createElement"]
       74 GETUPVAL                         R8 7
       75 GETTABLEKS                       R7 R8 K12 ["Provider"]
       77 DUPTABLE                         R8 K14 [{"value"}]
       78 SETTABLEKS                       R5 R8 K13 ["value"]
       80 GETTABLEKS                       R9 R0 K15 ["children"]
       82 CALL                             R6 3 -1
       83 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utils"]
       13 GETTABLEKS                       R3 R4 K8 ["FocusOnFaceUtils"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Hooks"]
       20 GETTABLEKS                       R5 R6 K10 ["Networking"]
       22 GETTABLEKS                       R4 R5 K11 ["NetworkingUtils"]
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
       42 DUPTABLE                         R8 K19 [{"FOCUS_ENABLED"}]
       43 LOADK                            R9 K20 ["FocusOnFaceContext_FocusEnabled"]
       44 SETTABLEKS                       R9 R8 K18 ["FOCUS_ENABLED"]
       46 DUPTABLE                         R9 K22 [{"SET_FOCUS_ENABLED_ASYNC"}]
       47 LOADK                            R10 K23 ["FocusOnFaceContext_SetFocusEnabledAsync"]
       48 SETTABLEKS                       R10 R9 K21 ["SET_FOCUS_ENABLED_ASYNC"]
       50 DUPTABLE                         R10 K26 [{"focusEnabled", "setFocusEnabledAsync"}]
       51 LOADB                            R11 0
       52 SETTABLEKS                       R11 R10 K24 ["focusEnabled"]
       54 GETTABLEKS                       R11 R5 K27 ["createUnimplemented"]
       56 LOADK                            R12 K25 ["setFocusEnabledAsync"]
       57 CALL                             R11 1 1
       58 SETTABLEKS                       R11 R10 K25 ["setFocusEnabledAsync"]
       60 GETTABLEKS                       R11 R4 K28 ["createContext"]
       62 MOVE                             R12 R10
       63 CALL                             R11 1 1
       64 DUPCLOSURE                       R12 K29 [PROTO_0]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R11
       70 NEWCLOSURE                       R13 P1
       71 CAPTURE                          REF R7
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R11
       79 DUPTABLE                         R14 K33 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       80 SETTABLEKS                       R11 R14 K30 ["Context"]
       82 SETTABLEKS                       R13 R14 K31 ["EditableDataModelProvider"]
       84 SETTABLEKS                       R12 R14 K32 ["UIDataModelProvider"]
       86 CLOSEUPVALS                      R7
       87 RETURN                           R14 1
