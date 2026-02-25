PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Image"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["imageSize"]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R5 K4 ["imageTopPadding"]
       16 GETTABLEKS                       R6 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R6 K5 ["LayoutOrder"]
       20 GETTABLEKS                       R7 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R7 K6 ["Text"]
       24 GETTABLEKS                       R8 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R8 K7 ["TextColor3"]
       28 JUMPIF                           R7 ; [+2]
       29 GETTABLEKS                       R7 R1 K8 ["TextColor"]
       31 GETTABLEKS                       R9 R0 K0 ["props"]
       33 GETTABLEKS                       R8 R9 K9 ["TextSize"]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R9 R10 K10 ["createElement"]
       38 GETUPVAL                         R10 1
       39 DUPTABLE                         R11 K15 [{"BackgroundTransparency", "FillDirection", "height", "LayoutOrder", "VerticalAlignment"}]
       40 LOADN                            R12 1
       41 SETTABLEKS                       R12 R11 K11 ["BackgroundTransparency"]
       43 GETIMPORT                        R12 K18 [Enum.FillDirection.Horizontal]
       45 SETTABLEKS                       R12 R11 K12 ["FillDirection"]
       47 GETIMPORT                        R12 K21 [UDim.new]
       49 LOADN                            R13 0
       50 MOVE                             R14 R8
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K13 ["height"]
       54 SETTABLEKS                       R5 R11 K5 ["LayoutOrder"]
       56 GETIMPORT                        R12 K23 [Enum.VerticalAlignment.Center]
       58 SETTABLEKS                       R12 R11 K14 ["VerticalAlignment"]
       60 DUPTABLE                         R12 K26 [{"IconContainer", "CountText"}]
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R13 R14 K10 ["createElement"]
       64 LOADK                            R14 K27 ["Frame"]
       65 DUPTABLE                         R15 K29 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       66 LOADN                            R16 1
       67 SETTABLEKS                       R16 R15 K11 ["BackgroundTransparency"]
       69 LOADN                            R16 0
       70 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
       72 GETIMPORT                        R16 K31 [UDim2.new]
       74 LOADN                            R17 0
       75 MOVE                             R18 R3
       76 LOADN                            R19 0
       77 MOVE                             R20 R3
       78 CALL                             R16 4 1
       79 SETTABLEKS                       R16 R15 K28 ["Size"]
       81 DUPTABLE                         R16 K34 [{"Padding", "Icon"}]
       82 GETUPVAL                         R18 0
       83 GETTABLEKS                       R17 R18 K10 ["createElement"]
       85 LOADK                            R18 K35 ["UIPadding"]
       86 DUPTABLE                         R19 K37 [{"PaddingTop"}]
       87 GETIMPORT                        R20 K21 [UDim.new]
       89 LOADN                            R21 0
       90 MOVE                             R22 R4
       91 CALL                             R20 2 1
       92 SETTABLEKS                       R20 R19 K36 ["PaddingTop"]
       94 CALL                             R17 2 1
       95 SETTABLEKS                       R17 R16 K32 ["Padding"]
       97 GETUPVAL                         R18 0
       98 GETTABLEKS                       R17 R18 K10 ["createElement"]
      100 LOADK                            R18 K38 ["ImageLabel"]
      101 DUPTABLE                         R19 K40 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      102 LOADN                            R20 1
      103 SETTABLEKS                       R20 R19 K11 ["BackgroundTransparency"]
      105 SETTABLEKS                       R2 R19 K2 ["Image"]
      107 SETTABLEKS                       R7 R19 K39 ["ImageColor3"]
      109 LOADN                            R20 0
      110 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      112 GETIMPORT                        R20 K31 [UDim2.new]
      114 LOADN                            R21 0
      115 MOVE                             R22 R3
      116 LOADN                            R23 0
      117 MOVE                             R24 R3
      118 CALL                             R20 4 1
      119 SETTABLEKS                       R20 R19 K28 ["Size"]
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K33 ["Icon"]
      124 CALL                             R13 3 1
      125 SETTABLEKS                       R13 R12 K24 ["IconContainer"]
      127 GETUPVAL                         R14 0
      128 GETTABLEKS                       R13 R14 K10 ["createElement"]
      130 GETUPVAL                         R14 2
      131 DUPTABLE                         R15 K43 [{"BackgroundTransparency", "LayoutOrder", "Font", "Text", "TextColor3", "TextSize", "width"}]
      132 LOADN                            R16 1
      133 SETTABLEKS                       R16 R15 K11 ["BackgroundTransparency"]
      135 LOADN                            R16 1
      136 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      138 GETTABLEKS                       R16 R1 K41 ["Font"]
      140 SETTABLEKS                       R16 R15 K41 ["Font"]
      142 SETTABLEKS                       R6 R15 K6 ["Text"]
      144 SETTABLEKS                       R7 R15 K7 ["TextColor3"]
      146 SETTABLEKS                       R8 R15 K9 ["TextSize"]
      148 GETUPVAL                         R18 2
      149 GETTABLEKS                       R17 R18 K44 ["Width"]
      151 GETTABLEKS                       R16 R17 K45 ["FitToText"]
      153 SETTABLEKS                       R16 R15 K42 ["width"]
      155 CALL                             R13 2 1
      156 SETTABLEKS                       R13 R12 K25 ["CountText"]
      158 CALL                             R9 3 -1
      159 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["FitFrame"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R6 R0 K5 ["Packages"]
       27 GETTABLEKS                       R5 R6 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R3 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R4 R3 K10 ["withContext"]
       34 GETTABLEKS                       R5 R2 K11 ["FitFrameHorizontal"]
       36 GETTABLEKS                       R6 R2 K12 ["FitTextLabel"]
       38 GETTABLEKS                       R7 R1 K13 ["PureComponent"]
       40 LOADK                            R9 K14 ["IconWithText"]
       41 NAMECALL                         R7 R7 K15 ["extend"]
       43 CALL                             R7 2 1
       44 DUPTABLE                         R8 K20 [{"Image", "imageSize", "imageTopPadding", "TextSize"}]
       45 LOADK                            R9 K21 [""]
       46 SETTABLEKS                       R9 R8 K16 ["Image"]
       48 LOADN                            R9 16
       49 SETTABLEKS                       R9 R8 K17 ["imageSize"]
       51 LOADN                            R9 0
       52 SETTABLEKS                       R9 R8 K18 ["imageTopPadding"]
       54 LOADN                            R9 14
       55 SETTABLEKS                       R9 R8 K19 ["TextSize"]
       57 SETTABLEKS                       R8 R7 K22 ["defaultProps"]
       59 DUPCLOSURE                       R8 K23 [PROTO_0]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R8 R7 K24 ["render"]
       65 MOVE                             R8 R4
       66 DUPTABLE                         R9 K26 [{"Stylizer"}]
       67 GETTABLEKS                       R10 R3 K25 ["Stylizer"]
       69 SETTABLEKS                       R10 R9 K25 ["Stylizer"]
       71 CALL                             R8 1 1
       72 MOVE                             R9 R7
       73 CALL                             R8 1 1
       74 MOVE                             R7 R8
       75 RETURN                           R7 1
