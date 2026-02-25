PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnReturn"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K6 [{"Layout", "Padding", "Spacing"}]
       11 GETIMPORT                        R7 K10 [Enum.FillDirection.Vertical]
       13 SETTABLEKS                       R7 R6 K3 ["Layout"]
       15 LOADN                            R7 50
       16 SETTABLEKS                       R7 R6 K4 ["Padding"]
       18 LOADN                            R7 20
       19 SETTABLEKS                       R7 R6 K5 ["Spacing"]
       21 DUPTABLE                         R7 K14 [{"Title", "Description", "Row"}]
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R8 R9 K2 ["createElement"]
       25 GETUPVAL                         R9 3
       26 DUPTABLE                         R10 K19 [{"AutomaticSize", "LayoutOrder", "Text", "Style"}]
       27 GETIMPORT                        R11 K21 [Enum.AutomaticSize.XY]
       29 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       31 MOVE                             R11 R3
       32 CALL                             R11 0 1
       33 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       35 LOADK                            R13 K22 ["Completed"]
       36 LOADK                            R14 K11 ["Title"]
       37 NAMECALL                         R11 R2 K23 ["getText"]
       39 CALL                             R11 3 1
       40 GETTABLEKS                       R13 R1 K24 ["Name"]
       42 NAMECALL                         R11 R11 K25 ["format"]
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K17 ["Text"]
       47 LOADK                            R11 K11 ["Title"]
       48 SETTABLEKS                       R11 R10 K18 ["Style"]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K11 ["Title"]
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R8 R9 K2 ["createElement"]
       56 GETUPVAL                         R9 3
       57 DUPTABLE                         R10 K27 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped", "Style"}]
       58 GETIMPORT                        R11 K21 [Enum.AutomaticSize.XY]
       60 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       62 MOVE                             R11 R3
       63 CALL                             R11 0 1
       64 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       66 LOADK                            R13 K22 ["Completed"]
       67 LOADK                            R14 K12 ["Description"]
       68 NAMECALL                         R11 R2 K23 ["getText"]
       70 CALL                             R11 3 1
       71 SETTABLEKS                       R11 R10 K17 ["Text"]
       73 LOADB                            R11 1
       74 SETTABLEKS                       R11 R10 K26 ["TextWrapped"]
       76 LOADK                            R11 K28 ["Subtitle"]
       77 SETTABLEKS                       R11 R10 K18 ["Style"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K12 ["Description"]
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R8 R9 K2 ["createElement"]
       85 GETUPVAL                         R9 2
       86 DUPTABLE                         R10 K29 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
       87 GETIMPORT                        R11 K21 [Enum.AutomaticSize.XY]
       89 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       91 GETIMPORT                        R11 K31 [Enum.FillDirection.Horizontal]
       93 SETTABLEKS                       R11 R10 K3 ["Layout"]
       95 MOVE                             R11 R3
       96 CALL                             R11 0 1
       97 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       99 LOADN                            R11 20
      100 SETTABLEKS                       R11 R10 K5 ["Spacing"]
      102 DUPTABLE                         R11 K34 [{"Dashboard", "Continue"}]
      103 GETUPVAL                         R13 1
      104 GETTABLEKS                       R12 R13 K2 ["createElement"]
      106 GETUPVAL                         R13 4
      107 DUPTABLE                         R14 K37 [{"LayoutOrder", "Text", "Style", "OnClick", "Size"}]
      108 MOVE                             R15 R3
      109 CALL                             R15 0 1
      110 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      112 LOADK                            R17 K22 ["Completed"]
      113 LOADK                            R18 K38 ["Back"]
      114 NAMECALL                         R15 R2 K23 ["getText"]
      116 CALL                             R15 3 1
      117 SETTABLEKS                       R15 R14 K17 ["Text"]
      119 LOADK                            R15 K39 ["Round"]
      120 SETTABLEKS                       R15 R14 K18 ["Style"]
      122 NEWCLOSURE                       R15 P0
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R15 R14 K35 ["OnClick"]
      126 GETIMPORT                        R15 K42 [UDim2.fromOffset]
      128 LOADN                            R16 150
      129 LOADN                            R17 32
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K36 ["Size"]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K32 ["Dashboard"]
      136 GETUPVAL                         R13 1
      137 GETTABLEKS                       R12 R13 K2 ["createElement"]
      139 GETUPVAL                         R13 4
      140 DUPTABLE                         R14 K37 [{"LayoutOrder", "Text", "Style", "OnClick", "Size"}]
      141 MOVE                             R15 R3
      142 CALL                             R15 0 1
      143 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      145 LOADK                            R17 K22 ["Completed"]
      146 LOADK                            R18 K33 ["Continue"]
      147 NAMECALL                         R15 R2 K23 ["getText"]
      149 CALL                             R15 3 1
      150 SETTABLEKS                       R15 R14 K17 ["Text"]
      152 LOADK                            R15 K43 ["RoundPrimary"]
      153 SETTABLEKS                       R15 R14 K18 ["Style"]
      155 NEWCLOSURE                       R15 P1
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R15 R14 K35 ["OnClick"]
      159 GETIMPORT                        R15 K42 [UDim2.fromOffset]
      161 LOADN                            R16 80
      162 LOADN                            R17 32
      163 CALL                             R15 2 1
      164 SETTABLEKS                       R15 R14 K36 ["Size"]
      166 CALL                             R12 2 1
      167 SETTABLEKS                       R12 R11 K33 ["Continue"]
      169 CALL                             R8 3 1
      170 SETTABLEKS                       R8 R7 K13 ["Row"]
      172 CALL                             R4 3 -1
      173 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       29 GETTABLEKS                       R6 R3 K11 ["Localization"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R10 R0 K12 ["Src"]
       35 GETTABLEKS                       R9 R10 K13 ["Util"]
       37 GETTABLEKS                       R8 R9 K14 ["counter"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R2 K15 ["UI"]
       42 GETTABLEKS                       R9 R8 K16 ["Button"]
       44 GETTABLEKS                       R10 R8 K17 ["Pane"]
       46 GETTABLEKS                       R11 R8 K18 ["TextLabel"]
       48 GETTABLEKS                       R12 R1 K19 ["PureComponent"]
       50 LOADK                            R14 K20 ["CompletedTutorialDialog"]
       51 NAMECALL                         R12 R12 K21 ["extend"]
       53 CALL                             R12 2 1
       54 DUPCLOSURE                       R13 K22 [PROTO_2]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R9
       60 SETTABLEKS                       R13 R12 K23 ["render"]
       62 MOVE                             R13 R4
       63 DUPTABLE                         R14 K24 [{"Analytics", "Localization"}]
       64 SETTABLEKS                       R5 R14 K10 ["Analytics"]
       66 SETTABLEKS                       R6 R14 K11 ["Localization"]
       68 CALL                             R13 1 1
       69 MOVE                             R14 R12
       70 CALL                             R13 1 1
       71 MOVE                             R12 R13
       72 RETURN                           R12 1
