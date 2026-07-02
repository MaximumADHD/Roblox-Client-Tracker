PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnReturn"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K8 [{["Layout"], ["Padding"] = 50, ["Spacing"] = 20}]
       11 GETIMPORT                        R7 K12 [Enum.FillDirection.Vertical]
       13 SETTABLEKS                       R7 R6 K3 ["Layout"]
       15 DUPTABLE                         R7 K16 [{"Title", "Description", "Row"}]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K2 ["createElement"]
       19 GETUPVAL                         R9 3
       20 DUPTABLE                         R10 K21 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["Style"] = "Title"}]
       21 GETIMPORT                        R11 K23 [Enum.AutomaticSize.XY]
       23 SETTABLEKS                       R11 R10 K17 ["AutomaticSize"]
       25 MOVE                             R11 R3
       26 CALL                             R11 0 1
       27 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       29 LOADK                            R13 K24 ["Completed"]
       30 LOADK                            R14 K13 ["Title"]
       31 NAMECALL                         R11 R2 K25 ["getText"]
       33 CALL                             R11 3 1
       34 GETTABLEKS                       R13 R1 K26 ["Name"]
       36 NAMECALL                         R11 R11 K27 ["format"]
       38 CALL                             R11 2 1
       39 SETTABLEKS                       R11 R10 K19 ["Text"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K13 ["Title"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K2 ["createElement"]
       47 GETUPVAL                         R9 3
       48 DUPTABLE                         R10 K31 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["TextWrapped"] = True, ["Style"] = "Subtitle"}]
       49 GETIMPORT                        R11 K23 [Enum.AutomaticSize.XY]
       51 SETTABLEKS                       R11 R10 K17 ["AutomaticSize"]
       53 MOVE                             R11 R3
       54 CALL                             R11 0 1
       55 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       57 LOADK                            R13 K24 ["Completed"]
       58 LOADK                            R14 K14 ["Description"]
       59 NAMECALL                         R11 R2 K25 ["getText"]
       61 CALL                             R11 3 1
       62 SETTABLEKS                       R11 R10 K19 ["Text"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K14 ["Description"]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K2 ["createElement"]
       70 GETUPVAL                         R9 2
       71 DUPTABLE                         R10 K32 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 20}]
       72 GETIMPORT                        R11 K23 [Enum.AutomaticSize.XY]
       74 SETTABLEKS                       R11 R10 K17 ["AutomaticSize"]
       76 GETIMPORT                        R11 K34 [Enum.FillDirection.Horizontal]
       78 SETTABLEKS                       R11 R10 K3 ["Layout"]
       80 MOVE                             R11 R3
       81 CALL                             R11 0 1
       82 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       84 DUPTABLE                         R11 K37 [{"Dashboard", "Continue"}]
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R12 R12 K2 ["createElement"]
       88 GETUPVAL                         R13 4
       89 DUPTABLE                         R14 K41 [{["LayoutOrder"], ["Text"], ["Style"] = "Round", ["OnClick"], ["Size"]}]
       90 MOVE                             R15 R3
       91 CALL                             R15 0 1
       92 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
       94 LOADK                            R17 K24 ["Completed"]
       95 LOADK                            R18 K42 ["Back"]
       96 NAMECALL                         R15 R2 K25 ["getText"]
       98 CALL                             R15 3 1
       99 SETTABLEKS                       R15 R14 K19 ["Text"]
      101 NEWCLOSURE                       R15 P0
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R15 R14 K39 ["OnClick"]
      105 GETIMPORT                        R15 K45 [UDim2.fromOffset]
      107 LOADN                            R16 150
      108 LOADN                            R17 32
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K40 ["Size"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K35 ["Dashboard"]
      115 GETUPVAL                         R12 1
      116 GETTABLEKS                       R12 R12 K2 ["createElement"]
      118 GETUPVAL                         R13 4
      119 DUPTABLE                         R14 K47 [{["LayoutOrder"], ["Text"], ["Style"] = "RoundPrimary", ["OnClick"], ["Size"]}]
      120 MOVE                             R15 R3
      121 CALL                             R15 0 1
      122 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
      124 LOADK                            R17 K24 ["Completed"]
      125 LOADK                            R18 K36 ["Continue"]
      126 NAMECALL                         R15 R2 K25 ["getText"]
      128 CALL                             R15 3 1
      129 SETTABLEKS                       R15 R14 K19 ["Text"]
      131 NEWCLOSURE                       R15 P1
      132 CAPTURE                          VAL R0
      133 SETTABLEKS                       R15 R14 K39 ["OnClick"]
      135 GETIMPORT                        R15 K45 [UDim2.fromOffset]
      137 LOADN                            R16 80
      138 LOADN                            R17 32
      139 CALL                             R15 2 1
      140 SETTABLEKS                       R15 R14 K40 ["Size"]
      142 CALL                             R12 2 1
      143 SETTABLEKS                       R12 R11 K36 ["Continue"]
      145 CALL                             R8 3 1
      146 SETTABLEKS                       R8 R7 K15 ["Row"]
      148 CALL                             R4 3 -1
      149 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       29 GETTABLEKS                       R6 R3 K11 ["Localization"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Src"]
       35 GETTABLEKS                       R8 R8 K13 ["Util"]
       37 GETTABLEKS                       R8 R8 K14 ["counter"]
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
