PROTO_0:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 136
        3 LOADN                            R5 136
        4 CALL                             R3 2 1
        5 GETIMPORT                        R4 K4 [game]
        7 LOADK                            R6 K5 ["TextService"]
        8 NAMECALL                         R4 R4 K6 ["GetService"]
       10 CALL                             R4 2 1
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 MOVE                             R9 R3
       15 NAMECALL                         R4 R4 K7 ["GetTextSize"]
       17 CALL                             R4 5 -1
       18 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ShowPublishToRoblox"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["IsEnabled"]
       10 JUMPIFNOT                        R4 ; [+2]
       11 LOADNIL                          R4
       12 RETURN                           R4 1
       13 DUPCLOSURE                       R4 K4 [PROTO_0]
       14 LOADK                            R7 K5 ["General"]
       15 LOADK                            R8 K6 ["PublishingHintLink"]
       16 NAMECALL                         R5 R2 K7 ["getText"]
       18 CALL                             R5 3 1
       19 GETIMPORT                        R7 K11 [Enum.Font.SourceSans]
       21 GETIMPORT                        R8 K14 [Vector2.new]
       23 LOADN                            R9 136
       24 LOADN                            R10 136
       25 CALL                             R8 2 1
       26 GETIMPORT                        R9 K16 [game]
       28 LOADK                            R11 K17 ["TextService"]
       29 NAMECALL                         R9 R9 K18 ["GetService"]
       31 CALL                             R9 2 1
       32 MOVE                             R11 R5
       33 LOADN                            R12 22
       34 MOVE                             R13 R7
       35 MOVE                             R14 R8
       36 NAMECALL                         R9 R9 K19 ["GetTextSize"]
       38 CALL                             R9 5 1
       39 MOVE                             R6 R9
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K20 ["createElement"]
       43 LOADK                            R8 K21 ["Frame"]
       44 DUPTABLE                         R9 K25 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       45 GETIMPORT                        R10 K27 [UDim2.new]
       47 LOADN                            R11 1
       48 LOADN                            R12 0
       49 LOADN                            R13 0
       50 GETTABLEKS                       R14 R6 K28 ["Y"]
       52 CALL                             R10 4 1
       53 SETTABLEKS                       R10 R9 K22 ["Size"]
       55 LOADN                            R10 1
       56 SETTABLEKS                       R10 R9 K23 ["BackgroundTransparency"]
       58 GETTABLEKS                       R10 R1 K24 ["LayoutOrder"]
       60 SETTABLEKS                       R10 R9 K24 ["LayoutOrder"]
       62 DUPTABLE                         R10 K31 [{"HyperLink", "TextLabel"}]
       63 GETUPVAL                         R11 0
       64 GETTABLEKS                       R11 R11 K20 ["createElement"]
       66 GETUPVAL                         R12 1
       67 DUPTABLE                         R13 K36 [{"Text", "Size", "Enabled", "Mouse", "OnClick"}]
       68 SETTABLEKS                       R5 R13 K32 ["Text"]
       70 GETIMPORT                        R14 K27 [UDim2.new]
       72 LOADN                            R15 0
       73 GETTABLEKS                       R16 R6 K37 ["X"]
       75 LOADN                            R17 0
       76 GETTABLEKS                       R18 R6 K28 ["Y"]
       78 CALL                             R14 4 1
       79 SETTABLEKS                       R14 R13 K22 ["Size"]
       81 LOADB                            R14 1
       82 SETTABLEKS                       R14 R13 K33 ["Enabled"]
       84 GETTABLEKS                       R14 R1 K34 ["Mouse"]
       86 SETTABLEKS                       R14 R13 K34 ["Mouse"]
       88 DUPCLOSURE                       R14 K38 [PROTO_1]
       89 CAPTURE                          UPVAL U2
       90 SETTABLEKS                       R14 R13 K35 ["OnClick"]
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K29 ["HyperLink"]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K20 ["createElement"]
       98 LOADK                            R12 K30 ["TextLabel"]
       99 DUPTABLE                         R13 K43 [{"BackgroundTransparency", "Position", "Size", "TextColor3", "Font", "TextSize", "TextXAlignment", "Text"}]
      100 LOADN                            R14 1
      101 SETTABLEKS                       R14 R13 K23 ["BackgroundTransparency"]
      103 GETIMPORT                        R14 K27 [UDim2.new]
      105 LOADN                            R15 0
      106 GETTABLEKS                       R16 R6 K37 ["X"]
      108 LOADN                            R17 0
      109 LOADN                            R18 0
      110 CALL                             R14 4 1
      111 SETTABLEKS                       R14 R13 K39 ["Position"]
      113 GETIMPORT                        R14 K27 [UDim2.new]
      115 LOADN                            R15 1
      116 LOADN                            R16 0
      117 LOADN                            R17 1
      118 LOADN                            R18 0
      119 CALL                             R14 4 1
      120 SETTABLEKS                       R14 R13 K22 ["Size"]
      122 GETUPVAL                         R15 3
      123 GETTABLEKS                       R15 R15 K44 ["getRadioButtonTextColor"]
      125 MOVE                             R16 R1
      126 CALL                             R15 1 1
      127 JUMPIFNOT                        R15 ; [+6]
      128 GETUPVAL                         R14 3
      129 GETTABLEKS                       R14 R14 K44 ["getRadioButtonTextColor"]
      131 MOVE                             R15 R1
      132 CALL                             R14 1 1
      133 JUMP                             ; [+6]
      134 GETTABLEKS                       R14 R3 K45 ["fontStyle"]
      136 GETTABLEKS                       R14 R14 K46 ["Header"]
      138 GETTABLEKS                       R14 R14 K40 ["TextColor3"]
      140 SETTABLEKS                       R14 R13 K40 ["TextColor3"]
      142 GETIMPORT                        R14 K11 [Enum.Font.SourceSans]
      144 SETTABLEKS                       R14 R13 K9 ["Font"]
      146 LOADN                            R14 22
      147 SETTABLEKS                       R14 R13 K41 ["TextSize"]
      149 GETIMPORT                        R14 K48 [Enum.TextXAlignment.Left]
      151 SETTABLEKS                       R14 R13 K42 ["TextXAlignment"]
      153 LOADK                            R16 K5 ["General"]
      154 LOADK                            R17 K49 ["PublishingHintLinkExplanation"]
      155 NAMECALL                         R14 R2 K7 ["getText"]
      157 CALL                             R14 3 1
      158 SETTABLEKS                       R14 R13 K32 ["Text"]
      160 CALL                             R11 2 1
      161 SETTABLEKS                       R11 R10 K30 ["TextLabel"]
      163 CALL                             R7 3 -1
      164 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K5 [script]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETTABLEKS                       R2 R2 K6 ["Parent"]
       19 GETTABLEKS                       R2 R2 K6 ["Parent"]
       21 GETTABLEKS                       R2 R2 K6 ["Parent"]
       23 GETIMPORT                        R3 K8 [require]
       25 GETTABLEKS                       R4 R2 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["Roact"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K8 [require]
       32 GETTABLEKS                       R5 R2 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K11 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       39 GETTABLEKS                       R5 R4 K13 ["withContext"]
       41 GETTABLEKS                       R6 R2 K14 ["RoactStudioWidgets"]
       43 GETIMPORT                        R7 K8 [require]
       45 GETTABLEKS                       R8 R1 K15 ["Util"]
       47 GETTABLEKS                       R8 R8 K16 ["StateInterfaceTheme"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K8 [require]
       52 GETTABLEKS                       R9 R6 K17 ["Hyperlink"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R9 R3 K18 ["PureComponent"]
       57 LOADK                            R11 K19 ["PublishingHint"]
       58 NAMECALL                         R9 R9 K20 ["extend"]
       60 CALL                             R9 2 1
       61 DUPCLOSURE                       R10 K21 [PROTO_2]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R7
       66 SETTABLEKS                       R10 R9 K22 ["render"]
       68 MOVE                             R10 R5
       69 DUPTABLE                         R11 K25 [{"Localization", "Stylizer"}]
       70 GETTABLEKS                       R12 R4 K23 ["Localization"]
       72 SETTABLEKS                       R12 R11 K23 ["Localization"]
       74 GETTABLEKS                       R12 R4 K24 ["Stylizer"]
       76 SETTABLEKS                       R12 R11 K24 ["Stylizer"]
       78 CALL                             R10 1 1
       79 MOVE                             R11 R9
       80 CALL                             R10 1 1
       81 MOVE                             R9 R10
       82 RETURN                           R9 1
