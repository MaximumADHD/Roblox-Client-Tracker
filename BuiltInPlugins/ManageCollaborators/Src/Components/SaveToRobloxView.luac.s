PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportSaveToRobloxPressed"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R2 0
        6 LOADB                            R3 0
        7 GETIMPORT                        R4 K4 [Enum.StudioCloseMode.None]
        9 NAMECALL                         R0 R0 K5 ["ShowSaveOrPublishPlaceToRoblox"]
       11 CALL                             R0 4 0
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["CloseWidget"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 LOADK                            R7 K4 ["Buttons"]
        9 LOADK                            R8 K5 ["SaveToRoblox"]
       10 NAMECALL                         R5 R3 K6 ["getText"]
       12 CALL                             R5 3 1
       13 GETUPVAL                         R6 0
       14 MOVE                             R8 R5
       15 GETTABLEKS                       R9 R4 K7 ["saveToRobloxView"]
       17 GETTABLEKS                       R9 R9 K8 ["Text"]
       19 GETTABLEKS                       R9 R9 K9 ["TextSize"]
       21 GETTABLEKS                       R10 R4 K7 ["saveToRobloxView"]
       23 GETTABLEKS                       R10 R10 K8 ["Text"]
       25 GETTABLEKS                       R10 R10 K10 ["Font"]
       27 GETIMPORT                        R11 K13 [Vector2.new]
       29 LOADK                            R12 K14 [∞]
       30 LOADK                            R13 K14 [∞]
       31 CALL                             R11 2 -1
       32 NAMECALL                         R6 R6 K15 ["GetTextSize"]
       34 CALL                             R6 -1 1
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K16 ["createElement"]
       38 LOADK                            R8 K17 ["Frame"]
       39 DUPTABLE                         R9 K20 [{"Size", "BackgroundColor3"}]
       40 GETIMPORT                        R10 K22 [UDim2.new]
       42 LOADN                            R11 1
       43 LOADN                            R12 0
       44 LOADN                            R13 1
       45 LOADN                            R14 0
       46 CALL                             R10 4 1
       47 SETTABLEKS                       R10 R9 K18 ["Size"]
       49 GETTABLEKS                       R10 R4 K23 ["backgroundColor"]
       51 SETTABLEKS                       R10 R9 K19 ["BackgroundColor3"]
       53 DUPTABLE                         R10 K26 [{"SaveText", "SaveButton"}]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K16 ["createElement"]
       57 LOADK                            R12 K27 ["TextLabel"]
       58 DUPTABLE                         R13 K31 [{"Text", "TextColor3", "TextSize", "Font", "Position", "AnchorPoint"}]
       59 LOADK                            R16 K32 ["Description"]
       60 LOADK                            R17 K5 ["SaveToRoblox"]
       61 NAMECALL                         R14 R3 K6 ["getText"]
       63 CALL                             R14 3 1
       64 SETTABLEKS                       R14 R13 K8 ["Text"]
       66 GETTABLEKS                       R14 R4 K7 ["saveToRobloxView"]
       68 GETTABLEKS                       R14 R14 K8 ["Text"]
       70 GETTABLEKS                       R14 R14 K28 ["TextColor3"]
       72 SETTABLEKS                       R14 R13 K28 ["TextColor3"]
       74 GETTABLEKS                       R14 R4 K7 ["saveToRobloxView"]
       76 GETTABLEKS                       R14 R14 K8 ["Text"]
       78 GETTABLEKS                       R14 R14 K9 ["TextSize"]
       80 SETTABLEKS                       R14 R13 K9 ["TextSize"]
       82 GETTABLEKS                       R14 R4 K7 ["saveToRobloxView"]
       84 GETTABLEKS                       R14 R14 K8 ["Text"]
       86 GETTABLEKS                       R14 R14 K10 ["Font"]
       88 SETTABLEKS                       R14 R13 K10 ["Font"]
       90 GETIMPORT                        R14 K22 [UDim2.new]
       92 LOADK                            R15 K33 [0.5]
       93 LOADN                            R16 0
       94 LOADN                            R17 0
       95 GETTABLEKS                       R18 R4 K7 ["saveToRobloxView"]
       97 GETTABLEKS                       R18 R18 K8 ["Text"]
       99 GETTABLEKS                       R18 R18 K34 ["YOffset"]
      101 CALL                             R14 4 1
      102 SETTABLEKS                       R14 R13 K29 ["Position"]
      104 GETIMPORT                        R14 K13 [Vector2.new]
      106 LOADK                            R15 K33 [0.5]
      107 LOADK                            R16 K33 [0.5]
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K30 ["AnchorPoint"]
      111 CALL                             R11 2 1
      112 SETTABLEKS                       R11 R10 K24 ["SaveText"]
      114 GETUPVAL                         R11 1
      115 GETTABLEKS                       R11 R11 K16 ["createElement"]
      117 GETUPVAL                         R12 2
      118 DUPTABLE                         R13 K37 [{"Style", "Text", "Size", "Position", "AnchorPoint", "OnClick"}]
      119 LOADK                            R14 K38 ["Active"]
      120 SETTABLEKS                       R14 R13 K35 ["Style"]
      122 SETTABLEKS                       R5 R13 K8 ["Text"]
      124 GETIMPORT                        R14 K22 [UDim2.new]
      126 LOADN                            R15 0
      127 GETTABLEKS                       R17 R6 K39 ["X"]
      129 GETTABLEKS                       R18 R4 K7 ["saveToRobloxView"]
      131 GETTABLEKS                       R18 R18 K40 ["publishButton"]
      133 GETTABLEKS                       R18 R18 K41 ["paddingX"]
      135 ADD                              R16 R17 R18
      136 LOADN                            R17 0
      137 GETTABLEKS                       R19 R6 K42 ["Y"]
      139 GETTABLEKS                       R20 R4 K7 ["saveToRobloxView"]
      141 GETTABLEKS                       R20 R20 K40 ["publishButton"]
      143 GETTABLEKS                       R20 R20 K43 ["paddingY"]
      145 ADD                              R18 R19 R20
      146 CALL                             R14 4 1
      147 SETTABLEKS                       R14 R13 K18 ["Size"]
      149 GETIMPORT                        R14 K22 [UDim2.new]
      151 LOADK                            R15 K33 [0.5]
      152 LOADN                            R16 0
      153 LOADN                            R17 0
      154 GETTABLEKS                       R18 R4 K7 ["saveToRobloxView"]
      156 GETTABLEKS                       R18 R18 K40 ["publishButton"]
      158 GETTABLEKS                       R18 R18 K44 ["offset"]
      160 CALL                             R14 4 1
      161 SETTABLEKS                       R14 R13 K29 ["Position"]
      163 GETIMPORT                        R14 K13 [Vector2.new]
      165 LOADK                            R15 K33 [0.5]
      166 LOADK                            R16 K33 [0.5]
      167 CALL                             R14 2 1
      168 SETTABLEKS                       R14 R13 K30 ["AnchorPoint"]
      170 NEWCLOSURE                       R14 P0
      171 CAPTURE                          UPVAL U3
      172 CAPTURE                          UPVAL U4
      173 CAPTURE                          VAL R2
      174 SETTABLEKS                       R14 R13 K36 ["OnClick"]
      176 CALL                             R11 2 1
      177 SETTABLEKS                       R11 R10 K25 ["SaveButton"]
      179 CALL                             R7 3 -1
      180 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioPublishService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K13 ["UI"]
       37 GETTABLEKS                       R5 R5 K14 ["Button"]
       39 GETTABLEKS                       R6 R4 K15 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K16 ["withContext"]
       43 GETTABLEKS                       R8 R4 K17 ["Style"]
       45 GETTABLEKS                       R8 R8 K18 ["Stylizer"]
       47 GETTABLEKS                       R9 R6 K19 ["Localization"]
       49 GETIMPORT                        R10 K9 [require]
       51 GETTABLEKS                       R11 R2 K20 ["Src"]
       53 GETTABLEKS                       R11 R11 K21 ["Util"]
       55 GETTABLEKS                       R11 R11 K22 ["Analytics"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R11 R3 K23 ["PureComponent"]
       60 LOADK                            R13 K24 ["SaveToRobloxView"]
       61 NAMECALL                         R11 R11 K25 ["extend"]
       63 CALL                             R11 2 1
       64 DUPCLOSURE                       R12 K26 [PROTO_1]
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R12 R11 K27 ["render"]
       72 MOVE                             R12 R7
       73 DUPTABLE                         R13 K28 [{"Stylizer", "Localization"}]
       74 SETTABLEKS                       R8 R13 K18 ["Stylizer"]
       76 SETTABLEKS                       R9 R13 K19 ["Localization"]
       78 CALL                             R12 1 1
       79 MOVE                             R13 R11
       80 CALL                             R12 1 1
       81 MOVE                             R11 R12
       82 RETURN                           R11 1
