PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["OnActivated"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["reportSaveCancel"]
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 3
       12 NAMECALL                         R1 R1 K2 ["SaveOrPublishPlaceToRobloxIsCanceled"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 4
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClose"]
        8 GETTABLEKS                       R5 R1 K4 ["MainButton"]
       10 GETTABLEKS                       R6 R1 K5 ["NextScreen"]
       12 GETTABLEKS                       R7 R1 K6 ["NextScreenText"]
       14 GETTABLEKS                       R8 R1 K7 ["OpenNextScreen"]
       16 GETTABLEKS                       R9 R1 K8 ["IsPublish"]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R11 R11 K9 ["Children"]
       21 GETTABLE                         R10 R1 R11
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K10 ["createElement"]
       25 LOADK                            R12 K11 ["Frame"]
       26 DUPTABLE                         R13 K20 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Size"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
       27 GETTABLEKS                       R14 R2 K21 ["backgroundColor"]
       29 SETTABLEKS                       R14 R13 K12 ["BackgroundColor3"]
       31 GETIMPORT                        R14 K24 [UDim2.new]
       33 LOADN                            R15 1
       34 LOADN                            R16 0
       35 LOADN                            R17 0
       36 GETTABLEKS                       R18 R2 K25 ["FOOTER_HEIGHT"]
       38 CALL                             R14 4 1
       39 SETTABLEKS                       R14 R13 K15 ["Size"]
       41 GETIMPORT                        R14 K27 [Vector2.new]
       43 LOADN                            R15 0
       44 LOADN                            R16 1
       45 CALL                             R14 2 1
       46 SETTABLEKS                       R14 R13 K16 ["AnchorPoint"]
       48 GETIMPORT                        R14 K24 [UDim2.new]
       50 LOADN                            R15 0
       51 LOADN                            R16 0
       52 LOADN                            R17 1
       53 LOADN                            R18 0
       54 CALL                             R14 4 1
       55 SETTABLEKS                       R14 R13 K17 ["Position"]
       57 DUPTABLE                         R14 K31 [{"Gradient", "SaveSettings", "GotoNextScreen"}]
       58 GETUPVAL                         R15 0
       59 GETTABLEKS                       R15 R15 K10 ["createElement"]
       61 LOADK                            R16 K32 ["ImageLabel"]
       62 DUPTABLE                         R17 K41 [{["Size"], ["AnchorPoint"], ["Image"] = "rbxasset://textures/gradient.png", ["ImageRectSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["ImageColor3"], ["ImageTransparency"] = 0.9, ["ZIndex"] = 1}]
       63 GETIMPORT                        R18 K24 [UDim2.new]
       65 LOADN                            R19 1
       66 LOADN                            R20 0
       67 LOADN                            R21 0
       68 LOADN                            R22 3
       69 CALL                             R18 4 1
       70 SETTABLEKS                       R18 R17 K15 ["Size"]
       72 GETIMPORT                        R18 K27 [Vector2.new]
       74 LOADN                            R19 0
       75 LOADN                            R20 1
       76 CALL                             R18 2 1
       77 SETTABLEKS                       R18 R17 K16 ["AnchorPoint"]
       79 GETUPVAL                         R18 1
       80 SETTABLEKS                       R18 R17 K35 ["ImageRectSize"]
       82 GETTABLEKS                       R18 R2 K42 ["footer"]
       84 GETTABLEKS                       R18 R18 K43 ["gradient"]
       86 SETTABLEKS                       R18 R17 K38 ["ImageColor3"]
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K28 ["Gradient"]
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R15 R15 K10 ["createElement"]
       94 GETUPVAL                         R16 2
       95 DUPTABLE                         R17 K47 [{["ZIndex"] = 2, ["Buttons"], ["HorizontalAlignment"], ["buttonActivated"]}]
       96 NEWTABLE                         R18 0 2
       98 DUPTABLE                         R19 K54 [{["Name"] = "Cancel", ["Active"] = True, ["Value"] = False}]
       99 DUPTABLE                         R20 K56 [{["Name"], ["Default"] = True, ["Active"], ["Value"] = True}]
      100 GETTABLEKS                       R21 R5 K48 ["Name"]
      102 SETTABLEKS                       R21 R20 K48 ["Name"]
      104 GETTABLEKS                       R21 R5 K50 ["Active"]
      106 SETTABLEKS                       R21 R20 K50 ["Active"]
      108 SETLIST                          R18 R19 2 [1]
      110 SETTABLEKS                       R18 R17 K44 ["Buttons"]
      112 GETIMPORT                        R18 K59 [Enum.HorizontalAlignment.Right]
      114 SETTABLEKS                       R18 R17 K45 ["HorizontalAlignment"]
      116 NEWCLOSURE                       R18 P0
      117 CAPTURE                          VAL R5
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          VAL R9
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          VAL R4
      122 SETTABLEKS                       R18 R17 K46 ["buttonActivated"]
      124 MOVE                             R18 R10
      125 CALL                             R15 3 1
      126 SETTABLEKS                       R15 R14 K29 ["SaveSettings"]
      128 LOADB                            R15 0
      129 JUMPIFEQKNIL                     R6 ; [+76]
      131 GETUPVAL                         R15 0
      132 GETTABLEKS                       R15 R15 K10 ["createElement"]
      134 LOADK                            R16 K60 ["TextButton"]
      135 NEWTABLE                         R17 16 0
      137 GETIMPORT                        R18 K24 [UDim2.new]
      139 LOADK                            R19 K61 [0.15]
      140 LOADN                            R20 0
      141 LOADK                            R21 K62 [0.5]
      142 LOADN                            R22 0
      143 CALL                             R18 4 1
      144 SETTABLEKS                       R18 R17 K15 ["Size"]
      146 GETIMPORT                        R18 K24 [UDim2.new]
      148 LOADK                            R19 K63 [0.13]
      149 LOADN                            R20 0
      150 LOADK                            R21 K62 [0.5]
      151 LOADN                            R22 0
      152 CALL                             R18 4 1
      153 SETTABLEKS                       R18 R17 K17 ["Position"]
      155 GETIMPORT                        R18 K27 [Vector2.new]
      157 LOADK                            R19 K62 [0.5]
      158 LOADK                            R20 K62 [0.5]
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K16 ["AnchorPoint"]
      162 LOADN                            R18 3
      163 SETTABLEKS                       R18 R17 K13 ["BorderSizePixel"]
      165 GETTABLEKS                       R18 R2 K64 ["defaultButton"]
      167 GETTABLEKS                       R18 R18 K65 ["ButtonColor"]
      169 SETTABLEKS                       R18 R17 K66 ["TextColor3"]
      171 LOADN                            R18 1
      172 SETTABLEKS                       R18 R17 K36 ["BackgroundTransparency"]
      174 GETIMPORT                        R18 K69 [Enum.TextXAlignment.Left]
      176 SETTABLEKS                       R18 R17 K67 ["TextXAlignment"]
      178 LOADN                            R18 20
      179 SETTABLEKS                       R18 R17 K70 ["TextSize"]
      181 GETTABLEKS                       R18 R2 K42 ["footer"]
      183 GETTABLEKS                       R18 R18 K71 ["textbutton"]
      185 GETTABLEKS                       R18 R18 K72 ["font"]
      187 SETTABLEKS                       R18 R17 K73 ["Font"]
      189 LOADK                            R20 K74 ["FooterButton"]
      190 MOVE                             R21 R7
      191 NAMECALL                         R18 R3 K75 ["getText"]
      193 CALL                             R18 3 1
      194 SETTABLEKS                       R18 R17 K76 ["Text"]
      196 GETUPVAL                         R18 0
      197 GETTABLEKS                       R18 R18 K77 ["Event"]
      199 GETTABLEKS                       R18 R18 K78 ["Activated"]
      201 NEWCLOSURE                       R19 P1
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R6
      204 SETTABLE                         R19 R17 R18
      205 CALL                             R15 2 1
      206 SETTABLEKS                       R15 R14 K30 ["GotoNextScreen"]
      208 CALL                             R11 3 -1
      209 RETURN                           R11 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"OpenNextScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["OpenNextScreen"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Vector2.new]
        3 LOADN                            R1 512
        4 LOADN                            R2 256
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K4 [script]
        8 GETTABLEKS                       R1 R1 K5 ["Parent"]
       10 GETTABLEKS                       R1 R1 K5 ["Parent"]
       12 GETTABLEKS                       R1 R1 K5 ["Parent"]
       14 GETIMPORT                        R2 K7 [require]
       16 GETTABLEKS                       R3 R1 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K7 [require]
       23 GETTABLEKS                       R4 R1 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K7 [require]
       30 GETTABLEKS                       R5 R1 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["withContext"]
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R8 R1 K14 ["Src"]
       43 GETTABLEKS                       R8 R8 K15 ["Actions"]
       45 GETTABLEKS                       R8 R8 K16 ["SetScreen"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K7 [require]
       50 GETTABLEKS                       R9 R1 K14 ["Src"]
       52 GETTABLEKS                       R9 R9 K17 ["Components"]
       54 GETTABLEKS                       R9 R9 K18 ["ButtonBar"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K7 [require]
       59 GETTABLEKS                       R10 R1 K14 ["Src"]
       61 GETTABLEKS                       R10 R10 K19 ["Util"]
       63 GETTABLEKS                       R10 R10 K20 ["Analytics"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K22 [game]
       68 LOADK                            R12 K23 ["StudioPublishService"]
       69 NAMECALL                         R10 R10 K24 ["GetService"]
       71 CALL                             R10 2 1
       72 GETTABLEKS                       R11 R2 K25 ["PureComponent"]
       74 LOADK                            R13 K26 ["Footer"]
       75 NAMECALL                         R11 R11 K27 ["extend"]
       77 CALL                             R11 2 1
       78 DUPCLOSURE                       R12 K28 [PROTO_2]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 SETTABLEKS                       R12 R11 K29 ["render"]
       86 MOVE                             R12 R6
       87 DUPTABLE                         R13 K32 [{"Stylizer", "Localization"}]
       88 GETTABLEKS                       R14 R5 K30 ["Stylizer"]
       90 SETTABLEKS                       R14 R13 K30 ["Stylizer"]
       92 GETTABLEKS                       R14 R5 K31 ["Localization"]
       94 SETTABLEKS                       R14 R13 K31 ["Localization"]
       96 CALL                             R12 1 1
       97 MOVE                             R13 R11
       98 CALL                             R12 1 1
       99 MOVE                             R11 R12
      100 DUPCLOSURE                       R12 K33 [PROTO_4]
      101 CAPTURE                          VAL R7
      102 GETTABLEKS                       R13 R3 K34 ["connect"]
      104 LOADNIL                          R14
      105 MOVE                             R15 R12
      106 CALL                             R13 2 1
      107 MOVE                             R14 R11
      108 CALL                             R13 1 -1
      109 RETURN                           R13 -1
