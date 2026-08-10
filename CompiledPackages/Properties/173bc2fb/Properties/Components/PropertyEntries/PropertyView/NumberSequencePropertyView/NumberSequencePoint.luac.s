PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnKeypointChanged"]
        3 JUMPIFNOT                        R1 ; [+39]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["XLocked"]
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETIMPORT                        R1 K4 [Vector2.new]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K5 ["Time"]
       13 GETTABLEKS                       R3 R0 K6 ["Y"]
       15 CALL                             R1 2 1
       16 MOVE                             R0 R1
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K7 ["calculateBoundedEnvelope"]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K9 ["MinY"]
       25 ORK                              R4 R5 K8 [0]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K10 ["MaxY"]
       29 ORK                              R5 R6 K8 [0]
       30 CALL                             R1 4 1
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K0 ["OnKeypointChanged"]
       34 GETIMPORT                        R3 K12 [NumberSequenceKeypoint.new]
       36 GETTABLEKS                       R4 R0 K13 ["X"]
       38 GETTABLEKS                       R5 R0 K6 ["Y"]
       40 MOVE                             R6 R1
       41 CALL                             R3 3 -1
       42 CALL                             R2 -1 0
       43 RETURN                           R0 0

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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Envelope"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["SetDragged"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K1 ["SetDragged"]
       12 LOADB                            R2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

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
        8 GETTABLEKS                       R3 R3 K2 ["useState"]
       10 LOADN                            R4 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 6
       22 MOVE                             R8 R3
       23 GETTABLEKS                       R9 R0 K4 ["OnKeypointChanged"]
       25 GETTABLEKS                       R10 R0 K5 ["XLocked"]
       27 GETTABLEKS                       R11 R0 K6 ["MinY"]
       29 GETTABLEKS                       R12 R0 K7 ["MaxY"]
       31 MOVE                             R13 R1
       32 SETLIST                          R7 R8 6 [1]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K8 ["createElement"]
       38 GETUPVAL                         R7 2
       39 DUPTABLE                         R8 K15 [{"Color3", "OutlineColor3", "OutlineThickness", "Size", "Position", "ZIndex"}]
       40 GETTABLEKS                       R9 R2 K9 ["Color3"]
       42 SETTABLEKS                       R9 R8 K9 ["Color3"]
       44 GETTABLEKS                       R9 R2 K10 ["OutlineColor3"]
       46 SETTABLEKS                       R9 R8 K10 ["OutlineColor3"]
       48 GETTABLEKS                       R9 R2 K11 ["OutlineThickness"]
       50 SETTABLEKS                       R9 R8 K11 ["OutlineThickness"]
       52 GETTABLEKS                       R9 R2 K12 ["Size"]
       54 SETTABLEKS                       R9 R8 K12 ["Size"]
       56 GETIMPORT                        R9 K18 [Vector2.new]
       58 GETTABLEKS                       R10 R1 K19 ["Time"]
       60 GETTABLEKS                       R11 R1 K20 ["Value"]
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K13 ["Position"]
       65 GETTABLEKS                       R9 R2 K14 ["ZIndex"]
       67 SETTABLEKS                       R9 R8 K14 ["ZIndex"]
       69 DUPTABLE                         R9 K22 [{"Input"}]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K8 ["createElement"]
       73 GETUPVAL                         R11 3
       74 DUPTABLE                         R12 K29 [{"OnHoverStart", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnRightPress"}]
       75 NEWCLOSURE                       R13 P1
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R13 R12 K23 ["OnHoverStart"]
       79 NEWCLOSURE                       R13 P2
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R13 R12 K24 ["OnHoverEnded"]
       83 NEWCLOSURE                       R13 P3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R13 R12 K25 ["OnDragStart"]
       89 SETTABLEKS                       R5 R12 K26 ["OnDragMoved"]
       91 NEWCLOSURE                       R13 P4
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R13 R12 K27 ["OnDragEnded"]
       95 GETTABLEKS                       R13 R0 K30 ["OnKeypointDeleted"]
       97 SETTABLEKS                       R13 R12 K28 ["OnRightPress"]
       99 CALL                             R10 2 1
      100 SETTABLEKS                       R10 R9 K21 ["Input"]
      102 CALL                             R6 3 -1
      103 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["PropertyEntries"]
       20 GETTABLEKS                       R4 R4 K10 ["PropertyView"]
       22 GETTABLEKS                       R4 R4 K11 ["NumberSequencePropertyView"]
       24 GETTABLEKS                       R4 R4 K12 ["NumberSequenceUtil"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K13 ["React"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R2 K14 ["InputDetector"]
       34 GETTABLEKS                       R6 R2 K15 ["Point"]
       36 DUPCLOSURE                       R7 K16 [PROTO_5]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R5
       41 RETURN                           R7 1
