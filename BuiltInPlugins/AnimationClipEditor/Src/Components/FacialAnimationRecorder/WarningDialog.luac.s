PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["learnMoreUrl"]
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
       32 LOADN                            R13 194
       33 LOADN                            R14 232
       34 CALL                             R12 2 -1
       35 CALL                             R8 -1 1
       36 GETTABLEKS                       R9 R1 K18 ["BodyText"]
       38 GETIMPORT                        R10 K20 [Enum.Font.SourceSans]
       40 GETUPVAL                         R11 0
       41 MOVE                             R12 R9
       42 LOADN                            R13 20
       43 MOVE                             R14 R10
       44 GETIMPORT                        R15 K17 [Vector2.new]
       46 LOADN                            R16 194
       47 LOADN                            R17 232
       48 CALL                             R15 2 -1
       49 CALL                             R11 -1 1
       50 GETTABLEKS                       R14 R8 K22 ["Y"]
       52 ADDK                             R13 R14 K21 [10]
       53 GETTABLEKS                       R14 R11 K22 ["Y"]
       55 ADD                              R12 R13 R14
       56 GETIMPORT                        R13 K17 [Vector2.new]
       58 LOADN                            R14 194
       59 MOVE                             R15 R12
       60 CALL                             R13 2 1
       61 GETUPVAL                         R15 1
       62 GETTABLEKS                       R14 R15 K23 ["createElement"]
       64 GETUPVAL                         R15 2
       65 DUPTABLE                         R16 K31 [{"Title", "OnClose", "BorderPadding", "OnButtonPressed", "Buttons", "ButtonHorizontalAlignment", "MinContentSize", "Modal"}]
       66 SETTABLEKS                       R3 R16 K2 ["Title"]
       68 GETTABLEKS                       R17 R1 K24 ["OnClose"]
       70 SETTABLEKS                       R17 R16 K24 ["OnClose"]
       72 LOADN                            R17 20
       73 SETTABLEKS                       R17 R16 K25 ["BorderPadding"]
       75 GETTABLEKS                       R17 R1 K26 ["OnButtonPressed"]
       77 SETTABLEKS                       R17 R16 K26 ["OnButtonPressed"]
       79 GETTABLEKS                       R17 R1 K27 ["Buttons"]
       81 SETTABLEKS                       R17 R16 K27 ["Buttons"]
       83 GETIMPORT                        R17 K34 [Enum.HorizontalAlignment.Right]
       85 SETTABLEKS                       R17 R16 K28 ["ButtonHorizontalAlignment"]
       87 SETTABLEKS                       R13 R16 K29 ["MinContentSize"]
       89 LOADB                            R17 1
       90 SETTABLEKS                       R17 R16 K30 ["Modal"]
       92 DUPTABLE                         R17 K37 [{"Content", "LinkText"}]
       93 GETUPVAL                         R19 1
       94 GETTABLEKS                       R18 R19 K23 ["createElement"]
       96 GETUPVAL                         R19 3
       97 DUPTABLE                         R20 K41 [{"Layout", "HorizontalAlignment", "AutomaticSize", "Spacing"}]
       98 GETIMPORT                        R21 K44 [Enum.FillDirection.Vertical]
      100 SETTABLEKS                       R21 R20 K38 ["Layout"]
      102 GETIMPORT                        R21 K46 [Enum.HorizontalAlignment.Left]
      104 SETTABLEKS                       R21 R20 K32 ["HorizontalAlignment"]
      106 GETIMPORT                        R21 K48 [Enum.AutomaticSize.XY]
      108 SETTABLEKS                       R21 R20 K39 ["AutomaticSize"]
      110 LOADN                            R21 10
      111 SETTABLEKS                       R21 R20 K40 ["Spacing"]
      113 DUPTABLE                         R21 K51 [{"Message", "Message2"}]
      114 GETUPVAL                         R23 1
      115 GETTABLEKS                       R22 R23 K23 ["createElement"]
      117 GETUPVAL                         R23 4
      118 DUPTABLE                         R24 K59 [{"AutomaticSize", "TextXAlignment", "Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
      119 GETIMPORT                        R25 K48 [Enum.AutomaticSize.XY]
      121 SETTABLEKS                       R25 R24 K39 ["AutomaticSize"]
      123 GETIMPORT                        R25 K60 [Enum.TextXAlignment.Left]
      125 SETTABLEKS                       R25 R24 K52 ["TextXAlignment"]
      127 SETTABLEKS                       R6 R24 K53 ["Text"]
      129 SETTABLEKS                       R7 R24 K12 ["Font"]
      131 LOADN                            R25 20
      132 SETTABLEKS                       R25 R24 K54 ["TextSize"]
      134 GETTABLEKS                       R25 R4 K61 ["TextColor"]
      136 SETTABLEKS                       R25 R24 K55 ["TextColor3"]
      138 LOADN                            R25 1
      139 SETTABLEKS                       R25 R24 K56 ["BackgroundTransparency"]
      141 LOADB                            R25 1
      142 SETTABLEKS                       R25 R24 K57 ["TextWrapped"]
      144 LOADN                            R25 1
      145 SETTABLEKS                       R25 R24 K58 ["LayoutOrder"]
      147 CALL                             R22 2 1
      148 SETTABLEKS                       R22 R21 K49 ["Message"]
      150 GETUPVAL                         R23 1
      151 GETTABLEKS                       R22 R23 K23 ["createElement"]
      153 GETUPVAL                         R23 4
      154 DUPTABLE                         R24 K59 [{"AutomaticSize", "TextXAlignment", "Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
      155 GETIMPORT                        R25 K48 [Enum.AutomaticSize.XY]
      157 SETTABLEKS                       R25 R24 K39 ["AutomaticSize"]
      159 GETIMPORT                        R25 K60 [Enum.TextXAlignment.Left]
      161 SETTABLEKS                       R25 R24 K52 ["TextXAlignment"]
      163 SETTABLEKS                       R9 R24 K53 ["Text"]
      165 SETTABLEKS                       R10 R24 K12 ["Font"]
      167 LOADN                            R25 20
      168 SETTABLEKS                       R25 R24 K54 ["TextSize"]
      170 GETTABLEKS                       R25 R4 K61 ["TextColor"]
      172 SETTABLEKS                       R25 R24 K55 ["TextColor3"]
      174 LOADN                            R25 1
      175 SETTABLEKS                       R25 R24 K56 ["BackgroundTransparency"]
      177 LOADB                            R25 1
      178 SETTABLEKS                       R25 R24 K57 ["TextWrapped"]
      180 LOADN                            R25 2
      181 SETTABLEKS                       R25 R24 K58 ["LayoutOrder"]
      183 CALL                             R22 2 1
      184 SETTABLEKS                       R22 R21 K50 ["Message2"]
      186 CALL                             R18 3 1
      187 SETTABLEKS                       R18 R17 K35 ["Content"]
      189 GETTABLEKS                       R18 R1 K62 ["learnMoreUrl"]
      191 JUMPIFNOT                        R18 ; [+47]
      192 GETUPVAL                         R19 1
      193 GETTABLEKS                       R18 R19 K23 ["createElement"]
      195 GETUPVAL                         R19 5
      196 DUPTABLE                         R20 K67 [{"LayoutOrder", "Text", "TextYAlignment", "OnClick", "Style", "Position"}]
      197 LOADN                            R21 3
      198 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      200 SETTABLEKS                       R5 R20 K53 ["Text"]
      202 GETIMPORT                        R21 K69 [Enum.TextYAlignment.Bottom]
      204 SETTABLEKS                       R21 R20 K63 ["TextYAlignment"]
      206 NEWCLOSURE                       R21 P0
      207 CAPTURE                          UPVAL U6
      208 CAPTURE                          VAL R1
      209 SETTABLEKS                       R21 R20 K64 ["OnClick"]
      211 DUPTABLE                         R21 K71 [{"Font", "TextColor", "TextSize", "ShowUnderline"}]
      212 GETIMPORT                        R22 K20 [Enum.Font.SourceSans]
      214 SETTABLEKS                       R22 R21 K12 ["Font"]
      216 GETUPVAL                         R23 7
      217 GETTABLEKS                       R22 R23 K72 ["Blue"]
      219 SETTABLEKS                       R22 R21 K61 ["TextColor"]
      221 LOADN                            R22 20
      222 SETTABLEKS                       R22 R21 K54 ["TextSize"]
      224 LOADB                            R22 1
      225 SETTABLEKS                       R22 R21 K70 ["ShowUnderline"]
      227 SETTABLEKS                       R21 R20 K65 ["Style"]
      229 GETIMPORT                        R21 K74 [UDim2.new]
      231 LOADN                            R22 0
      232 LOADN                            R23 0
      233 LOADN                            R24 0
      234 LOADN                            R25 157
      235 CALL                             R21 4 1
      236 SETTABLEKS                       R21 R20 K66 ["Position"]
      238 CALL                             R18 2 1
      239 SETTABLEKS                       R18 R17 K36 ["LinkText"]
      241 CALL                             R14 3 -1
      242 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
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
       39 GETTABLEKS                       R11 R2 K19 ["Util"]
       41 GETTABLEKS                       R10 R11 K20 ["GetTextSize"]
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
       61 GETTABLEKS                       R16 R2 K27 ["Style"]
       63 GETTABLEKS                       R15 R16 K28 ["Colors"]
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
