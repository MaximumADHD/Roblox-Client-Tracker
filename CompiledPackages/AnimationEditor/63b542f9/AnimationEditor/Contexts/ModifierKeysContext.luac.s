PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+14]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K4 ["join"]
       10 GETUPVAL                         R4 2
       11 NEWTABLE                         R5 1 0
       13 GETTABLEKS                       R6 R1 K5 ["KeyCode"]
       15 LOADB                            R7 1
       16 SETTABLE                         R7 R5 R6
       17 CALL                             R3 2 -1
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+16]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K4 ["join"]
       10 GETUPVAL                         R4 2
       11 NEWTABLE                         R5 1 0
       13 GETTABLEKS                       R6 R1 K5 ["KeyCode"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K6 ["None"]
       18 SETTABLE                         R7 R5 R6
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftShift]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R1 K5 [Enum.KeyCode.RightShift]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftControl]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R1 K5 [Enum.KeyCode.RightControl]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 2
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R6 0 2
       29 MOVE                             R7 R1
       30 MOVE                             R8 R2
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R7 0 1
       41 MOVE                             R8 R1
       42 SETLIST                          R7 R8 1 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       48 NEWCLOSURE                       R7 P3
       49 CAPTURE                          VAL R5
       50 NEWTABLE                         R8 0 1
       52 MOVE                             R9 R5
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       59 NEWCLOSURE                       R8 P4
       60 CAPTURE                          VAL R5
       61 NEWTABLE                         R9 0 1
       63 MOVE                             R10 R5
       64 SETLIST                          R9 R10 1 [1]
       66 CALL                             R7 2 1
       67 DUPTABLE                         R8 K7 [{"onInputBegan", "onInputEnded", "isKeyPressed", "isShiftPressed", "isCtrlPressed"}]
       68 SETTABLEKS                       R3 R8 K2 ["onInputBegan"]
       70 SETTABLEKS                       R4 R8 K3 ["onInputEnded"]
       72 SETTABLEKS                       R5 R8 K4 ["isKeyPressed"]
       74 SETTABLEKS                       R6 R8 K5 ["isShiftPressed"]
       76 SETTABLEKS                       R7 R8 K6 ["isCtrlPressed"]
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R9 R9 K8 ["createElement"]
       81 GETUPVAL                         R10 2
       82 GETTABLEKS                       R10 R10 K9 ["Provider"]
       84 DUPTABLE                         R11 K11 [{"value"}]
       85 SETTABLEKS                       R8 R11 K10 ["value"]
       87 GETTABLEKS                       R12 R0 K12 ["children"]
       89 CALL                             R9 3 -1
       90 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K15 [{"onInputBegan", "onInputEnded", "isKeyPressed", "isShiftPressed", "isCtrlPressed"}]
       29 GETTABLEKS                       R5 R3 K16 ["createUnimplemented"]
       31 LOADK                            R6 K10 ["onInputBegan"]
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K10 ["onInputBegan"]
       35 GETTABLEKS                       R5 R3 K16 ["createUnimplemented"]
       37 LOADK                            R6 K11 ["onInputEnded"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K11 ["onInputEnded"]
       41 GETTABLEKS                       R5 R3 K16 ["createUnimplemented"]
       43 LOADK                            R6 K12 ["isKeyPressed"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K12 ["isKeyPressed"]
       47 GETTABLEKS                       R5 R3 K16 ["createUnimplemented"]
       49 LOADK                            R6 K13 ["isShiftPressed"]
       50 CALL                             R5 1 1
       51 SETTABLEKS                       R5 R4 K13 ["isShiftPressed"]
       53 GETTABLEKS                       R5 R3 K16 ["createUnimplemented"]
       55 LOADK                            R6 K14 ["isCtrlPressed"]
       56 CALL                             R5 1 1
       57 SETTABLEKS                       R5 R4 K14 ["isCtrlPressed"]
       59 GETTABLEKS                       R5 R2 K17 ["createContext"]
       61 MOVE                             R6 R4
       62 CALL                             R5 1 1
       63 DUPCLOSURE                       R6 K18 [PROTO_5]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 DUPTABLE                         R7 K21 [{"Context", "Provider"}]
       68 SETTABLEKS                       R5 R7 K19 ["Context"]
       70 SETTABLEKS                       R6 R7 K20 ["Provider"]
       72 RETURN                           R7 1
