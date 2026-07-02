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
       50 DUPTABLE                         R17 K23 [{["Disabled"] = False, ["Selected"], ["LayoutOrder"], ["OnClick"], ["Size"]}]
       51 SETTABLEKS                       R4 R17 K21 ["Selected"]
       53 NAMECALL                         R18 R9 K24 ["getNextOrder"]
       55 CALL                             R18 1 1
       56 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       58 SETTABLEKS                       R8 R17 K7 ["OnClick"]
       60 GETIMPORT                        R18 K27 [UDim2.fromOffset]
       62 LOADN                            R19 40
       63 LOADN                            R20 24
       64 CALL                             R18 2 1
       65 SETTABLEKS                       R18 R17 K22 ["Size"]
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K15 ["ToggleButton"]
       70 GETUPVAL                         R15 2
       71 GETTABLEKS                       R15 R15 K10 ["createElement"]
       73 GETUPVAL                         R16 5
       74 DUPTABLE                         R17 K36 [{["LinkMap"], ["Text"], ["MaxWidth"], ["LayoutOrder"], ["TextProps"], ["HorizontalAlignment"], ["TextWrapped"] = True, ["AutomaticSize"]}]
       75 NEWTABLE                         R18 2 0
       77 DUPTABLE                         R19 K38 [{"LinkText", "LinkCallback"}]
       78 LOADK                            R22 K13 ["DataSharing"]
       79 LOADK                            R23 K39 ["SettingsHyperlink"]
       80 NAMECALL                         R20 R3 K14 ["getText"]
       82 CALL                             R20 3 1
       83 SETTABLEKS                       R20 R19 K16 ["LinkText"]
       85 DUPCLOSURE                       R20 K40 [PROTO_0]
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          UPVAL U8
       89 SETTABLEKS                       R20 R19 K37 ["LinkCallback"]
       91 SETTABLEKS                       R19 R18 K41 ["[settingsPage]"]
       93 DUPTABLE                         R19 K38 [{"LinkText", "LinkCallback"}]
       94 LOADK                            R22 K13 ["DataSharing"]
       95 LOADK                            R23 K16 ["LinkText"]
       96 NAMECALL                         R20 R3 K14 ["getText"]
       98 CALL                             R20 3 1
       99 SETTABLEKS                       R20 R19 K16 ["LinkText"]
      101 DUPCLOSURE                       R20 K42 [PROTO_1]
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          UPVAL U9
      104 CAPTURE                          UPVAL U8
      105 SETTABLEKS                       R20 R19 K37 ["LinkCallback"]
      107 SETTABLEKS                       R19 R18 K43 ["[link]"]
      109 SETTABLEKS                       R18 R17 K28 ["LinkMap"]
      111 LOADK                            R20 K13 ["DataSharing"]
      112 LOADK                            R21 K44 ["ToggleDescription"]
      113 NAMECALL                         R18 R3 K14 ["getText"]
      115 CALL                             R18 3 1
      116 SETTABLEKS                       R18 R17 K29 ["Text"]
      118 GETTABLEKS                       R18 R2 K45 ["textWithInlineLink"]
      120 GETTABLEKS                       R18 R18 K46 ["maxWidth"]
      122 SETTABLEKS                       R18 R17 K30 ["MaxWidth"]
      124 NAMECALL                         R18 R9 K24 ["getNextOrder"]
      126 CALL                             R18 1 1
      127 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
      129 GETUPVAL                         R18 10
      130 GETTABLEKS                       R18 R18 K47 ["join"]
      132 GETTABLEKS                       R19 R2 K48 ["fontStyle"]
      134 GETTABLEKS                       R19 R19 K49 ["Subtext"]
      136 DUPTABLE                         R20 K53 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      137 GETIMPORT                        R21 K56 [Enum.TextXAlignment.Left]
      139 SETTABLEKS                       R21 R20 K52 ["TextXAlignment"]
      141 CALL                             R18 2 1
      142 SETTABLEKS                       R18 R17 K31 ["TextProps"]
      144 GETIMPORT                        R18 K57 [Enum.HorizontalAlignment.Left]
      146 SETTABLEKS                       R18 R17 K32 ["HorizontalAlignment"]
      148 GETIMPORT                        R18 K59 [Enum.AutomaticSize.Y]
      150 SETTABLEKS                       R18 R17 K35 ["AutomaticSize"]
      152 CALL                             R15 2 1
      153 SETTABLEKS                       R15 R14 K16 ["LinkText"]
      155 GETUPVAL                         R15 2
      156 GETTABLEKS                       R15 R15 K10 ["createElement"]
      158 LOADK                            R16 K17 ["UIPadding"]
      159 DUPTABLE                         R17 K64 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      160 GETIMPORT                        R18 K66 [UDim.new]
      162 LOADN                            R19 0
      163 LOADN                            R20 0
      164 CALL                             R18 2 1
      165 SETTABLEKS                       R18 R17 K60 ["PaddingTop"]
      167 GETIMPORT                        R18 K66 [UDim.new]
      169 LOADN                            R19 0
      170 LOADN                            R20 16
      171 CALL                             R18 2 1
      172 SETTABLEKS                       R18 R17 K61 ["PaddingBottom"]
      174 GETIMPORT                        R18 K66 [UDim.new]
      176 LOADN                            R19 0
      177 LOADN                            R20 0
      178 CALL                             R18 2 1
      179 SETTABLEKS                       R18 R17 K62 ["PaddingLeft"]
      181 GETIMPORT                        R18 K66 [UDim.new]
      183 LOADN                            R19 0
      184 LOADN                            R20 20
      185 CALL                             R18 2 1
      186 SETTABLEKS                       R18 R17 K63 ["PaddingRight"]
      188 CALL                             R15 2 1
      189 SETTABLEKS                       R15 R14 K17 ["UIPadding"]
      191 CALL                             R11 3 -1
      192 RETURN                           R11 -1

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
