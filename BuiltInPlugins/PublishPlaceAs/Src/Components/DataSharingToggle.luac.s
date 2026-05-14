PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["create"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 -1
        6 CALL                             R0 -1 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["create"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 -1
        6 CALL                             R0 -1 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["DataSharingEnabled"]
        8 GETTABLEKS                       R5 R1 K4 ["DataSharingDefault"]
       10 GETTABLEKS                       R6 R1 K5 ["isOwningCreator"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R1 K7 ["OnClick"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["new"]
       19 CALL                             R9 0 1
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R11 R11 K9 ["FINISHED"]
       23 JUMPIFEQ                         R5 R11 ; [+2]
       25 LOADB                            R10 0 +1
       26 LOADB                            R10 1
       27 JUMPIFNOT                        R6 ; [+1]
       28 JUMPIF                           R10 ; [+2]
       29 LOADNIL                          R11
       30 RETURN                           R11 1
       31 GETUPVAL                         R11 2
       32 GETTABLEKS                       R11 R11 K10 ["createElement"]
       34 GETUPVAL                         R12 3
       35 DUPTABLE                         R13 K12 [{"LayoutOrder", "Title"}]
       36 SETTABLEKS                       R7 R13 K6 ["LayoutOrder"]
       38 LOADK                            R16 K13 ["DataSharing"]
       39 LOADK                            R17 K11 ["Title"]
       40 NAMECALL                         R14 R3 K14 ["getText"]
       42 CALL                             R14 3 1
       43 SETTABLEKS                       R14 R13 K11 ["Title"]
       45 DUPTABLE                         R14 K18 [{"ToggleButton", "LinkText", "UIPadding"}]
       46 GETUPVAL                         R15 2
       47 GETTABLEKS                       R15 R15 K10 ["createElement"]
       49 GETUPVAL                         R16 4
       50 DUPTABLE                         R17 K22 [{"Disabled", "Selected", "LayoutOrder", "OnClick", "Size"}]
       51 LOADB                            R18 0
       52 SETTABLEKS                       R18 R17 K19 ["Disabled"]
       54 SETTABLEKS                       R4 R17 K20 ["Selected"]
       56 NAMECALL                         R18 R9 K23 ["getNextOrder"]
       58 CALL                             R18 1 1
       59 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       61 SETTABLEKS                       R8 R17 K7 ["OnClick"]
       63 GETIMPORT                        R18 K26 [UDim2.fromOffset]
       65 LOADN                            R19 40
       66 LOADN                            R20 24
       67 CALL                             R18 2 1
       68 SETTABLEKS                       R18 R17 K21 ["Size"]
       70 CALL                             R15 2 1
       71 SETTABLEKS                       R15 R14 K15 ["ToggleButton"]
       73 GETUPVAL                         R15 2
       74 GETTABLEKS                       R15 R15 K10 ["createElement"]
       76 GETUPVAL                         R16 5
       77 DUPTABLE                         R17 K34 [{"LinkMap", "Text", "MaxWidth", "LayoutOrder", "TextProps", "HorizontalAlignment", "TextWrapped", "AutomaticSize"}]
       78 NEWTABLE                         R18 2 0
       80 DUPTABLE                         R19 K36 [{"LinkText", "LinkCallback"}]
       81 LOADK                            R22 K13 ["DataSharing"]
       82 LOADK                            R23 K37 ["SettingsHyperlink"]
       83 NAMECALL                         R20 R3 K14 ["getText"]
       85 CALL                             R20 3 1
       86 SETTABLEKS                       R20 R19 K16 ["LinkText"]
       88 DUPCLOSURE                       R20 K38 [PROTO_0]
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          UPVAL U8
       92 SETTABLEKS                       R20 R19 K35 ["LinkCallback"]
       94 SETTABLEKS                       R19 R18 K39 ["[settingsPage]"]
       96 DUPTABLE                         R19 K36 [{"LinkText", "LinkCallback"}]
       97 LOADK                            R22 K13 ["DataSharing"]
       98 LOADK                            R23 K16 ["LinkText"]
       99 NAMECALL                         R20 R3 K14 ["getText"]
      101 CALL                             R20 3 1
      102 SETTABLEKS                       R20 R19 K16 ["LinkText"]
      104 DUPCLOSURE                       R20 K40 [PROTO_1]
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          UPVAL U9
      107 CAPTURE                          UPVAL U8
      108 SETTABLEKS                       R20 R19 K35 ["LinkCallback"]
      110 SETTABLEKS                       R19 R18 K41 ["[link]"]
      112 SETTABLEKS                       R18 R17 K27 ["LinkMap"]
      114 LOADK                            R20 K13 ["DataSharing"]
      115 LOADK                            R21 K42 ["ToggleDescription"]
      116 NAMECALL                         R18 R3 K14 ["getText"]
      118 CALL                             R18 3 1
      119 SETTABLEKS                       R18 R17 K28 ["Text"]
      121 GETTABLEKS                       R18 R2 K43 ["textWithInlineLink"]
      123 GETTABLEKS                       R18 R18 K44 ["maxWidth"]
      125 SETTABLEKS                       R18 R17 K29 ["MaxWidth"]
      127 NAMECALL                         R18 R9 K23 ["getNextOrder"]
      129 CALL                             R18 1 1
      130 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
      132 GETUPVAL                         R18 10
      133 GETTABLEKS                       R18 R18 K45 ["join"]
      135 GETTABLEKS                       R19 R2 K46 ["fontStyle"]
      137 GETTABLEKS                       R19 R19 K47 ["Subtext"]
      139 DUPTABLE                         R20 K50 [{"BackgroundTransparency", "TextXAlignment"}]
      140 LOADN                            R21 1
      141 SETTABLEKS                       R21 R20 K48 ["BackgroundTransparency"]
      143 GETIMPORT                        R21 K53 [Enum.TextXAlignment.Left]
      145 SETTABLEKS                       R21 R20 K49 ["TextXAlignment"]
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R17 K30 ["TextProps"]
      150 GETIMPORT                        R18 K54 [Enum.HorizontalAlignment.Left]
      152 SETTABLEKS                       R18 R17 K31 ["HorizontalAlignment"]
      154 LOADB                            R18 1
      155 SETTABLEKS                       R18 R17 K32 ["TextWrapped"]
      157 GETIMPORT                        R18 K56 [Enum.AutomaticSize.Y]
      159 SETTABLEKS                       R18 R17 K33 ["AutomaticSize"]
      161 CALL                             R15 2 1
      162 SETTABLEKS                       R15 R14 K16 ["LinkText"]
      164 GETUPVAL                         R15 2
      165 GETTABLEKS                       R15 R15 K10 ["createElement"]
      167 LOADK                            R16 K17 ["UIPadding"]
      168 DUPTABLE                         R17 K61 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      169 GETIMPORT                        R18 K63 [UDim.new]
      171 LOADN                            R19 0
      172 LOADN                            R20 0
      173 CALL                             R18 2 1
      174 SETTABLEKS                       R18 R17 K57 ["PaddingTop"]
      176 GETIMPORT                        R18 K63 [UDim.new]
      178 LOADN                            R19 0
      179 LOADN                            R20 16
      180 CALL                             R18 2 1
      181 SETTABLEKS                       R18 R17 K58 ["PaddingBottom"]
      183 GETIMPORT                        R18 K63 [UDim.new]
      185 LOADN                            R19 0
      186 LOADN                            R20 0
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K59 ["PaddingLeft"]
      190 GETIMPORT                        R18 K63 [UDim.new]
      192 LOADN                            R19 0
      193 LOADN                            R20 20
      194 CALL                             R18 2 1
      195 SETTABLEKS                       R18 R17 K60 ["PaddingRight"]
      197 CALL                             R15 2 1
      198 SETTABLEKS                       R15 R14 K17 ["UIPadding"]
      200 CALL                             R11 3 -1
      201 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Dash"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R5 R5 K7 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K10 ["withContext"]
       36 GETTABLEKS                       R7 R4 K11 ["UI"]
       38 GETTABLEKS                       R8 R7 K12 ["TitledFrame"]
       40 GETTABLEKS                       R9 R7 K13 ["ToggleButton"]
       42 GETTABLEKS                       R10 R7 K14 ["TextWithLinks"]
       44 GETTABLEKS                       R11 R4 K15 ["Util"]
       46 GETTABLEKS                       R11 R11 K16 ["LayoutOrderIterator"]
       48 GETIMPORT                        R12 K4 [require]
       50 GETTABLEKS                       R13 R0 K17 ["Src"]
       52 GETTABLEKS                       R13 R13 K18 ["Types"]
       54 GETTABLEKS                       R13 R13 K19 ["DataSharingFetchState"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K4 [require]
       59 GETTABLEKS                       R14 R0 K17 ["Src"]
       61 GETTABLEKS                       R14 R14 K20 ["Network"]
       63 GETTABLEKS                       R14 R14 K21 ["Http"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K4 [require]
       68 GETTABLEKS                       R15 R0 K17 ["Src"]
       70 GETTABLEKS                       R15 R15 K22 ["Flags"]
       72 GETTABLEKS                       R15 R15 K23 ["getFStringCAP1107DisplayUrl"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K4 [require]
       77 GETTABLEKS                       R16 R0 K17 ["Src"]
       79 GETTABLEKS                       R16 R16 K22 ["Flags"]
       81 GETTABLEKS                       R16 R16 K24 ["getFStringCAP1107SettingsUrl"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K26 [game]
       86 LOADK                            R18 K27 ["BrowserService"]
       87 NAMECALL                         R16 R16 K28 ["GetService"]
       89 CALL                             R16 2 1
       90 GETTABLEKS                       R17 R1 K29 ["PureComponent"]
       92 LOADK                            R19 K30 ["DataSharingToggle"]
       93 NAMECALL                         R17 R17 K31 ["extend"]
       95 CALL                             R17 2 1
       96 DUPCLOSURE                       R18 K32 [PROTO_2]
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R18 R17 K33 ["render"]
      110 MOVE                             R18 R6
      111 DUPTABLE                         R19 K36 [{"Stylizer", "Localization"}]
      112 GETTABLEKS                       R20 R5 K34 ["Stylizer"]
      114 SETTABLEKS                       R20 R19 K34 ["Stylizer"]
      116 GETTABLEKS                       R20 R5 K35 ["Localization"]
      118 SETTABLEKS                       R20 R19 K35 ["Localization"]
      120 CALL                             R18 1 1
      121 MOVE                             R19 R17
      122 CALL                             R18 1 1
      123 MOVE                             R17 R18
      124 RETURN                           R17 1
