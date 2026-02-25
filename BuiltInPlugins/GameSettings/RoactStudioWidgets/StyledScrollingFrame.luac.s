PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Position"]
        5 JUMPIF                           R0 ; [+7]
        6 GETIMPORT                        R0 K4 [UDim2.new]
        8 LOADN                            R1 0
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 LOADN                            R4 0
       12 CALL                             R0 4 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["props"]
       16 GETTABLEKS                       R1 R2 K5 ["Size"]
       18 JUMPIF                           R1 ; [+7]
       19 GETIMPORT                        R1 K4 [UDim2.new]
       21 LOADN                            R2 1
       22 LOADN                            R3 0
       23 LOADN                            R4 1
       24 LOADN                            R5 0
       25 CALL                             R1 4 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K0 ["props"]
       29 GETTABLEKS                       R2 R3 K6 ["CanvasSize"]
       31 JUMPIF                           R2 ; [+7]
       32 GETIMPORT                        R2 K4 [UDim2.new]
       34 LOADN                            R3 1
       35 LOADN                            R4 0
       36 LOADN                            R5 1
       37 LOADN                            R6 0
       38 CALL                             R2 4 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K0 ["props"]
       42 GETTABLEKS                       R4 R5 K8 ["LayoutOrder"]
       44 ORK                              R3 R4 K7 [1]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K0 ["props"]
       48 GETTABLEKS                       R5 R6 K9 ["ZIndex"]
       50 ORK                              R4 R5 K7 [1]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K0 ["props"]
       54 GETTABLEKS                       R6 R7 K10 ["Visible"]
       56 JUMPIFEQKNIL                     R6 ; [+7]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R6 R7 K0 ["props"]
       61 GETTABLEKS                       R5 R6 K10 ["Visible"]
       63 JUMPIF                           R5 ; [+9]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R7 R8 K0 ["props"]
       67 GETTABLEKS                       R6 R7 K10 ["Visible"]
       69 JUMPIFEQKNIL                     R6 ; [+2]
       71 LOADB                            R5 0 +1
       72 LOADB                            R5 1
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R8 R9 K0 ["props"]
       76 GETTABLEKS                       R7 R8 K11 ["ShowBackground"]
       78 JUMPIFEQKNIL                     R7 ; [+7]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R7 R8 K0 ["props"]
       83 GETTABLEKS                       R6 R7 K11 ["ShowBackground"]
       85 JUMPIF                           R6 ; [+9]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R8 R9 K0 ["props"]
       89 GETTABLEKS                       R7 R8 K11 ["ShowBackground"]
       91 JUMPIFEQKNIL                     R7 ; [+2]
       93 LOADB                            R6 0 +1
       94 LOADB                            R6 1
       95 GETUPVAL                         R7 1
       96 GETUPVAL                         R8 0
       97 CALL                             R7 1 1
       98 GETUPVAL                         R9 2
       99 GETTABLEKS                       R8 R9 K12 ["createElement"]
      101 LOADK                            R9 K13 ["Frame"]
      102 DUPTABLE                         R10 K16 [{"Position", "Size", "BackgroundTransparency", "LayoutOrder", "ZIndex", "Visible", "ClipsDescendants"}]
      103 SETTABLEKS                       R0 R10 K1 ["Position"]
      105 SETTABLEKS                       R1 R10 K5 ["Size"]
      107 LOADN                            R11 1
      108 SETTABLEKS                       R11 R10 K14 ["BackgroundTransparency"]
      110 SETTABLEKS                       R3 R10 K8 ["LayoutOrder"]
      112 SETTABLEKS                       R4 R10 K9 ["ZIndex"]
      114 SETTABLEKS                       R5 R10 K10 ["Visible"]
      116 GETUPVAL                         R13 0
      117 GETTABLEKS                       R12 R13 K0 ["props"]
      119 GETTABLEKS                       R11 R12 K15 ["ClipsDescendants"]
      121 SETTABLEKS                       R11 R10 K15 ["ClipsDescendants"]
      123 DUPTABLE                         R11 K19 [{"ScrollBarBackground", "ScrollingFrame"}]
      124 MOVE                             R12 R6
      125 JUMPIFNOT                        R12 ; [+38]
      126 GETUPVAL                         R13 2
      127 GETTABLEKS                       R12 R13 K12 ["createElement"]
      129 LOADK                            R13 K13 ["Frame"]
      130 DUPTABLE                         R14 K23 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3"}]
      131 GETIMPORT                        R15 K25 [Vector2.new]
      133 LOADN                            R16 1
      134 LOADK                            R17 K26 [0.5]
      135 CALL                             R15 2 1
      136 SETTABLEKS                       R15 R14 K20 ["AnchorPoint"]
      138 GETIMPORT                        R15 K4 [UDim2.new]
      140 LOADN                            R16 1
      141 LOADN                            R17 0
      142 LOADK                            R18 K26 [0.5]
      143 LOADN                            R19 0
      144 CALL                             R15 4 1
      145 SETTABLEKS                       R15 R14 K1 ["Position"]
      147 GETIMPORT                        R15 K4 [UDim2.new]
      149 LOADN                            R16 0
      150 LOADN                            R17 19
      151 LOADN                            R18 2
      152 LOADN                            R19 0
      153 CALL                             R15 4 1
      154 SETTABLEKS                       R15 R14 K5 ["Size"]
      156 LOADN                            R15 0
      157 SETTABLEKS                       R15 R14 K21 ["BorderSizePixel"]
      159 GETTABLEKS                       R15 R7 K27 ["ScrollBarBackgroundColor"]
      161 SETTABLEKS                       R15 R14 K22 ["BackgroundColor3"]
      163 CALL                             R12 2 1
      164 SETTABLEKS                       R12 R11 K17 ["ScrollBarBackground"]
      166 GETUPVAL                         R13 2
      167 GETTABLEKS                       R12 R13 K12 ["createElement"]
      169 LOADK                            R13 K18 ["ScrollingFrame"]
      170 NEWTABLE                         R14 32 0
      172 GETIMPORT                        R15 K4 [UDim2.new]
      174 LOADN                            R16 0
      175 LOADN                            R17 0
      176 LOADN                            R18 0
      177 LOADN                            R19 0
      178 CALL                             R15 4 1
      179 SETTABLEKS                       R15 R14 K1 ["Position"]
      181 GETIMPORT                        R15 K4 [UDim2.new]
      183 LOADN                            R16 1
      184 LOADN                            R17 250
      185 LOADN                            R18 1
      186 LOADN                            R19 0
      187 CALL                             R15 4 1
      188 SETTABLEKS                       R15 R14 K5 ["Size"]
      190 SETTABLEKS                       R2 R14 K6 ["CanvasSize"]
      192 LOADN                            R15 0
      193 SETTABLEKS                       R15 R14 K21 ["BorderSizePixel"]
      195 LOADN                            R15 1
      196 SETTABLEKS                       R15 R14 K14 ["BackgroundTransparency"]
      198 LOADN                            R15 8
      199 SETTABLEKS                       R15 R14 K28 ["ScrollBarThickness"]
      201 GETTABLEKS                       R15 R7 K29 ["scrollBarColor"]
      203 SETTABLEKS                       R15 R14 K30 ["ScrollBarImageColor3"]
      205 LOADN                            R15 2
      206 SETTABLEKS                       R15 R14 K9 ["ZIndex"]
      208 LOADK                            R15 K31 ["rbxasset://textures/GameSettings/ScrollBarTop_Wide.png"]
      209 SETTABLEKS                       R15 R14 K32 ["TopImage"]
      211 LOADK                            R15 K33 ["rbxasset://textures/GameSettings/ScrollBarMiddle_Wide.png"]
      212 SETTABLEKS                       R15 R14 K34 ["MidImage"]
      214 LOADK                            R15 K35 ["rbxasset://textures/GameSettings/ScrollBarBottom_Wide.png"]
      215 SETTABLEKS                       R15 R14 K36 ["BottomImage"]
      217 GETUPVAL                         R18 0
      218 GETTABLEKS                       R17 R18 K0 ["props"]
      220 GETTABLEKS                       R16 R17 K37 ["DisableScrolling"]
      222 NOT                              R15 R16
      223 SETTABLEKS                       R15 R14 K38 ["ScrollingEnabled"]
      225 GETIMPORT                        R15 K42 [Enum.ElasticBehavior.Always]
      227 SETTABLEKS                       R15 R14 K40 ["ElasticBehavior"]
      229 GETIMPORT                        R15 K45 [Enum.ScrollingDirection.Y]
      231 SETTABLEKS                       R15 R14 K43 ["ScrollingDirection"]
      233 GETUPVAL                         R17 0
      234 GETTABLEKS                       R16 R17 K0 ["props"]
      236 GETTABLEKS                       R15 R16 K46 ["CanvasPosition"]
      238 SETTABLEKS                       R15 R14 K46 ["CanvasPosition"]
      240 GETUPVAL                         R17 2
      241 GETTABLEKS                       R16 R17 K47 ["Change"]
      243 GETTABLEKS                       R15 R16 K46 ["CanvasPosition"]
      245 GETUPVAL                         R18 0
      246 GETTABLEKS                       R17 R18 K0 ["props"]
      248 GETTABLEKS                       R16 R17 K48 ["onScroll"]
      250 SETTABLE                         R16 R14 R15
      251 GETUPVAL                         R16 2
      252 GETTABLEKS                       R15 R16 K49 ["Ref"]
      254 GETUPVAL                         R18 0
      255 GETTABLEKS                       R17 R18 K0 ["props"]
      257 GETUPVAL                         R19 2
      258 GETTABLEKS                       R18 R19 K49 ["Ref"]
      260 GETTABLE                         R16 R17 R18
      261 SETTABLE                         R16 R14 R15
      262 GETUPVAL                         R17 0
      263 GETTABLEKS                       R16 R17 K0 ["props"]
      265 GETUPVAL                         R18 2
      266 GETTABLEKS                       R17 R18 K50 ["Children"]
      268 GETTABLE                         R15 R16 R17
      269 CALL                             R12 3 1
      270 SETTABLEKS                       R12 R11 K18 ["ScrollingFrame"]
      272 CALL                             R8 3 -1
      273 RETURN                           R8 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K2 [{"render"}]
        9 SETTABLEKS                       R1 R4 K1 ["render"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["getScrollBarBackgroundColor"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R1 K1 ["scrollBarBackgroundColor"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["getScrollBarColor"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["scrollBarColor"]
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K5 [pairs]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 GETTABLEKS                       R10 R0 K6 ["props"]
       23 GETTABLEKS                       R9 R10 K7 ["Style"]
       25 JUMPIFNOT                        R9 ; [+6]
       26 GETTABLEKS                       R10 R0 K6 ["props"]
       28 GETTABLEKS                       R9 R10 K7 ["Style"]
       30 GETTABLE                         R8 R9 R6
       31 JUMPIF                           R8 ; [+1]
       32 MOVE                             R8 R7
       33 SETTABLE                         R8 R2 R6
       34 FORGLOOP                         R3 2 ; [-14]
       36 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K5 ["Internal"]
        9 GETTABLEKS                       R1 R2 K6 ["RequireRoact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R5 K3 [script]
       16 GETTABLEKS                       R4 R5 K4 ["Parent"]
       18 GETTABLEKS                       R3 R4 K5 ["Internal"]
       20 GETTABLEKS                       R2 R3 K7 ["ThemeChangeListener"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R6 K3 [script]
       27 GETTABLEKS                       R5 R6 K4 ["Parent"]
       29 GETTABLEKS                       R4 R5 K5 ["Internal"]
       31 GETTABLEKS                       R3 R4 K8 ["Theme"]
       33 CALL                             R2 1 1
       34 LOADNIL                          R3
       35 GETTABLEKS                       R4 R0 K9 ["PureComponent"]
       37 LOADK                            R6 K10 ["StyledScrollingFrame"]
       38 NAMECALL                         R4 R4 K11 ["extend"]
       40 CALL                             R4 2 1
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          REF R3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R5 R4 K12 ["render"]
       47 DUPCLOSURE                       R3 K13 [PROTO_2]
       48 CAPTURE                          VAL R2
       49 CLOSEUPVALS                      R3
       50 RETURN                           R4 1
