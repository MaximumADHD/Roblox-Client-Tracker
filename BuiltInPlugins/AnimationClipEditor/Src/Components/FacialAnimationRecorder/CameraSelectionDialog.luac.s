PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnClose"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 SETTABLEKS                       R2 R0 K1 ["onMessageBoxButtonClicked"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R2 R3 K0 ["CameraID"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R5 K2 [{"selectedGuid"}]
        7 SETTABLEKS                       R2 R5 K1 ["selectedGuid"]
        9 NAMECALL                         R3 R3 K3 ["setState"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClose"]
        8 GETUPVAL                         R5 0
        9 NAMECALL                         R5 R5 K4 ["GetCameraDevices"]
       11 CALL                             R5 1 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K5 ["CameraID"]
       15 NEWTABLE                         R7 0 0
       17 NEWTABLE                         R8 0 0
       19 LOADNIL                          R9
       20 LOADN                            R10 1
       21 GETIMPORT                        R11 K7 [pairs]
       23 MOVE                             R12 R5
       24 CALL                             R11 1 3
       25 FORGPREP_NEXT                    R11
       26 FASTCALL2                        TABLE_INSERT R7 R15 ; [+5]
       28 MOVE                             R17 R7
       29 MOVE                             R18 R15
       30 GETIMPORT                        R16 K10 [table.insert]
       32 CALL                             R16 2 0
       33 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
       35 MOVE                             R17 R8
       36 MOVE                             R18 R14
       37 GETIMPORT                        R16 K10 [table.insert]
       39 CALL                             R16 2 0
       40 JUMPIFNOTEQ                      R14 R6 ; [+2]
       42 MOVE                             R9 R10
       43 ADDK                             R10 R10 K11 [1]
       44 FORGLOOP                         R11 2 ; [-19]
       46 LOADK                            R13 K12 ["FaceCapture"]
       47 LOADK                            R14 K13 ["CameraSelectionTitle"]
       48 NAMECALL                         R11 R2 K14 ["getText"]
       50 CALL                             R11 3 1
       51 GETIMPORT                        R12 K18 [Enum.Font.SourceSansBold]
       53 GETUPVAL                         R13 1
       54 MOVE                             R14 R11
       55 LOADN                            R15 20
       56 MOVE                             R16 R12
       57 GETIMPORT                        R17 K21 [Vector2.new]
       59 LOADN                            R18 194
       60 LOADN                            R19 232
       61 CALL                             R17 2 -1
       62 CALL                             R13 -1 1
       63 LOADK                            R16 K12 ["FaceCapture"]
       64 LOADK                            R17 K22 ["CameraSelectionBody"]
       65 NAMECALL                         R14 R2 K14 ["getText"]
       67 CALL                             R14 3 1
       68 GETIMPORT                        R15 K24 [Enum.Font.SourceSans]
       70 GETUPVAL                         R16 1
       71 MOVE                             R17 R14
       72 LOADN                            R18 20
       73 MOVE                             R19 R15
       74 GETIMPORT                        R20 K21 [Vector2.new]
       76 LOADN                            R21 194
       77 LOADN                            R22 232
       78 CALL                             R20 2 -1
       79 CALL                             R16 -1 1
       80 MULK                             R18 R10 K25 [30]
       81 FASTCALL2K                       MATH_MAX R18 K26 ; [+4]
       83 LOADK                            R19 K26 [40]
       84 GETIMPORT                        R17 K29 [math.max]
       86 CALL                             R17 2 1
       87 GETTABLEKS                       R21 R13 K31 ["Y"]
       89 GETTABLEKS                       R22 R16 K31 ["Y"]
       91 ADD                              R20 R21 R22
       92 ADDK                             R19 R20 K30 [20]
       93 ADD                              R18 R19 R17
       94 GETIMPORT                        R19 K21 [Vector2.new]
       96 LOADN                            R20 194
       97 MOVE                             R21 R18
       98 CALL                             R19 2 1
       99 GETUPVAL                         R21 2
      100 GETTABLEKS                       R20 R21 K32 ["createElement"]
      102 GETUPVAL                         R21 3
      103 DUPTABLE                         R22 K40 [{"Title", "OnClose", "BorderPadding", "OnButtonPressed", "Buttons", "ButtonHorizontalAlignment", "MinContentSize", "Modal"}]
      104 SETTABLEKS                       R11 R22 K33 ["Title"]
      106 SETTABLEKS                       R4 R22 K3 ["OnClose"]
      108 LOADN                            R23 20
      109 SETTABLEKS                       R23 R22 K34 ["BorderPadding"]
      111 GETTABLEKS                       R23 R0 K41 ["onMessageBoxButtonClicked"]
      113 SETTABLEKS                       R23 R22 K35 ["OnButtonPressed"]
      115 NEWTABLE                         R23 0 1
      117 DUPTABLE                         R24 K45 [{"Text", "Key", "Style"}]
      118 GETTABLEKS                       R25 R1 K1 ["Localization"]
      120 LOADK                            R27 K46 ["Dialog"]
      121 LOADK                            R28 K47 ["Confirm"]
      122 NAMECALL                         R25 R25 K14 ["getText"]
      124 CALL                             R25 3 1
      125 SETTABLEKS                       R25 R24 K42 ["Text"]
      127 LOADK                            R25 K47 ["Confirm"]
      128 SETTABLEKS                       R25 R24 K43 ["Key"]
      130 LOADK                            R25 K48 ["RoundPrimary"]
      131 SETTABLEKS                       R25 R24 K44 ["Style"]
      133 SETLIST                          R23 R24 1 [1]
      135 SETTABLEKS                       R23 R22 K36 ["Buttons"]
      137 GETIMPORT                        R23 K51 [Enum.HorizontalAlignment.Center]
      139 SETTABLEKS                       R23 R22 K37 ["ButtonHorizontalAlignment"]
      141 SETTABLEKS                       R19 R22 K38 ["MinContentSize"]
      143 LOADB                            R23 1
      144 SETTABLEKS                       R23 R22 K39 ["Modal"]
      146 DUPTABLE                         R23 K53 [{"Content"}]
      147 GETUPVAL                         R25 2
      148 GETTABLEKS                       R24 R25 K32 ["createElement"]
      150 GETUPVAL                         R25 4
      151 DUPTABLE                         R26 K57 [{"Layout", "HorizontalAlignment", "AutomaticSize", "Spacing"}]
      152 GETIMPORT                        R27 K60 [Enum.FillDirection.Vertical]
      154 SETTABLEKS                       R27 R26 K54 ["Layout"]
      156 GETIMPORT                        R27 K62 [Enum.HorizontalAlignment.Left]
      158 SETTABLEKS                       R27 R26 K49 ["HorizontalAlignment"]
      160 GETIMPORT                        R27 K64 [Enum.AutomaticSize.XY]
      162 SETTABLEKS                       R27 R26 K55 ["AutomaticSize"]
      164 LOADN                            R27 10
      165 SETTABLEKS                       R27 R26 K56 ["Spacing"]
      167 DUPTABLE                         R27 K68 [{"TitleLabel", "BodyLabel", "SelectInputWrapper"}]
      168 GETUPVAL                         R29 2
      169 GETTABLEKS                       R28 R29 K32 ["createElement"]
      171 GETUPVAL                         R29 5
      172 DUPTABLE                         R30 K75 [{"AutomaticSize", "TextXAlignment", "Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
      173 GETIMPORT                        R31 K64 [Enum.AutomaticSize.XY]
      175 SETTABLEKS                       R31 R30 K55 ["AutomaticSize"]
      177 GETIMPORT                        R31 K76 [Enum.TextXAlignment.Left]
      179 SETTABLEKS                       R31 R30 K69 ["TextXAlignment"]
      181 SETTABLEKS                       R11 R30 K42 ["Text"]
      183 SETTABLEKS                       R12 R30 K16 ["Font"]
      185 LOADN                            R31 20
      186 SETTABLEKS                       R31 R30 K70 ["TextSize"]
      188 GETTABLEKS                       R31 R3 K77 ["TextColor"]
      190 SETTABLEKS                       R31 R30 K71 ["TextColor3"]
      192 LOADN                            R31 1
      193 SETTABLEKS                       R31 R30 K72 ["BackgroundTransparency"]
      195 LOADB                            R31 1
      196 SETTABLEKS                       R31 R30 K73 ["TextWrapped"]
      198 LOADN                            R31 1
      199 SETTABLEKS                       R31 R30 K74 ["LayoutOrder"]
      201 CALL                             R28 2 1
      202 SETTABLEKS                       R28 R27 K65 ["TitleLabel"]
      204 GETUPVAL                         R29 2
      205 GETTABLEKS                       R28 R29 K32 ["createElement"]
      207 GETUPVAL                         R29 5
      208 DUPTABLE                         R30 K75 [{"AutomaticSize", "TextXAlignment", "Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
      209 GETIMPORT                        R31 K64 [Enum.AutomaticSize.XY]
      211 SETTABLEKS                       R31 R30 K55 ["AutomaticSize"]
      213 GETIMPORT                        R31 K76 [Enum.TextXAlignment.Left]
      215 SETTABLEKS                       R31 R30 K69 ["TextXAlignment"]
      217 SETTABLEKS                       R14 R30 K42 ["Text"]
      219 SETTABLEKS                       R15 R30 K16 ["Font"]
      221 LOADN                            R31 20
      222 SETTABLEKS                       R31 R30 K70 ["TextSize"]
      224 GETTABLEKS                       R31 R3 K77 ["TextColor"]
      226 SETTABLEKS                       R31 R30 K71 ["TextColor3"]
      228 LOADN                            R31 1
      229 SETTABLEKS                       R31 R30 K72 ["BackgroundTransparency"]
      231 LOADB                            R31 1
      232 SETTABLEKS                       R31 R30 K73 ["TextWrapped"]
      234 LOADN                            R31 2
      235 SETTABLEKS                       R31 R30 K74 ["LayoutOrder"]
      237 CALL                             R28 2 1
      238 SETTABLEKS                       R28 R27 K66 ["BodyLabel"]
      240 GETUPVAL                         R29 2
      241 GETTABLEKS                       R28 R29 K32 ["createElement"]
      243 GETUPVAL                         R29 4
      244 DUPTABLE                         R30 K78 [{"AutomaticSize", "LayoutOrder"}]
      245 GETIMPORT                        R31 K64 [Enum.AutomaticSize.XY]
      247 SETTABLEKS                       R31 R30 K55 ["AutomaticSize"]
      249 LOADN                            R31 4
      250 SETTABLEKS                       R31 R30 K74 ["LayoutOrder"]
      252 DUPTABLE                         R31 K80 [{"CameraSelection"}]
      253 GETUPVAL                         R33 2
      254 GETTABLEKS                       R32 R33 K32 ["createElement"]
      256 GETUPVAL                         R33 6
      257 DUPTABLE                         R34 K86 [{"PlaceholderText", "Width", "SelectedIndex", "Items", "OnItemActivated"}]
      258 LOADK                            R37 K12 ["FaceCapture"]
      259 LOADK                            R38 K87 ["CameraSelectionPlaceholder"]
      260 NAMECALL                         R35 R2 K14 ["getText"]
      262 CALL                             R35 3 1
      263 SETTABLEKS                       R35 R34 K81 ["PlaceholderText"]
      265 LOADN                            R35 194
      266 SETTABLEKS                       R35 R34 K82 ["Width"]
      268 SETTABLEKS                       R9 R34 K83 ["SelectedIndex"]
      270 SETTABLEKS                       R7 R34 K84 ["Items"]
      272 NEWCLOSURE                       R35 P0
      273 CAPTURE                          VAL R8
      274 CAPTURE                          UPVAL U0
      275 CAPTURE                          VAL R0
      276 SETTABLEKS                       R35 R34 K85 ["OnItemActivated"]
      278 CALL                             R32 2 1
      279 SETTABLEKS                       R32 R31 K79 ["CameraSelection"]
      281 CALL                             R28 3 1
      282 SETTABLEKS                       R28 R27 K67 ["SelectInputWrapper"]
      284 CALL                             R24 3 1
      285 SETTABLEKS                       R24 R23 K52 ["Content"]
      287 CALL                             R20 3 -1
      288 RETURN                           R20 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["SelectInput"]
       29 GETTABLEKS                       R7 R5 K13 ["Pane"]
       31 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       33 GETTABLEKS                       R10 R2 K15 ["Util"]
       35 GETTABLEKS                       R9 R10 K16 ["GetTextSize"]
       37 GETTABLEKS                       R10 R5 K17 ["StyledDialog"]
       39 GETIMPORT                        R11 K19 [game]
       41 LOADK                            R13 K20 ["VideoCaptureService"]
       42 NAMECALL                         R11 R11 K21 ["GetService"]
       44 CALL                             R11 2 1
       45 GETTABLEKS                       R12 R1 K22 ["PureComponent"]
       47 LOADK                            R14 K23 ["CameraSelectionDialog"]
       48 NAMECALL                         R12 R12 K24 ["extend"]
       50 CALL                             R12 2 1
       51 GETTABLEKS                       R13 R2 K15 ["Util"]
       53 GETTABLEKS                       R14 R13 K25 ["Typecheck"]
       55 GETTABLEKS                       R15 R14 K26 ["wrap"]
       57 MOVE                             R16 R12
       58 GETIMPORT                        R17 K1 [script]
       60 CALL                             R15 2 0
       61 DUPCLOSURE                       R15 K27 [PROTO_1]
       62 SETTABLEKS                       R15 R12 K28 ["init"]
       64 DUPCLOSURE                       R15 K29 [PROTO_3]
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R15 R12 K30 ["render"]
       74 MOVE                             R15 R4
       75 DUPTABLE                         R16 K33 [{"Stylizer", "Localization"}]
       76 GETTABLEKS                       R17 R3 K31 ["Stylizer"]
       78 SETTABLEKS                       R17 R16 K31 ["Stylizer"]
       80 GETTABLEKS                       R17 R3 K32 ["Localization"]
       82 SETTABLEKS                       R17 R16 K32 ["Localization"]
       84 CALL                             R15 1 1
       85 MOVE                             R16 R12
       86 CALL                             R15 1 1
       87 MOVE                             R12 R15
       88 RETURN                           R12 1
