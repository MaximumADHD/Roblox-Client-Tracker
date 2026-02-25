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
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R13 R14 K15 ["Children"]
       62 GETTABLE                         R12 R1 R13
       63 GETTABLEKS                       R13 R1 K16 ["scrollingEnabled"]
       65 GETTABLEKS                       R14 R2 K17 ["scrollingFrame"]
       67 GETTABLEKS                       R15 R1 K18 ["BackgroundColor"]
       69 JUMPIF                           R15 ; [+2]
       70 GETTABLEKS                       R15 R14 K19 ["scrollbarBackgroundColor"]
       72 GETUPVAL                         R17 0
       73 GETTABLEKS                       R16 R17 K20 ["createElement"]
       75 LOADK                            R17 K21 ["ImageButton"]
       76 DUPTABLE                         R18 K24 [{"Position", "Size", "BackgroundTransparency", "LayoutOrder", "ZIndex", "Visible", "AutoButtonColor"}]
       77 SETTABLEKS                       R4 R18 K3 ["Position"]
       79 SETTABLEKS                       R5 R18 K7 ["Size"]
       81 LOADN                            R19 1
       82 SETTABLEKS                       R19 R18 K22 ["BackgroundTransparency"]
       84 SETTABLEKS                       R7 R18 K10 ["LayoutOrder"]
       86 SETTABLEKS                       R8 R18 K11 ["ZIndex"]
       88 SETTABLEKS                       R9 R18 K12 ["Visible"]
       90 LOADB                            R19 0
       91 SETTABLEKS                       R19 R18 K23 ["AutoButtonColor"]
       93 DUPTABLE                         R19 K27 [{"ScrollBarBackground", "ScrollingFrame"}]
       94 GETUPVAL                         R21 0
       95 GETTABLEKS                       R20 R21 K20 ["createElement"]
       97 LOADK                            R21 K28 ["Frame"]
       98 DUPTABLE                         R22 K32 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3"}]
       99 GETIMPORT                        R23 K34 [Vector2.new]
      101 LOADN                            R24 1
      102 LOADN                            R25 0
      103 CALL                             R23 2 1
      104 SETTABLEKS                       R23 R22 K29 ["AnchorPoint"]
      106 GETIMPORT                        R23 K6 [UDim2.new]
      108 LOADN                            R24 1
      109 LOADN                            R25 0
      110 LOADN                            R26 0
      111 LOADN                            R27 0
      112 CALL                             R23 4 1
      113 SETTABLEKS                       R23 R22 K3 ["Position"]
      115 GETIMPORT                        R23 K6 [UDim2.new]
      117 LOADN                            R24 0
      118 GETUPVAL                         R26 1
      119 GETTABLEKS                       R25 R26 K35 ["SCROLLBAR_BACKGROUND_THICKNESS"]
      121 LOADN                            R26 1
      122 LOADN                            R27 0
      123 CALL                             R23 4 1
      124 SETTABLEKS                       R23 R22 K7 ["Size"]
      126 LOADN                            R23 0
      127 SETTABLEKS                       R23 R22 K30 ["BorderSizePixel"]
      129 SETTABLEKS                       R15 R22 K31 ["BackgroundColor3"]
      131 CALL                             R20 2 1
      132 SETTABLEKS                       R20 R19 K25 ["ScrollBarBackground"]
      134 GETUPVAL                         R21 0
      135 GETTABLEKS                       R20 R21 K20 ["createElement"]
      137 LOADK                            R21 K26 ["ScrollingFrame"]
      138 NEWTABLE                         R22 32 0
      140 GETIMPORT                        R23 K6 [UDim2.new]
      142 LOADN                            R24 0
      143 LOADN                            R25 0
      144 LOADN                            R26 0
      145 LOADN                            R27 0
      146 CALL                             R23 4 1
      147 SETTABLEKS                       R23 R22 K3 ["Position"]
      149 GETIMPORT                        R23 K6 [UDim2.new]
      151 LOADN                            R24 1
      152 GETUPVAL                         R27 1
      153 GETTABLEKS                       R26 R27 K36 ["SCROLLBAR_PADDING"]
      155 MINUS                            R25 R26
      156 LOADN                            R26 1
      157 LOADN                            R27 0
      158 CALL                             R23 4 1
      159 SETTABLEKS                       R23 R22 K7 ["Size"]
      161 SETTABLEKS                       R6 R22 K8 ["CanvasSize"]
      163 LOADN                            R23 0
      164 SETTABLEKS                       R23 R22 K30 ["BorderSizePixel"]
      166 LOADN                            R23 1
      167 SETTABLEKS                       R23 R22 K22 ["BackgroundTransparency"]
      169 GETUPVAL                         R24 1
      170 GETTABLEKS                       R23 R24 K37 ["SCROLLBAR_THICKNESS"]
      172 SETTABLEKS                       R23 R22 K38 ["ScrollBarThickness"]
      174 LOADN                            R23 2
      175 SETTABLEKS                       R23 R22 K11 ["ZIndex"]
      177 GETUPVAL                         R24 2
      178 GETTABLEKS                       R23 R24 K39 ["SCROLLBAR_TOP_IMAGE"]
      180 SETTABLEKS                       R23 R22 K40 ["TopImage"]
      182 GETUPVAL                         R24 2
      183 GETTABLEKS                       R23 R24 K41 ["SCROLLBAR_MIDDLE_IMAGE"]
      185 SETTABLEKS                       R23 R22 K42 ["MidImage"]
      187 GETUPVAL                         R24 2
      188 GETTABLEKS                       R23 R24 K43 ["SCROLLBAR_BOTTOM_IMAGE"]
      190 SETTABLEKS                       R23 R22 K44 ["BottomImage"]
      192 GETTABLEKS                       R23 R14 K45 ["scrollbarImageColor"]
      194 SETTABLEKS                       R23 R22 K46 ["ScrollBarImageColor3"]
      196 SETTABLEKS                       R13 R22 K47 ["ScrollingEnabled"]
      198 GETIMPORT                        R23 K51 [Enum.ElasticBehavior.Always]
      200 SETTABLEKS                       R23 R22 K49 ["ElasticBehavior"]
      202 GETIMPORT                        R23 K54 [Enum.ScrollingDirection.Y]
      204 SETTABLEKS                       R23 R22 K52 ["ScrollingDirection"]
      206 GETUPVAL                         R25 0
      207 GETTABLEKS                       R24 R25 K55 ["Change"]
      209 GETTABLEKS                       R23 R24 K56 ["AbsoluteSize"]
      211 GETTABLEKS                       R24 R1 K57 ["OnAbsoluteSizeChanged"]
      213 SETTABLE                         R24 R22 R23
      214 GETUPVAL                         R25 0
      215 GETTABLEKS                       R24 R25 K55 ["Change"]
      217 GETTABLEKS                       R23 R24 K58 ["CanvasPosition"]
      219 SETTABLE                         R10 R22 R23
      220 GETUPVAL                         R24 0
      221 GETTABLEKS                       R23 R24 K59 ["Ref"]
      223 SETTABLE                         R11 R22 R23
      224 SETTABLEKS                       R3 R22 K2 ["AutomaticCanvasSize"]
      226 MOVE                             R23 R12
      227 CALL                             R20 3 1
      228 SETTABLEKS                       R20 R19 K26 ["ScrollingFrame"]
      230 CALL                             R16 3 -1
      231 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Src"]
       25 GETTABLEKS                       R6 R7 K9 ["Util"]
       27 GETTABLEKS                       R5 R6 K10 ["Constants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R8 R0 K8 ["Src"]
       34 GETTABLEKS                       R7 R8 K9 ["Util"]
       36 GETTABLEKS                       R6 R7 K11 ["Images"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K12 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K13 ["withContext"]
       43 GETTABLEKS                       R9 R3 K14 ["Wrappers"]
       45 GETTABLEKS                       R8 R9 K15 ["withForwardRef"]
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
