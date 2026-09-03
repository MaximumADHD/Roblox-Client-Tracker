PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnKeypointChanged"]
        3 JUMPIFNOT                        R1 ; [+60]
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
       18 GETTABLEKS                       R1 R1 K7 ["current"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+7]
       22 GETUPVAL                         R1 2
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K8 ["Envelope"]
       26 SETTABLEKS                       R2 R1 K7 ["current"]
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K7 ["current"]
       31 JUMPIF                           R1 ; [+3]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K8 ["Envelope"]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K9 ["calculateBoundedEnvelope"]
       38 MOVE                             R3 R0
       39 MOVE                             R4 R1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K11 ["MinY"]
       43 ORK                              R5 R6 K10 [0]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K12 ["MaxY"]
       47 ORK                              R6 R7 K10 [0]
       48 CALL                             R2 4 1
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K0 ["OnKeypointChanged"]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K13 ["KeypointIndex"]
       55 GETIMPORT                        R5 K15 [NumberSequenceKeypoint.new]
       57 GETTABLEKS                       R6 R0 K16 ["X"]
       59 GETTABLEKS                       R7 R0 K6 ["Y"]
       61 MOVE                             R8 R2
       62 CALL                             R5 3 -1
       63 CALL                             R3 -1 0
       64 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetHovered"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["SetHovered"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["KeypointIndex"]
       10 LOADK                            R3 K2 ["Start"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetHovered"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["SetHovered"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["KeypointIndex"]
       10 LOADK                            R3 K2 ["Stop"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["SetDragged"]
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["SetDragged"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["KeypointIndex"]
       14 LOADK                            R3 K3 ["Start"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetDragged"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["SetDragged"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["KeypointIndex"]
       10 LOADK                            R2 K2 ["Stop"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnKeypointDeleted"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnKeypointDeleted"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["KeypointIndex"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoint"]
        2 GETTABLEKS                       R2 R0 K1 ["style"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useRef"]
       10 LOADNIL                          R4
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["useEventCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U2
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K4 ["createElement"]
       24 GETUPVAL                         R6 3
       25 DUPTABLE                         R7 K11 [{"Color3", "OutlineColor3", "OutlineThickness", "Size", "Position", "ZIndex"}]
       26 GETTABLEKS                       R8 R2 K5 ["Color3"]
       28 SETTABLEKS                       R8 R7 K5 ["Color3"]
       30 GETTABLEKS                       R8 R2 K6 ["OutlineColor3"]
       32 SETTABLEKS                       R8 R7 K6 ["OutlineColor3"]
       34 GETTABLEKS                       R8 R2 K7 ["OutlineThickness"]
       36 SETTABLEKS                       R8 R7 K7 ["OutlineThickness"]
       38 GETTABLEKS                       R8 R2 K8 ["Size"]
       40 SETTABLEKS                       R8 R7 K8 ["Size"]
       42 GETIMPORT                        R8 K14 [Vector2.new]
       44 GETTABLEKS                       R9 R1 K15 ["Time"]
       46 GETTABLEKS                       R10 R1 K16 ["Value"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K9 ["Position"]
       51 GETTABLEKS                       R8 R0 K10 ["ZIndex"]
       53 SETTABLEKS                       R8 R7 K10 ["ZIndex"]
       55 DUPTABLE                         R8 K18 [{"Input"}]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K4 ["createElement"]
       59 GETUPVAL                         R10 4
       60 DUPTABLE                         R11 K26 [{"Inflate", "OnHoverStart", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnRightPress"}]
       61 GETTABLEKS                       R12 R2 K27 ["DetectorInflate"]
       63 SETTABLEKS                       R12 R11 K19 ["Inflate"]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R12 R11 K20 ["OnHoverStart"]
       69 NEWCLOSURE                       R12 P2
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R12 R11 K21 ["OnHoverEnded"]
       73 NEWCLOSURE                       R12 P3
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R12 R11 K22 ["OnDragStart"]
       78 SETTABLEKS                       R4 R11 K23 ["OnDragMoved"]
       80 NEWCLOSURE                       R12 P4
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R12 R11 K24 ["OnDragEnded"]
       84 NEWCLOSURE                       R12 P5
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R12 R11 K25 ["OnRightPress"]
       88 CALL                             R9 2 1
       89 SETTABLEKS                       R9 R8 K17 ["Input"]
       91 CALL                             R5 3 -1
       92 RETURN                           R5 -1

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
       24 GETTABLEKS                       R4 R4 K12 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K8 ["Components"]
       31 GETTABLEKS                       R5 R5 K9 ["PropertyEntries"]
       33 GETTABLEKS                       R5 R5 K10 ["PropertyView"]
       35 GETTABLEKS                       R5 R5 K11 ["NumberSequencePropertyView"]
       37 GETTABLEKS                       R5 R5 K13 ["NumberSequenceUtil"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K6 [require]
       42 GETTABLEKS                       R6 R1 K14 ["React"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETIMPORT                        R7 K1 [script]
       49 GETTABLEKS                       R7 R7 K4 ["Parent"]
       51 GETTABLEKS                       R7 R7 K4 ["Parent"]
       53 GETTABLEKS                       R7 R7 K4 ["Parent"]
       55 GETTABLEKS                       R7 R7 K4 ["Parent"]
       57 GETTABLEKS                       R7 R7 K4 ["Parent"]
       59 GETTABLEKS                       R7 R7 K4 ["Parent"]
       61 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R7 R2 K16 ["Point"]
       66 GETTABLEKS                       R8 R2 K17 ["InputDetector"]
       68 DUPCLOSURE                       R9 K18 [PROTO_6]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R8
       74 RETURN                           R9 1
