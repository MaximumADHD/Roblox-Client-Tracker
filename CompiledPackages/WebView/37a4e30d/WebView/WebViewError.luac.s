PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onWebViewRetryShown"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["analyticsContext"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["props"]
       11 GETTABLEKS                       R3 R3 K3 ["reason"]
       13 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRetryClicked"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRetryClicked"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSecondaryActionClicked"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["props"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R2
       11 DUPTABLE                         R5 K3 [{"Text"}]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K4 ["createElement"]
       15 GETUPVAL                         R7 3
       16 DUPTABLE                         R8 K12 [{["AutomaticSize"], ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
       17 GETIMPORT                        R9 K15 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R9 R8 K5 ["AutomaticSize"]
       21 GETIMPORT                        R9 K17 [Enum.Font.SourceSansSemibold]
       23 SETTABLEKS                       R9 R8 K6 ["Font"]
       25 NAMECALL                         R9 R1 K18 ["getNextOrder"]
       27 CALL                             R9 1 1
       28 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       30 GETIMPORT                        R9 K20 [UDim2.new]
       32 LOADN                            R10 1
       33 LOADN                            R11 0
       34 LOADN                            R12 0
       35 LOADN                            R13 0
       36 CALL                             R9 4 1
       37 SETTABLEKS                       R9 R8 K8 ["Size"]
       39 GETTABLEKS                       R9 R2 K21 ["title"]
       41 SETTABLEKS                       R9 R8 K2 ["Text"]
       43 GETIMPORT                        R9 K23 [Enum.TextXAlignment.Center]
       45 SETTABLEKS                       R9 R8 K11 ["TextXAlignment"]
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K2 ["Text"]
       50 GETUPVAL                         R6 4
       51 CALL                             R6 0 1
       52 JUMPIFNOT                        R6 ; [+79]
       53 GETTABLEKS                       R7 R2 K24 ["OnRetryClicked"]
       55 JUMPIFNOT                        R7 ; [+28]
       56 GETTABLEKS                       R7 R2 K25 ["buttonText"]
       58 JUMPIFNOT                        R7 ; [+25]
       59 GETUPVAL                         R6 2
       60 GETTABLEKS                       R6 R6 K4 ["createElement"]
       62 GETUPVAL                         R7 5
       63 DUPTABLE                         R8 K29 [{["LayoutOrder"], ["Size"], ["Style"] = "RoundPrimary", ["Text"], ["OnClick"]}]
       64 NAMECALL                         R9 R1 K18 ["getNextOrder"]
       66 CALL                             R9 1 1
       67 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       69 GETIMPORT                        R9 K31 [UDim2.fromOffset]
       71 LOADN                            R10 120
       72 LOADN                            R11 32
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K8 ["Size"]
       76 GETTABLEKS                       R9 R2 K25 ["buttonText"]
       78 SETTABLEKS                       R9 R8 K2 ["Text"]
       80 SETTABLEKS                       R4 R8 K28 ["OnClick"]
       82 CALL                             R6 2 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R6
       85 SETTABLEKS                       R6 R5 K32 ["Button"]
       87 GETTABLEKS                       R7 R2 K33 ["OnSecondaryActionClicked"]
       89 JUMPIFNOT                        R7 ; [+38]
       90 GETTABLEKS                       R7 R2 K34 ["secondaryActionText"]
       92 JUMPIFNOT                        R7 ; [+35]
       93 GETUPVAL                         R6 2
       94 GETTABLEKS                       R6 R6 K4 ["createElement"]
       96 GETUPVAL                         R7 5
       97 DUPTABLE                         R8 K35 [{"LayoutOrder", "Size", "Style", "Text", "OnClick"}]
       98 NAMECALL                         R9 R1 K18 ["getNextOrder"]
      100 CALL                             R9 1 1
      101 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
      103 GETIMPORT                        R9 K31 [UDim2.fromOffset]
      105 LOADN                            R10 160
      106 LOADN                            R11 32
      107 CALL                             R9 2 1
      108 SETTABLEKS                       R9 R8 K8 ["Size"]
      110 GETTABLEKS                       R10 R2 K24 ["OnRetryClicked"]
      112 JUMPIFNOT                        R10 ; [+2]
      113 LOADK                            R9 K36 ["Round"]
      114 JUMP                             ; [+1]
      115 LOADK                            R9 K27 ["RoundPrimary"]
      116 SETTABLEKS                       R9 R8 K26 ["Style"]
      118 GETTABLEKS                       R9 R2 K34 ["secondaryActionText"]
      120 SETTABLEKS                       R9 R8 K2 ["Text"]
      122 NEWCLOSURE                       R9 P2
      123 CAPTURE                          VAL R2
      124 SETTABLEKS                       R9 R8 K28 ["OnClick"]
      126 CALL                             R6 2 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R6
      129 SETTABLEKS                       R6 R5 K37 ["SecondaryAction"]
      131 JUMP                             ; [+26]
      132 GETUPVAL                         R6 2
      133 GETTABLEKS                       R6 R6 K4 ["createElement"]
      135 GETUPVAL                         R7 5
      136 DUPTABLE                         R8 K29 [{["LayoutOrder"], ["Size"], ["Style"] = "RoundPrimary", ["Text"], ["OnClick"]}]
      137 NAMECALL                         R9 R1 K18 ["getNextOrder"]
      139 CALL                             R9 1 1
      140 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
      142 GETIMPORT                        R9 K31 [UDim2.fromOffset]
      144 LOADN                            R10 120
      145 LOADN                            R11 32
      146 CALL                             R9 2 1
      147 SETTABLEKS                       R9 R8 K8 ["Size"]
      149 GETTABLEKS                       R9 R2 K25 ["buttonText"]
      151 SETTABLEKS                       R9 R8 K2 ["Text"]
      153 SETTABLEKS                       R4 R8 K28 ["OnClick"]
      155 CALL                             R6 2 1
      156 SETTABLEKS                       R6 R5 K32 ["Button"]
      158 GETUPVAL                         R6 2
      159 GETTABLEKS                       R6 R6 K4 ["createElement"]
      161 GETUPVAL                         R7 6
      162 NEWTABLE                         R8 8 0
      164 GETIMPORT                        R9 K20 [UDim2.new]
      166 LOADN                            R10 0
      167 LOADN                            R11 0
      168 LOADN                            R12 0
      169 LOADN                            R13 0
      170 CALL                             R9 4 1
      171 SETTABLEKS                       R9 R8 K38 ["Position"]
      173 GETIMPORT                        R9 K20 [UDim2.new]
      175 LOADN                            R10 1
      176 LOADN                            R11 0
      177 LOADN                            R12 1
      178 LOADN                            R13 0
      179 CALL                             R9 4 1
      180 SETTABLEKS                       R9 R8 K8 ["Size"]
      182 LOADN                            R9 8
      183 SETTABLEKS                       R9 R8 K39 ["Spacing"]
      185 GETIMPORT                        R9 K41 [Enum.HorizontalAlignment.Center]
      187 SETTABLEKS                       R9 R8 K40 ["HorizontalAlignment"]
      189 GETIMPORT                        R9 K43 [Enum.VerticalAlignment.Center]
      191 SETTABLEKS                       R9 R8 K42 ["VerticalAlignment"]
      193 GETIMPORT                        R9 K46 [Enum.FillDirection.Vertical]
      195 SETTABLEKS                       R9 R8 K47 ["Layout"]
      197 GETUPVAL                         R9 2
      198 GETTABLEKS                       R9 R9 K48 ["Change"]
      200 GETTABLEKS                       R9 R9 K49 ["AbsoluteSize"]
      202 SETTABLE                         R3 R8 R9
      203 MOVE                             R9 R5
      204 CALL                             R6 3 -1
      205 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Packages"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K9 ["UI"]
       25 GETTABLEKS                       R5 R4 K10 ["Button"]
       27 GETTABLEKS                       R6 R4 K11 ["Pane"]
       29 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       31 GETTABLEKS                       R8 R3 K13 ["Util"]
       33 GETTABLEKS                       R8 R8 K14 ["LayoutOrderIterator"]
       35 GETIMPORT                        R9 K6 [require]
       37 GETTABLEKS                       R10 R0 K15 ["Analytics"]
       39 CALL                             R9 1 1
       40 GETIMPORT                        R10 K6 [require]
       42 GETTABLEKS                       R11 R0 K13 ["Util"]
       44 GETTABLEKS                       R11 R11 K16 ["SharedFlags"]
       46 GETTABLEKS                       R11 R11 K17 ["getFFlagWebViewImprovedErrorHandling"]
       48 CALL                             R10 1 1
       49 GETTABLEKS                       R11 R2 K18 ["PureComponent"]
       51 LOADK                            R13 K19 ["WebViewError"]
       52 NAMECALL                         R11 R11 K20 ["extend"]
       54 CALL                             R11 2 1
       55 DUPCLOSURE                       R12 K21 [PROTO_3]
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R12 R11 K22 ["render"]
       65 DUPCLOSURE                       R12 K23 [PROTO_4]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R11
       68 SETGLOBAL                        R12 K24 ["TypedComponent"]
       70 GETGLOBAL                        R12 K24 ["TypedComponent"]
       72 RETURN                           R12 1
