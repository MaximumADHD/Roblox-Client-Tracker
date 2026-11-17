PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["learnMoreUrl"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 JUMPIF                           R3 ; [+5]
        7 LOADK                            R5 K3 ["Dialog"]
        8 LOADK                            R6 K4 ["DefaultTitle"]
        9 NAMECALL                         R3 R2 K5 ["getText"]
       11 CALL                             R3 3 1
       12 GETTABLEKS                       R4 R1 K6 ["Stylizer"]
       14 GETTABLEKS                       R5 R1 K7 ["learnMoreLabel"]
       16 JUMPIF                           R5 ; [+5]
       17 LOADK                            R7 K8 ["FaceCapture"]
       18 LOADK                            R8 K9 ["DefaultLearnMoreLabel"]
       19 NAMECALL                         R5 R2 K5 ["getText"]
       21 CALL                             R5 3 1
       22 GETTABLEKS                       R6 R1 K10 ["TitleText"]
       24 GETIMPORT                        R7 K14 [Enum.Font.SourceSansBold]
       26 GETUPVAL                         R8 0
       27 MOVE                             R9 R6
       28 LOADN                            R10 20
       29 MOVE                             R11 R7
       30 GETIMPORT                        R12 K17 [Vector2.new]
       32 LOADN                            R13 450
       33 LOADN                            R14 1000
       34 CALL                             R12 2 -1
       35 CALL                             R8 -1 1
       36 GETTABLEKS                       R9 R1 K18 ["BodyText"]
       38 GETIMPORT                        R10 K20 [Enum.Font.SourceSans]
       40 GETUPVAL                         R11 0
       41 MOVE                             R12 R9
       42 LOADN                            R13 20
       43 MOVE                             R14 R10
       44 GETIMPORT                        R15 K17 [Vector2.new]
       46 LOADN                            R16 450
       47 LOADN                            R17 1000
       48 CALL                             R15 2 -1
       49 CALL                             R11 -1 1
       50 GETTABLEKS                       R14 R8 K22 ["Y"]
       52 ADDK                             R13 R14 K21 [10]
       53 GETTABLEKS                       R14 R11 K22 ["Y"]
       55 ADD                              R12 R13 R14
       56 GETIMPORT                        R13 K17 [Vector2.new]
       58 LOADN                            R14 450
       59 MOVE                             R15 R12
       60 CALL                             R13 2 1
       61 GETUPVAL                         R14 1
       62 GETTABLEKS                       R14 R14 K23 ["createElement"]
       64 GETUPVAL                         R15 2
       65 DUPTABLE                         R16 K33 [{["Title"], ["OnClose"], ["BorderPadding"] = 20, ["OnButtonPressed"], ["Buttons"], ["ButtonHorizontalAlignment"], ["MinContentSize"], ["Modal"] = True}]
       66 SETTABLEKS                       R3 R16 K2 ["Title"]
       68 GETTABLEKS                       R17 R1 K24 ["OnClose"]
       70 SETTABLEKS                       R17 R16 K24 ["OnClose"]
       72 GETTABLEKS                       R17 R1 K27 ["OnButtonPressed"]
       74 SETTABLEKS                       R17 R16 K27 ["OnButtonPressed"]
       76 GETTABLEKS                       R17 R1 K28 ["Buttons"]
       78 SETTABLEKS                       R17 R16 K28 ["Buttons"]
       80 GETIMPORT                        R17 K36 [Enum.HorizontalAlignment.Right]
       82 SETTABLEKS                       R17 R16 K29 ["ButtonHorizontalAlignment"]
       84 SETTABLEKS                       R13 R16 K30 ["MinContentSize"]
       86 DUPTABLE                         R17 K39 [{"Content", "LinkText"}]
       87 GETUPVAL                         R18 1
       88 GETTABLEKS                       R18 R18 K23 ["createElement"]
       90 GETUPVAL                         R19 3
       91 DUPTABLE                         R20 K43 [{["Layout"], ["HorizontalAlignment"], ["AutomaticSize"], ["Spacing"] = 10}]
       92 GETIMPORT                        R21 K46 [Enum.FillDirection.Vertical]
       94 SETTABLEKS                       R21 R20 K40 ["Layout"]
       96 GETIMPORT                        R21 K48 [Enum.HorizontalAlignment.Left]
       98 SETTABLEKS                       R21 R20 K34 ["HorizontalAlignment"]
      100 GETIMPORT                        R21 K50 [Enum.AutomaticSize.XY]
      102 SETTABLEKS                       R21 R20 K41 ["AutomaticSize"]
      104 DUPTABLE                         R21 K53 [{"Message", "Message2"}]
      105 GETUPVAL                         R22 1
      106 GETTABLEKS                       R22 R22 K23 ["createElement"]
      108 GETUPVAL                         R23 4
      109 DUPTABLE                         R24 K62 [{["AutomaticSize"], ["TextXAlignment"], ["Text"], ["Font"], ["TextSize"] = 20, ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["LayoutOrder"] = 1}]
      110 GETIMPORT                        R25 K50 [Enum.AutomaticSize.XY]
      112 SETTABLEKS                       R25 R24 K41 ["AutomaticSize"]
      114 GETIMPORT                        R25 K63 [Enum.TextXAlignment.Left]
      116 SETTABLEKS                       R25 R24 K54 ["TextXAlignment"]
      118 SETTABLEKS                       R6 R24 K55 ["Text"]
      120 SETTABLEKS                       R7 R24 K12 ["Font"]
      122 GETTABLEKS                       R25 R4 K64 ["TextColor"]
      124 SETTABLEKS                       R25 R24 K57 ["TextColor3"]
      126 CALL                             R22 2 1
      127 SETTABLEKS                       R22 R21 K51 ["Message"]
      129 GETUPVAL                         R22 1
      130 GETTABLEKS                       R22 R22 K23 ["createElement"]
      132 GETUPVAL                         R23 4
      133 DUPTABLE                         R24 K66 [{["AutomaticSize"], ["TextXAlignment"], ["Text"], ["Font"], ["TextSize"] = 20, ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      134 GETIMPORT                        R25 K50 [Enum.AutomaticSize.XY]
      136 SETTABLEKS                       R25 R24 K41 ["AutomaticSize"]
      138 GETIMPORT                        R25 K63 [Enum.TextXAlignment.Left]
      140 SETTABLEKS                       R25 R24 K54 ["TextXAlignment"]
      142 SETTABLEKS                       R9 R24 K55 ["Text"]
      144 SETTABLEKS                       R10 R24 K12 ["Font"]
      146 GETTABLEKS                       R25 R4 K64 ["TextColor"]
      148 SETTABLEKS                       R25 R24 K57 ["TextColor3"]
      150 CALL                             R22 2 1
      151 SETTABLEKS                       R22 R21 K52 ["Message2"]
      153 CALL                             R18 3 1
      154 SETTABLEKS                       R18 R17 K37 ["Content"]
      156 GETTABLEKS                       R18 R1 K67 ["learnMoreUrl"]
      158 JUMPIFNOT                        R18 ; [+38]
      159 GETUPVAL                         R18 1
      160 GETTABLEKS                       R18 R18 K23 ["createElement"]
      162 GETUPVAL                         R19 5
      163 DUPTABLE                         R20 K73 [{["LayoutOrder"] = 3, ["Text"], ["TextYAlignment"], ["OnClick"], ["Style"], ["Position"]}]
      164 SETTABLEKS                       R5 R20 K55 ["Text"]
      166 GETIMPORT                        R21 K75 [Enum.TextYAlignment.Bottom]
      168 SETTABLEKS                       R21 R20 K69 ["TextYAlignment"]
      170 NEWCLOSURE                       R21 P0
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          VAL R1
      173 SETTABLEKS                       R21 R20 K70 ["OnClick"]
      175 DUPTABLE                         R21 K77 [{["Font"], ["TextColor"], ["TextSize"] = 20, ["ShowUnderline"] = True}]
      176 GETIMPORT                        R22 K20 [Enum.Font.SourceSans]
      178 SETTABLEKS                       R22 R21 K12 ["Font"]
      180 GETUPVAL                         R22 7
      181 GETTABLEKS                       R22 R22 K78 ["Blue"]
      183 SETTABLEKS                       R22 R21 K64 ["TextColor"]
      185 SETTABLEKS                       R21 R20 K71 ["Style"]
      187 GETIMPORT                        R21 K80 [UDim2.new]
      189 LOADN                            R22 0
      190 LOADN                            R23 0
      191 LOADN                            R24 0
      192 LOADN                            R25 157
      193 CALL                             R21 4 1
      194 SETTABLEKS                       R21 R20 K72 ["Position"]
      196 CALL                             R18 2 1
      197 SETTABLEKS                       R18 R17 K38 ["LinkText"]
      199 CALL                             R14 3 -1
      200 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["LinkText"]
       25 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R6 R5 K12 ["withContext"]
       29 GETIMPORT                        R7 K14 [game]
       31 LOADK                            R9 K15 ["BrowserService"]
       32 NAMECALL                         R7 R7 K16 ["GetService"]
       34 CALL                             R7 2 1
       35 GETTABLEKS                       R8 R3 K17 ["Pane"]
       37 GETTABLEKS                       R9 R3 K18 ["TextLabel"]
       39 GETTABLEKS                       R10 R2 K19 ["Util"]
       41 GETTABLEKS                       R10 R10 K20 ["GetTextSize"]
       43 GETTABLEKS                       R11 R3 K21 ["StyledDialog"]
       45 GETTABLEKS                       R12 R1 K22 ["PureComponent"]
       47 LOADK                            R14 K23 ["WarningDialog"]
       48 NAMECALL                         R12 R12 K24 ["extend"]
       50 CALL                             R12 2 1
       51 GETTABLEKS                       R13 R2 K19 ["Util"]
       53 GETTABLEKS                       R14 R13 K25 ["Typecheck"]
       55 GETTABLEKS                       R15 R14 K26 ["wrap"]
       57 MOVE                             R16 R12
       58 GETIMPORT                        R17 K1 [script]
       60 CALL                             R15 2 0
       61 GETTABLEKS                       R15 R2 K27 ["Style"]
       63 GETTABLEKS                       R15 R15 K28 ["Colors"]
       65 DUPCLOSURE                       R16 K29 [PROTO_0]
       66 SETTABLEKS                       R16 R12 K30 ["init"]
       68 DUPCLOSURE                       R16 K31 [PROTO_2]
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R15
       77 SETTABLEKS                       R16 R12 K32 ["render"]
       79 MOVE                             R16 R6
       80 DUPTABLE                         R17 K36 [{"Mouse", "Stylizer", "Localization"}]
       81 GETTABLEKS                       R18 R5 K33 ["Mouse"]
       83 SETTABLEKS                       R18 R17 K33 ["Mouse"]
       85 GETTABLEKS                       R18 R5 K34 ["Stylizer"]
       87 SETTABLEKS                       R18 R17 K34 ["Stylizer"]
       89 GETTABLEKS                       R18 R5 K35 ["Localization"]
       91 SETTABLEKS                       R18 R17 K35 ["Localization"]
       93 CALL                             R16 1 1
       94 MOVE                             R17 R12
       95 CALL                             R16 1 1
       96 MOVE                             R12 R16
       97 RETURN                           R12 1
