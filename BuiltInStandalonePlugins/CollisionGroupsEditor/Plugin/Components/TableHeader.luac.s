PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["TableHeader"]
        6 NEWTABLE                         R3 0 0
        8 GETIMPORT                        R4 K4 [ipairs]
       10 GETTABLEKS                       R5 R1 K5 ["Groups"]
       12 CALL                             R4 1 3
       13 FORGPREP_INEXT                   R4
       14 GETTABLEKS                       R9 R8 K6 ["Name"]
       16 GETTABLEKS                       R10 R8 K6 ["Name"]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R11 R11 K7 ["createElement"]
       21 GETUPVAL                         R12 1
       22 DUPTABLE                         R13 K13 [{["Size"], ["Style"] = "GroupLabel", ["StyleModifier"], ["LayoutOrder"]}]
       23 GETUPVAL                         R14 2
       24 GETTABLEKS                       R14 R14 K14 ["GridHeaderLabelSize"]
       26 SETTABLEKS                       R14 R13 K8 ["Size"]
       28 GETTABLEKS                       R15 R8 K6 ["Name"]
       30 GETTABLEKS                       R16 R1 K15 ["ColHovered"]
       32 JUMPIFNOTEQ                      R15 R16 ; [+5]
       34 GETUPVAL                         R14 3
       35 GETTABLEKS                       R14 R14 K16 ["Hover"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R14
       39 SETTABLEKS                       R14 R13 K11 ["StyleModifier"]
       41 GETTABLEKS                       R16 R1 K5 ["Groups"]
       43 LENGTH                           R15 R16
       44 SUB                              R14 R15 R7
       45 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       47 DUPTABLE                         R14 K18 [{"TextLabel"}]
       48 GETUPVAL                         R15 0
       49 GETTABLEKS                       R15 R15 K7 ["createElement"]
       51 GETUPVAL                         R16 4
       52 DUPTABLE                         R17 K23 [{["Style"] = "GroupLabel", ["TextWrapped"] = True, ["TextTruncate"], ["Size"], ["Text"]}]
       53 GETIMPORT                        R18 K26 [Enum.TextTruncate.AtEnd]
       55 SETTABLEKS                       R18 R17 K21 ["TextTruncate"]
       57 GETIMPORT                        R18 K29 [UDim2.new]
       59 LOADN                            R19 1
       60 LOADN                            R20 0
       61 LOADN                            R21 1
       62 LOADN                            R22 0
       63 CALL                             R18 4 1
       64 SETTABLEKS                       R18 R17 K8 ["Size"]
       66 SETTABLEKS                       R9 R17 K22 ["Text"]
       68 CALL                             R15 2 1
       69 SETTABLEKS                       R15 R14 K17 ["TextLabel"]
       71 CALL                             R11 3 1
       72 SETTABLE                         R11 R3 R10
       73 FORGLOOP                         R4 2 [inext] ; [-60]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K7 ["createElement"]
       78 GETUPVAL                         R5 1
       79 DUPTABLE                         R6 K34 [{["Size"], ["LayoutOrder"], ["Layout"], ["Padding"], ["Spacing"] = -1}]
       80 GETIMPORT                        R7 K29 [UDim2.new]
       82 LOADN                            R8 1
       83 LOADN                            R9 0
       84 LOADN                            R10 0
       85 GETUPVAL                         R11 2
       86 GETTABLEKS                       R11 R11 K35 ["GroupRowHeight"]
       88 CALL                             R7 4 1
       89 SETTABLEKS                       R7 R6 K8 ["Size"]
       91 GETTABLEKS                       R7 R1 K12 ["LayoutOrder"]
       93 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       95 GETIMPORT                        R7 K38 [Enum.FillDirection.Horizontal]
       97 SETTABLEKS                       R7 R6 K30 ["Layout"]
       99 GETTABLEKS                       R7 R2 K31 ["Padding"]
      101 SETTABLEKS                       R7 R6 K31 ["Padding"]
      103 DUPTABLE                         R7 K41 [{"GroupCountDisplay", "Headers"}]
      104 GETUPVAL                         R8 0
      105 GETTABLEKS                       R8 R8 K7 ["createElement"]
      107 GETUPVAL                         R9 5
      108 DUPTABLE                         R10 K44 [{["GroupCount"], ["LayoutOrder"] = 1}]
      109 GETTABLEKS                       R12 R1 K5 ["Groups"]
      111 LENGTH                           R11 R12
      112 SETTABLEKS                       R11 R10 K42 ["GroupCount"]
      114 CALL                             R8 2 1
      115 SETTABLEKS                       R8 R7 K39 ["GroupCountDisplay"]
      117 GETUPVAL                         R8 0
      118 GETTABLEKS                       R8 R8 K7 ["createElement"]
      120 GETUPVAL                         R9 6
      121 DUPTABLE                         R10 K53 [{["Size"], ["AutomaticCanvasSize"], ["CanvasPosition"], ["ScrollingDirection"], ["Layout"], ["Padding"], ["LayoutOrder"] = 2, ["ScrollBarThickness"] = 0, ["ScrollingEnabled"] = False}]
      122 GETTABLEKS                       R11 R2 K54 ["ScrollingFrameSize"]
      124 SETTABLEKS                       R11 R10 K8 ["Size"]
      126 GETIMPORT                        R11 K57 [Enum.AutomaticSize.XY]
      128 SETTABLEKS                       R11 R10 K45 ["AutomaticCanvasSize"]
      130 GETIMPORT                        R11 K59 [Vector2.new]
      132 GETTABLEKS                       R12 R1 K60 ["ScrollPositionX"]
      134 LOADN                            R13 0
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K46 ["CanvasPosition"]
      138 GETIMPORT                        R11 K62 [Enum.ScrollingDirection.X]
      140 SETTABLEKS                       R11 R10 K47 ["ScrollingDirection"]
      142 GETIMPORT                        R11 K38 [Enum.FillDirection.Horizontal]
      144 SETTABLEKS                       R11 R10 K30 ["Layout"]
      146 GETTABLEKS                       R11 R2 K63 ["ScrollingFramePadding"]
      148 SETTABLEKS                       R11 R10 K31 ["Padding"]
      150 MOVE                             R11 R3
      151 CALL                             R8 3 1
      152 SETTABLEKS                       R8 R7 K40 ["Headers"]
      154 CALL                             R4 3 -1
      155 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["Pane"]
       29 GETTABLEKS                       R6 R4 K11 ["ScrollingFrame"]
       31 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       33 GETTABLEKS                       R8 R2 K13 ["Util"]
       35 GETTABLEKS                       R8 R8 K14 ["StyleModifier"]
       37 GETIMPORT                        R9 K4 [require]
       39 GETIMPORT                        R10 K1 [script]
       41 GETTABLEKS                       R10 R10 K2 ["Parent"]
       43 GETTABLEKS                       R10 R10 K2 ["Parent"]
       45 GETTABLEKS                       R10 R10 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K4 [require]
       50 GETIMPORT                        R11 K1 [script]
       52 GETTABLEKS                       R11 R11 K2 ["Parent"]
       54 GETTABLEKS                       R11 R11 K16 ["GroupCountDisplay"]
       56 CALL                             R10 1 1
       57 GETTABLEKS                       R11 R1 K17 ["Component"]
       59 LOADK                            R13 K18 ["TableHeader"]
       60 NAMECALL                         R11 R11 K19 ["extend"]
       62 CALL                             R11 2 1
       63 DUPCLOSURE                       R12 K20 [PROTO_0]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R12 R11 K21 ["render"]
       73 GETTABLEKS                       R12 R3 K22 ["withContext"]
       75 DUPTABLE                         R13 K24 [{"Stylizer"}]
       76 GETTABLEKS                       R14 R3 K23 ["Stylizer"]
       78 SETTABLEKS                       R14 R13 K23 ["Stylizer"]
       80 CALL                             R12 1 1
       81 MOVE                             R13 R11
       82 CALL                             R12 1 1
       83 MOVE                             R11 R12
       84 RETURN                           R11 1
