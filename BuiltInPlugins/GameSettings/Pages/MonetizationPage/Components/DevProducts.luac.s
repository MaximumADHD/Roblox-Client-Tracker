PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOTEQ                      R0 R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 JUMPIFNOTEQ                      R0 R2 ; [+7]
       12 GETUPVAL                         R2 3
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K0 ["CopyToClipboard"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0
       18 GETIMPORT                        R2 K2 [error]
       20 LOADK                            R3 K3 ["Invalid Key"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["row"]
        2 GETTABLEN                        R2 R3 1
        3 FASTCALL1                        TONUMBER R2 ; [+3]
        4 MOVE                             R4 R2
        5 GETIMPORT                        R3 K2 [tonumber]
        7 CALL                             R3 1 1
        8 JUMPIF                           R3 ; [+18]
        9 LOADNIL                          R3
       10 GETIMPORT                        R4 K4 [pairs]
       12 MOVE                             R5 R1
       13 CALL                             R4 1 3
       14 FORGPREP_NEXT                    R4
       15 GETTABLEKS                       R9 R8 K5 ["Key"]
       17 GETUPVAL                         R10 0
       18 CALL                             R10 0 1
       19 JUMPIFNOTEQ                      R9 R10 ; [+3]
       21 MOVE                             R3 R7
       22 JUMP                             ; [+2]
       23 FORGLOOP                         R4 2 ; [-9]
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R1 R3
       27 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["ProductList"]
        8 GETTABLEKS                       R5 R1 K4 ["ShowTable"]
       10 GETTABLEKS                       R6 R1 K5 ["CreateNewDevProduct"]
       12 GETTABLEKS                       R7 R1 K6 ["OnEditDevProductClicked"]
       14 GETTABLEKS                       R8 R1 K7 ["OnLoadMoreDevProducts"]
       16 GETTABLEKS                       R9 R1 K8 ["LayoutOrder"]
       18 LOADK                            R12 K9 ["General"]
       19 LOADK                            R13 K10 ["ButtonCreate"]
       20 NAMECALL                         R10 R3 K11 ["getText"]
       22 CALL                             R10 3 1
       23 GETUPVAL                         R11 0
       24 MOVE                             R12 R10
       25 GETTABLEKS                       R13 R2 K12 ["fontStyle"]
       27 GETTABLEKS                       R13 R13 K13 ["Normal"]
       29 GETTABLEKS                       R13 R13 K14 ["TextSize"]
       31 GETTABLEKS                       R14 R2 K12 ["fontStyle"]
       33 GETTABLEKS                       R14 R14 K13 ["Normal"]
       35 GETTABLEKS                       R14 R14 K15 ["Font"]
       37 CALL                             R11 3 1
       38 NEWTABLE                         R12 0 3
       40 LOADK                            R15 K16 ["Monetization"]
       41 LOADK                            R16 K17 ["ProductID"]
       42 NAMECALL                         R13 R3 K11 ["getText"]
       44 CALL                             R13 3 1
       45 LOADK                            R16 K16 ["Monetization"]
       46 LOADK                            R17 K18 ["ProductName"]
       47 NAMECALL                         R14 R3 K11 ["getText"]
       49 CALL                             R14 3 1
       50 LOADK                            R17 K16 ["Monetization"]
       51 LOADK                            R18 K19 ["PriceTitle"]
       52 NAMECALL                         R15 R3 K11 ["getText"]
       54 CALL                             R15 3 -1
       55 SETLIST                          R12 R13 -1 [1]
       57 NEWCLOSURE                       R13 P0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U3
       62 NEWTABLE                         R14 0 2
       64 DUPTABLE                         R15 K22 [{"Key", "Text"}]
       65 GETUPVAL                         R16 1
       66 CALL                             R16 0 1
       67 SETTABLEKS                       R16 R15 K20 ["Key"]
       69 LOADK                            R18 K9 ["General"]
       70 LOADK                            R19 K23 ["ButtonEdit"]
       71 NAMECALL                         R16 R3 K11 ["getText"]
       73 CALL                             R16 3 1
       74 SETTABLEKS                       R16 R15 K21 ["Text"]
       76 DUPTABLE                         R16 K22 [{"Key", "Text"}]
       77 GETUPVAL                         R17 2
       78 CALL                             R17 0 1
       79 SETTABLEKS                       R17 R16 K20 ["Key"]
       81 LOADK                            R19 K9 ["General"]
       82 LOADK                            R20 K24 ["CopyIDToClipboard"]
       83 NAMECALL                         R17 R3 K11 ["getText"]
       85 CALL                             R17 3 1
       86 SETTABLEKS                       R17 R16 K21 ["Text"]
       88 SETLIST                          R14 R15 2 [1]
       90 DUPTABLE                         R15 K27 [{"DevProductsTitle", "DeveloperProductTable"}]
       91 GETUPVAL                         R16 4
       92 GETTABLEKS                       R16 R16 K28 ["createElement"]
       94 GETUPVAL                         R17 5
       95 DUPTABLE                         R18 K31 [{["LayoutOrder"] = 1, ["Title"]}]
       96 LOADK                            R21 K16 ["Monetization"]
       97 LOADK                            R22 K32 ["DevProducts"]
       98 NAMECALL                         R19 R3 K11 ["getText"]
      100 CALL                             R19 3 1
      101 SETTABLEKS                       R19 R18 K30 ["Title"]
      103 DUPTABLE                         R19 K36 [{"Padding", "Layout", "CreateButton"}]
      104 GETUPVAL                         R20 4
      105 GETTABLEKS                       R20 R20 K28 ["createElement"]
      107 LOADK                            R21 K37 ["UIPadding"]
      108 DUPTABLE                         R22 K39 [{"PaddingRight"}]
      109 GETIMPORT                        R23 K42 [UDim.new]
      111 LOADN                            R24 0
      112 GETTABLEKS                       R25 R2 K43 ["devProducts"]
      114 GETTABLEKS                       R25 R25 K44 ["titlePadding"]
      116 CALL                             R23 2 1
      117 SETTABLEKS                       R23 R22 K38 ["PaddingRight"]
      119 CALL                             R20 2 1
      120 SETTABLEKS                       R20 R19 K33 ["Padding"]
      122 GETUPVAL                         R20 4
      123 GETTABLEKS                       R20 R20 K28 ["createElement"]
      125 LOADK                            R21 K45 ["UIListLayout"]
      126 DUPTABLE                         R22 K48 [{"HorizontalAlignment", "VerticalAlignment"}]
      127 GETIMPORT                        R23 K51 [Enum.HorizontalAlignment.Right]
      129 SETTABLEKS                       R23 R22 K46 ["HorizontalAlignment"]
      131 GETIMPORT                        R23 K53 [Enum.VerticalAlignment.Center]
      133 SETTABLEKS                       R23 R22 K47 ["VerticalAlignment"]
      135 CALL                             R20 2 1
      136 SETTABLEKS                       R20 R19 K34 ["Layout"]
      138 GETUPVAL                         R20 4
      139 GETTABLEKS                       R20 R20 K28 ["createElement"]
      141 GETUPVAL                         R21 6
      142 DUPTABLE                         R22 K59 [{["Style"] = "GameSettingsPrimaryButton", ["Text"], ["Size"], ["LayoutOrder"] = 2, ["OnClick"]}]
      143 SETTABLEKS                       R10 R22 K21 ["Text"]
      145 GETIMPORT                        R23 K61 [UDim2.new]
      147 LOADN                            R24 0
      148 GETTABLEKS                       R26 R11 K62 ["X"]
      150 GETTABLEKS                       R27 R2 K63 ["createButton"]
      152 GETTABLEKS                       R27 R27 K64 ["PaddingX"]
      154 ADD                              R25 R26 R27
      155 LOADN                            R26 0
      156 GETTABLEKS                       R28 R11 K65 ["Y"]
      158 GETTABLEKS                       R29 R2 K63 ["createButton"]
      160 GETTABLEKS                       R29 R29 K66 ["PaddingY"]
      162 ADD                              R27 R28 R29
      163 CALL                             R23 4 1
      164 SETTABLEKS                       R23 R22 K56 ["Size"]
      166 NEWCLOSURE                       R23 P1
      167 CAPTURE                          VAL R6
      168 SETTABLEKS                       R23 R22 K58 ["OnClick"]
      170 NEWTABLE                         R23 0 1
      172 GETUPVAL                         R24 4
      173 GETTABLEKS                       R24 R24 K28 ["createElement"]
      175 GETUPVAL                         R25 7
      176 DUPTABLE                         R26 K69 [{["Cursor"] = "PointingHand"}]
      177 CALL                             R24 2 -1
      178 SETLIST                          R23 R24 -1 [1]
      180 CALL                             R20 3 1
      181 SETTABLEKS                       R20 R19 K35 ["CreateButton"]
      183 CALL                             R16 3 1
      184 SETTABLEKS                       R16 R15 K25 ["DevProductsTitle"]
      186 MOVE                             R16 R5
      187 JUMPIFNOT                        R16 ; [+21]
      188 GETUPVAL                         R16 4
      189 GETTABLEKS                       R16 R16 K28 ["createElement"]
      191 GETUPVAL                         R17 8
      192 DUPTABLE                         R18 K76 [{["Headers"], ["Data"], ["MenuItems"], ["MenuItemsFilterFunc"], ["OnItemClicked"], ["LayoutOrder"] = 2, ["NextPageFunc"]}]
      193 SETTABLEKS                       R12 R18 K70 ["Headers"]
      195 SETTABLEKS                       R4 R18 K71 ["Data"]
      197 SETTABLEKS                       R14 R18 K72 ["MenuItems"]
      199 DUPCLOSURE                       R20 K78 [PROTO_2]
      200 CAPTURE                          UPVAL U2
      201 ORK                              R19 R20 K77 []
      202 SETTABLEKS                       R19 R18 K73 ["MenuItemsFilterFunc"]
      204 SETTABLEKS                       R13 R18 K74 ["OnItemClicked"]
      206 SETTABLEKS                       R8 R18 K75 ["NextPageFunc"]
      208 CALL                             R16 2 1
      209 SETTABLEKS                       R16 R15 K26 ["DeveloperProductTable"]
      211 GETUPVAL                         R16 4
      212 GETTABLEKS                       R16 R16 K28 ["createElement"]
      214 GETUPVAL                         R17 9
      215 DUPTABLE                         R18 K81 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
      216 GETIMPORT                        R19 K83 [Enum.AutomaticSize.XY]
      218 SETTABLEKS                       R19 R18 K79 ["AutomaticSize"]
      220 GETIMPORT                        R19 K86 [Enum.FillDirection.Vertical]
      222 SETTABLEKS                       R19 R18 K34 ["Layout"]
      224 SETTABLEKS                       R9 R18 K8 ["LayoutOrder"]
      226 GETTABLEKS                       R19 R2 K43 ["devProducts"]
      228 GETTABLEKS                       R19 R19 K87 ["headerPadding"]
      230 SETTABLEKS                       R19 R18 K80 ["Spacing"]
      232 MOVE                             R19 R15
      233 CALL                             R16 3 -1
      234 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["KeyProvider"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R1 K8 ["getCopyIdKeyName"]
       22 GETTABLEKS                       R3 R1 K9 ["getEditKeyName"]
       24 GETIMPORT                        R4 K11 [game]
       26 LOADK                            R6 K12 ["StudioService"]
       27 NAMECALL                         R4 R4 K13 ["GetService"]
       29 CALL                             R4 2 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R0 K14 ["Packages"]
       34 GETTABLEKS                       R6 R6 K15 ["Roact"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Packages"]
       41 GETTABLEKS                       R7 R7 K16 ["Framework"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R6 K6 ["Util"]
       46 GETTABLEKS                       R8 R7 K17 ["GetTextSize"]
       48 GETTABLEKS                       R9 R6 K18 ["UI"]
       50 GETTABLEKS                       R10 R9 K19 ["Button"]
       52 GETTABLEKS                       R11 R9 K20 ["HoverArea"]
       54 GETTABLEKS                       R12 R9 K21 ["Pane"]
       56 GETTABLEKS                       R13 R9 K22 ["TitledFrame"]
       58 GETTABLEKS                       R14 R6 K23 ["ContextServices"]
       60 GETTABLEKS                       R15 R14 K24 ["withContext"]
       62 GETIMPORT                        R16 K4 [require]
       64 GETTABLEKS                       R17 R0 K5 ["Src"]
       66 GETTABLEKS                       R17 R17 K25 ["Components"]
       68 GETTABLEKS                       R17 R17 K26 ["TableWithMenu"]
       70 CALL                             R16 1 1
       71 GETTABLEKS                       R17 R5 K27 ["PureComponent"]
       73 GETIMPORT                        R19 K1 [script]
       75 GETTABLEKS                       R19 R19 K28 ["Name"]
       77 NAMECALL                         R17 R17 K29 ["extend"]
       79 CALL                             R17 2 1
       80 DUPCLOSURE                       R18 K30 [PROTO_3]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R12
       91 SETTABLEKS                       R18 R17 K31 ["render"]
       93 MOVE                             R18 R15
       94 DUPTABLE                         R19 K34 [{"Localization", "Stylizer"}]
       95 GETTABLEKS                       R20 R14 K32 ["Localization"]
       97 SETTABLEKS                       R20 R19 K32 ["Localization"]
       99 GETTABLEKS                       R20 R14 K33 ["Stylizer"]
      101 SETTABLEKS                       R20 R19 K33 ["Stylizer"]
      103 CALL                             R18 1 1
      104 MOVE                             R19 R17
      105 CALL                             R18 1 1
      106 MOVE                             R17 R18
      107 RETURN                           R17 1
