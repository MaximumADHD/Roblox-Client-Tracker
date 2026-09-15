PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ToggleCallback"]
        3 GETUPVAL                         R2 1
        4 NOT                              R1 R2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Title"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["DeleteLocal"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K5 ["new"]
       17 CALL                             R7 0 1
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K6 ["createElement"]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K7 ["View"]
       24 DUPTABLE                         R10 K10 [{["tag"] = "row align-x-left align-y-top auto-xy", ["LayoutOrder"]}]
       25 SETTABLEKS                       R3 R10 K2 ["LayoutOrder"]
       27 DUPTABLE                         R11 K13 [{"TitleLabel", "RightColumn"}]
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R12 R12 K6 ["createElement"]
       31 GETUPVAL                         R13 2
       32 GETTABLEKS                       R13 R13 K14 ["Text"]
       34 DUPTABLE                         R14 K17 [{["tag"] = "text-title-small text-align-x-left text-align-y-top content-emphasis", ["Text"], ["Size"], ["LayoutOrder"]}]
       35 SETTABLEKS                       R2 R14 K14 ["Text"]
       37 GETIMPORT                        R15 K19 [UDim2.new]
       39 LOADN                            R16 0
       40 GETUPVAL                         R17 3
       41 GETTABLEKS                       R17 R17 K20 ["TITLE_GUTTER_WIDTH"]
       43 LOADN                            R18 0
       44 LOADN                            R19 0
       45 CALL                             R15 4 1
       46 SETTABLEKS                       R15 R14 K16 ["Size"]
       48 NAMECALL                         R15 R6 K21 ["getNextOrder"]
       50 CALL                             R15 1 1
       51 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K11 ["TitleLabel"]
       56 GETUPVAL                         R12 1
       57 GETTABLEKS                       R12 R12 K6 ["createElement"]
       59 GETUPVAL                         R13 2
       60 GETTABLEKS                       R13 R13 K7 ["View"]
       62 DUPTABLE                         R14 K23 [{["tag"] = "col align-x-left align-y-top gap-small size-full-0 auto-y", ["LayoutOrder"], ["Size"]}]
       63 NAMECALL                         R15 R6 K21 ["getNextOrder"]
       65 CALL                             R15 1 1
       66 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
       68 GETIMPORT                        R15 K19 [UDim2.new]
       70 LOADN                            R16 1
       71 GETUPVAL                         R18 3
       72 GETTABLEKS                       R18 R18 K20 ["TITLE_GUTTER_WIDTH"]
       74 MINUS                            R17 R18
       75 LOADN                            R18 0
       76 LOADN                            R19 0
       77 CALL                             R15 4 1
       78 SETTABLEKS                       R15 R14 K16 ["Size"]
       80 DUPTABLE                         R15 K26 [{"Toggle", "TipsLabel"}]
       81 GETUPVAL                         R16 1
       82 GETTABLEKS                       R16 R16 K6 ["createElement"]
       84 GETUPVAL                         R17 2
       85 GETTABLEKS                       R17 R17 K24 ["Toggle"]
       87 DUPTABLE                         R18 K32 [{["label"] = "", ["isChecked"], ["onActivated"], ["LayoutOrder"], ["size"]}]
       88 SETTABLEKS                       R4 R18 K29 ["isChecked"]
       90 NEWCLOSURE                       R19 P0
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R19 R18 K30 ["onActivated"]
       95 NAMECALL                         R19 R7 K21 ["getNextOrder"]
       97 CALL                             R19 1 1
       98 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      100 GETUPVAL                         R19 2
      101 GETTABLEKS                       R19 R19 K33 ["Enums"]
      103 GETTABLEKS                       R19 R19 K34 ["InputSize"]
      105 GETTABLEKS                       R19 R19 K35 ["Medium"]
      107 SETTABLEKS                       R19 R18 K31 ["size"]
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K24 ["Toggle"]
      112 GETUPVAL                         R16 1
      113 GETTABLEKS                       R16 R16 K6 ["createElement"]
      115 GETUPVAL                         R17 2
      116 GETTABLEKS                       R17 R17 K14 ["Text"]
      118 DUPTABLE                         R18 K37 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      119 LOADK                            R21 K38 ["AssetConfigDeleteLocal"]
      120 LOADK                            R22 K39 ["InformationText"]
      121 NAMECALL                         R19 R5 K40 ["getText"]
      123 CALL                             R19 3 1
      124 SETTABLEKS                       R19 R18 K14 ["Text"]
      126 NAMECALL                         R19 R7 K21 ["getNextOrder"]
      128 CALL                             R19 1 1
      129 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      131 CALL                             R16 2 1
      132 SETTABLEKS                       R16 R15 K25 ["TipsLabel"]
      134 CALL                             R12 3 1
      135 SETTABLEKS                       R12 R11 K12 ["RightColumn"]
      137 CALL                             R8 3 -1
      138 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Foundation"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R4 K11 ["ContextServices"]
       31 GETTABLEKS                       R7 R6 K12 ["withContext"]
       33 GETTABLEKS                       R8 R0 K13 ["Src"]
       35 GETTABLEKS                       R8 R8 K14 ["Util"]
       37 GETIMPORT                        R9 K6 [require]
       39 GETTABLEKS                       R10 R8 K15 ["AssetConfigConstants"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R11 R8 K16 ["LayoutOrderIterator"]
       46 CALL                             R10 1 1
       47 GETTABLEKS                       R11 R3 K17 ["PureComponent"]
       49 LOADK                            R13 K18 ["ConfigDeleteLocal"]
       50 NAMECALL                         R11 R11 K19 ["extend"]
       52 CALL                             R11 2 1
       53 DUPCLOSURE                       R12 K20 [PROTO_1]
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R9
       58 SETTABLEKS                       R12 R11 K21 ["render"]
       60 MOVE                             R12 R7
       61 DUPTABLE                         R13 K24 [{"Stylizer", "Localization"}]
       62 GETTABLEKS                       R14 R6 K22 ["Stylizer"]
       64 SETTABLEKS                       R14 R13 K22 ["Stylizer"]
       66 GETTABLEKS                       R14 R6 K23 ["Localization"]
       68 SETTABLEKS                       R14 R13 K23 ["Localization"]
       70 CALL                             R12 1 1
       71 MOVE                             R13 R11
       72 CALL                             R12 1 1
       73 MOVE                             R11 R12
       74 RETURN                           R11 1
