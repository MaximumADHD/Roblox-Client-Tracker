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
       28 DUPTABLE                         R12 K18 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["ClipsDescendants"] = True}]
       29 GETIMPORT                        R13 K21 [UDim2.new]
       31 LOADN                            R14 0
       32 GETTABLEKS                       R15 R5 K22 ["Min"]
       34 GETTABLEKS                       R15 R15 K23 ["X"]
       36 LOADN                            R16 0
       37 GETTABLEKS                       R17 R5 K22 ["Min"]
       39 GETTABLEKS                       R17 R17 K24 ["Y"]
       41 CALL                             R13 4 1
       42 SETTABLEKS                       R13 R12 K14 ["Position"]
       44 GETIMPORT                        R13 K21 [UDim2.new]
       46 LOADN                            R14 0
       47 GETTABLEKS                       R15 R5 K25 ["Width"]
       49 LOADN                            R16 0
       50 GETTABLEKS                       R17 R5 K26 ["Height"]
       52 CALL                             R13 4 1
       53 SETTABLEKS                       R13 R12 K15 ["Size"]
       55 DUPTABLE                         R13 K28 [{"Box"}]
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K5 ["createElement"]
       59 LOADK                            R15 K11 ["Frame"]
       60 DUPTABLE                         R16 K31 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0.8, ["Position"], ["Size"]}]
       61 GETTABLEKS                       R17 R2 K32 ["selectionBox"]
       63 SETTABLEKS                       R17 R16 K29 ["BackgroundColor3"]
       65 MOVE                             R17 R3
       66 JUMPIFNOT                        R17 ; [+5]
       67 NEWCLOSURE                       R19 P0
       68 CAPTURE                          VAL R5
       69 NAMECALL                         R17 R3 K33 ["map"]
       71 CALL                             R17 2 1
       72 SETTABLEKS                       R17 R16 K14 ["Position"]
       74 MOVE                             R17 R3
       75 JUMPIFNOT                        R17 ; [+16]
       76 MOVE                             R17 R4
       77 JUMPIFNOT                        R17 ; [+14]
       78 GETUPVAL                         R17 0
       79 GETTABLEKS                       R17 R17 K34 ["joinBindings"]
       81 NEWTABLE                         R18 0 2
       83 MOVE                             R19 R3
       84 MOVE                             R20 R4
       85 SETLIST                          R18 R19 2 [1]
       87 CALL                             R17 1 1
       88 DUPCLOSURE                       R19 K35 [PROTO_1]
       89 NAMECALL                         R17 R17 K33 ["map"]
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K15 ["Size"]
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K27 ["Box"]
       97 CALL                             R10 3 1
       98 SETTABLEKS                       R10 R9 K9 ["Extents"]
      100 CALL                             R6 3 -1
      101 RETURN                           R6 -1

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
