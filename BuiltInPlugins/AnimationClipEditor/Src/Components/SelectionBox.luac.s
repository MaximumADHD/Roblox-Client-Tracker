PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 JUMPIF                           R0 ; [+4]
        4 GETIMPORT                        R1 K2 [UDim2.new]
        6 CALL                             R1 0 -1
        7 RETURN                           R1 -1
        8 GETIMPORT                        R1 K2 [UDim2.new]
       10 LOADN                            R2 0
       11 GETTABLEKS                       R4 R0 K3 ["X"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K4 ["Min"]
       16 GETTABLEKS                       R5 R5 K3 ["X"]
       18 SUB                              R3 R4 R5
       19 LOADN                            R4 0
       20 GETTABLEKS                       R6 R0 K5 ["Y"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K4 ["Min"]
       25 GETTABLEKS                       R7 R7 K5 ["Y"]
       27 SUB                              R5 R6 R7
       28 CALL                             R1 4 -1
       29 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+4]
        7 GETIMPORT                        R3 K2 [UDim2.new]
        9 CALL                             R3 0 -1
       10 RETURN                           R3 -1
       11 SUB                              R3 R2 R1
       12 GETIMPORT                        R4 K2 [UDim2.new]
       14 LOADN                            R5 0
       15 GETTABLEKS                       R6 R3 K3 ["X"]
       17 LOADN                            R7 0
       18 GETTABLEKS                       R8 R3 K4 ["Y"]
       20 CALL                             R4 4 -1
       21 RETURN                           R4 -1

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
       66 JUMPIFNOT                        R17 ; [+6]
       67 NEWCLOSURE                       R19 P0
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R5
       70 NAMECALL                         R17 R3 K33 ["map"]
       72 CALL                             R17 2 1
       73 SETTABLEKS                       R17 R16 K14 ["Position"]
       75 MOVE                             R17 R3
       76 JUMPIFNOT                        R17 ; [+17]
       77 MOVE                             R17 R4
       78 JUMPIFNOT                        R17 ; [+15]
       79 GETUPVAL                         R17 0
       80 GETTABLEKS                       R17 R17 K34 ["joinBindings"]
       82 NEWTABLE                         R18 0 2
       84 MOVE                             R19 R3
       85 MOVE                             R20 R4
       86 SETLIST                          R18 R19 2 [1]
       88 CALL                             R17 1 1
       89 DUPCLOSURE                       R19 K35 [PROTO_1]
       90 CAPTURE                          UPVAL U2
       91 NAMECALL                         R17 R17 K33 ["map"]
       93 CALL                             R17 2 1
       94 SETTABLEKS                       R17 R16 K15 ["Size"]
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K27 ["Box"]
       99 CALL                             R10 3 1
      100 SETTABLEKS                       R10 R9 K9 ["Extents"]
      102 CALL                             R6 3 -1
      103 RETURN                           R6 -1

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
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["LuaFlags"]
       33 GETTABLEKS                       R7 R7 K14 ["GetFFlagACERoactCompatPrepFixes"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R1 K15 ["PureComponent"]
       38 LOADK                            R9 K16 ["SelectionBox"]
       39 NAMECALL                         R7 R7 K17 ["extend"]
       41 CALL                             R7 2 1
       42 DUPCLOSURE                       R8 K18 [PROTO_2]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R8 R7 K19 ["render"]
       48 MOVE                             R8 R4
       49 DUPTABLE                         R9 K21 [{"Stylizer"}]
       50 GETTABLEKS                       R10 R3 K20 ["Stylizer"]
       52 SETTABLEKS                       R10 R9 K20 ["Stylizer"]
       54 CALL                             R8 1 1
       55 MOVE                             R9 R7
       56 CALL                             R8 1 1
       57 MOVE                             R7 R8
       58 RETURN                           R7 1
