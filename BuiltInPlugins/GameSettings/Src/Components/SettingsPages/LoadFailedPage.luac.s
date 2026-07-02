PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["failurePageRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["OnRetry"]
        8 LOADK                            R7 K4 ["General"]
        9 LOADK                            R8 K5 ["SettingsFailedToLoad"]
       10 NAMECALL                         R5 R3 K6 ["getText"]
       12 CALL                             R5 3 1
       13 LOADK                            R8 K4 ["General"]
       14 LOADK                            R9 K7 ["ButtonRetry"]
       15 NAMECALL                         R6 R3 K6 ["getText"]
       17 CALL                             R6 3 1
       18 GETTABLEKS                       R8 R0 K8 ["failurePageRef"]
       20 NAMECALL                         R8 R8 K9 ["getValue"]
       22 CALL                             R8 1 1
       23 JUMPIFNOT                        R8 ; [+15]
       24 GETTABLEKS                       R8 R0 K8 ["failurePageRef"]
       26 NAMECALL                         R8 R8 K9 ["getValue"]
       28 CALL                             R8 1 1
       29 GETTABLEKS                       R8 R8 K10 ["AbsoluteSize"]
       31 GETTABLEKS                       R8 R8 K11 ["X"]
       33 GETTABLEKS                       R9 R2 K12 ["settingsPage"]
       35 GETTABLEKS                       R9 R9 K13 ["failLabelPaddingX"]
       37 SUB                              R7 R8 R9
       38 JUMPIF                           R7 ; [+1]
       39 LOADK                            R7 K14 [∞]
       40 GETUPVAL                         R8 0
       41 MOVE                             R10 R5
       42 GETTABLEKS                       R11 R2 K15 ["fontStyle"]
       44 GETTABLEKS                       R11 R11 K16 ["Normal"]
       46 GETTABLEKS                       R11 R11 K17 ["TextSize"]
       48 GETTABLEKS                       R12 R2 K15 ["fontStyle"]
       50 GETTABLEKS                       R12 R12 K16 ["Normal"]
       52 GETTABLEKS                       R12 R12 K18 ["Font"]
       54 GETIMPORT                        R13 K21 [Vector2.new]
       56 MOVE                             R14 R7
       57 LOADK                            R15 K14 [∞]
       58 CALL                             R13 2 -1
       59 NAMECALL                         R8 R8 K22 ["GetTextSize"]
       61 CALL                             R8 -1 1
       62 GETUPVAL                         R9 0
       63 MOVE                             R11 R6
       64 GETTABLEKS                       R12 R2 K15 ["fontStyle"]
       66 GETTABLEKS                       R12 R12 K16 ["Normal"]
       68 GETTABLEKS                       R12 R12 K17 ["TextSize"]
       70 GETTABLEKS                       R13 R2 K15 ["fontStyle"]
       72 GETTABLEKS                       R13 R13 K16 ["Normal"]
       74 GETTABLEKS                       R13 R13 K18 ["Font"]
       76 GETIMPORT                        R14 K21 [Vector2.new]
       78 LOADK                            R15 K14 [∞]
       79 LOADK                            R16 K14 [∞]
       80 CALL                             R14 2 -1
       81 NAMECALL                         R9 R9 K22 ["GetTextSize"]
       83 CALL                             R9 -1 1
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R10 R10 K23 ["createElement"]
       87 GETUPVAL                         R11 2
       88 NEWTABLE                         R12 1 0
       90 GETUPVAL                         R13 1
       91 GETTABLEKS                       R13 R13 K24 ["Ref"]
       93 GETTABLEKS                       R14 R0 K8 ["failurePageRef"]
       95 SETTABLE                         R14 R12 R13
       96 DUPTABLE                         R13 K28 [{"Layout", "Label", "PublishButton"}]
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R14 R14 K23 ["createElement"]
      100 LOADK                            R15 K29 ["UIListLayout"]
      101 DUPTABLE                         R16 K35 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding"}]
      102 GETIMPORT                        R17 K38 [Enum.SortOrder.LayoutOrder]
      104 SETTABLEKS                       R17 R16 K30 ["SortOrder"]
      106 GETIMPORT                        R17 K40 [Enum.HorizontalAlignment.Center]
      108 SETTABLEKS                       R17 R16 K31 ["HorizontalAlignment"]
      110 GETIMPORT                        R17 K41 [Enum.VerticalAlignment.Center]
      112 SETTABLEKS                       R17 R16 K32 ["VerticalAlignment"]
      114 GETIMPORT                        R17 K43 [Enum.FillDirection.Vertical]
      116 SETTABLEKS                       R17 R16 K33 ["FillDirection"]
      118 GETIMPORT                        R17 K45 [UDim.new]
      120 LOADN                            R18 0
      121 GETTABLEKS                       R19 R2 K12 ["settingsPage"]
      123 GETTABLEKS                       R19 R19 K46 ["failPageListPaddingY"]
      125 CALL                             R17 2 1
      126 SETTABLEKS                       R17 R16 K34 ["Padding"]
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R13 K25 ["Layout"]
      131 GETUPVAL                         R14 1
      132 GETTABLEKS                       R14 R14 K23 ["createElement"]
      134 LOADK                            R15 K47 ["TextLabel"]
      135 GETUPVAL                         R16 3
      136 GETTABLEKS                       R16 R16 K48 ["Dictionary"]
      138 GETTABLEKS                       R16 R16 K49 ["join"]
      140 GETTABLEKS                       R17 R2 K15 ["fontStyle"]
      142 GETTABLEKS                       R17 R17 K16 ["Normal"]
      144 DUPTABLE                         R18 K54 [{["LayoutOrder"] = 1, ["Text"], ["Size"], ["BackgroundTransparency"] = 1}]
      145 SETTABLEKS                       R5 R18 K51 ["Text"]
      147 GETIMPORT                        R19 K57 [UDim2.fromOffset]
      149 GETTABLEKS                       R20 R8 K11 ["X"]
      151 GETTABLEKS                       R21 R8 K58 ["Y"]
      153 CALL                             R19 2 1
      154 SETTABLEKS                       R19 R18 K52 ["Size"]
      156 CALL                             R16 2 1
      157 DUPTABLE                         R17 K59 [{"Padding"}]
      158 GETUPVAL                         R18 1
      159 GETTABLEKS                       R18 R18 K23 ["createElement"]
      161 LOADK                            R19 K60 ["UIPadding"]
      162 DUPTABLE                         R20 K63 [{"PaddingLeft", "PaddingRight"}]
      163 GETIMPORT                        R21 K45 [UDim.new]
      165 LOADN                            R22 0
      166 GETTABLEKS                       R24 R2 K12 ["settingsPage"]
      168 GETTABLEKS                       R24 R24 K13 ["failLabelPaddingX"]
      170 DIVK                             R23 R24 K64 [2]
      171 CALL                             R21 2 1
      172 SETTABLEKS                       R21 R20 K61 ["PaddingLeft"]
      174 GETIMPORT                        R21 K45 [UDim.new]
      176 LOADN                            R22 0
      177 GETTABLEKS                       R24 R2 K12 ["settingsPage"]
      179 GETTABLEKS                       R24 R24 K13 ["failLabelPaddingX"]
      181 DIVK                             R23 R24 K64 [2]
      182 CALL                             R21 2 1
      183 SETTABLEKS                       R21 R20 K62 ["PaddingRight"]
      185 CALL                             R18 2 1
      186 SETTABLEKS                       R18 R17 K34 ["Padding"]
      188 CALL                             R14 3 1
      189 SETTABLEKS                       R14 R13 K26 ["Label"]
      191 GETUPVAL                         R14 1
      192 GETTABLEKS                       R14 R14 K23 ["createElement"]
      194 GETUPVAL                         R15 4
      195 DUPTABLE                         R16 K68 [{["LayoutOrder"] = 2, ["Style"] = "GameSettingsPrimaryButton", ["Text"], ["Size"], ["OnClick"]}]
      196 SETTABLEKS                       R6 R16 K51 ["Text"]
      198 GETIMPORT                        R17 K69 [UDim2.new]
      200 LOADN                            R18 0
      201 GETTABLEKS                       R20 R9 K11 ["X"]
      203 GETTABLEKS                       R21 R2 K12 ["settingsPage"]
      205 GETTABLEKS                       R21 R21 K70 ["reloadButton"]
      207 GETTABLEKS                       R21 R21 K71 ["paddingX"]
      209 ADD                              R19 R20 R21
      210 LOADN                            R20 0
      211 GETTABLEKS                       R22 R9 K58 ["Y"]
      213 GETTABLEKS                       R23 R2 K12 ["settingsPage"]
      215 GETTABLEKS                       R23 R23 K70 ["reloadButton"]
      217 GETTABLEKS                       R23 R23 K72 ["paddingY"]
      219 ADD                              R21 R22 R23
      220 CALL                             R17 4 1
      221 SETTABLEKS                       R17 R16 K52 ["Size"]
      223 NEWCLOSURE                       R17 P0
      224 CAPTURE                          VAL R4
      225 SETTABLEKS                       R17 R16 K67 ["OnClick"]
      227 NEWTABLE                         R17 0 1
      229 GETUPVAL                         R18 1
      230 GETTABLEKS                       R18 R18 K23 ["createElement"]
      232 GETUPVAL                         R19 5
      233 DUPTABLE                         R20 K75 [{["Cursor"] = "PointingHand"}]
      234 CALL                             R18 2 -1
      235 SETLIST                          R17 R18 -1 [1]
      237 CALL                             R14 3 1
      238 SETTABLEKS                       R14 R13 K27 ["PublishButton"]
      240 CALL                             R10 3 -1
      241 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K9 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R1 K9 ["Packages"]
       35 GETTABLEKS                       R5 R5 K12 ["Framework"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       40 GETTABLEKS                       R6 R5 K14 ["withContext"]
       42 GETTABLEKS                       R7 R4 K15 ["UI"]
       44 GETTABLEKS                       R8 R7 K16 ["Button"]
       46 GETTABLEKS                       R9 R7 K17 ["Container"]
       48 GETTABLEKS                       R10 R7 K18 ["HoverArea"]
       50 GETTABLEKS                       R11 R2 K19 ["Component"]
       52 GETIMPORT                        R13 K5 [script]
       54 GETTABLEKS                       R13 R13 K20 ["Name"]
       56 NAMECALL                         R11 R11 K21 ["extend"]
       58 CALL                             R11 2 1
       59 DUPCLOSURE                       R12 K22 [PROTO_0]
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R12 R11 K23 ["init"]
       63 DUPCLOSURE                       R12 K24 [PROTO_2]
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R10
       70 SETTABLEKS                       R12 R11 K25 ["render"]
       72 MOVE                             R12 R6
       73 DUPTABLE                         R13 K28 [{"Stylizer", "Localization"}]
       74 GETTABLEKS                       R14 R5 K26 ["Stylizer"]
       76 SETTABLEKS                       R14 R13 K26 ["Stylizer"]
       78 GETTABLEKS                       R14 R5 K27 ["Localization"]
       80 SETTABLEKS                       R14 R13 K27 ["Localization"]
       82 CALL                             R12 1 1
       83 MOVE                             R13 R11
       84 CALL                             R12 1 1
       85 MOVE                             R11 R12
       86 RETURN                           R11 1
