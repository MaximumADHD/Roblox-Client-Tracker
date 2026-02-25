PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ZIndex"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R3 K3 ["Color"]
        8 GETTABLEKS                       R5 R3 K4 ["Offset"]
       10 JUMPIF                           R5 ; [+3]
       11 GETIMPORT                        R5 K7 [Vector2.new]
       13 CALL                             R5 0 1
       14 GETTABLEKS                       R6 R3 K8 ["Transparency"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K9 ["optional"]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R9 R10 K10 ["numberConstrained"]
       22 LOADN                            R10 0
       23 LOADN                            R11 1
       24 CALL                             R9 2 -1
       25 CALL                             R8 -1 1
       26 MOVE                             R9 R6
       27 CALL                             R8 1 1
       28 FASTCALL2K                       ASSERT R8 K11 ; [+4]
       30 LOADK                            R9 K11 ["Transparency must be nil or between 0 and 1"]
       31 GETIMPORT                        R7 K13 [assert]
       33 CALL                             R7 2 0
       34 GETTABLEKS                       R7 R3 K14 ["Image"]
       36 GETTABLEKS                       R8 R3 K15 ["ImageSize"]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R10 R11 K16 ["numberPositive"]
       41 MOVE                             R11 R8
       42 CALL                             R10 1 1
       43 FASTCALL2K                       ASSERT R10 K17 ; [+4]
       45 LOADK                            R11 K17 ["ImageSize must be a positive number"]
       46 GETIMPORT                        R9 K13 [assert]
       48 CALL                             R9 2 0
       49 GETTABLEKS                       R10 R3 K19 ["Radius"]
       51 ORK                              R9 R10 K18 [0]
       52 DIVK                             R10 R8 K20 [2]
       53 ADDK                             R12 R9 K21 [1]
       54 DIV                              R11 R12 R10
       55 GETIMPORT                        R12 K23 [Rect.new]
       57 MOVE                             R13 R10
       58 MOVE                             R14 R10
       59 MOVE                             R15 R10
       60 MOVE                             R16 R10
       61 CALL                             R12 4 1
       62 GETUPVAL                         R15 1
       63 GETTABLEKS                       R14 R15 K24 ["Children"]
       65 GETTABLE                         R13 R1 R14
       66 JUMPIF                           R13 ; [+2]
       67 NEWTABLE                         R13 0 0
       69 GETUPVAL                         R15 1
       70 GETTABLEKS                       R14 R15 K25 ["createElement"]
       72 LOADK                            R15 K26 ["ImageLabel"]
       73 DUPTABLE                         R16 K38 [{"Size", "AnchorPoint", "AutomaticSize", "Position", "ZIndex", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3", "ImageTransparency", "ScaleType", "SliceCenter", "SliceScale"}]
       74 GETTABLEKS                       R17 R1 K27 ["Size"]
       76 JUMPIF                           R17 ; [+7]
       77 GETIMPORT                        R17 K40 [UDim2.new]
       79 LOADN                            R18 1
       80 LOADN                            R19 0
       81 LOADN                            R20 1
       82 LOADN                            R21 0
       83 CALL                             R17 4 1
       84 SETTABLEKS                       R17 R16 K27 ["Size"]
       86 GETIMPORT                        R17 K7 [Vector2.new]
       88 LOADK                            R18 K41 [0.5]
       89 LOADK                            R19 K41 [0.5]
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K28 ["AnchorPoint"]
       93 GETTABLEKS                       R17 R1 K29 ["AutomaticSize"]
       95 SETTABLEKS                       R17 R16 K29 ["AutomaticSize"]
       97 GETIMPORT                        R17 K40 [UDim2.new]
       99 LOADK                            R18 K41 [0.5]
      100 GETTABLEKS                       R19 R5 K42 ["X"]
      102 LOADK                            R20 K41 [0.5]
      103 GETTABLEKS                       R21 R5 K43 ["Y"]
      105 CALL                             R17 4 1
      106 SETTABLEKS                       R17 R16 K30 ["Position"]
      108 SETTABLEKS                       R2 R16 K1 ["ZIndex"]
      110 LOADN                            R17 1
      111 SETTABLEKS                       R17 R16 K31 ["BackgroundTransparency"]
      113 LOADN                            R17 0
      114 SETTABLEKS                       R17 R16 K32 ["BorderSizePixel"]
      116 SETTABLEKS                       R7 R16 K14 ["Image"]
      118 SETTABLEKS                       R4 R16 K33 ["ImageColor3"]
      120 SETTABLEKS                       R6 R16 K34 ["ImageTransparency"]
      122 GETIMPORT                        R17 K46 [Enum.ScaleType.Slice]
      124 SETTABLEKS                       R17 R16 K35 ["ScaleType"]
      126 SETTABLEKS                       R12 R16 K36 ["SliceCenter"]
      128 SETTABLEKS                       R11 R16 K37 ["SliceScale"]
      130 NEWTABLE                         R17 1 1
      132 GETUPVAL                         R20 1
      133 GETTABLEKS                       R19 R20 K25 ["createElement"]
      135 LOADK                            R20 K47 ["UIPadding"]
      136 DUPTABLE                         R21 K52 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      137 GETIMPORT                        R22 K54 [UDim.new]
      139 LOADN                            R23 0
      140 MOVE                             R24 R9
      141 CALL                             R22 2 1
      142 SETTABLEKS                       R22 R21 K48 ["PaddingTop"]
      144 GETIMPORT                        R22 K54 [UDim.new]
      146 LOADN                            R23 0
      147 MOVE                             R24 R9
      148 CALL                             R22 2 1
      149 SETTABLEKS                       R22 R21 K49 ["PaddingBottom"]
      151 GETIMPORT                        R22 K54 [UDim.new]
      153 LOADN                            R23 0
      154 MOVE                             R24 R9
      155 CALL                             R22 2 1
      156 SETTABLEKS                       R22 R21 K50 ["PaddingLeft"]
      158 GETIMPORT                        R22 K54 [UDim.new]
      160 LOADN                            R23 0
      161 MOVE                             R24 R9
      162 CALL                             R22 2 1
      163 SETTABLEKS                       R22 R21 K51 ["PaddingRight"]
      165 CALL                             R19 2 1
      166 SETTABLEKS                       R19 R17 K55 ["ShadowPadding"]
      168 GETUPVAL                         R19 1
      169 GETTABLEKS                       R18 R19 K56 ["createFragment"]
      171 MOVE                             R19 R13
      172 CALL                             R18 1 -1
      173 SETLIST                          R17 R18 -1 [1]
      175 CALL                             R14 3 -1
      176 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K10 ["Util"]
       29 GETTABLEKS                       R6 R7 K11 ["Typecheck"]
       31 GETTABLEKS                       R5 R6 K12 ["t"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Util"]
       38 GETTABLEKS                       R6 R7 K11 ["Typecheck"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       43 LOADK                            R8 K14 ["DropShadow"]
       44 NAMECALL                         R6 R6 K15 ["extend"]
       46 CALL                             R6 2 1
       47 GETTABLEKS                       R7 R5 K16 ["wrap"]
       49 MOVE                             R8 R6
       50 GETIMPORT                        R9 K1 [script]
       52 CALL                             R7 2 0
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R7 R6 K18 ["render"]
       58 MOVE                             R7 R3
       59 DUPTABLE                         R8 K20 [{"Stylizer"}]
       60 GETTABLEKS                       R9 R2 K19 ["Stylizer"]
       62 SETTABLEKS                       R9 R8 K19 ["Stylizer"]
       64 CALL                             R7 1 1
       65 MOVE                             R8 R6
       66 CALL                             R7 1 1
       67 MOVE                             R6 R7
       68 RETURN                           R6 1
