PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnHoverStart"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnHoverStart"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnHoverEnd"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnHoverEnd"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnMoved"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 GETTABLEKS                       R3 R0 K4 ["Position"]
        8 GETTABLEKS                       R2 R3 K5 ["X"]
       10 GETTABLEKS                       R4 R0 K4 ["Position"]
       12 GETTABLEKS                       R3 R4 K6 ["Y"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["OnMoved"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["OnDragEnd"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K0 ["OnDragEnd"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K0 ["OnDragStart"]
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K0 ["OnDragStart"]
       14 CALL                             R2 0 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 DUPTABLE                         R3 K2 [{"HoverArea"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K7 [{"Cursor", "MouseEnter", "MouseLeave"}]
       11 GETUPVAL                         R7 2
       12 SETTABLEKS                       R7 R6 K4 ["Cursor"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R7 R6 K5 ["MouseEnter"]
       18 NEWCLOSURE                       R7 P1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R7 R6 K6 ["MouseLeave"]
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K1 ["HoverArea"]
       25 JUMPIFNOT                        R1 ; [+17]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K3 ["createElement"]
       29 GETUPVAL                         R5 3
       30 DUPTABLE                         R6 K10 [{"OnDragMoved", "OnDragEnded"}]
       31 NEWCLOSURE                       R7 P2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R7 R6 K8 ["OnDragMoved"]
       35 NEWCLOSURE                       R7 P3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R7 R6 K9 ["OnDragEnded"]
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K11 ["DragListener"]
       43 GETUPVAL                         R5 4
       44 JUMPIFNOT                        R5 ; [+14]
       45 GETUPVAL                         R4 5
       46 NEWCLOSURE                       R5 P4
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R6 0 2
       52 MOVE                             R7 R2
       53 GETTABLEKS                       R8 R0 K12 ["OnDragStart"]
       55 SETLIST                          R6 R7 2 [1]
       57 CALL                             R4 2 1
       58 JUMP                             ; [+3]
       59 NEWCLOSURE                       R4 P5
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          VAL R2
       62 GETTABLEKS                       R6 R0 K13 ["Selected"]
       64 JUMPIFNOT                        R6 ; [+2]
       65 LOADK                            R5 K13 ["Selected"]
       66 JUMP                             ; [+1]
       67 LOADK                            R5 K14 [""]
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R6 R7 K3 ["createElement"]
       71 LOADK                            R7 K15 ["TextButton"]
       72 NEWTABLE                         R8 4 0
       74 GETIMPORT                        R9 K18 [UDim2.fromScale]
       76 GETTABLEKS                       R11 R0 K19 ["Position"]
       78 GETTABLEKS                       R10 R11 K20 ["X"]
       80 GETTABLEKS                       R13 R0 K19 ["Position"]
       82 GETTABLEKS                       R12 R13 K22 ["Y"]
       84 SUBRK                            R11 R21 K12 ["OnDragStart"]
       85 CALL                             R9 2 1
       86 SETTABLEKS                       R9 R8 K19 ["Position"]
       88 GETUPVAL                         R10 0
       89 GETTABLEKS                       R9 R10 K23 ["Tag"]
       91 GETUPVAL                         R10 7
       92 LOADK                            R11 K24 ["SequenceKeypoint"]
       93 MOVE                             R12 R5
       94 GETTABLEKS                       R13 R0 K23 ["Tag"]
       96 CALL                             R10 3 1
       97 SETTABLE                         R10 R8 R9
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R10 R11 K25 ["Event"]
      101 GETTABLEKS                       R9 R10 K26 ["InputBegan"]
      103 SETTABLE                         R4 R8 R9
      104 MOVE                             R9 R3
      105 CALL                             R6 3 -1
      106 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["useCallback"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Packages"]
       24 GETTABLEKS                       R4 R5 K8 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R5 R3 K9 ["Styling"]
       29 GETTABLEKS                       R4 R5 K10 ["joinTags"]
       31 GETTABLEKS                       R6 R3 K11 ["UI"]
       33 GETTABLEKS                       R5 R6 K12 ["DragListener"]
       35 GETTABLEKS                       R7 R3 K11 ["UI"]
       37 GETTABLEKS                       R6 R7 K13 ["HoverArea"]
       39 GETTABLEKS                       R8 R3 K14 ["Util"]
       41 GETTABLEKS                       R7 R8 K15 ["isInputMainPress"]
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R11 R0 K16 ["Src"]
       47 GETTABLEKS                       R10 R11 K17 ["Resources"]
       49 GETTABLEKS                       R9 R10 K18 ["PluginStyles"]
       51 CALL                             R8 1 1
       52 LOADK                            R11 K19 ["CursorOpenedHand"]
       53 NAMECALL                         R9 R8 K20 ["GetAttribute"]
       55 CALL                             R9 2 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETTABLEKS                       R13 R0 K16 ["Src"]
       60 GETTABLEKS                       R12 R13 K21 ["Flags"]
       62 GETTABLEKS                       R11 R12 K22 ["getFFlagStyleEditorFixKeypointHoverDrag"]
       64 CALL                             R10 1 1
       65 CALL                             R10 0 1
       66 DUPCLOSURE                       R11 K23 [PROTO_6]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R4
       75 RETURN                           R11 1
