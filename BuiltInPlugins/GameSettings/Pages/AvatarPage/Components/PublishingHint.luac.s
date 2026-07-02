PROTO_0:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 5000
        3 LOADN                            R5 5000
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
       23 LOADN                            R9 5000
       24 LOADN                            R10 5000
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
       44 DUPTABLE                         R9 K26 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       45 GETIMPORT                        R10 K28 [UDim2.new]
       47 LOADN                            R11 1
       48 LOADN                            R12 0
       49 LOADN                            R13 0
       50 GETTABLEKS                       R14 R6 K29 ["Y"]
       52 CALL                             R10 4 1
       53 SETTABLEKS                       R10 R9 K22 ["Size"]
       55 GETTABLEKS                       R10 R1 K25 ["LayoutOrder"]
       57 SETTABLEKS                       R10 R9 K25 ["LayoutOrder"]
       59 DUPTABLE                         R10 K32 [{"HyperLink", "TextLabel"}]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K20 ["createElement"]
       63 GETUPVAL                         R12 1
       64 DUPTABLE                         R13 K38 [{["Text"], ["Size"], ["Enabled"] = True, ["Mouse"], ["OnClick"]}]
       65 SETTABLEKS                       R5 R13 K33 ["Text"]
       67 GETIMPORT                        R14 K28 [UDim2.new]
       69 LOADN                            R15 0
       70 GETTABLEKS                       R16 R6 K39 ["X"]
       72 LOADN                            R17 0
       73 GETTABLEKS                       R18 R6 K29 ["Y"]
       75 CALL                             R14 4 1
       76 SETTABLEKS                       R14 R13 K22 ["Size"]
       78 GETTABLEKS                       R14 R1 K36 ["Mouse"]
       80 SETTABLEKS                       R14 R13 K36 ["Mouse"]
       82 DUPCLOSURE                       R14 K40 [PROTO_1]
       83 CAPTURE                          UPVAL U2
       84 SETTABLEKS                       R14 R13 K37 ["OnClick"]
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K30 ["HyperLink"]
       89 GETUPVAL                         R11 0
       90 GETTABLEKS                       R11 R11 K20 ["createElement"]
       92 LOADK                            R12 K31 ["TextLabel"]
       93 DUPTABLE                         R13 K46 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["TextColor3"], ["Font"], ["TextSize"] = 22, ["TextXAlignment"], ["Text"]}]
       94 GETIMPORT                        R14 K28 [UDim2.new]
       96 LOADN                            R15 0
       97 GETTABLEKS                       R16 R6 K39 ["X"]
       99 LOADN                            R17 0
      100 LOADN                            R18 0
      101 CALL                             R14 4 1
      102 SETTABLEKS                       R14 R13 K41 ["Position"]
      104 GETIMPORT                        R14 K28 [UDim2.new]
      106 LOADN                            R15 1
      107 LOADN                            R16 0
      108 LOADN                            R17 1
      109 LOADN                            R18 0
      110 CALL                             R14 4 1
      111 SETTABLEKS                       R14 R13 K22 ["Size"]
      113 GETUPVAL                         R15 3
      114 GETTABLEKS                       R15 R15 K47 ["getRadioButtonTextColor"]
      116 MOVE                             R16 R1
      117 CALL                             R15 1 1
      118 JUMPIFNOT                        R15 ; [+6]
      119 GETUPVAL                         R14 3
      120 GETTABLEKS                       R14 R14 K47 ["getRadioButtonTextColor"]
      122 MOVE                             R15 R1
      123 CALL                             R14 1 1
      124 JUMP                             ; [+6]
      125 GETTABLEKS                       R14 R3 K48 ["fontStyle"]
      127 GETTABLEKS                       R14 R14 K49 ["Header"]
      129 GETTABLEKS                       R14 R14 K42 ["TextColor3"]
      131 SETTABLEKS                       R14 R13 K42 ["TextColor3"]
      133 GETIMPORT                        R14 K11 [Enum.Font.SourceSans]
      135 SETTABLEKS                       R14 R13 K9 ["Font"]
      137 GETIMPORT                        R14 K51 [Enum.TextXAlignment.Left]
      139 SETTABLEKS                       R14 R13 K45 ["TextXAlignment"]
      141 LOADK                            R16 K5 ["General"]
      142 LOADK                            R17 K52 ["PublishingHintLinkExplanation"]
      143 NAMECALL                         R14 R2 K7 ["getText"]
      145 CALL                             R14 3 1
      146 SETTABLEKS                       R14 R13 K33 ["Text"]
      148 CALL                             R11 2 1
      149 SETTABLEKS                       R11 R10 K31 ["TextLabel"]
      151 CALL                             R7 3 -1
      152 RETURN                           R7 -1

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
