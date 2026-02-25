PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
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
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K3 ["createElement"]
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
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R10 R11 K3 ["createElement"]
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
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["new"]
       13 CALL                             R6 0 1
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K6 ["createElement"]
       17 GETUPVAL                         R8 2
       18 DUPTABLE                         R9 K14 [{"HeaderComponent", "Size", "Style", "LayoutOrder", "Text", "Expanded", "ContentPadding", "ContentSpacing"}]
       19 GETTABLEKS                       R10 R0 K15 ["customHeader"]
       21 SETTABLEKS                       R10 R9 K7 ["HeaderComponent"]
       23 SETTABLEKS                       R4 R9 K8 ["Size"]
       25 LOADK                            R10 K16 ["Section"]
       26 SETTABLEKS                       R10 R9 K9 ["Style"]
       28 SETTABLEKS                       R3 R9 K2 ["LayoutOrder"]
       30 LOADK                            R10 K17 ["Scripts"]
       31 SETTABLEKS                       R10 R9 K10 ["Text"]
       33 LOADB                            R10 1
       34 SETTABLEKS                       R10 R9 K11 ["Expanded"]
       36 LOADN                            R10 0
       37 SETTABLEKS                       R10 R9 K12 ["ContentPadding"]
       39 LOADN                            R10 0
       40 SETTABLEKS                       R10 R9 K13 ["ContentSpacing"]
       42 DUPTABLE                         R10 K19 [{"Container"}]
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R11 R12 K6 ["createElement"]
       46 GETUPVAL                         R12 3
       47 DUPTABLE                         R13 K23 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size"}]
       48 GETIMPORT                        R14 K27 [Enum.FillDirection.Vertical]
       50 SETTABLEKS                       R14 R13 K20 ["Layout"]
       52 GETIMPORT                        R14 K29 [Enum.HorizontalAlignment.Left]
       54 SETTABLEKS                       R14 R13 K21 ["HorizontalAlignment"]
       56 GETIMPORT                        R14 K31 [Enum.VerticalAlignment.Top]
       58 SETTABLEKS                       R14 R13 K22 ["VerticalAlignment"]
       60 SETTABLEKS                       R5 R13 K8 ["Size"]
       62 DUPTABLE                         R14 K35 [{"ScriptConversionPaneHeader", "ScriptIssueTreeView", "ScriptConversionPaneFooter"}]
       63 GETUPVAL                         R16 1
       64 GETTABLEKS                       R15 R16 K6 ["createElement"]
       66 GETUPVAL                         R16 4
       67 DUPTABLE                         R17 K36 [{"LayoutOrder", "Size"}]
       68 NAMECALL                         R18 R6 K37 ["getNextOrder"]
       70 CALL                             R18 1 1
       71 SETTABLEKS                       R18 R17 K2 ["LayoutOrder"]
       73 GETIMPORT                        R18 K39 [UDim2.new]
       75 LOADN                            R19 1
       76 LOADN                            R20 0
       77 LOADN                            R21 0
       78 GETTABLEKS                       R22 R2 K40 ["HeaderHeight"]
       80 CALL                             R18 4 1
       81 SETTABLEKS                       R18 R17 K8 ["Size"]
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K32 ["ScriptConversionPaneHeader"]
       86 GETUPVAL                         R16 1
       87 GETTABLEKS                       R15 R16 K6 ["createElement"]
       89 GETUPVAL                         R16 5
       90 DUPTABLE                         R17 K42 [{"LayoutOrder", "Size", "OnResetPlugin"}]
       91 NAMECALL                         R18 R6 K37 ["getNextOrder"]
       93 CALL                             R18 1 1
       94 SETTABLEKS                       R18 R17 K2 ["LayoutOrder"]
       96 GETIMPORT                        R18 K39 [UDim2.new]
       98 LOADN                            R19 1
       99 LOADN                            R20 0
      100 LOADN                            R21 1
      101 GETTABLEKS                       R24 R2 K40 ["HeaderHeight"]
      103 MINUS                            R23 R24
      104 GETTABLEKS                       R24 R2 K43 ["FooterHeight"]
      106 SUB                              R22 R23 R24
      107 CALL                             R18 4 1
      108 SETTABLEKS                       R18 R17 K8 ["Size"]
      110 GETTABLEKS                       R18 R1 K41 ["OnResetPlugin"]
      112 SETTABLEKS                       R18 R17 K41 ["OnResetPlugin"]
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K33 ["ScriptIssueTreeView"]
      117 GETUPVAL                         R16 1
      118 GETTABLEKS                       R15 R16 K6 ["createElement"]
      120 GETUPVAL                         R16 6
      121 DUPTABLE                         R17 K36 [{"LayoutOrder", "Size"}]
      122 NAMECALL                         R18 R6 K37 ["getNextOrder"]
      124 CALL                             R18 1 1
      125 SETTABLEKS                       R18 R17 K2 ["LayoutOrder"]
      127 GETIMPORT                        R18 K39 [UDim2.new]
      129 LOADN                            R19 1
      130 LOADN                            R20 0
      131 LOADN                            R21 0
      132 GETTABLEKS                       R22 R2 K43 ["FooterHeight"]
      134 CALL                             R18 4 1
      135 SETTABLEKS                       R18 R17 K8 ["Size"]
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K34 ["ScriptConversionPaneFooter"]
      140 CALL                             R11 3 1
      141 SETTABLEKS                       R11 R10 K18 ["Container"]
      143 CALL                             R7 3 -1
      144 RETURN                           R7 -1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"initialIssueCounts"}]
        1 GETTABLEKS                       R4 R0 K2 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R4 K0 ["initialIssueCounts"]
        5 SETTABLEKS                       R3 R2 K0 ["initialIssueCounts"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Dash"]
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
       55 GETTABLEKS                       R17 R0 K20 ["Src"]
       57 GETTABLEKS                       R16 R17 K21 ["Components"]
       59 GETTABLEKS                       R15 R16 K22 ["ScriptIssueTreeView"]
       61 CALL                             R14 1 1
       62 GETIMPORT                        R15 K5 [require]
       64 GETTABLEKS                       R18 R0 K20 ["Src"]
       66 GETTABLEKS                       R17 R18 K21 ["Components"]
       68 GETTABLEKS                       R16 R17 K23 ["ScriptConversionPaneHeader"]
       70 CALL                             R15 1 1
       71 GETIMPORT                        R16 K5 [require]
       73 GETTABLEKS                       R19 R0 K20 ["Src"]
       75 GETTABLEKS                       R18 R19 K21 ["Components"]
       77 GETTABLEKS                       R17 R18 K24 ["ScriptConversionPaneFooter"]
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
