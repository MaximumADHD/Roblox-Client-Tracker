PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["createElement"]
       11 LOADK                            R5 K4 ["Frame"]
       12 DUPTABLE                         R6 K8 [{"Size", "BackgroundColor3", "Position"}]
       13 GETIMPORT                        R7 K10 [UDim2.new]
       15 LOADN                            R8 1
       16 LOADN                            R9 0
       17 LOADN                            R10 1
       18 LOADN                            R11 0
       19 CALL                             R7 4 1
       20 SETTABLEKS                       R7 R6 K5 ["Size"]
       22 GETTABLEKS                       R7 R3 K11 ["BackgroundColor"]
       24 SETTABLEKS                       R7 R6 K6 ["BackgroundColor3"]
       26 GETIMPORT                        R7 K10 [UDim2.new]
       28 LOADN                            R8 0
       29 LOADN                            R9 0
       30 LOADN                            R10 0
       31 LOADN                            R11 0
       32 CALL                             R7 4 1
       33 SETTABLEKS                       R7 R6 K7 ["Position"]
       35 DUPTABLE                         R7 K21 [{"Padding", "Layout", "MainSwitchSection", "Separator", "LanguageSection", "PseudolocalizationSection", "CountryRegionSection", "CustomPolicySwitchSection", "PolicySection"}]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R8 R9 K3 ["createElement"]
       39 LOADK                            R9 K22 ["UIPadding"]
       40 DUPTABLE                         R10 K26 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
       41 GETTABLEKS                       R11 R3 K27 ["MAINVIEW_PADDING_TOP"]
       43 SETTABLEKS                       R11 R10 K23 ["PaddingTop"]
       45 GETTABLEKS                       R11 R3 K28 ["MAINVIEW_PADDING_LEFT"]
       47 SETTABLEKS                       R11 R10 K24 ["PaddingLeft"]
       49 GETTABLEKS                       R11 R3 K28 ["MAINVIEW_PADDING_LEFT"]
       51 SETTABLEKS                       R11 R10 K25 ["PaddingRight"]
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K12 ["Padding"]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R8 R9 K3 ["createElement"]
       59 LOADK                            R9 K29 ["UIListLayout"]
       60 DUPTABLE                         R10 K32 [{"SortOrder", "FillDirection", "Padding"}]
       61 GETIMPORT                        R11 K35 [Enum.SortOrder.LayoutOrder]
       63 SETTABLEKS                       R11 R10 K30 ["SortOrder"]
       65 GETIMPORT                        R11 K37 [Enum.FillDirection.Vertical]
       67 SETTABLEKS                       R11 R10 K31 ["FillDirection"]
       69 GETTABLEKS                       R11 R3 K38 ["HORIZONTAL_LISTLAYOUT_PADDING"]
       71 SETTABLEKS                       R11 R10 K12 ["Padding"]
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K13 ["Layout"]
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R8 R9 K3 ["createElement"]
       79 GETUPVAL                         R9 2
       80 DUPTABLE                         R10 K39 [{"LayoutOrder"}]
       81 NAMECALL                         R11 R1 K40 ["getNextOrder"]
       83 CALL                             R11 1 1
       84 SETTABLEKS                       R11 R10 K34 ["LayoutOrder"]
       86 CALL                             R8 2 1
       87 SETTABLEKS                       R8 R7 K14 ["MainSwitchSection"]
       89 GETUPVAL                         R9 1
       90 GETTABLEKS                       R8 R9 K3 ["createElement"]
       92 GETUPVAL                         R9 3
       93 DUPTABLE                         R10 K39 [{"LayoutOrder"}]
       94 NAMECALL                         R11 R1 K40 ["getNextOrder"]
       96 CALL                             R11 1 1
       97 SETTABLEKS                       R11 R10 K34 ["LayoutOrder"]
       99 CALL                             R8 2 1
      100 SETTABLEKS                       R8 R7 K15 ["Separator"]
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R8 R9 K3 ["createElement"]
      105 GETUPVAL                         R9 4
      106 DUPTABLE                         R10 K39 [{"LayoutOrder"}]
      107 NAMECALL                         R11 R1 K40 ["getNextOrder"]
      109 CALL                             R11 1 1
      110 SETTABLEKS                       R11 R10 K34 ["LayoutOrder"]
      112 CALL                             R8 2 1
      113 SETTABLEKS                       R8 R7 K16 ["LanguageSection"]
      115 GETUPVAL                         R9 1
      116 GETTABLEKS                       R8 R9 K3 ["createElement"]
      118 GETUPVAL                         R9 5
      119 DUPTABLE                         R10 K39 [{"LayoutOrder"}]
      120 NAMECALL                         R11 R1 K40 ["getNextOrder"]
      122 CALL                             R11 1 1
      123 SETTABLEKS                       R11 R10 K34 ["LayoutOrder"]
      125 CALL                             R8 2 1
      126 SETTABLEKS                       R8 R7 K17 ["PseudolocalizationSection"]
      128 GETUPVAL                         R9 1
      129 GETTABLEKS                       R8 R9 K3 ["createElement"]
      131 GETUPVAL                         R9 6
      132 DUPTABLE                         R10 K39 [{"LayoutOrder"}]
      133 NAMECALL                         R11 R1 K40 ["getNextOrder"]
      135 CALL                             R11 1 1
      136 SETTABLEKS                       R11 R10 K34 ["LayoutOrder"]
      138 CALL                             R8 2 1
      139 SETTABLEKS                       R8 R7 K18 ["CountryRegionSection"]
      141 GETUPVAL                         R9 1
      142 GETTABLEKS                       R8 R9 K3 ["createElement"]
      144 GETUPVAL                         R9 7
      145 DUPTABLE                         R10 K39 [{"LayoutOrder"}]
      146 NAMECALL                         R11 R1 K40 ["getNextOrder"]
      148 CALL                             R11 1 1
      149 SETTABLEKS                       R11 R10 K34 ["LayoutOrder"]
      151 CALL                             R8 2 1
      152 SETTABLEKS                       R8 R7 K19 ["CustomPolicySwitchSection"]
      154 GETUPVAL                         R9 1
      155 GETTABLEKS                       R8 R9 K3 ["createElement"]
      157 GETUPVAL                         R9 8
      158 DUPTABLE                         R10 K39 [{"LayoutOrder"}]
      159 NAMECALL                         R11 R1 K40 ["getNextOrder"]
      161 CALL                             R11 1 1
      162 SETTABLEKS                       R11 R10 K34 ["LayoutOrder"]
      164 CALL                             R8 2 1
      165 SETTABLEKS                       R8 R7 K20 ["PolicySection"]
      167 CALL                             R4 3 -1
      168 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R6 R2 K10 ["UI"]
       29 GETTABLEKS                       R5 R6 K11 ["Separator"]
       31 GETTABLEKS                       R7 R2 K12 ["Util"]
       33 GETTABLEKS                       R6 R7 K13 ["LayoutOrderIterator"]
       35 GETIMPORT                        R7 K4 [require]
       37 GETTABLEKS                       R10 R0 K14 ["Src"]
       39 GETTABLEKS                       R9 R10 K15 ["Components"]
       41 GETTABLEKS                       R8 R9 K16 ["MainSwitchSection"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K4 [require]
       46 GETTABLEKS                       R11 R0 K14 ["Src"]
       48 GETTABLEKS                       R10 R11 K15 ["Components"]
       50 GETTABLEKS                       R9 R10 K17 ["CustomPolicySwitchSection"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K4 [require]
       55 GETTABLEKS                       R12 R0 K14 ["Src"]
       57 GETTABLEKS                       R11 R12 K15 ["Components"]
       59 GETTABLEKS                       R10 R11 K18 ["LanguageSection"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K4 [require]
       64 GETTABLEKS                       R13 R0 K14 ["Src"]
       66 GETTABLEKS                       R12 R13 K15 ["Components"]
       68 GETTABLEKS                       R11 R12 K19 ["PseudolocalizationSection"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R14 R0 K14 ["Src"]
       75 GETTABLEKS                       R13 R14 K15 ["Components"]
       77 GETTABLEKS                       R12 R13 K20 ["CountryRegionSection"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K4 [require]
       82 GETTABLEKS                       R15 R0 K14 ["Src"]
       84 GETTABLEKS                       R14 R15 K15 ["Components"]
       86 GETTABLEKS                       R13 R14 K21 ["PolicySection"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R13 R1 K22 ["PureComponent"]
       91 LOADK                            R15 K23 ["MainView"]
       92 NAMECALL                         R13 R13 K24 ["extend"]
       94 CALL                             R13 2 1
       95 DUPCLOSURE                       R14 K25 [PROTO_0]
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R12
      105 SETTABLEKS                       R14 R13 K26 ["render"]
      107 MOVE                             R14 R4
      108 DUPTABLE                         R15 K28 [{"Stylizer"}]
      109 GETTABLEKS                       R16 R3 K27 ["Stylizer"]
      111 SETTABLEKS                       R16 R15 K27 ["Stylizer"]
      113 CALL                             R14 1 1
      114 MOVE                             R15 R13
      115 CALL                             R14 1 1
      116 MOVE                             R13 R14
      117 RETURN                           R13 1
