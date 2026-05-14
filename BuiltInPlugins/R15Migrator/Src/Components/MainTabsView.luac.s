PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSelectedTab"]
        3 GETTABLEKS                       R2 R0 K1 ["Key"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 SETTABLEKS                       R2 R0 K1 ["onTabSelected"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Summary"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["isSuccessfullyPublished"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["getAllTabsData"]
        9 MOVE                             R5 R2
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U0
       13 CALL                             R4 2 1
       14 GETTABLEKS                       R5 R1 K4 ["setAllTabsData"]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 0
       18 GETTABLEKS                       R5 R1 K5 ["setSelectedTab"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K6 ["Summary"]
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["selectedTab"]
        4 GETTABLEKS                       R3 R1 K2 ["allTabsData"]
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K3 ["Stylizer"]
       10 GETTABLEKS                       R5 R0 K0 ["props"]
       12 GETTABLEKS                       R5 R5 K4 ["LayoutOrder"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K5 ["new"]
       17 CALL                             R6 0 1
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K6 ["createElement"]
       21 GETUPVAL                         R8 2
       22 DUPTABLE                         R9 K11 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "LayoutOrder", "BackgroundColor"}]
       23 GETIMPORT                        R10 K15 [Enum.FillDirection.Horizontal]
       25 SETTABLEKS                       R10 R9 K7 ["Layout"]
       27 GETIMPORT                        R10 K17 [Enum.HorizontalAlignment.Left]
       29 SETTABLEKS                       R10 R9 K8 ["HorizontalAlignment"]
       31 GETIMPORT                        R10 K19 [Enum.VerticalAlignment.Top]
       33 SETTABLEKS                       R10 R9 K9 ["VerticalAlignment"]
       35 SETTABLEKS                       R5 R9 K4 ["LayoutOrder"]
       37 GETTABLEKS                       R10 R4 K10 ["BackgroundColor"]
       39 SETTABLEKS                       R10 R9 K10 ["BackgroundColor"]
       41 DUPTABLE                         R10 K22 [{"Tabs", "View"}]
       42 JUMPIFNOT                        R3 ; [+34]
       43 JUMPIFNOT                        R2 ; [+33]
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R11 R11 K6 ["createElement"]
       47 GETUPVAL                         R12 3
       48 DUPTABLE                         R13 K26 [{"LayoutOrder", "Tabs", "SelectedTab", "OnTabSelected", "FillDirection", "TabComponent"}]
       49 NAMECALL                         R14 R6 K27 ["getNextOrder"]
       51 CALL                             R14 1 1
       52 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       54 SETTABLEKS                       R3 R13 K20 ["Tabs"]
       56 GETUPVAL                         R14 4
       57 GETTABLEKS                       R14 R14 K28 ["findTabData"]
       59 MOVE                             R15 R2
       60 MOVE                             R16 R3
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K23 ["SelectedTab"]
       64 GETTABLEKS                       R14 R0 K29 ["onTabSelected"]
       66 SETTABLEKS                       R14 R13 K24 ["OnTabSelected"]
       68 GETIMPORT                        R14 K31 [Enum.FillDirection.Vertical]
       70 SETTABLEKS                       R14 R13 K13 ["FillDirection"]
       72 GETUPVAL                         R14 5
       73 SETTABLEKS                       R14 R13 K25 ["TabComponent"]
       75 CALL                             R11 2 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R11
       78 SETTABLEKS                       R11 R10 K20 ["Tabs"]
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R11 R11 K6 ["createElement"]
       83 GETUPVAL                         R12 2
       84 DUPTABLE                         R13 K33 [{"LayoutOrder", "Size", "BackgroundColor"}]
       85 NAMECALL                         R14 R6 K27 ["getNextOrder"]
       87 CALL                             R14 1 1
       88 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       90 GETTABLEKS                       R14 R4 K34 ["TabPaneSize"]
       92 SETTABLEKS                       R14 R13 K32 ["Size"]
       94 GETTABLEKS                       R14 R4 K35 ["ViewBackgroundColor"]
       96 SETTABLEKS                       R14 R13 K10 ["BackgroundColor"]
       98 DUPTABLE                         R14 K40 [{"SummaryPane", "ScriptConversionPane", "CharacterConversion", "AnimationConversionPane"}]
       99 JUMPIFNOT                        R2 ; [+16]
      100 GETUPVAL                         R16 4
      101 GETTABLEKS                       R16 R16 K41 ["Summary"]
      103 JUMPIFNOTEQ                      R2 R16 ; [+12]
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R15 R15 K6 ["createElement"]
      108 GETUPVAL                         R16 6
      109 DUPTABLE                         R17 K43 [{"OnResetPlugin"}]
      110 GETTABLEKS                       R18 R1 K42 ["OnResetPlugin"]
      112 SETTABLEKS                       R18 R17 K42 ["OnResetPlugin"]
      114 CALL                             R15 2 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R15
      117 SETTABLEKS                       R15 R14 K36 ["SummaryPane"]
      119 JUMPIFNOT                        R2 ; [+16]
      120 GETUPVAL                         R16 4
      121 GETTABLEKS                       R16 R16 K44 ["ScriptConversion"]
      123 JUMPIFNOTEQ                      R2 R16 ; [+12]
      125 GETUPVAL                         R15 1
      126 GETTABLEKS                       R15 R15 K6 ["createElement"]
      128 GETUPVAL                         R16 7
      129 DUPTABLE                         R17 K43 [{"OnResetPlugin"}]
      130 GETTABLEKS                       R18 R1 K42 ["OnResetPlugin"]
      132 SETTABLEKS                       R18 R17 K42 ["OnResetPlugin"]
      134 CALL                             R15 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R15
      137 SETTABLEKS                       R15 R14 K37 ["ScriptConversionPane"]
      139 JUMPIFNOT                        R2 ; [+16]
      140 GETUPVAL                         R16 4
      141 GETTABLEKS                       R16 R16 K38 ["CharacterConversion"]
      143 JUMPIFNOTEQ                      R2 R16 ; [+12]
      145 GETUPVAL                         R15 1
      146 GETTABLEKS                       R15 R15 K6 ["createElement"]
      148 GETUPVAL                         R16 8
      149 DUPTABLE                         R17 K43 [{"OnResetPlugin"}]
      150 GETTABLEKS                       R18 R1 K42 ["OnResetPlugin"]
      152 SETTABLEKS                       R18 R17 K42 ["OnResetPlugin"]
      154 CALL                             R15 2 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R15
      157 SETTABLEKS                       R15 R14 K38 ["CharacterConversion"]
      159 JUMPIFNOT                        R2 ; [+16]
      160 GETUPVAL                         R16 4
      161 GETTABLEKS                       R16 R16 K45 ["AnimationConversion"]
      163 JUMPIFNOTEQ                      R2 R16 ; [+12]
      165 GETUPVAL                         R15 1
      166 GETTABLEKS                       R15 R15 K6 ["createElement"]
      168 GETUPVAL                         R16 9
      169 DUPTABLE                         R17 K43 [{"OnResetPlugin"}]
      170 GETTABLEKS                       R18 R1 K42 ["OnResetPlugin"]
      172 SETTABLEKS                       R18 R17 K42 ["OnResetPlugin"]
      174 CALL                             R15 2 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R15
      177 SETTABLEKS                       R15 R14 K39 ["AnimationConversionPane"]
      179 CALL                             R11 3 1
      180 SETTABLEKS                       R11 R10 K21 ["View"]
      182 CALL                             R7 3 -1
      183 RETURN                           R7 -1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"selectedTab", "allTabsData", "isSuccessfullyPublished"}]
        1 GETTABLEKS                       R2 R0 K4 ["PanelSelection"]
        3 GETTABLEKS                       R2 R2 K0 ["selectedTab"]
        5 SETTABLEKS                       R2 R1 K0 ["selectedTab"]
        7 GETTABLEKS                       R2 R0 K4 ["PanelSelection"]
        9 GETTABLEKS                       R2 R2 K1 ["allTabsData"]
       11 SETTABLEKS                       R2 R1 K1 ["allTabsData"]
       13 GETTABLEKS                       R2 R0 K5 ["ConversionProgress"]
       15 GETTABLEKS                       R2 R2 K2 ["isSuccessfullyPublished"]
       17 SETTABLEKS                       R2 R1 K2 ["isSuccessfullyPublished"]
       19 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"setSelectedTab", "setAllTabsData"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setSelectedTab"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setAllTabsData"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R1 K11 ["UI"]
       32 GETTABLEKS                       R6 R5 K12 ["Pane"]
       34 GETTABLEKS                       R7 R5 K13 ["Tabs"]
       36 GETTABLEKS                       R8 R1 K14 ["Util"]
       38 GETTABLEKS                       R9 R8 K15 ["LayoutOrderIterator"]
       40 GETTABLEKS                       R10 R0 K16 ["Src"]
       42 GETTABLEKS                       R10 R10 K17 ["Actions"]
       44 GETIMPORT                        R11 K5 [require]
       46 GETTABLEKS                       R12 R10 K18 ["SetSelectedTab"]
       48 CALL                             R11 1 1
       49 GETIMPORT                        R12 K5 [require]
       51 GETTABLEKS                       R13 R10 K19 ["SetAllTabsData"]
       53 CALL                             R12 1 1
       54 GETTABLEKS                       R13 R0 K16 ["Src"]
       56 GETTABLEKS                       R13 R13 K14 ["Util"]
       58 GETIMPORT                        R14 K5 [require]
       60 GETTABLEKS                       R15 R13 K20 ["TabsData"]
       62 CALL                             R14 1 1
       63 GETTABLEKS                       R15 R0 K16 ["Src"]
       65 GETTABLEKS                       R15 R15 K21 ["Components"]
       67 GETIMPORT                        R16 K5 [require]
       69 GETTABLEKS                       R17 R15 K22 ["Summary"]
       71 GETTABLEKS                       R17 R17 K23 ["SummaryPane"]
       73 CALL                             R16 1 1
       74 GETIMPORT                        R17 K5 [require]
       76 GETTABLEKS                       R18 R15 K24 ["CharacterConversionPane"]
       78 CALL                             R17 1 1
       79 GETIMPORT                        R18 K5 [require]
       81 GETTABLEKS                       R19 R15 K25 ["ScriptConversionPane"]
       83 CALL                             R18 1 1
       84 GETIMPORT                        R19 K5 [require]
       86 GETTABLEKS                       R20 R15 K26 ["ScriptPane"]
       88 CALL                             R19 1 1
       89 GETIMPORT                        R20 K5 [require]
       91 GETTABLEKS                       R21 R15 K27 ["AnimationConversionPane"]
       93 CALL                             R20 1 1
       94 GETIMPORT                        R21 K5 [require]
       96 GETTABLEKS                       R22 R15 K28 ["IconTab"]
       98 CALL                             R21 1 1
       99 GETTABLEKS                       R22 R2 K29 ["PureComponent"]
      101 LOADK                            R24 K30 ["MainTabsView"]
      102 NAMECALL                         R22 R22 K31 ["extend"]
      104 CALL                             R22 2 1
      105 DUPCLOSURE                       R23 K32 [PROTO_1]
      106 SETTABLEKS                       R23 R22 K33 ["init"]
      108 DUPCLOSURE                       R23 K34 [PROTO_3]
      109 CAPTURE                          VAL R14
      110 SETTABLEKS                       R23 R22 K35 ["didMount"]
      112 DUPCLOSURE                       R23 K36 [PROTO_4]
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R19
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R20
      123 SETTABLEKS                       R23 R22 K37 ["render"]
      125 DUPCLOSURE                       R23 K38 [PROTO_5]
      126 DUPCLOSURE                       R24 K39 [PROTO_8]
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R12
      129 GETTABLEKS                       R25 R4 K40 ["withContext"]
      131 DUPTABLE                         R26 K43 [{"Localization", "Stylizer"}]
      132 GETTABLEKS                       R27 R4 K41 ["Localization"]
      134 SETTABLEKS                       R27 R26 K41 ["Localization"]
      136 GETTABLEKS                       R27 R4 K42 ["Stylizer"]
      138 SETTABLEKS                       R27 R26 K42 ["Stylizer"]
      140 CALL                             R25 1 1
      141 MOVE                             R26 R22
      142 CALL                             R25 1 1
      143 MOVE                             R22 R25
      144 GETTABLEKS                       R25 R3 K44 ["connect"]
      146 MOVE                             R26 R23
      147 MOVE                             R27 R24
      148 CALL                             R25 2 1
      149 MOVE                             R26 R22
      150 CALL                             R25 1 -1
      151 RETURN                           R25 -1
