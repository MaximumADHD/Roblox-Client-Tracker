PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 GETTABLEKS                       R4 R0 K3 ["X"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K4 ["Min"]
        8 GETTABLEKS                       R5 R5 K3 ["X"]
       10 SUB                              R3 R4 R5
       11 LOADN                            R4 0
       12 GETTABLEKS                       R6 R0 K5 ["Y"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K4 ["Min"]
       17 GETTABLEKS                       R7 R7 K5 ["Y"]
       19 SUB                              R5 R6 R7
       20 CALL                             R1 4 -1
       21 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 SUB                              R3 R2 R1
        3 GETIMPORT                        R4 K2 [UDim2.new]
        5 LOADN                            R5 0
        6 GETTABLEKS                       R6 R3 K3 ["X"]
        8 LOADN                            R7 0
        9 GETTABLEKS                       R8 R3 K4 ["Y"]
       11 CALL                             R4 4 -1
       12 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["SelectionStart"]
        6 GETTABLEKS                       R4 R1 K3 ["SelectionEnd"]
        8 GETTABLEKS                       R5 R1 K4 ["SourceExtents"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K8 [{"OnDragMoved", "OnDragEnded"}]
       15 GETTABLEKS                       R9 R1 K6 ["OnDragMoved"]
       17 SETTABLEKS                       R9 R8 K6 ["OnDragMoved"]
       19 GETTABLEKS                       R9 R1 K7 ["OnDragEnded"]
       21 SETTABLEKS                       R9 R8 K7 ["OnDragEnded"]
       23 DUPTABLE                         R9 K10 [{"Extents"}]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K5 ["createElement"]
       27 LOADK                            R11 K11 ["Frame"]
       28 DUPTABLE                         R12 K16 [{"BackgroundTransparency", "Position", "Size", "ClipsDescendants"}]
       29 LOADN                            R13 1
       30 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
       32 GETIMPORT                        R13 K19 [UDim2.new]
       34 LOADN                            R14 0
       35 GETTABLEKS                       R15 R5 K20 ["Min"]
       37 GETTABLEKS                       R15 R15 K21 ["X"]
       39 LOADN                            R16 0
       40 GETTABLEKS                       R17 R5 K20 ["Min"]
       42 GETTABLEKS                       R17 R17 K22 ["Y"]
       44 CALL                             R13 4 1
       45 SETTABLEKS                       R13 R12 K13 ["Position"]
       47 GETIMPORT                        R13 K19 [UDim2.new]
       49 LOADN                            R14 0
       50 GETTABLEKS                       R15 R5 K23 ["Width"]
       52 LOADN                            R16 0
       53 GETTABLEKS                       R17 R5 K24 ["Height"]
       55 CALL                             R13 4 1
       56 SETTABLEKS                       R13 R12 K14 ["Size"]
       58 LOADB                            R13 1
       59 SETTABLEKS                       R13 R12 K15 ["ClipsDescendants"]
       61 DUPTABLE                         R13 K26 [{"Box"}]
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K5 ["createElement"]
       65 LOADK                            R15 K11 ["Frame"]
       66 DUPTABLE                         R16 K28 [{"BackgroundColor3", "BackgroundTransparency", "Position", "Size"}]
       67 GETTABLEKS                       R17 R2 K29 ["selectionBox"]
       69 SETTABLEKS                       R17 R16 K27 ["BackgroundColor3"]
       71 LOADK                            R17 K30 [0.8]
       72 SETTABLEKS                       R17 R16 K12 ["BackgroundTransparency"]
       74 MOVE                             R17 R3
       75 JUMPIFNOT                        R17 ; [+5]
       76 NEWCLOSURE                       R19 P0
       77 CAPTURE                          VAL R5
       78 NAMECALL                         R17 R3 K31 ["map"]
       80 CALL                             R17 2 1
       81 SETTABLEKS                       R17 R16 K13 ["Position"]
       83 MOVE                             R17 R3
       84 JUMPIFNOT                        R17 ; [+16]
       85 MOVE                             R17 R4
       86 JUMPIFNOT                        R17 ; [+14]
       87 GETUPVAL                         R17 0
       88 GETTABLEKS                       R17 R17 K32 ["joinBindings"]
       90 NEWTABLE                         R18 0 2
       92 MOVE                             R19 R3
       93 MOVE                             R20 R4
       94 SETLIST                          R18 R19 2 [1]
       96 CALL                             R17 1 1
       97 DUPCLOSURE                       R19 K33 [PROTO_1]
       98 NAMECALL                         R17 R17 K31 ["map"]
      100 CALL                             R17 2 1
      101 SETTABLEKS                       R17 R16 K14 ["Size"]
      103 CALL                             R14 2 1
      104 SETTABLEKS                       R14 R13 K25 ["Box"]
      106 CALL                             R10 3 1
      107 SETTABLEKS                       R10 R9 K9 ["Extents"]
      109 CALL                             R6 3 -1
      110 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["DragListener"]
       29 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       31 LOADK                            R8 K14 ["SelectionBox"]
       32 NAMECALL                         R6 R6 K15 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K16 [PROTO_2]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R7 R6 K17 ["render"]
       40 MOVE                             R7 R4
       41 DUPTABLE                         R8 K19 [{"Stylizer"}]
       42 GETTABLEKS                       R9 R3 K18 ["Stylizer"]
       44 SETTABLEKS                       R9 R8 K18 ["Stylizer"]
       46 CALL                             R7 1 1
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 MOVE                             R6 R7
       50 RETURN                           R6 1
