PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onWebViewRetryShown"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["reason"]
        8 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnRetryClicked"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R0 K1 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R0 K1 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["Localization"]
       12 GETTABLEKS                       R4 R0 K1 ["props"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K4 ["createElement"]
       20 GETUPVAL                         R7 3
       21 NEWTABLE                         R8 8 0
       23 GETTABLEKS                       R9 R2 K5 ["backgroundColor"]
       25 SETTABLEKS                       R9 R8 K6 ["BackgroundColor3"]
       27 GETIMPORT                        R9 K8 [UDim2.new]
       29 LOADN                            R10 0
       30 LOADN                            R11 0
       31 LOADN                            R12 0
       32 GETUPVAL                         R13 4
       33 CALL                             R9 4 1
       34 SETTABLEKS                       R9 R8 K9 ["Position"]
       36 GETIMPORT                        R9 K8 [UDim2.new]
       38 LOADN                            R10 1
       39 LOADN                            R11 0
       40 LOADN                            R12 1
       41 GETUPVAL                         R14 4
       42 MINUS                            R13 R14
       43 CALL                             R9 4 1
       44 SETTABLEKS                       R9 R8 K10 ["Size"]
       46 LOADN                            R9 8
       47 SETTABLEKS                       R9 R8 K11 ["Spacing"]
       49 GETIMPORT                        R9 K15 [Enum.HorizontalAlignment.Center]
       51 SETTABLEKS                       R9 R8 K13 ["HorizontalAlignment"]
       53 GETIMPORT                        R9 K17 [Enum.VerticalAlignment.Center]
       55 SETTABLEKS                       R9 R8 K16 ["VerticalAlignment"]
       57 GETIMPORT                        R9 K20 [Enum.FillDirection.Vertical]
       59 SETTABLEKS                       R9 R8 K21 ["Layout"]
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R10 R11 K22 ["Change"]
       64 GETTABLEKS                       R9 R10 K23 ["AbsoluteSize"]
       66 SETTABLE                         R5 R8 R9
       67 DUPTABLE                         R9 K27 [{"Icon", "Text", "Button"}]
       68 GETUPVAL                         R11 5
       69 GETTABLEKS                       R10 R11 K4 ["createElement"]
       71 GETUPVAL                         R11 6
       72 DUPTABLE                         R12 K30 [{"Image", "Size", "LayoutOrder"}]
       73 GETTABLEKS                       R14 R2 K31 ["dialog"]
       75 GETTABLEKS                       R13 R14 K32 ["errorIcon"]
       77 SETTABLEKS                       R13 R12 K28 ["Image"]
       79 GETIMPORT                        R13 K34 [UDim2.fromOffset]
       81 LOADN                            R14 32
       82 LOADN                            R15 32
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K10 ["Size"]
       86 NAMECALL                         R13 R1 K35 ["getNextOrder"]
       88 CALL                             R13 1 1
       89 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
       91 CALL                             R10 2 1
       92 SETTABLEKS                       R10 R9 K24 ["Icon"]
       94 GETUPVAL                         R11 2
       95 GETTABLEKS                       R10 R11 K4 ["createElement"]
       97 GETUPVAL                         R11 7
       98 DUPTABLE                         R12 K41 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
       99 GETIMPORT                        R13 K43 [Enum.AutomaticSize.Y]
      101 SETTABLEKS                       R13 R12 K36 ["AutomaticSize"]
      103 GETIMPORT                        R13 K45 [Enum.Font.SourceSansSemibold]
      105 SETTABLEKS                       R13 R12 K37 ["Font"]
      107 NAMECALL                         R13 R1 K35 ["getNextOrder"]
      109 CALL                             R13 1 1
      110 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      112 GETIMPORT                        R13 K8 [UDim2.new]
      114 LOADN                            R14 1
      115 LOADN                            R15 0
      116 LOADN                            R16 0
      117 LOADN                            R17 0
      118 CALL                             R13 4 1
      119 SETTABLEKS                       R13 R12 K10 ["Size"]
      121 LOADK                            R15 K46 ["General"]
      122 LOADK                            R16 K47 ["GenericError"]
      123 NAMECALL                         R13 R3 K48 ["getText"]
      125 CALL                             R13 3 1
      126 SETTABLEKS                       R13 R12 K25 ["Text"]
      128 GETTABLEKS                       R13 R2 K49 ["textColor"]
      130 SETTABLEKS                       R13 R12 K38 ["TextColor"]
      132 LOADB                            R13 1
      133 SETTABLEKS                       R13 R12 K39 ["TextWrapped"]
      135 GETIMPORT                        R13 K50 [Enum.TextXAlignment.Center]
      137 SETTABLEKS                       R13 R12 K40 ["TextXAlignment"]
      139 CALL                             R10 2 1
      140 SETTABLEKS                       R10 R9 K25 ["Text"]
      142 GETUPVAL                         R11 2
      143 GETTABLEKS                       R10 R11 K4 ["createElement"]
      145 GETUPVAL                         R11 8
      146 DUPTABLE                         R12 K53 [{"LayoutOrder", "Size", "Style", "Text", "OnClick"}]
      147 NAMECALL                         R13 R1 K35 ["getNextOrder"]
      149 CALL                             R13 1 1
      150 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
      152 GETIMPORT                        R13 K34 [UDim2.fromOffset]
      154 LOADN                            R14 120
      155 LOADN                            R15 32
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K10 ["Size"]
      159 LOADK                            R13 K54 ["RoundPrimary"]
      160 SETTABLEKS                       R13 R12 K51 ["Style"]
      162 LOADK                            R15 K55 ["Common"]
      163 LOADK                            R16 K56 ["Retry"]
      164 NAMECALL                         R13 R3 K48 ["getText"]
      166 CALL                             R13 3 1
      167 SETTABLEKS                       R13 R12 K25 ["Text"]
      169 NEWCLOSURE                       R13 P1
      170 CAPTURE                          VAL R4
      171 SETTABLEKS                       R13 R12 K52 ["OnClick"]
      173 DUPTABLE                         R13 K58 [{"Hover"}]
      174 GETUPVAL                         R15 2
      175 GETTABLEKS                       R14 R15 K4 ["createElement"]
      177 GETUPVAL                         R15 9
      178 DUPTABLE                         R16 K60 [{"Cursor"}]
      179 LOADK                            R17 K61 ["PointingHand"]
      180 SETTABLEKS                       R17 R16 K59 ["Cursor"]
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R13 K57 ["Hover"]
      185 CALL                             R10 3 1
      186 SETTABLEKS                       R10 R9 K26 ["Button"]
      188 CALL                             R6 3 -1
      189 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R3 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R3 K6 ["Util"]
       13 GETIMPORT                        R3 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["Roact"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K8 [require]
       20 GETTABLEKS                       R5 R1 K10 ["React"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K8 [require]
       25 GETTABLEKS                       R6 R1 K11 ["Framework"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K8 [require]
       30 GETTABLEKS                       R9 R0 K5 ["Src"]
       32 GETTABLEKS                       R8 R9 K6 ["Util"]
       34 GETTABLEKS                       R7 R8 K12 ["Constants"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K8 [require]
       39 GETTABLEKS                       R9 R2 K13 ["Analytics"]
       41 GETTABLEKS                       R8 R9 K13 ["Analytics"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R5 K14 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K15 ["withContext"]
       48 GETTABLEKS                       R11 R5 K6 ["Util"]
       50 GETTABLEKS                       R10 R11 K16 ["GetTextSize"]
       52 GETTABLEKS                       R11 R5 K17 ["UI"]
       54 GETTABLEKS                       R12 R11 K18 ["Button"]
       56 GETTABLEKS                       R13 R11 K19 ["HoverArea"]
       58 GETTABLEKS                       R14 R11 K20 ["Image"]
       60 GETTABLEKS                       R15 R11 K21 ["Pane"]
       62 GETTABLEKS                       R16 R11 K22 ["TextLabel"]
       64 GETTABLEKS                       R18 R5 K6 ["Util"]
       66 GETTABLEKS                       R17 R18 K23 ["LayoutOrderIterator"]
       68 GETTABLEKS                       R18 R6 K24 ["TAB_WIDGET_HEIGHT"]
       70 GETTABLEKS                       R19 R3 K25 ["PureComponent"]
       72 LOADK                            R21 K26 ["WebViewError"]
       73 NAMECALL                         R19 R19 K27 ["extend"]
       75 CALL                             R19 2 1
       76 DUPCLOSURE                       R20 K28 [PROTO_2]
       77 CAPTURE                          VAL R17
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R15
       81 CAPTURE                          VAL R18
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R16
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R13
       87 SETTABLEKS                       R20 R19 K29 ["render"]
       89 MOVE                             R20 R9
       90 DUPTABLE                         R21 K32 [{"Stylizer", "Localization"}]
       91 GETTABLEKS                       R22 R8 K30 ["Stylizer"]
       93 SETTABLEKS                       R22 R21 K30 ["Stylizer"]
       95 GETTABLEKS                       R22 R8 K31 ["Localization"]
       97 SETTABLEKS                       R22 R21 K31 ["Localization"]
       99 CALL                             R20 1 1
      100 MOVE                             R21 R19
      101 CALL                             R20 1 1
      102 MOVE                             R19 R20
      103 NEWCLOSURE                       R20 P1
      104 CAPTURE                          VAL R3
      105 CAPTURE                          REF R19
      106 SETGLOBAL                        R20 K33 ["TypedComponent"]
      108 GETGLOBAL                        R20 K33 ["TypedComponent"]
      110 CLOSEUPVALS                      R19
      111 RETURN                           R20 1
