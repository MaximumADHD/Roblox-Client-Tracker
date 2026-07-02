PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Image"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["imageSize"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["imageTopPadding"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["LayoutOrder"]
       20 GETTABLEKS                       R6 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R6 K6 ["Text"]
       24 GETTABLEKS                       R7 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R7 K7 ["TextColor3"]
       28 JUMPIF                           R7 ; [+2]
       29 GETTABLEKS                       R7 R1 K8 ["TextColor"]
       31 GETTABLEKS                       R8 R0 K0 ["props"]
       33 GETTABLEKS                       R8 R8 K9 ["TextSize"]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K10 ["createElement"]
       38 GETUPVAL                         R10 1
       39 DUPTABLE                         R11 K16 [{["BackgroundTransparency"] = 1, ["FillDirection"], ["height"], ["LayoutOrder"], ["VerticalAlignment"]}]
       40 GETIMPORT                        R12 K19 [Enum.FillDirection.Horizontal]
       42 SETTABLEKS                       R12 R11 K13 ["FillDirection"]
       44 GETIMPORT                        R12 K22 [UDim.new]
       46 LOADN                            R13 0
       47 MOVE                             R14 R8
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K14 ["height"]
       51 SETTABLEKS                       R5 R11 K5 ["LayoutOrder"]
       53 GETIMPORT                        R12 K24 [Enum.VerticalAlignment.Center]
       55 SETTABLEKS                       R12 R11 K15 ["VerticalAlignment"]
       57 DUPTABLE                         R12 K27 [{"IconContainer", "CountText"}]
       58 GETUPVAL                         R13 0
       59 GETTABLEKS                       R13 R13 K10 ["createElement"]
       61 LOADK                            R14 K28 ["Frame"]
       62 DUPTABLE                         R15 K31 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 0, ["Size"]}]
       63 GETIMPORT                        R16 K33 [UDim2.new]
       65 LOADN                            R17 0
       66 MOVE                             R18 R3
       67 LOADN                            R19 0
       68 MOVE                             R20 R3
       69 CALL                             R16 4 1
       70 SETTABLEKS                       R16 R15 K30 ["Size"]
       72 DUPTABLE                         R16 K36 [{"Padding", "Icon"}]
       73 GETUPVAL                         R17 0
       74 GETTABLEKS                       R17 R17 K10 ["createElement"]
       76 LOADK                            R18 K37 ["UIPadding"]
       77 DUPTABLE                         R19 K39 [{"PaddingTop"}]
       78 GETIMPORT                        R20 K22 [UDim.new]
       80 LOADN                            R21 0
       81 MOVE                             R22 R4
       82 CALL                             R20 2 1
       83 SETTABLEKS                       R20 R19 K38 ["PaddingTop"]
       85 CALL                             R17 2 1
       86 SETTABLEKS                       R17 R16 K34 ["Padding"]
       88 GETUPVAL                         R17 0
       89 GETTABLEKS                       R17 R17 K10 ["createElement"]
       91 LOADK                            R18 K40 ["ImageLabel"]
       92 DUPTABLE                         R19 K42 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["LayoutOrder"] = 0, ["Size"]}]
       93 SETTABLEKS                       R2 R19 K2 ["Image"]
       95 SETTABLEKS                       R7 R19 K41 ["ImageColor3"]
       97 GETIMPORT                        R20 K33 [UDim2.new]
       99 LOADN                            R21 0
      100 MOVE                             R22 R3
      101 LOADN                            R23 0
      102 MOVE                             R24 R3
      103 CALL                             R20 4 1
      104 SETTABLEKS                       R20 R19 K30 ["Size"]
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K35 ["Icon"]
      109 CALL                             R13 3 1
      110 SETTABLEKS                       R13 R12 K25 ["IconContainer"]
      112 GETUPVAL                         R13 0
      113 GETTABLEKS                       R13 R13 K10 ["createElement"]
      115 GETUPVAL                         R14 2
      116 DUPTABLE                         R15 K45 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["width"]}]
      117 GETTABLEKS                       R16 R1 K43 ["Font"]
      119 SETTABLEKS                       R16 R15 K43 ["Font"]
      121 SETTABLEKS                       R6 R15 K6 ["Text"]
      123 SETTABLEKS                       R7 R15 K7 ["TextColor3"]
      125 SETTABLEKS                       R8 R15 K9 ["TextSize"]
      127 GETUPVAL                         R16 2
      128 GETTABLEKS                       R16 R16 K46 ["Width"]
      130 GETTABLEKS                       R16 R16 K47 ["FitToText"]
      132 SETTABLEKS                       R16 R15 K44 ["width"]
      134 CALL                             R13 2 1
      135 SETTABLEKS                       R13 R12 K26 ["CountText"]
      137 CALL                             R9 3 -1
      138 RETURN                           R9 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["FitFrame"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R3 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R4 R3 K10 ["withContext"]
       34 GETTABLEKS                       R5 R2 K11 ["FitFrameHorizontal"]
       36 GETTABLEKS                       R6 R2 K12 ["FitTextLabel"]
       38 GETTABLEKS                       R7 R1 K13 ["PureComponent"]
       40 LOADK                            R9 K14 ["IconWithText"]
       41 NAMECALL                         R7 R7 K15 ["extend"]
       43 CALL                             R7 2 1
       44 DUPTABLE                         R8 K24 [{["Image"] = "", ["imageSize"] = 16, ["imageTopPadding"] = 0, ["TextSize"] = 14}]
       45 SETTABLEKS                       R8 R7 K25 ["defaultProps"]
       47 DUPCLOSURE                       R8 K26 [PROTO_0]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R8 R7 K27 ["render"]
       53 MOVE                             R8 R4
       54 DUPTABLE                         R9 K29 [{"Stylizer"}]
       55 GETTABLEKS                       R10 R3 K28 ["Stylizer"]
       57 SETTABLEKS                       R10 R9 K28 ["Stylizer"]
       59 CALL                             R8 1 1
       60 MOVE                             R9 R7
       61 CALL                             R8 1 1
       62 MOVE                             R7 R8
       63 RETURN                           R7 1
