PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+14]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["OnDragBegan"]
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K0 ["OnDragBegan"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K1 ["ControlId"]
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 CALL                             R2 3 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
       20 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseMovement]
       22 JUMPIFNOTEQ                      R2 R3 ; [+4]
       24 GETUPVAL                         R2 2
       25 LOADB                            R3 1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["OnDragEnded"]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K0 ["OnDragEnded"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
       15 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseMovement]
       17 JUMPIFNOTEQ                      R2 R3 ; [+4]
       19 GETUPVAL                         R2 2
       20 LOADB                            R3 0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETTABLEKS                       R4 R0 K0 ["DragTarget"]
        5 GETTABLEKS                       R5 R0 K1 ["ControlId"]
        7 JUMPIFEQ                         R4 R5 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 GETTABLEKS                       R5 R0 K2 ["Text"]
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETTABLEKS                       R4 R0 K2 ["Text"]
       16 JUMP                             ; [+1]
       17 LOADK                            R4 K3 [""]
       18 LOADK                            R5 K3 [""]
       19 JUMPIFNOT                        R3 ; [+2]
       20 LOADK                            R5 K4 ["Pressed"]
       21 JUMP                             ; [+2]
       22 JUMPIFNOT                        R1 ; [+1]
       23 LOADK                            R5 K5 ["Hovered"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K6 ["createElement"]
       27 LOADK                            R7 K7 ["TextButton"]
       28 NEWTABLE                         R8 8 0
       30 GETTABLEKS                       R9 R0 K8 ["AnchorPoint"]
       32 SETTABLEKS                       R9 R8 K8 ["AnchorPoint"]
       34 LOADB                            R9 0
       35 SETTABLEKS                       R9 R8 K9 ["AutoButtonColor"]
       37 GETTABLEKS                       R9 R0 K10 ["Position"]
       39 SETTABLEKS                       R9 R8 K10 ["Position"]
       41 GETTABLEKS                       R9 R0 K11 ["Size"]
       43 SETTABLEKS                       R9 R8 K11 ["Size"]
       45 SETTABLEKS                       R4 R8 K2 ["Text"]
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K12 ["Tag"]
       50 GETUPVAL                         R10 2
       51 LOADK                            R11 K13 ["ScrollbarButton"]
       52 MOVE                             R12 R5
       53 GETTABLEKS                       R13 R0 K12 ["Tag"]
       55 CALL                             R10 3 1
       56 SETTABLE                         R10 R8 R9
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R9 R9 K14 ["Event"]
       60 GETTABLEKS                       R9 R9 K15 ["InputBegan"]
       62 NEWCLOSURE                       R10 P0
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 SETTABLE                         R10 R8 R9
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K14 ["Event"]
       70 GETTABLEKS                       R9 R9 K16 ["InputEnded"]
       72 NEWCLOSURE                       R10 P1
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R2
       76 SETTABLE                         R10 R8 R9
       77 DUPTABLE                         R9 K18 [{"DragListener"}]
       78 MOVE                             R10 R3
       79 JUMPIFNOT                        R10 ; [+14]
       80 GETUPVAL                         R10 1
       81 GETTABLEKS                       R10 R10 K6 ["createElement"]
       83 GETUPVAL                         R11 4
       84 DUPTABLE                         R12 K21 [{"OnDragMoved", "OnDragEnded"}]
       85 GETTABLEKS                       R13 R0 K19 ["OnDragMoved"]
       87 SETTABLEKS                       R13 R12 K19 ["OnDragMoved"]
       89 GETTABLEKS                       R13 R0 K20 ["OnDragEnded"]
       91 SETTABLEKS                       R13 R12 K20 ["OnDragEnded"]
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R9 K17 ["DragListener"]
       96 CALL                             R6 3 -1
       97 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["UI"]
       25 GETTABLEKS                       R4 R4 K11 ["DragListener"]
       27 GETTABLEKS                       R5 R3 K12 ["Util"]
       29 GETTABLEKS                       R5 R5 K13 ["isInputMainPress"]
       31 GETTABLEKS                       R6 R3 K14 ["Styling"]
       33 GETTABLEKS                       R6 R6 K15 ["joinTags"]
       35 DUPCLOSURE                       R7 K16 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 RETURN                           R7 1
