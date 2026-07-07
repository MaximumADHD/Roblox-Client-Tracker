PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectIds"]
        3 GETIMPORT                        R1 K3 [table.freeze]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instancePickerActiveObservable"]
        3 GETTABLEKS                       R1 R1 K1 ["get"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["instancePickerSubmitInstance"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 DUPTABLE                         R2 K5 [{"scrollingFrameRef", "position"}]
       15 GETUPVAL                         R3 2
       16 SETTABLEKS                       R3 R2 K3 ["scrollingFrameRef"]
       18 GETTABLEKS                       R3 R0 K6 ["Position"]
       20 SETTABLEKS                       R3 R2 K4 ["position"]
       22 CALL                             R1 1 1
       23 JUMPIFEQKNIL                     R1 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 3
       27 CALL                             R1 0 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{[1], ["startPosition"], ["isFromBlankSpace"] = True}]
        5 SETTABLEKS                       R0 R2 K0 ["DEPRECATED_inputObjectResponsibleForClick"]
        7 GETIMPORT                        R3 K7 [Vector2.new]
        9 GETTABLEKS                       R4 R0 K8 ["Position"]
       11 GETTABLEKS                       R4 R4 K9 ["X"]
       13 GETTABLEKS                       R5 R0 K8 ["Position"]
       15 GETTABLEKS                       R5 R5 K10 ["Y"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K1 ["startPosition"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openContextMenuAsync"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["showContextMenu"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETIMPORT                        R0 K2 [task.spawn]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       10 JUMPIFNOTEQ                      R2 R3 ; [+7]
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R1
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 2
       16 CALL                             R2 3 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       20 GETIMPORT                        R3 K7 [Enum.UserInputType.MouseButton2]
       22 JUMPIFNOTEQ                      R2 R3 ; [+3]
       24 GETUPVAL                         R2 3
       25 CALL                             R2 0 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Context"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R6 0 1
       14 MOVE                             R7 R0
       15 SETLIST                          R6 R7 1 [1]
       17 CALL                             R4 2 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R7 0 2
       28 MOVE                             R8 R0
       29 MOVE                             R9 R4
       30 SETLIST                          R7 R8 2 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       36 NEWCLOSURE                       R7 P2
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R8 0 2
       41 MOVE                             R9 R5
       42 MOVE                             R10 R1
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       49 NEWCLOSURE                       R8 P3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R9 0 3
       55 MOVE                             R10 R4
       56 MOVE                             R11 R0
       57 GETTABLEKS                       R12 R3 K3 ["showContextMenu"]
       59 SETLIST                          R9 R10 3 [1]
       61 CALL                             R7 2 1
       62 GETUPVAL                         R8 3
       63 CALL                             R8 0 1
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K2 ["useCallback"]
       67 NEWCLOSURE                       R10 P4
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 NEWTABLE                         R11 0 4
       74 MOVE                             R12 R8
       75 MOVE                             R13 R5
       76 MOVE                             R14 R6
       77 MOVE                             R15 R7
       78 SETLIST                          R11 R12 4 [1]
       80 CALL                             R9 2 1
       81 DUPTABLE                         R10 K5 [{"inputBegan"}]
       82 SETTABLEKS                       R9 R10 K4 ["inputBegan"]
       84 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ContextMenuContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["RpcTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R5 K13 ["getScrollBarOrientation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K15 ["useBoxSelect"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K16 ["useWatchForClickOrDrag"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K17 [PROTO_6]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R6
       54 RETURN                           R7 1
