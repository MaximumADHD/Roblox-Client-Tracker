PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Position"]
        5 JUMPIF                           R0 ; [+7]
        6 GETIMPORT                        R0 K4 [UDim2.new]
        8 LOADN                            R1 0
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 LOADN                            R4 0
       12 CALL                             R0 4 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["props"]
       16 GETTABLEKS                       R1 R1 K5 ["Size"]
       18 JUMPIF                           R1 ; [+7]
       19 GETIMPORT                        R1 K4 [UDim2.new]
       21 LOADN                            R2 1
       22 LOADN                            R3 0
       23 LOADN                            R4 1
       24 LOADN                            R5 0
       25 CALL                             R1 4 1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["props"]
       29 GETTABLEKS                       R2 R2 K6 ["CanvasSize"]
       31 JUMPIF                           R2 ; [+7]
       32 GETIMPORT                        R2 K4 [UDim2.new]
       34 LOADN                            R3 1
       35 LOADN                            R4 0
       36 LOADN                            R5 1
       37 LOADN                            R6 0
       38 CALL                             R2 4 1
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K0 ["props"]
       42 GETTABLEKS                       R4 R4 K8 ["LayoutOrder"]
       44 ORK                              R3 R4 K7 [1]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K0 ["props"]
       48 GETTABLEKS                       R5 R5 K9 ["ZIndex"]
       50 ORK                              R4 R5 K7 [1]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K0 ["props"]
       54 GETTABLEKS                       R6 R6 K10 ["Visible"]
       56 JUMPIFEQKNIL                     R6 ; [+7]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K0 ["props"]
       61 GETTABLEKS                       R5 R5 K10 ["Visible"]
       63 JUMPIF                           R5 ; [+9]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K0 ["props"]
       67 GETTABLEKS                       R6 R6 K10 ["Visible"]
       69 JUMPIFEQKNIL                     R6 ; [+2]
       71 LOADB                            R5 0 +1
       72 LOADB                            R5 1
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K0 ["props"]
       76 GETTABLEKS                       R7 R7 K11 ["ShowBackground"]
       78 JUMPIFEQKNIL                     R7 ; [+7]
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R6 R6 K0 ["props"]
       83 GETTABLEKS                       R6 R6 K11 ["ShowBackground"]
       85 JUMPIF                           R6 ; [+9]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K0 ["props"]
       89 GETTABLEKS                       R7 R7 K11 ["ShowBackground"]
       91 JUMPIFEQKNIL                     R7 ; [+2]
       93 LOADB                            R6 0 +1
       94 LOADB                            R6 1
       95 GETUPVAL                         R7 1
       96 GETUPVAL                         R8 0
       97 CALL                             R7 1 1
       98 GETUPVAL                         R8 2
       99 GETTABLEKS                       R8 R8 K12 ["createElement"]
      101 LOADK                            R9 K13 ["Frame"]
      102 DUPTABLE                         R10 K16 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["ZIndex"], ["Visible"], ["ClipsDescendants"]}]
      103 SETTABLEKS                       R0 R10 K1 ["Position"]
      105 SETTABLEKS                       R1 R10 K5 ["Size"]
      107 SETTABLEKS                       R3 R10 K8 ["LayoutOrder"]
      109 SETTABLEKS                       R4 R10 K9 ["ZIndex"]
      111 SETTABLEKS                       R5 R10 K10 ["Visible"]
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R11 R11 K0 ["props"]
      116 GETTABLEKS                       R11 R11 K15 ["ClipsDescendants"]
      118 SETTABLEKS                       R11 R10 K15 ["ClipsDescendants"]
      120 DUPTABLE                         R11 K19 [{"ScrollBarBackground", "ScrollingFrame"}]
      121 MOVE                             R12 R6
      122 JUMPIFNOT                        R12 ; [+35]
      123 GETUPVAL                         R12 2
      124 GETTABLEKS                       R12 R12 K12 ["createElement"]
      126 LOADK                            R13 K13 ["Frame"]
      127 DUPTABLE                         R14 K24 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
      128 GETIMPORT                        R15 K26 [Vector2.new]
      130 LOADN                            R16 1
      131 LOADK                            R17 K27 [0.5]
      132 CALL                             R15 2 1
      133 SETTABLEKS                       R15 R14 K20 ["AnchorPoint"]
      135 GETIMPORT                        R15 K4 [UDim2.new]
      137 LOADN                            R16 1
      138 LOADN                            R17 0
      139 LOADK                            R18 K27 [0.5]
      140 LOADN                            R19 0
      141 CALL                             R15 4 1
      142 SETTABLEKS                       R15 R14 K1 ["Position"]
      144 GETIMPORT                        R15 K4 [UDim2.new]
      146 LOADN                            R16 0
      147 LOADN                            R17 19
      148 LOADN                            R18 2
      149 LOADN                            R19 0
      150 CALL                             R15 4 1
      151 SETTABLEKS                       R15 R14 K5 ["Size"]
      153 GETTABLEKS                       R15 R7 K28 ["ScrollBarBackgroundColor"]
      155 SETTABLEKS                       R15 R14 K23 ["BackgroundColor3"]
      157 CALL                             R12 2 1
      158 SETTABLEKS                       R12 R11 K17 ["ScrollBarBackground"]
      160 GETUPVAL                         R12 2
      161 GETTABLEKS                       R12 R12 K12 ["createElement"]
      163 LOADK                            R13 K18 ["ScrollingFrame"]
      164 NEWTABLE                         R14 32 0
      166 GETIMPORT                        R15 K4 [UDim2.new]
      168 LOADN                            R16 0
      169 LOADN                            R17 0
      170 LOADN                            R18 0
      171 LOADN                            R19 0
      172 CALL                             R15 4 1
      173 SETTABLEKS                       R15 R14 K1 ["Position"]
      175 GETIMPORT                        R15 K4 [UDim2.new]
      177 LOADN                            R16 1
      178 LOADN                            R17 -6
      179 LOADN                            R18 1
      180 LOADN                            R19 0
      181 CALL                             R15 4 1
      182 SETTABLEKS                       R15 R14 K5 ["Size"]
      184 SETTABLEKS                       R2 R14 K6 ["CanvasSize"]
      186 LOADN                            R15 0
      187 SETTABLEKS                       R15 R14 K21 ["BorderSizePixel"]
      189 LOADN                            R15 1
      190 SETTABLEKS                       R15 R14 K14 ["BackgroundTransparency"]
      192 LOADN                            R15 8
      193 SETTABLEKS                       R15 R14 K29 ["ScrollBarThickness"]
      195 GETTABLEKS                       R15 R7 K30 ["scrollBarColor"]
      197 SETTABLEKS                       R15 R14 K31 ["ScrollBarImageColor3"]
      199 LOADN                            R15 2
      200 SETTABLEKS                       R15 R14 K9 ["ZIndex"]
      202 LOADK                            R15 K32 ["rbxasset://textures/GameSettings/ScrollBarTop_Wide.png"]
      203 SETTABLEKS                       R15 R14 K33 ["TopImage"]
      205 LOADK                            R15 K34 ["rbxasset://textures/GameSettings/ScrollBarMiddle_Wide.png"]
      206 SETTABLEKS                       R15 R14 K35 ["MidImage"]
      208 LOADK                            R15 K36 ["rbxasset://textures/GameSettings/ScrollBarBottom_Wide.png"]
      209 SETTABLEKS                       R15 R14 K37 ["BottomImage"]
      211 GETUPVAL                         R16 0
      212 GETTABLEKS                       R16 R16 K0 ["props"]
      214 GETTABLEKS                       R16 R16 K38 ["DisableScrolling"]
      216 NOT                              R15 R16
      217 SETTABLEKS                       R15 R14 K39 ["ScrollingEnabled"]
      219 GETIMPORT                        R15 K43 [Enum.ElasticBehavior.Always]
      221 SETTABLEKS                       R15 R14 K41 ["ElasticBehavior"]
      223 GETIMPORT                        R15 K46 [Enum.ScrollingDirection.Y]
      225 SETTABLEKS                       R15 R14 K44 ["ScrollingDirection"]
      227 GETUPVAL                         R15 0
      228 GETTABLEKS                       R15 R15 K0 ["props"]
      230 GETTABLEKS                       R15 R15 K47 ["CanvasPosition"]
      232 SETTABLEKS                       R15 R14 K47 ["CanvasPosition"]
      234 GETUPVAL                         R15 2
      235 GETTABLEKS                       R15 R15 K48 ["Change"]
      237 GETTABLEKS                       R15 R15 K47 ["CanvasPosition"]
      239 GETUPVAL                         R16 0
      240 GETTABLEKS                       R16 R16 K0 ["props"]
      242 GETTABLEKS                       R16 R16 K49 ["onScroll"]
      244 SETTABLE                         R16 R14 R15
      245 GETUPVAL                         R15 2
      246 GETTABLEKS                       R15 R15 K50 ["Ref"]
      248 GETUPVAL                         R17 0
      249 GETTABLEKS                       R17 R17 K0 ["props"]
      251 GETUPVAL                         R18 2
      252 GETTABLEKS                       R18 R18 K50 ["Ref"]
      254 GETTABLE                         R16 R17 R18
      255 SETTABLE                         R16 R14 R15
      256 GETUPVAL                         R16 0
      257 GETTABLEKS                       R16 R16 K0 ["props"]
      259 GETUPVAL                         R17 2
      260 GETTABLEKS                       R17 R17 K51 ["Children"]
      262 GETTABLE                         R15 R16 R17
      263 CALL                             R12 3 1
      264 SETTABLEKS                       R12 R11 K18 ["ScrollingFrame"]
      266 CALL                             R8 3 -1
      267 RETURN                           R8 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K2 [{"render"}]
        9 SETTABLEKS                       R1 R4 K1 ["render"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getScrollBarBackgroundColor"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R1 K1 ["scrollBarBackgroundColor"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["getScrollBarColor"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["scrollBarColor"]
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K5 [pairs]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 GETTABLEKS                       R9 R0 K6 ["props"]
       23 GETTABLEKS                       R9 R9 K7 ["Style"]
       25 JUMPIFNOT                        R9 ; [+6]
       26 GETTABLEKS                       R9 R0 K6 ["props"]
       28 GETTABLEKS                       R9 R9 K7 ["Style"]
       30 GETTABLE                         R8 R9 R6
       31 JUMPIF                           R8 ; [+1]
       32 MOVE                             R8 R7
       33 SETTABLE                         R8 R2 R6
       34 FORGLOOP                         R3 2 ; [-14]
       36 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Internal"]
        9 GETTABLEKS                       R1 R1 K6 ["RequireRoact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K5 ["Internal"]
       20 GETTABLEKS                       R2 R2 K7 ["ThemeChangeListener"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K5 ["Internal"]
       31 GETTABLEKS                       R3 R3 K8 ["Theme"]
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
