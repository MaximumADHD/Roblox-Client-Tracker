PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Localization"]
        5 GETTABLEKS                       R3 R1 K2 ["initialIssueCounts"]
        7 GETUPVAL                         R5 1
        8 MOVE                             R6 R3
        9 CALL                             R5 1 1
       10 LENGTH                           R4 R5
       11 LOADN                            R5 0
       12 MOVE                             R6 R3
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 ADD                              R5 R5 R10
       17 FORGLOOP                         R6 2 ; [-2]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K3 ["createElement"]
       22 GETUPVAL                         R7 3
       23 GETUPVAL                         R8 4
       24 DUPTABLE                         R9 K6 [{"HorizontalAlignment", "Layout"}]
       25 GETIMPORT                        R10 K9 [Enum.HorizontalAlignment.Right]
       27 SETTABLEKS                       R10 R9 K4 ["HorizontalAlignment"]
       29 GETIMPORT                        R10 K12 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R10 R9 K5 ["Layout"]
       33 MOVE                             R10 R0
       34 CALL                             R8 2 1
       35 DUPTABLE                         R9 K14 [{"MessageText"}]
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K3 ["createElement"]
       39 GETUPVAL                         R11 5
       40 DUPTABLE                         R12 K17 [{"AutomaticSize", "Text"}]
       41 GETIMPORT                        R13 K19 [Enum.AutomaticSize.XY]
       43 SETTABLEKS                       R13 R12 K15 ["AutomaticSize"]
       45 LOADK                            R15 K20 ["ScriptConversion"]
       46 LOADK                            R16 K21 ["HeaderMessage"]
       47 DUPTABLE                         R17 K24 [{"scriptCount", "issueCount"}]
       48 GETIMPORT                        R18 K27 [string.format]
       50 LOADK                            R19 K28 ["%d"]
       51 MOVE                             R20 R4
       52 CALL                             R18 2 1
       53 SETTABLEKS                       R18 R17 K22 ["scriptCount"]
       55 GETIMPORT                        R18 K27 [string.format]
       57 LOADK                            R19 K28 ["%d"]
       58 MOVE                             R20 R5
       59 CALL                             R18 2 1
       60 SETTABLEKS                       R18 R17 K23 ["issueCount"]
       62 NAMECALL                         R13 R2 K29 ["getText"]
       64 CALL                             R13 4 1
       65 SETTABLEKS                       R13 R12 K16 ["Text"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K13 ["MessageText"]
       70 CALL                             R6 3 -1
       71 RETURN                           R6 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 SETTABLEKS                       R1 R0 K0 ["customHeader"]
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["HeaderSize"]
        8 GETTABLEKS                       R5 R1 K4 ["ContentSize"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K6 ["createElement"]
       17 GETUPVAL                         R8 2
       18 DUPTABLE                         R9 K18 [{["HeaderComponent"], ["Size"], ["Style"] = "Section", ["LayoutOrder"], ["Text"] = "Scripts", ["Expanded"] = True, ["ContentPadding"] = 0, ["ContentSpacing"] = 0}]
       19 GETTABLEKS                       R10 R0 K19 ["customHeader"]
       21 SETTABLEKS                       R10 R9 K7 ["HeaderComponent"]
       23 SETTABLEKS                       R4 R9 K8 ["Size"]
       25 SETTABLEKS                       R3 R9 K2 ["LayoutOrder"]
       27 DUPTABLE                         R10 K21 [{"Container"}]
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R11 R11 K6 ["createElement"]
       31 GETUPVAL                         R12 3
       32 DUPTABLE                         R13 K25 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size"}]
       33 GETIMPORT                        R14 K29 [Enum.FillDirection.Vertical]
       35 SETTABLEKS                       R14 R13 K22 ["Layout"]
       37 GETIMPORT                        R14 K31 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R14 R13 K23 ["HorizontalAlignment"]
       41 GETIMPORT                        R14 K33 [Enum.VerticalAlignment.Top]
       43 SETTABLEKS                       R14 R13 K24 ["VerticalAlignment"]
       45 SETTABLEKS                       R5 R13 K8 ["Size"]
       47 DUPTABLE                         R14 K37 [{"ScriptConversionPaneHeader", "ScriptIssueTreeView", "ScriptConversionPaneFooter"}]
       48 GETUPVAL                         R15 1
       49 GETTABLEKS                       R15 R15 K6 ["createElement"]
       51 GETUPVAL                         R16 4
       52 DUPTABLE                         R17 K38 [{"LayoutOrder", "Size"}]
       53 NAMECALL                         R18 R6 K39 ["getNextOrder"]
       55 CALL                             R18 1 1
       56 SETTABLEKS                       R18 R17 K2 ["LayoutOrder"]
       58 GETIMPORT                        R18 K41 [UDim2.new]
       60 LOADN                            R19 1
       61 LOADN                            R20 0
       62 LOADN                            R21 0
       63 GETTABLEKS                       R22 R2 K42 ["HeaderHeight"]
       65 CALL                             R18 4 1
       66 SETTABLEKS                       R18 R17 K8 ["Size"]
       68 CALL                             R15 2 1
       69 SETTABLEKS                       R15 R14 K34 ["ScriptConversionPaneHeader"]
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R15 R15 K6 ["createElement"]
       74 GETUPVAL                         R16 5
       75 DUPTABLE                         R17 K44 [{"LayoutOrder", "Size", "OnResetPlugin"}]
       76 NAMECALL                         R18 R6 K39 ["getNextOrder"]
       78 CALL                             R18 1 1
       79 SETTABLEKS                       R18 R17 K2 ["LayoutOrder"]
       81 GETIMPORT                        R18 K41 [UDim2.new]
       83 LOADN                            R19 1
       84 LOADN                            R20 0
       85 LOADN                            R21 1
       86 GETTABLEKS                       R24 R2 K42 ["HeaderHeight"]
       88 MINUS                            R23 R24
       89 GETTABLEKS                       R24 R2 K45 ["FooterHeight"]
       91 SUB                              R22 R23 R24
       92 CALL                             R18 4 1
       93 SETTABLEKS                       R18 R17 K8 ["Size"]
       95 GETTABLEKS                       R18 R1 K43 ["OnResetPlugin"]
       97 SETTABLEKS                       R18 R17 K43 ["OnResetPlugin"]
       99 CALL                             R15 2 1
      100 SETTABLEKS                       R15 R14 K35 ["ScriptIssueTreeView"]
      102 GETUPVAL                         R15 1
      103 GETTABLEKS                       R15 R15 K6 ["createElement"]
      105 GETUPVAL                         R16 6
      106 DUPTABLE                         R17 K38 [{"LayoutOrder", "Size"}]
      107 NAMECALL                         R18 R6 K39 ["getNextOrder"]
      109 CALL                             R18 1 1
      110 SETTABLEKS                       R18 R17 K2 ["LayoutOrder"]
      112 GETIMPORT                        R18 K41 [UDim2.new]
      114 LOADN                            R19 1
      115 LOADN                            R20 0
      116 LOADN                            R21 0
      117 GETTABLEKS                       R22 R2 K45 ["FooterHeight"]
      119 CALL                             R18 4 1
      120 SETTABLEKS                       R18 R17 K8 ["Size"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K36 ["ScriptConversionPaneFooter"]
      125 CALL                             R11 3 1
      126 SETTABLEKS                       R11 R10 K20 ["Container"]
      128 CALL                             R7 3 -1
      129 RETURN                           R7 -1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"initialIssueCounts"}]
        1 GETTABLEKS                       R3 R0 K2 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["initialIssueCounts"]
        5 SETTABLEKS                       R3 R2 K0 ["initialIssueCounts"]
        7 RETURN                           R2 1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["join"]
       37 GETTABLEKS                       R6 R4 K12 ["keys"]
       39 GETTABLEKS                       R7 R1 K13 ["ContextServices"]
       41 GETTABLEKS                       R8 R1 K14 ["UI"]
       43 GETTABLEKS                       R9 R8 K15 ["SimpleExpandablePane"]
       45 GETTABLEKS                       R10 R8 K16 ["Pane"]
       47 GETTABLEKS                       R11 R8 K17 ["TextLabel"]
       49 GETTABLEKS                       R12 R1 K18 ["Util"]
       51 GETTABLEKS                       R13 R12 K19 ["LayoutOrderIterator"]
       53 GETIMPORT                        R14 K5 [require]
       55 GETTABLEKS                       R15 R0 K20 ["Src"]
       57 GETTABLEKS                       R15 R15 K21 ["Components"]
       59 GETTABLEKS                       R15 R15 K22 ["ScriptIssueTreeView"]
       61 CALL                             R14 1 1
       62 GETIMPORT                        R15 K5 [require]
       64 GETTABLEKS                       R16 R0 K20 ["Src"]
       66 GETTABLEKS                       R16 R16 K21 ["Components"]
       68 GETTABLEKS                       R16 R16 K23 ["ScriptConversionPaneHeader"]
       70 CALL                             R15 1 1
       71 GETIMPORT                        R16 K5 [require]
       73 GETTABLEKS                       R17 R0 K20 ["Src"]
       75 GETTABLEKS                       R17 R17 K21 ["Components"]
       77 GETTABLEKS                       R17 R17 K24 ["ScriptConversionPaneFooter"]
       79 CALL                             R16 1 1
       80 GETTABLEKS                       R17 R2 K25 ["PureComponent"]
       82 LOADK                            R19 K26 ["ScriptConversionExpandablePane"]
       83 NAMECALL                         R17 R17 K27 ["extend"]
       85 CALL                             R17 2 1
       86 DUPCLOSURE                       R18 K28 [PROTO_1]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R11
       92 SETTABLEKS                       R18 R17 K29 ["init"]
       94 DUPCLOSURE                       R18 K30 [PROTO_2]
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R16
      102 SETTABLEKS                       R18 R17 K31 ["render"]
      104 GETTABLEKS                       R18 R7 K32 ["withContext"]
      106 DUPTABLE                         R19 K35 [{"Stylizer", "Localization"}]
      107 GETTABLEKS                       R20 R7 K33 ["Stylizer"]
      109 SETTABLEKS                       R20 R19 K33 ["Stylizer"]
      111 GETTABLEKS                       R20 R7 K34 ["Localization"]
      113 SETTABLEKS                       R20 R19 K34 ["Localization"]
      115 CALL                             R18 1 1
      116 MOVE                             R19 R17
      117 CALL                             R18 1 1
      118 MOVE                             R17 R18
      119 DUPCLOSURE                       R18 K36 [PROTO_3]
      120 GETTABLEKS                       R19 R3 K37 ["connect"]
      122 MOVE                             R20 R18
      123 CALL                             R19 1 1
      124 MOVE                             R20 R17
      125 CALL                             R19 1 -1
      126 RETURN                           R19 -1
