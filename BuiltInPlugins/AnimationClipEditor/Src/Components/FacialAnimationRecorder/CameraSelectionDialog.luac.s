PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnClose"]
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
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K5 ["CameraID"]
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
       59 LOADN                            R18 450
       60 LOADN                            R19 1000
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
       76 LOADN                            R21 450
       77 LOADN                            R22 1000
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
       96 LOADN                            R20 450
       97 MOVE                             R21 R18
       98 CALL                             R19 2 1
       99 GETUPVAL                         R20 2
      100 GETTABLEKS                       R20 R20 K32 ["createElement"]
      102 GETUPVAL                         R21 3
      103 DUPTABLE                         R22 K41 [{["Title"], ["OnClose"], ["BorderPadding"] = 20, ["OnButtonPressed"], ["Buttons"], ["ButtonHorizontalAlignment"], ["MinContentSize"], ["Modal"] = True}]
      104 SETTABLEKS                       R11 R22 K33 ["Title"]
      106 SETTABLEKS                       R4 R22 K3 ["OnClose"]
      108 GETTABLEKS                       R23 R0 K42 ["onMessageBoxButtonClicked"]
      110 SETTABLEKS                       R23 R22 K35 ["OnButtonPressed"]
      112 NEWTABLE                         R23 0 1
      114 DUPTABLE                         R24 K48 [{["Text"], ["Key"] = "Confirm", ["Style"] = "RoundPrimary"}]
      115 GETTABLEKS                       R25 R1 K1 ["Localization"]
      117 LOADK                            R27 K49 ["Dialog"]
      118 LOADK                            R28 K45 ["Confirm"]
      119 NAMECALL                         R25 R25 K14 ["getText"]
      121 CALL                             R25 3 1
      122 SETTABLEKS                       R25 R24 K43 ["Text"]
      124 SETLIST                          R23 R24 1 [1]
      126 SETTABLEKS                       R23 R22 K36 ["Buttons"]
      128 GETIMPORT                        R23 K52 [Enum.HorizontalAlignment.Center]
      130 SETTABLEKS                       R23 R22 K37 ["ButtonHorizontalAlignment"]
      132 SETTABLEKS                       R19 R22 K38 ["MinContentSize"]
      134 DUPTABLE                         R23 K54 [{"Content"}]
      135 GETUPVAL                         R24 2
      136 GETTABLEKS                       R24 R24 K32 ["createElement"]
      138 GETUPVAL                         R25 4
      139 DUPTABLE                         R26 K59 [{["Layout"], ["HorizontalAlignment"], ["AutomaticSize"], ["Spacing"] = 10}]
      140 GETIMPORT                        R27 K62 [Enum.FillDirection.Vertical]
      142 SETTABLEKS                       R27 R26 K55 ["Layout"]
      144 GETIMPORT                        R27 K64 [Enum.HorizontalAlignment.Left]
      146 SETTABLEKS                       R27 R26 K50 ["HorizontalAlignment"]
      148 GETIMPORT                        R27 K66 [Enum.AutomaticSize.XY]
      150 SETTABLEKS                       R27 R26 K56 ["AutomaticSize"]
      152 DUPTABLE                         R27 K70 [{"TitleLabel", "BodyLabel", "SelectInputWrapper"}]
      153 GETUPVAL                         R28 2
      154 GETTABLEKS                       R28 R28 K32 ["createElement"]
      156 GETUPVAL                         R29 5
      157 DUPTABLE                         R30 K77 [{["AutomaticSize"], ["TextXAlignment"], ["Text"], ["Font"], ["TextSize"] = 20, ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["LayoutOrder"] = 1}]
      158 GETIMPORT                        R31 K66 [Enum.AutomaticSize.XY]
      160 SETTABLEKS                       R31 R30 K56 ["AutomaticSize"]
      162 GETIMPORT                        R31 K78 [Enum.TextXAlignment.Left]
      164 SETTABLEKS                       R31 R30 K71 ["TextXAlignment"]
      166 SETTABLEKS                       R11 R30 K43 ["Text"]
      168 SETTABLEKS                       R12 R30 K16 ["Font"]
      170 GETTABLEKS                       R31 R3 K79 ["TextColor"]
      172 SETTABLEKS                       R31 R30 K73 ["TextColor3"]
      174 CALL                             R28 2 1
      175 SETTABLEKS                       R28 R27 K67 ["TitleLabel"]
      177 GETUPVAL                         R28 2
      178 GETTABLEKS                       R28 R28 K32 ["createElement"]
      180 GETUPVAL                         R29 5
      181 DUPTABLE                         R30 K81 [{["AutomaticSize"], ["TextXAlignment"], ["Text"], ["Font"], ["TextSize"] = 20, ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      182 GETIMPORT                        R31 K66 [Enum.AutomaticSize.XY]
      184 SETTABLEKS                       R31 R30 K56 ["AutomaticSize"]
      186 GETIMPORT                        R31 K78 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R31 R30 K71 ["TextXAlignment"]
      190 SETTABLEKS                       R14 R30 K43 ["Text"]
      192 SETTABLEKS                       R15 R30 K16 ["Font"]
      194 GETTABLEKS                       R31 R3 K79 ["TextColor"]
      196 SETTABLEKS                       R31 R30 K73 ["TextColor3"]
      198 CALL                             R28 2 1
      199 SETTABLEKS                       R28 R27 K68 ["BodyLabel"]
      201 GETUPVAL                         R28 2
      202 GETTABLEKS                       R28 R28 K32 ["createElement"]
      204 GETUPVAL                         R29 4
      205 DUPTABLE                         R30 K83 [{["AutomaticSize"], ["LayoutOrder"] = 4}]
      206 GETIMPORT                        R31 K66 [Enum.AutomaticSize.XY]
      208 SETTABLEKS                       R31 R30 K56 ["AutomaticSize"]
      210 DUPTABLE                         R31 K85 [{"CameraSelection"}]
      211 GETUPVAL                         R32 2
      212 GETTABLEKS                       R32 R32 K32 ["createElement"]
      214 GETUPVAL                         R33 6
      215 DUPTABLE                         R34 K92 [{["PlaceholderText"], ["Width"] = 450, ["SelectedIndex"], ["Items"], ["OnItemActivated"]}]
      216 LOADK                            R37 K12 ["FaceCapture"]
      217 LOADK                            R38 K93 ["CameraSelectionPlaceholder"]
      218 NAMECALL                         R35 R2 K14 ["getText"]
      220 CALL                             R35 3 1
      221 SETTABLEKS                       R35 R34 K86 ["PlaceholderText"]
      223 SETTABLEKS                       R9 R34 K89 ["SelectedIndex"]
      225 SETTABLEKS                       R7 R34 K90 ["Items"]
      227 NEWCLOSURE                       R35 P0
      228 CAPTURE                          VAL R8
      229 CAPTURE                          UPVAL U0
      230 CAPTURE                          VAL R0
      231 SETTABLEKS                       R35 R34 K91 ["OnItemActivated"]
      233 CALL                             R32 2 1
      234 SETTABLEKS                       R32 R31 K84 ["CameraSelection"]
      236 CALL                             R28 3 1
      237 SETTABLEKS                       R28 R27 K69 ["SelectInputWrapper"]
      239 CALL                             R24 3 1
      240 SETTABLEKS                       R24 R23 K53 ["Content"]
      242 CALL                             R20 3 -1
      243 RETURN                           R20 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["SelectInput"]
       29 GETTABLEKS                       R7 R5 K13 ["Pane"]
       31 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       33 GETTABLEKS                       R9 R2 K15 ["Util"]
       35 GETTABLEKS                       R9 R9 K16 ["GetTextSize"]
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
