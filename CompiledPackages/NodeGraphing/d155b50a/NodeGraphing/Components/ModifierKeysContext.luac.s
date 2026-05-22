PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["KeyCode"]
        8 LOADB                            R2 1
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["KeyCode"]
        8 LOADNIL                          R2
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftShift]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R1 K5 [Enum.KeyCode.RightShift]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftControl]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R1 K5 [Enum.KeyCode.RightControl]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R6 0 0
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       25 NEWCLOSURE                       R6 P2
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R7 0 1
       29 MOVE                             R8 R1
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       36 NEWCLOSURE                       R7 P3
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R8 0 1
       40 MOVE                             R9 R5
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       47 NEWCLOSURE                       R8 P4
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R5
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 1
       55 DUPTABLE                         R8 K7 [{"onInputBegan", "onInputEnded", "isKeyPressed", "isShiftPressed", "isCtrlPressed"}]
       56 SETTABLEKS                       R3 R8 K2 ["onInputBegan"]
       58 SETTABLEKS                       R4 R8 K3 ["onInputEnded"]
       60 SETTABLEKS                       R5 R8 K4 ["isKeyPressed"]
       62 SETTABLEKS                       R6 R8 K5 ["isShiftPressed"]
       64 SETTABLEKS                       R7 R8 K6 ["isCtrlPressed"]
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K8 ["createElement"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K9 ["Provider"]
       72 DUPTABLE                         R11 K11 [{"value"}]
       73 SETTABLEKS                       R8 R11 K10 ["value"]
       75 GETTABLEKS                       R12 R0 K12 ["children"]
       77 CALL                             R9 3 -1
       78 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K14 [{"onInputBegan", "onInputEnded", "isKeyPressed", "isShiftPressed", "isCtrlPressed"}]
       22 GETTABLEKS                       R4 R2 K15 ["createUnimplemented"]
       24 LOADK                            R5 K9 ["onInputBegan"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K9 ["onInputBegan"]
       28 GETTABLEKS                       R4 R2 K15 ["createUnimplemented"]
       30 LOADK                            R5 K10 ["onInputEnded"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K10 ["onInputEnded"]
       34 GETTABLEKS                       R4 R2 K15 ["createUnimplemented"]
       36 LOADK                            R5 K11 ["isKeyPressed"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K11 ["isKeyPressed"]
       40 GETTABLEKS                       R4 R2 K15 ["createUnimplemented"]
       42 LOADK                            R5 K12 ["isShiftPressed"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K12 ["isShiftPressed"]
       46 GETTABLEKS                       R4 R2 K15 ["createUnimplemented"]
       48 LOADK                            R5 K13 ["isCtrlPressed"]
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K13 ["isCtrlPressed"]
       52 GETTABLEKS                       R4 R1 K16 ["createContext"]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 1
       56 DUPCLOSURE                       R5 K17 [PROTO_7]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 DUPTABLE                         R6 K20 [{"Context", "Provider"}]
       60 SETTABLEKS                       R4 R6 K18 ["Context"]
       62 SETTABLEKS                       R5 R6 K19 ["Provider"]
       64 RETURN                           R6 1
