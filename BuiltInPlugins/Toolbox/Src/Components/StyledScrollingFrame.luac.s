PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["AutomaticCanvasSize"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 JUMPIF                           R4 ; [+7]
        9 GETIMPORT                        R4 K6 [UDim2.new]
       11 LOADN                            R5 0
       12 LOADN                            R6 0
       13 LOADN                            R7 0
       14 LOADN                            R8 0
       15 CALL                             R4 4 1
       16 GETTABLEKS                       R5 R1 K7 ["Size"]
       18 JUMPIF                           R5 ; [+7]
       19 GETIMPORT                        R5 K6 [UDim2.new]
       21 LOADN                            R6 1
       22 LOADN                            R7 0
       23 LOADN                            R8 1
       24 LOADN                            R9 0
       25 CALL                             R5 4 1
       26 GETTABLEKS                       R6 R1 K8 ["CanvasSize"]
       28 JUMPIF                           R6 ; [+7]
       29 GETIMPORT                        R6 K6 [UDim2.new]
       31 LOADN                            R7 1
       32 LOADN                            R8 0
       33 LOADN                            R9 1
       34 LOADN                            R10 0
       35 CALL                             R6 4 1
       36 GETTABLEKS                       R8 R1 K10 ["LayoutOrder"]
       38 ORK                              R7 R8 K9 [1]
       39 GETTABLEKS                       R9 R1 K11 ["ZIndex"]
       41 ORK                              R8 R9 K9 [1]
       42 GETTABLEKS                       R10 R1 K12 ["Visible"]
       44 JUMPIFEQKNIL                     R10 ; [+4]
       46 GETTABLEKS                       R9 R1 K12 ["Visible"]
       48 JUMPIF                           R9 ; [+6]
       49 GETTABLEKS                       R10 R1 K12 ["Visible"]
       51 JUMPIFEQKNIL                     R10 ; [+2]
       53 LOADB                            R9 0 +1
       54 LOADB                            R9 1
       55 GETTABLEKS                       R10 R1 K13 ["onScroll"]
       57 GETTABLEKS                       R11 R1 K14 ["ForwardRef"]
       59 GETUPVAL                         R13 0
       60 GETTABLEKS                       R13 R13 K15 ["Children"]
       62 GETTABLE                         R12 R1 R13
       63 GETTABLEKS                       R13 R1 K16 ["scrollingEnabled"]
       65 GETTABLEKS                       R14 R2 K17 ["scrollingFrame"]
       67 GETTABLEKS                       R15 R1 K18 ["BackgroundColor"]
       69 JUMPIF                           R15 ; [+2]
       70 GETTABLEKS                       R15 R14 K19 ["scrollbarBackgroundColor"]
       72 GETUPVAL                         R16 0
       73 GETTABLEKS                       R16 R16 K20 ["createElement"]
       75 LOADK                            R17 K21 ["ImageButton"]
       76 DUPTABLE                         R18 K25 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["ZIndex"], ["Visible"], ["AutoButtonColor"] = False}]
       77 SETTABLEKS                       R4 R18 K3 ["Position"]
       79 SETTABLEKS                       R5 R18 K7 ["Size"]
       81 SETTABLEKS                       R7 R18 K10 ["LayoutOrder"]
       83 SETTABLEKS                       R8 R18 K11 ["ZIndex"]
       85 SETTABLEKS                       R9 R18 K12 ["Visible"]
       87 DUPTABLE                         R19 K28 [{"ScrollBarBackground", "ScrollingFrame"}]
       88 GETUPVAL                         R20 0
       89 GETTABLEKS                       R20 R20 K20 ["createElement"]
       91 LOADK                            R21 K29 ["Frame"]
       92 DUPTABLE                         R22 K34 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
       93 GETIMPORT                        R23 K36 [Vector2.new]
       95 LOADN                            R24 1
       96 LOADN                            R25 0
       97 CALL                             R23 2 1
       98 SETTABLEKS                       R23 R22 K30 ["AnchorPoint"]
      100 GETIMPORT                        R23 K6 [UDim2.new]
      102 LOADN                            R24 1
      103 LOADN                            R25 0
      104 LOADN                            R26 0
      105 LOADN                            R27 0
      106 CALL                             R23 4 1
      107 SETTABLEKS                       R23 R22 K3 ["Position"]
      109 GETIMPORT                        R23 K6 [UDim2.new]
      111 LOADN                            R24 0
      112 GETUPVAL                         R25 1
      113 GETTABLEKS                       R25 R25 K37 ["SCROLLBAR_BACKGROUND_THICKNESS"]
      115 LOADN                            R26 1
      116 LOADN                            R27 0
      117 CALL                             R23 4 1
      118 SETTABLEKS                       R23 R22 K7 ["Size"]
      120 SETTABLEKS                       R15 R22 K33 ["BackgroundColor3"]
      122 CALL                             R20 2 1
      123 SETTABLEKS                       R20 R19 K26 ["ScrollBarBackground"]
      125 GETUPVAL                         R20 0
      126 GETTABLEKS                       R20 R20 K20 ["createElement"]
      128 LOADK                            R21 K27 ["ScrollingFrame"]
      129 NEWTABLE                         R22 32 0
      131 GETIMPORT                        R23 K6 [UDim2.new]
      133 LOADN                            R24 0
      134 LOADN                            R25 0
      135 LOADN                            R26 0
      136 LOADN                            R27 0
      137 CALL                             R23 4 1
      138 SETTABLEKS                       R23 R22 K3 ["Position"]
      140 GETIMPORT                        R23 K6 [UDim2.new]
      142 LOADN                            R24 1
      143 GETUPVAL                         R26 1
      144 GETTABLEKS                       R26 R26 K38 ["SCROLLBAR_PADDING"]
      146 MINUS                            R25 R26
      147 LOADN                            R26 1
      148 LOADN                            R27 0
      149 CALL                             R23 4 1
      150 SETTABLEKS                       R23 R22 K7 ["Size"]
      152 SETTABLEKS                       R6 R22 K8 ["CanvasSize"]
      154 LOADN                            R23 0
      155 SETTABLEKS                       R23 R22 K31 ["BorderSizePixel"]
      157 LOADN                            R23 1
      158 SETTABLEKS                       R23 R22 K22 ["BackgroundTransparency"]
      160 GETUPVAL                         R23 1
      161 GETTABLEKS                       R23 R23 K39 ["SCROLLBAR_THICKNESS"]
      163 SETTABLEKS                       R23 R22 K40 ["ScrollBarThickness"]
      165 LOADN                            R23 2
      166 SETTABLEKS                       R23 R22 K11 ["ZIndex"]
      168 GETUPVAL                         R23 2
      169 GETTABLEKS                       R23 R23 K41 ["SCROLLBAR_TOP_IMAGE"]
      171 SETTABLEKS                       R23 R22 K42 ["TopImage"]
      173 GETUPVAL                         R23 2
      174 GETTABLEKS                       R23 R23 K43 ["SCROLLBAR_MIDDLE_IMAGE"]
      176 SETTABLEKS                       R23 R22 K44 ["MidImage"]
      178 GETUPVAL                         R23 2
      179 GETTABLEKS                       R23 R23 K45 ["SCROLLBAR_BOTTOM_IMAGE"]
      181 SETTABLEKS                       R23 R22 K46 ["BottomImage"]
      183 GETTABLEKS                       R23 R14 K47 ["scrollbarImageColor"]
      185 SETTABLEKS                       R23 R22 K48 ["ScrollBarImageColor3"]
      187 SETTABLEKS                       R13 R22 K49 ["ScrollingEnabled"]
      189 GETIMPORT                        R23 K53 [Enum.ElasticBehavior.Always]
      191 SETTABLEKS                       R23 R22 K51 ["ElasticBehavior"]
      193 GETIMPORT                        R23 K56 [Enum.ScrollingDirection.Y]
      195 SETTABLEKS                       R23 R22 K54 ["ScrollingDirection"]
      197 GETUPVAL                         R23 0
      198 GETTABLEKS                       R23 R23 K57 ["Change"]
      200 GETTABLEKS                       R23 R23 K58 ["AbsoluteSize"]
      202 GETTABLEKS                       R24 R1 K59 ["OnAbsoluteSizeChanged"]
      204 SETTABLE                         R24 R22 R23
      205 GETUPVAL                         R23 0
      206 GETTABLEKS                       R23 R23 K57 ["Change"]
      208 GETTABLEKS                       R23 R23 K60 ["CanvasPosition"]
      210 SETTABLE                         R10 R22 R23
      211 GETUPVAL                         R23 0
      212 GETTABLEKS                       R23 R23 K61 ["Ref"]
      214 SETTABLE                         R11 R22 R23
      215 SETTABLEKS                       R3 R22 K2 ["AutomaticCanvasSize"]
      217 MOVE                             R23 R12
      218 CALL                             R20 3 1
      219 SETTABLEKS                       R20 R19 K27 ["ScrollingFrame"]
      221 CALL                             R16 3 -1
      222 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["Constants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R6 K9 ["Util"]
       36 GETTABLEKS                       R6 R6 K11 ["Images"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K12 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K13 ["withContext"]
       43 GETTABLEKS                       R8 R3 K14 ["Wrappers"]
       45 GETTABLEKS                       R8 R8 K15 ["withForwardRef"]
       47 GETTABLEKS                       R9 R2 K16 ["PureComponent"]
       49 LOADK                            R11 K17 ["StyledScrollingFrame"]
       50 NAMECALL                         R9 R9 K18 ["extend"]
       52 CALL                             R9 2 1
       53 DUPCLOSURE                       R10 K19 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R10 R9 K20 ["render"]
       59 MOVE                             R10 R7
       60 DUPTABLE                         R11 K22 [{"Stylizer"}]
       61 GETTABLEKS                       R12 R6 K21 ["Stylizer"]
       63 SETTABLEKS                       R12 R11 K21 ["Stylizer"]
       65 CALL                             R10 1 1
       66 MOVE                             R11 R9
       67 CALL                             R10 1 1
       68 MOVE                             R9 R10
       69 MOVE                             R10 R8
       70 MOVE                             R11 R9
       71 CALL                             R10 1 1
       72 MOVE                             R9 R10
       73 RETURN                           R9 1
