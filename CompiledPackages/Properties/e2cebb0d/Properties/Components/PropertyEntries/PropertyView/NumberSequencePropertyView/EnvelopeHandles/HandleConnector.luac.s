PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pixelsPerPlotUnitY"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["scalePixelOffsetY"]
        8 MOVE                             R4 R0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["ConnectorHoverOffsetYPixels"]
       12 GETUPVAL                         R6 1
       13 CALL                             R3 3 1
       14 DIV                              R2 R3 R1
       15 GETTABLEKS                       R3 R0 K3 ["plotToView"]
       17 GETIMPORT                        R4 K6 [Vector2.new]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K7 ["Time"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K8 ["Value"]
       25 CALL                             R4 2 -1
       26 CALL                             R3 -1 1
       27 GETTABLEKS                       R6 R0 K9 ["plotToViewY"]
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K8 ["Value"]
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R10 R10 K10 ["Envelope"]
       35 ADD                              R8 R9 R10
       36 ADD                              R7 R8 R2
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R0 K9 ["plotToViewY"]
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R10 R10 K8 ["Value"]
       43 GETUPVAL                         R11 2
       44 GETTABLEKS                       R11 R11 K10 ["Envelope"]
       46 SUB                              R9 R10 R11
       47 SUB                              R8 R9 R2
       48 CALL                             R7 1 1
       49 SUB                              R5 R6 R7
       50 FASTCALL1                        MATH_ABS R5 ; [+2]
       51 GETIMPORT                        R4 K13 [math.abs]
       53 CALL                             R4 1 1
       54 DUPTABLE                         R5 K16 [{"position", "size"}]
       55 GETIMPORT                        R6 K19 [UDim2.fromScale]
       57 GETTABLEKS                       R7 R3 K20 ["X"]
       59 GETTABLEKS                       R8 R3 K21 ["Y"]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K14 ["position"]
       64 GETIMPORT                        R6 K22 [UDim2.new]
       66 LOADN                            R7 0
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K23 ["ConnectorThicknessPixels"]
       70 MOVE                             R9 R4
       71 LOADN                            R10 0
       72 CALL                             R6 4 1
       73 SETTABLEKS                       R6 R5 K15 ["size"]
       75 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["position"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADK                            R1 K1 ["Start"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetHovered"]
        3 LOADK                            R1 K1 ["Stop"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["keypoint"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R2 R2 K1 ["NumberSequence"]
        6 GETTABLEKS                       R3 R2 K2 ["EnvelopeHandles"]
        8 GETTABLEKS                       R4 R2 K3 ["Point"]
       10 GETTABLEKS                       R4 R4 K4 ["SelectedStyle"]
       12 GETTABLEKS                       R7 R4 K6 ["Size"]
       14 DIVK                             R6 R7 K5 [2]
       15 GETTABLEKS                       R7 R4 K7 ["OutlineThickness"]
       17 ADD                              R5 R6 R7
       18 GETUPVAL                         R6 1
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R8 0 3
       25 MOVE                             R9 R1
       26 MOVE                             R10 R5
       27 GETTABLEKS                       R11 R0 K8 ["viewportSize"]
       29 SETLIST                          R8 R9 3 [1]
       31 CALL                             R6 2 1
       32 GETUPVAL                         R7 3
       33 GETUPVAL                         R8 4
       34 DUPTABLE                         R9 K13 [{["Position"], ["Size"], ["tag"] = "anchor-center-center", ["ZIndex"]}]
       35 GETUPVAL                         R10 5
       36 GETTABLEKS                       R10 R10 K14 ["Bindings"]
       38 GETTABLEKS                       R10 R10 K15 ["map"]
       40 MOVE                             R11 R6
       41 DUPCLOSURE                       R12 K16 [PROTO_1]
       42 CALL                             R10 2 1
       43 SETTABLEKS                       R10 R9 K9 ["Position"]
       45 GETUPVAL                         R10 5
       46 GETTABLEKS                       R10 R10 K14 ["Bindings"]
       48 GETTABLEKS                       R10 R10 K15 ["map"]
       50 MOVE                             R11 R6
       51 DUPCLOSURE                       R12 K17 [PROTO_2]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K6 ["Size"]
       55 GETTABLEKS                       R10 R0 K12 ["ZIndex"]
       57 SETTABLEKS                       R10 R9 K12 ["ZIndex"]
       59 DUPTABLE                         R10 K19 [{"Input"}]
       60 GETUPVAL                         R11 3
       61 GETUPVAL                         R12 6
       62 DUPTABLE                         R13 K22 [{"OnHoverStart", "OnHoverEnded"}]
       63 NEWCLOSURE                       R14 P3
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R14 R13 K20 ["OnHoverStart"]
       67 NEWCLOSURE                       R14 P4
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R14 R13 K21 ["OnHoverEnded"]
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K18 ["Input"]
       74 CALL                             R7 3 -1
       75 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["NumberSequencePropertyView"]
       19 GETTABLEKS                       R3 R3 K11 ["EnvelopeHandles"]
       21 GETTABLEKS                       R3 R3 K12 ["Util"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K6 [require]
       26 GETTABLEKS                       R4 R1 K13 ["Foundation"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K14 ["Graphing"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K7 ["Components"]
       38 GETTABLEKS                       R6 R6 K8 ["PropertyEntries"]
       40 GETTABLEKS                       R6 R6 K9 ["PropertyView"]
       42 GETTABLEKS                       R6 R6 K10 ["NumberSequencePropertyView"]
       44 GETTABLEKS                       R6 R6 K15 ["Types"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R1 K16 ["React"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R1 K17 ["ReactUtils"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       61 GETTABLEKS                       R9 R9 K19 ["useVisualValues"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R4 K20 ["InputDetector"]
       66 GETTABLEKS                       R10 R4 K21 ["useViewportBinding"]
       68 GETTABLEKS                       R11 R3 K22 ["View"]
       70 GETTABLEKS                       R12 R6 K23 ["createElement"]
       72 DUPCLOSURE                       R13 K24 [PROTO_5]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 RETURN                           R13 1
