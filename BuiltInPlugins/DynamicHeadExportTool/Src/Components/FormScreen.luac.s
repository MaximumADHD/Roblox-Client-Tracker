PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K6 [{"BackgroundColor3", "Size"}]
        9 GETTABLEKS                       R7 R1 K7 ["Stylizer"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K8 ["MainBackground"]
       14 GETTABLE                         R6 R7 R8
       15 SETTABLEKS                       R6 R5 K4 ["BackgroundColor3"]
       17 GETIMPORT                        R6 K11 [UDim2.new]
       19 LOADN                            R7 1
       20 LOADN                            R8 0
       21 LOADN                            R9 1
       22 LOADN                            R10 0
       23 CALL                             R6 4 1
       24 SETTABLEKS                       R6 R5 K5 ["Size"]
       26 DUPTABLE                         R6 K15 [{"UIPadding", "Form", "Button"}]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K2 ["createElement"]
       30 LOADK                            R8 K12 ["UIPadding"]
       31 DUPTABLE                         R9 K20 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       32 GETIMPORT                        R10 K22 [UDim.new]
       34 LOADN                            R11 0
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K23 ["Padding"]
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K16 ["PaddingBottom"]
       41 GETIMPORT                        R10 K22 [UDim.new]
       43 LOADN                            R11 0
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R12 R12 K23 ["Padding"]
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R9 K17 ["PaddingLeft"]
       50 GETIMPORT                        R10 K22 [UDim.new]
       52 LOADN                            R11 0
       53 GETUPVAL                         R12 2
       54 GETTABLEKS                       R12 R12 K23 ["Padding"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K18 ["PaddingRight"]
       59 GETIMPORT                        R10 K22 [UDim.new]
       61 LOADN                            R11 0
       62 GETUPVAL                         R12 2
       63 GETTABLEKS                       R12 R12 K23 ["Padding"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K19 ["PaddingTop"]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K12 ["UIPadding"]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K2 ["createElement"]
       74 GETUPVAL                         R8 3
       75 DUPTABLE                         R9 K33 [{["Expansion"], ["ExpandByDefault"] = True, ["Items"], ["LabelWidth"], ["LabelHeight"] = 32, ["OnExpansionChange"], ["OnChange"], ["Size"]}]
       76 GETTABLEKS                       R10 R1 K24 ["Expansion"]
       78 SETTABLEKS                       R10 R9 K24 ["Expansion"]
       80 GETTABLEKS                       R10 R1 K27 ["Items"]
       82 SETTABLEKS                       R10 R9 K27 ["Items"]
       84 GETIMPORT                        R10 K22 [UDim.new]
       86 LOADN                            R11 0
       87 LOADN                            R12 150
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K28 ["LabelWidth"]
       91 GETTABLEKS                       R10 R1 K34 ["onExpansionChange"]
       93 SETTABLEKS                       R10 R9 K31 ["OnExpansionChange"]
       95 GETTABLEKS                       R10 R1 K35 ["onChange"]
       97 SETTABLEKS                       R10 R9 K32 ["OnChange"]
       99 GETIMPORT                        R10 K11 [UDim2.new]
      101 LOADN                            R11 1
      102 LOADN                            R12 0
      103 LOADN                            R13 1
      104 LOADN                            R16 30
      105 GETUPVAL                         R17 2
      106 GETTABLEKS                       R17 R17 K23 ["Padding"]
      108 ADD                              R15 R16 R17
      109 MINUS                            R14 R15
      110 CALL                             R10 4 1
      111 SETTABLEKS                       R10 R9 K5 ["Size"]
      113 CALL                             R7 2 1
      114 SETTABLEKS                       R7 R6 K13 ["Form"]
      116 GETUPVAL                         R7 0
      117 GETTABLEKS                       R7 R7 K2 ["createElement"]
      119 GETUPVAL                         R8 4
      120 DUPTABLE                         R9 K43 [{["Text"], ["Style"] = "RoundPrimary", ["TextSize"] = 24, ["Size"], ["Position"], ["OnClick"]}]
      121 LOADK                            R12 K44 ["Plugin"]
      122 LOADK                            R13 K45 ["NextButton"]
      123 NAMECALL                         R10 R2 K46 ["getText"]
      125 CALL                             R10 3 1
      126 SETTABLEKS                       R10 R9 K36 ["Text"]
      128 GETIMPORT                        R10 K11 [UDim2.new]
      130 LOADN                            R11 1
      131 LOADN                            R12 0
      132 LOADN                            R13 0
      133 LOADN                            R14 30
      134 CALL                             R10 4 1
      135 SETTABLEKS                       R10 R9 K5 ["Size"]
      137 GETIMPORT                        R10 K11 [UDim2.new]
      139 LOADN                            R11 0
      140 LOADN                            R12 0
      141 LOADN                            R13 1
      142 LOADN                            R14 -30
      143 CALL                             R10 4 1
      144 SETTABLEKS                       R10 R9 K41 ["Position"]
      146 GETTABLEKS                       R10 R1 K47 ["onSubmit"]
      148 SETTABLEKS                       R10 R9 K42 ["OnClick"]
      150 CALL                             R7 2 1
      151 SETTABLEKS                       R7 R6 K14 ["Button"]
      153 CALL                             R3 3 -1
      154 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R2 K10 ["UI"]
       25 GETTABLEKS                       R4 R4 K11 ["Button"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R5 R5 K12 ["Form"]
       31 GETTABLEKS                       R6 R2 K13 ["Style"]
       33 GETTABLEKS                       R6 R6 K14 ["StyleKey"]
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R0 K15 ["Src"]
       39 GETTABLEKS                       R8 R8 K16 ["Constants"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R1 K17 ["PureComponent"]
       44 LOADK                            R10 K18 ["FormScreen"]
       45 NAMECALL                         R8 R8 K19 ["extend"]
       47 CALL                             R8 2 1
       48 DUPCLOSURE                       R9 K20 [PROTO_0]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 SETTABLEKS                       R9 R8 K21 ["render"]
       56 GETTABLEKS                       R9 R3 K22 ["withContext"]
       58 DUPTABLE                         R10 K25 [{"Localization", "Stylizer"}]
       59 GETTABLEKS                       R11 R3 K23 ["Localization"]
       61 SETTABLEKS                       R11 R10 K23 ["Localization"]
       63 GETTABLEKS                       R11 R3 K24 ["Stylizer"]
       65 SETTABLEKS                       R11 R10 K24 ["Stylizer"]
       67 CALL                             R9 1 1
       68 MOVE                             R10 R8
       69 CALL                             R9 1 1
       70 MOVE                             R8 R9
       71 RETURN                           R8 1
