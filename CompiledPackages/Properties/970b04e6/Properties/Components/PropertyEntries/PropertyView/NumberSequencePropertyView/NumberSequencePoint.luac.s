PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnKeypointChanged"]
        3 JUMPIFNOT                        R1 ; [+27]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["XLocked"]
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETIMPORT                        R1 K4 [Vector2.new]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K5 ["Time"]
       13 GETTABLEKS                       R3 R0 K6 ["Y"]
       15 CALL                             R1 2 1
       16 MOVE                             R0 R1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["OnKeypointChanged"]
       20 GETIMPORT                        R2 K8 [NumberSequenceKeypoint.new]
       22 GETTABLEKS                       R3 R0 K9 ["X"]
       24 GETTABLEKS                       R4 R0 K6 ["Y"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K10 ["Envelope"]
       29 CALL                             R2 3 -1
       30 CALL                             R1 -1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetHovered"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["SetHovered"]
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetHovered"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["SetHovered"]
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetDragged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["SetDragged"]
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetDragged"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["SetDragged"]
        7 LOADB                            R2 0
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoint"]
        2 GETTABLEKS                       R2 R0 K1 ["style"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 3
       15 GETTABLEKS                       R6 R0 K3 ["OnKeypointChanged"]
       17 GETTABLEKS                       R7 R0 K4 ["XLocked"]
       19 MOVE                             R8 R1
       20 SETLIST                          R5 R6 3 [1]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K5 ["createElement"]
       26 GETUPVAL                         R5 1
       27 DUPTABLE                         R6 K12 [{"Color3", "OutlineColor3", "OutlineThickness", "Size", "Position", "ZIndex"}]
       28 GETTABLEKS                       R7 R2 K6 ["Color3"]
       30 SETTABLEKS                       R7 R6 K6 ["Color3"]
       32 GETTABLEKS                       R7 R2 K7 ["OutlineColor3"]
       34 SETTABLEKS                       R7 R6 K7 ["OutlineColor3"]
       36 GETTABLEKS                       R7 R2 K8 ["OutlineThickness"]
       38 SETTABLEKS                       R7 R6 K8 ["OutlineThickness"]
       40 GETTABLEKS                       R7 R2 K9 ["Size"]
       42 SETTABLEKS                       R7 R6 K9 ["Size"]
       44 GETIMPORT                        R7 K15 [Vector2.new]
       46 GETTABLEKS                       R8 R1 K16 ["Time"]
       48 GETTABLEKS                       R9 R1 K17 ["Value"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K10 ["Position"]
       53 GETTABLEKS                       R7 R2 K11 ["ZIndex"]
       55 SETTABLEKS                       R7 R6 K11 ["ZIndex"]
       57 DUPTABLE                         R7 K19 [{"Input"}]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K5 ["createElement"]
       61 GETUPVAL                         R9 2
       62 DUPTABLE                         R10 K26 [{"OnHoverStart", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnRightPress"}]
       63 NEWCLOSURE                       R11 P1
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R11 R10 K20 ["OnHoverStart"]
       67 NEWCLOSURE                       R11 P2
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R11 R10 K21 ["OnHoverEnded"]
       71 NEWCLOSURE                       R11 P3
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R11 R10 K22 ["OnDragStart"]
       75 SETTABLEKS                       R3 R10 K23 ["OnDragMoved"]
       77 NEWCLOSURE                       R11 P4
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R11 R10 K24 ["OnDragEnded"]
       81 GETTABLEKS                       R11 R0 K27 ["OnKeypointDeleted"]
       83 SETTABLEKS                       R11 R10 K25 ["OnRightPress"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K18 ["Input"]
       88 CALL                             R4 3 -1
       89 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Graphing"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["InputDetector"]
       21 GETTABLEKS                       R5 R2 K10 ["Point"]
       23 DUPCLOSURE                       R6 K11 [PROTO_5]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R4
       27 RETURN                           R6 1
