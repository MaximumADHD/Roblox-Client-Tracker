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
       26 DUPTABLE                         R13 K18 [{"BackgroundColor3", "BorderSizePixel", "Size", "AnchorPoint", "Position", "ZIndex"}]
       27 GETTABLEKS                       R14 R2 K19 ["backgroundColor"]
       29 SETTABLEKS                       R14 R13 K12 ["BackgroundColor3"]
       31 LOADN                            R14 0
       32 SETTABLEKS                       R14 R13 K13 ["BorderSizePixel"]
       34 GETIMPORT                        R14 K22 [UDim2.new]
       36 LOADN                            R15 1
       37 LOADN                            R16 0
       38 LOADN                            R17 0
       39 GETTABLEKS                       R18 R2 K23 ["FOOTER_HEIGHT"]
       41 CALL                             R14 4 1
       42 SETTABLEKS                       R14 R13 K14 ["Size"]
       44 GETIMPORT                        R14 K25 [Vector2.new]
       46 LOADN                            R15 0
       47 LOADN                            R16 1
       48 CALL                             R14 2 1
       49 SETTABLEKS                       R14 R13 K15 ["AnchorPoint"]
       51 GETIMPORT                        R14 K22 [UDim2.new]
       53 LOADN                            R15 0
       54 LOADN                            R16 0
       55 LOADN                            R17 1
       56 LOADN                            R18 0
       57 CALL                             R14 4 1
       58 SETTABLEKS                       R14 R13 K16 ["Position"]
       60 LOADN                            R14 2
       61 SETTABLEKS                       R14 R13 K17 ["ZIndex"]
       63 DUPTABLE                         R14 K29 [{"Gradient", "SaveSettings", "GotoNextScreen"}]
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K10 ["createElement"]
       67 LOADK                            R16 K30 ["ImageLabel"]
       68 DUPTABLE                         R17 K36 [{"Size", "AnchorPoint", "Image", "ImageRectSize", "BorderSizePixel", "BackgroundTransparency", "ImageColor3", "ImageTransparency", "ZIndex"}]
       69 GETIMPORT                        R18 K22 [UDim2.new]
       71 LOADN                            R19 1
       72 LOADN                            R20 0
       73 LOADN                            R21 0
       74 LOADN                            R22 3
       75 CALL                             R18 4 1
       76 SETTABLEKS                       R18 R17 K14 ["Size"]
       78 GETIMPORT                        R18 K25 [Vector2.new]
       80 LOADN                            R19 0
       81 LOADN                            R20 1
       82 CALL                             R18 2 1
       83 SETTABLEKS                       R18 R17 K15 ["AnchorPoint"]
       85 LOADK                            R18 K37 ["rbxasset://textures/gradient.png"]
       86 SETTABLEKS                       R18 R17 K31 ["Image"]
       88 GETUPVAL                         R18 1
       89 SETTABLEKS                       R18 R17 K32 ["ImageRectSize"]
       91 LOADN                            R18 0
       92 SETTABLEKS                       R18 R17 K13 ["BorderSizePixel"]
       94 LOADN                            R18 1
       95 SETTABLEKS                       R18 R17 K33 ["BackgroundTransparency"]
       97 GETTABLEKS                       R18 R2 K38 ["footer"]
       99 GETTABLEKS                       R18 R18 K39 ["gradient"]
      101 SETTABLEKS                       R18 R17 K34 ["ImageColor3"]
      103 LOADK                            R18 K40 [0.9]
      104 SETTABLEKS                       R18 R17 K35 ["ImageTransparency"]
      106 LOADN                            R18 1
      107 SETTABLEKS                       R18 R17 K17 ["ZIndex"]
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K26 ["Gradient"]
      112 GETUPVAL                         R15 0
      113 GETTABLEKS                       R15 R15 K10 ["createElement"]
      115 GETUPVAL                         R16 2
      116 DUPTABLE                         R17 K44 [{"ZIndex", "Buttons", "HorizontalAlignment", "buttonActivated"}]
      117 LOADN                            R18 2
      118 SETTABLEKS                       R18 R17 K17 ["ZIndex"]
      120 NEWTABLE                         R18 0 2
      122 DUPTABLE                         R19 K48 [{"Name", "Active", "Value"}]
      123 LOADK                            R20 K49 ["Cancel"]
      124 SETTABLEKS                       R20 R19 K45 ["Name"]
      126 LOADB                            R20 1
      127 SETTABLEKS                       R20 R19 K46 ["Active"]
      129 LOADB                            R20 0
      130 SETTABLEKS                       R20 R19 K47 ["Value"]
      132 DUPTABLE                         R20 K51 [{"Name", "Default", "Active", "Value"}]
      133 GETTABLEKS                       R21 R5 K45 ["Name"]
      135 SETTABLEKS                       R21 R20 K45 ["Name"]
      137 LOADB                            R21 1
      138 SETTABLEKS                       R21 R20 K50 ["Default"]
      140 GETTABLEKS                       R21 R5 K46 ["Active"]
      142 SETTABLEKS                       R21 R20 K46 ["Active"]
      144 LOADB                            R21 1
      145 SETTABLEKS                       R21 R20 K47 ["Value"]
      147 SETLIST                          R18 R19 2 [1]
      149 SETTABLEKS                       R18 R17 K41 ["Buttons"]
      151 GETIMPORT                        R18 K54 [Enum.HorizontalAlignment.Right]
      153 SETTABLEKS                       R18 R17 K42 ["HorizontalAlignment"]
      155 NEWCLOSURE                       R18 P0
      156 CAPTURE                          VAL R5
      157 CAPTURE                          UPVAL U3
      158 CAPTURE                          VAL R9
      159 CAPTURE                          UPVAL U4
      160 CAPTURE                          VAL R4
      161 SETTABLEKS                       R18 R17 K43 ["buttonActivated"]
      163 MOVE                             R18 R10
      164 CALL                             R15 3 1
      165 SETTABLEKS                       R15 R14 K27 ["SaveSettings"]
      167 LOADB                            R15 0
      168 JUMPIFEQKNIL                     R6 ; [+76]
      170 GETUPVAL                         R15 0
      171 GETTABLEKS                       R15 R15 K10 ["createElement"]
      173 LOADK                            R16 K55 ["TextButton"]
      174 NEWTABLE                         R17 16 0
      176 GETIMPORT                        R18 K22 [UDim2.new]
      178 LOADK                            R19 K56 [0.15]
      179 LOADN                            R20 0
      180 LOADK                            R21 K57 [0.5]
      181 LOADN                            R22 0
      182 CALL                             R18 4 1
      183 SETTABLEKS                       R18 R17 K14 ["Size"]
      185 GETIMPORT                        R18 K22 [UDim2.new]
      187 LOADK                            R19 K58 [0.13]
      188 LOADN                            R20 0
      189 LOADK                            R21 K57 [0.5]
      190 LOADN                            R22 0
      191 CALL                             R18 4 1
      192 SETTABLEKS                       R18 R17 K16 ["Position"]
      194 GETIMPORT                        R18 K25 [Vector2.new]
      196 LOADK                            R19 K57 [0.5]
      197 LOADK                            R20 K57 [0.5]
      198 CALL                             R18 2 1
      199 SETTABLEKS                       R18 R17 K15 ["AnchorPoint"]
      201 LOADN                            R18 3
      202 SETTABLEKS                       R18 R17 K13 ["BorderSizePixel"]
      204 GETTABLEKS                       R18 R2 K59 ["defaultButton"]
      206 GETTABLEKS                       R18 R18 K60 ["ButtonColor"]
      208 SETTABLEKS                       R18 R17 K61 ["TextColor3"]
      210 LOADN                            R18 1
      211 SETTABLEKS                       R18 R17 K33 ["BackgroundTransparency"]
      213 GETIMPORT                        R18 K64 [Enum.TextXAlignment.Left]
      215 SETTABLEKS                       R18 R17 K62 ["TextXAlignment"]
      217 LOADN                            R18 20
      218 SETTABLEKS                       R18 R17 K65 ["TextSize"]
      220 GETTABLEKS                       R18 R2 K38 ["footer"]
      222 GETTABLEKS                       R18 R18 K66 ["textbutton"]
      224 GETTABLEKS                       R18 R18 K67 ["font"]
      226 SETTABLEKS                       R18 R17 K68 ["Font"]
      228 LOADK                            R20 K69 ["FooterButton"]
      229 MOVE                             R21 R7
      230 NAMECALL                         R18 R3 K70 ["getText"]
      232 CALL                             R18 3 1
      233 SETTABLEKS                       R18 R17 K71 ["Text"]
      235 GETUPVAL                         R18 0
      236 GETTABLEKS                       R18 R18 K72 ["Event"]
      238 GETTABLEKS                       R18 R18 K73 ["Activated"]
      240 NEWCLOSURE                       R19 P1
      241 CAPTURE                          VAL R8
      242 CAPTURE                          VAL R6
      243 SETTABLE                         R19 R17 R18
      244 CALL                             R15 2 1
      245 SETTABLEKS                       R15 R14 K28 ["GotoNextScreen"]
      247 CALL                             R11 3 -1
      248 RETURN                           R11 -1

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
        3 LOADN                            R1 0
        4 LOADN                            R2 0
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
