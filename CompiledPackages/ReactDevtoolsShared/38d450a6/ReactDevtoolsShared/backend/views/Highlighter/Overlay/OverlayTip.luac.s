PROTO_0:
        0 GETTABLEKS                       R4 R2 K0 ["Y"]
        2 FASTCALL2K                       MATH_MAX R4 K1 ; [+4]
        4 LOADK                            R5 K1 [20]
        5 GETIMPORT                        R3 K4 [math.max]
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R5 R2 K5 ["X"]
       10 FASTCALL2K                       MATH_MAX R5 K6 ; [+4]
       12 LOADK                            R6 K6 [60]
       13 GETIMPORT                        R4 K4 [math.max]
       15 CALL                             R4 2 1
       16 LOADNIL                          R5
       17 GETTABLEKS                       R8 R0 K7 ["top"]
       19 GETTABLEKS                       R9 R0 K8 ["height"]
       21 ADD                              R7 R8 R9
       22 ADD                              R6 R7 R3
       23 GETTABLEKS                       R8 R1 K7 ["top"]
       25 GETTABLEKS                       R9 R1 K8 ["height"]
       27 ADD                              R7 R8 R9
       28 JUMPIFNOTLE                      R6 R7 ; [+22]
       30 GETTABLEKS                       R7 R0 K7 ["top"]
       32 GETTABLEKS                       R8 R0 K8 ["height"]
       34 ADD                              R6 R7 R8
       35 GETTABLEKS                       R8 R1 K7 ["top"]
       37 ADDK                             R7 R8 K9 [0]
       38 JUMPIFNOTLT                      R6 R7 ; [+5]
       40 GETTABLEKS                       R6 R1 K7 ["top"]
       42 ADDK                             R5 R6 K10 [5]
       43 JUMP                             ; [+42]
       44 GETTABLEKS                       R7 R0 K7 ["top"]
       46 GETTABLEKS                       R8 R0 K8 ["height"]
       48 ADD                              R6 R7 R8
       49 ADDK                             R5 R6 K10 [5]
       50 JUMP                             ; [+35]
       51 GETTABLEKS                       R7 R0 K7 ["top"]
       53 SUB                              R6 R7 R3
       54 GETTABLEKS                       R8 R1 K7 ["top"]
       56 GETTABLEKS                       R9 R1 K8 ["height"]
       58 ADD                              R7 R8 R9
       59 JUMPIFNOTLE                      R6 R7 ; [+19]
       61 GETTABLEKS                       R8 R0 K7 ["top"]
       63 SUB                              R7 R8 R3
       64 SUBK                             R6 R7 K10 [5]
       65 GETTABLEKS                       R8 R1 K7 ["top"]
       67 ADDK                             R7 R8 K10 [5]
       68 JUMPIFNOTLT                      R6 R7 ; [+5]
       70 GETTABLEKS                       R6 R1 K7 ["top"]
       72 ADDK                             R5 R6 K10 [5]
       73 JUMP                             ; [+12]
       74 GETTABLEKS                       R7 R0 K7 ["top"]
       76 SUB                              R6 R7 R3
       77 SUBK                             R5 R6 K10 [5]
       78 JUMP                             ; [+7]
       79 GETTABLEKS                       R8 R1 K7 ["top"]
       81 GETTABLEKS                       R9 R1 K8 ["height"]
       83 ADD                              R7 R8 R9
       84 SUB                              R6 R7 R3
       85 SUBK                             R5 R6 K10 [5]
       86 GETTABLEKS                       R7 R0 K11 ["left"]
       88 ADDK                             R6 R7 K10 [5]
       89 GETTABLEKS                       R7 R0 K11 ["left"]
       91 GETTABLEKS                       R8 R1 K11 ["left"]
       93 JUMPIFNOTLT                      R7 R8 ; [+4]
       95 GETTABLEKS                       R7 R1 K11 ["left"]
       97 ADDK                             R6 R7 K10 [5]
       98 GETTABLEKS                       R8 R0 K11 ["left"]
      100 ADD                              R7 R8 R4
      101 GETTABLEKS                       R9 R1 K11 ["left"]
      103 GETTABLEKS                       R10 R1 K12 ["width"]
      105 ADD                              R8 R9 R10
      106 JUMPIFNOTLT                      R8 R7 ; [+8]
      108 GETTABLEKS                       R9 R1 K11 ["left"]
      110 GETTABLEKS                       R10 R1 K12 ["width"]
      112 ADD                              R8 R9 R10
      113 SUB                              R7 R8 R4
      114 SUBK                             R6 R7 K10 [5]
      115 GETIMPORT                        R7 K15 [Vector2.new]
      117 MOVE                             R8 R6
      118 MOVE                             R9 R5
      119 CALL                             R7 2 -1
      120 RETURN                           R7 -1

PROTO_1:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K4 [Instance.new]
       10 LOADK                            R3 K5 ["Frame"]
       11 CALL                             R2 1 1
       12 LOADK                            R3 K6 ["OverlayTip"]
       13 SETTABLEKS                       R3 R2 K7 ["Name"]
       15 GETIMPORT                        R3 K10 [Color3.fromHex]
       17 LOADK                            R4 K11 ["#333740"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K12 ["BackgroundColor3"]
       21 GETIMPORT                        R3 K16 [Enum.AutomaticSize.XY]
       23 SETTABLEKS                       R3 R2 K14 ["AutomaticSize"]
       25 GETIMPORT                        R3 K19 [UDim2.fromScale]
       27 LOADN                            R4 0
       28 LOADN                            R5 0
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K20 ["Size"]
       32 LOADN                            R3 0
       33 SETTABLEKS                       R3 R2 K21 ["BorderSizePixel"]
       35 LOADK                            R3 K22 [1000001]
       36 SETTABLEKS                       R3 R2 K23 ["ZIndex"]
       38 SETTABLEKS                       R2 R1 K24 ["background"]
       40 GETIMPORT                        R3 K4 [Instance.new]
       42 LOADK                            R4 K25 ["UIListLayout"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K28 [Enum.SortOrder.LayoutOrder]
       46 SETTABLEKS                       R4 R3 K26 ["SortOrder"]
       48 GETIMPORT                        R4 K31 [Enum.FillDirection.Horizontal]
       50 SETTABLEKS                       R4 R3 K29 ["FillDirection"]
       52 GETIMPORT                        R4 K34 [Enum.UIFlexAlignment.Fill]
       54 SETTABLEKS                       R4 R3 K35 ["VerticalFlex"]
       56 GETIMPORT                        R4 K37 [UDim.new]
       58 LOADN                            R5 0
       59 LOADN                            R6 6
       60 CALL                             R4 2 1
       61 SETTABLEKS                       R4 R3 K38 ["Padding"]
       63 SETTABLEKS                       R2 R3 K39 ["Parent"]
       65 GETIMPORT                        R4 K4 [Instance.new]
       67 LOADK                            R5 K40 ["UIPadding"]
       68 CALL                             R4 1 1
       69 GETIMPORT                        R5 K37 [UDim.new]
       71 LOADN                            R6 0
       72 LOADN                            R7 4
       73 CALL                             R5 2 1
       74 SETTABLEKS                       R5 R4 K41 ["PaddingTop"]
       76 GETIMPORT                        R5 K37 [UDim.new]
       78 LOADN                            R6 0
       79 LOADN                            R7 4
       80 CALL                             R5 2 1
       81 SETTABLEKS                       R5 R4 K42 ["PaddingBottom"]
       83 GETIMPORT                        R5 K37 [UDim.new]
       85 LOADN                            R6 0
       86 LOADN                            R7 6
       87 CALL                             R5 2 1
       88 SETTABLEKS                       R5 R4 K43 ["PaddingLeft"]
       90 GETIMPORT                        R5 K37 [UDim.new]
       92 LOADN                            R6 0
       93 LOADN                            R7 6
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K44 ["PaddingRight"]
       97 SETTABLEKS                       R2 R4 K39 ["Parent"]
       99 GETIMPORT                        R5 K4 [Instance.new]
      101 LOADK                            R6 K45 ["UICorner"]
      102 CALL                             R5 1 1
      103 GETIMPORT                        R6 K37 [UDim.new]
      105 LOADN                            R7 0
      106 LOADN                            R8 2
      107 CALL                             R6 2 1
      108 SETTABLEKS                       R6 R5 K46 ["CornerRadius"]
      110 SETTABLEKS                       R2 R5 K39 ["Parent"]
      112 GETIMPORT                        R6 K4 [Instance.new]
      114 LOADK                            R7 K47 ["TextLabel"]
      115 CALL                             R6 1 1
      116 LOADK                            R7 K7 ["Name"]
      117 SETTABLEKS                       R7 R6 K7 ["Name"]
      119 GETIMPORT                        R7 K19 [UDim2.fromScale]
      121 LOADN                            R8 0
      122 LOADN                            R9 0
      123 CALL                             R7 2 1
      124 SETTABLEKS                       R7 R6 K20 ["Size"]
      126 GETIMPORT                        R7 K16 [Enum.AutomaticSize.XY]
      128 SETTABLEKS                       R7 R6 K14 ["AutomaticSize"]
      130 LOADN                            R7 1
      131 SETTABLEKS                       R7 R6 K48 ["BackgroundTransparency"]
      133 LOADN                            R7 1
      134 SETTABLEKS                       R7 R6 K27 ["LayoutOrder"]
      136 GETIMPORT                        R7 K51 [Enum.Font.BuilderSansBold]
      138 SETTABLEKS                       R7 R6 K49 ["Font"]
      140 GETIMPORT                        R7 K10 [Color3.fromHex]
      142 LOADK                            R8 K52 ["#ee78e6"]
      143 CALL                             R7 1 1
      144 SETTABLEKS                       R7 R6 K53 ["TextColor3"]
      146 LOADN                            R7 16
      147 SETTABLEKS                       R7 R6 K54 ["TextSize"]
      149 LOADK                            R7 K55 [1000002]
      150 SETTABLEKS                       R7 R6 K23 ["ZIndex"]
      152 SETTABLEKS                       R2 R6 K39 ["Parent"]
      154 SETTABLEKS                       R6 R1 K56 ["nameLabel"]
      156 GETIMPORT                        R7 K4 [Instance.new]
      158 LOADK                            R8 K5 ["Frame"]
      159 CALL                             R7 1 1
      160 LOADK                            R8 K57 ["Divider"]
      161 SETTABLEKS                       R8 R7 K7 ["Name"]
      163 GETIMPORT                        R8 K59 [UDim2.fromOffset]
      165 LOADN                            R9 1
      166 LOADN                            R10 0
      167 CALL                             R8 2 1
      168 SETTABLEKS                       R8 R7 K20 ["Size"]
      170 GETIMPORT                        R8 K10 [Color3.fromHex]
      172 LOADK                            R9 K60 ["#aaaaaa"]
      173 CALL                             R8 1 1
      174 SETTABLEKS                       R8 R7 K12 ["BackgroundColor3"]
      176 LOADN                            R8 0
      177 SETTABLEKS                       R8 R7 K21 ["BorderSizePixel"]
      179 LOADN                            R8 2
      180 SETTABLEKS                       R8 R7 K27 ["LayoutOrder"]
      182 LOADK                            R8 K55 [1000002]
      183 SETTABLEKS                       R8 R7 K23 ["ZIndex"]
      185 SETTABLEKS                       R2 R7 K39 ["Parent"]
      187 GETIMPORT                        R8 K4 [Instance.new]
      189 LOADK                            R9 K47 ["TextLabel"]
      190 CALL                             R8 1 1
      191 LOADK                            R9 K61 ["Dimensions"]
      192 SETTABLEKS                       R9 R8 K7 ["Name"]
      194 GETIMPORT                        R9 K19 [UDim2.fromScale]
      196 LOADN                            R10 0
      197 LOADN                            R11 0
      198 CALL                             R9 2 1
      199 SETTABLEKS                       R9 R8 K20 ["Size"]
      201 GETIMPORT                        R9 K16 [Enum.AutomaticSize.XY]
      203 SETTABLEKS                       R9 R8 K14 ["AutomaticSize"]
      205 LOADN                            R9 1
      206 SETTABLEKS                       R9 R8 K48 ["BackgroundTransparency"]
      208 LOADN                            R9 3
      209 SETTABLEKS                       R9 R8 K27 ["LayoutOrder"]
      211 GETIMPORT                        R9 K51 [Enum.Font.BuilderSansBold]
      213 SETTABLEKS                       R9 R8 K49 ["Font"]
      215 GETIMPORT                        R9 K10 [Color3.fromHex]
      217 LOADK                            R10 K62 ["#d7d7d7"]
      218 CALL                             R9 1 1
      219 SETTABLEKS                       R9 R8 K53 ["TextColor3"]
      221 LOADN                            R9 16
      222 SETTABLEKS                       R9 R8 K54 ["TextSize"]
      224 LOADK                            R9 K55 [1000002]
      225 SETTABLEKS                       R9 R8 K23 ["ZIndex"]
      227 SETTABLEKS                       R2 R8 K39 ["Parent"]
      229 SETTABLEKS                       R8 R1 K63 ["dimensionsLabel"]
      231 SETTABLEKS                       R0 R2 K39 ["Parent"]
      233 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["background"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["nameLabel"]
        2 SETTABLEKS                       R1 R4 K1 ["Text"]
        4 GETTABLEKS                       R4 R0 K2 ["dimensionsLabel"]
        6 LOADK                            R6 K3 ["%*px x %*px"]
        7 FASTCALL1                        MATH_ROUND R2 ; [+3]
        8 MOVE                             R9 R2
        9 GETIMPORT                        R8 K6 [math.round]
       11 CALL                             R8 1 1
       12 FASTCALL1                        MATH_ROUND R3 ; [+3]
       13 MOVE                             R10 R3
       14 GETIMPORT                        R9 K6 [math.round]
       16 CALL                             R9 1 1
       17 NAMECALL                         R6 R6 K7 ["format"]
       19 CALL                             R6 3 1
       20 MOVE                             R5 R6
       21 SETTABLEKS                       R5 R4 K1 ["Text"]
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 GETTABLEKS                       R6 R0 K0 ["background"]
        5 GETTABLEKS                       R6 R6 K1 ["AbsoluteSize"]
        7 CALL                             R3 3 1
        8 GETTABLEKS                       R4 R0 K0 ["background"]
       10 GETIMPORT                        R5 K4 [UDim2.fromOffset]
       12 GETTABLEKS                       R6 R3 K5 ["X"]
       14 GETTABLEKS                       R7 R3 K6 ["Y"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K7 ["Position"]
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 NEWTABLE                         R1 8 0
        4 SETTABLEKS                       R1 R1 K1 ["__index"]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R2 R1 K3 ["new"]
       10 DUPCLOSURE                       R2 K4 [PROTO_2]
       11 SETTABLEKS                       R2 R1 K5 ["remove"]
       13 DUPCLOSURE                       R2 K6 [PROTO_3]
       14 SETTABLEKS                       R2 R1 K7 ["updateText"]
       16 DUPCLOSURE                       R2 K8 [PROTO_4]
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R1 K9 ["updatePosition"]
       20 DUPTABLE                         R2 K10 [{"new"}]
       21 GETTABLEKS                       R3 R1 K3 ["new"]
       23 SETTABLEKS                       R3 R2 K3 ["new"]
       25 RETURN                           R2 1
