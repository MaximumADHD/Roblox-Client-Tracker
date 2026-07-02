PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["remove %*"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R4 R4 K3 ["getValue"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R4 R4 K4 ["id"]
        9 GETTABLEKS                       R4 R4 K5 ["name"]
       11 NAMECALL                         R2 R2 K6 ["format"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["context menu for %*"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R4 R4 K3 ["getValue"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R4 R4 K4 ["id"]
        9 GETTABLEKS                       R4 R4 K5 ["name"]
       11 NAMECALL                         R2 R2 K6 ["format"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETTABLEKS                       R1 R1 K1 ["name"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useSignalBinding"]
        9 GETTABLEKS                       R4 R0 K2 ["getTag"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 4
       29 GETUPVAL                         R7 5
       30 DUPTABLE                         R8 K11 [{["tag"] = "row align-y-center gap-small", ["onSecondaryActivated"], ["stateLayer"], ["LayoutOrder"], ["Size"], ["Visible"]}]
       31 SETTABLEKS                       R5 R8 K6 ["onSecondaryActivated"]
       33 DUPTABLE                         R9 K13 [{"affordance"}]
       34 GETUPVAL                         R10 6
       35 GETTABLEKS                       R10 R10 K14 ["None"]
       37 SETTABLEKS                       R10 R9 K12 ["affordance"]
       39 SETTABLEKS                       R9 R8 K7 ["stateLayer"]
       41 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       43 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       45 GETIMPORT                        R9 K17 [UDim2.new]
       47 LOADN                            R10 1
       48 LOADN                            R11 0
       49 LOADN                            R12 0
       50 GETTABLEKS                       R13 R2 K18 ["PropertyRow"]
       52 GETTABLEKS                       R13 R13 K19 ["MinHeight"]
       54 CALL                             R9 4 1
       55 SETTABLEKS                       R9 R8 K9 ["Size"]
       57 GETTABLEKS                       R9 R0 K10 ["Visible"]
       59 SETTABLEKS                       R9 R8 K10 ["Visible"]
       61 DUPTABLE                         R9 K24 [{"UIPadding", "Icon", "TagName", "Remove"}]
       62 GETUPVAL                         R10 4
       63 LOADK                            R11 K20 ["UIPadding"]
       64 DUPTABLE                         R12 K26 [{"PaddingLeft"}]
       65 GETIMPORT                        R13 K28 [UDim.new]
       67 LOADN                            R14 0
       68 GETTABLEKS                       R15 R2 K18 ["PropertyRow"]
       70 GETTABLEKS                       R15 R15 K29 ["Label"]
       72 GETTABLEKS                       R15 R15 K30 ["IndentWidth"]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K25 ["PaddingLeft"]
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K20 ["UIPadding"]
       80 GETUPVAL                         R10 4
       81 GETUPVAL                         R11 7
       82 GETTABLEKS                       R11 R11 K31 ["Image"]
       84 DUPTABLE                         R12 K33 [{["tag"] = "size-300-300 bg-alert", ["LayoutOrder"]}]
       85 MOVE                             R13 R1
       86 CALL                             R13 0 1
       87 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K21 ["Icon"]
       92 GETUPVAL                         R10 4
       93 GETUPVAL                         R11 8
       94 DUPTABLE                         R12 K36 [{["tag"] = "shrink size-full-full text-body-small text-no-wrap text-align-x-left text-align-y-center clip", ["LayoutOrder"], ["Text"]}]
       95 MOVE                             R13 R1
       96 CALL                             R13 0 1
       97 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       99 DUPCLOSURE                       R15 K37 [PROTO_2]
      100 NAMECALL                         R13 R3 K38 ["map"]
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K35 ["Text"]
      105 CALL                             R10 2 1
      106 SETTABLEKS                       R10 R9 K22 ["TagName"]
      108 GETUPVAL                         R10 4
      109 GETUPVAL                         R11 9
      110 DUPTABLE                         R12 K42 [{"LayoutOrder", "icon", "size", "onActivated"}]
      111 MOVE                             R13 R1
      112 CALL                             R13 0 1
      113 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      115 DUPTABLE                         R13 K45 [{"name", "variant"}]
      116 GETUPVAL                         R14 10
      117 GETTABLEKS                       R14 R14 K46 ["Minus"]
      119 SETTABLEKS                       R14 R13 K43 ["name"]
      121 GETUPVAL                         R14 11
      122 GETTABLEKS                       R14 R14 K47 ["Filled"]
      124 SETTABLEKS                       R14 R13 K44 ["variant"]
      126 SETTABLEKS                       R13 R12 K39 ["icon"]
      128 GETUPVAL                         R13 12
      129 GETTABLEKS                       R13 R13 K48 ["XSmall"]
      131 SETTABLEKS                       R13 R12 K40 ["size"]
      133 SETTABLEKS                       R4 R12 K41 ["onActivated"]
      135 CALL                             R10 2 1
      136 SETTABLEKS                       R10 R9 K23 ["Remove"]
      138 CALL                             R6 3 -1
      139 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["Signals"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R1 K12 ["SignalsReact"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Hooks"]
       43 GETTABLEKS                       R9 R9 K14 ["useVisualValues"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R4 K15 ["createElement"]
       48 GETTABLEKS                       R10 R2 K16 ["IconButton"]
       50 GETTABLEKS                       R11 R2 K17 ["Text"]
       52 GETTABLEKS                       R12 R2 K18 ["View"]
       54 GETTABLEKS                       R13 R2 K19 ["Enums"]
       56 GETTABLEKS                       R13 R13 K20 ["StateLayerAffordance"]
       58 GETTABLEKS                       R14 R2 K19 ["Enums"]
       60 GETTABLEKS                       R14 R14 K21 ["IconName"]
       62 GETTABLEKS                       R15 R2 K19 ["Enums"]
       64 GETTABLEKS                       R15 R15 K22 ["IconVariant"]
       66 GETTABLEKS                       R16 R2 K19 ["Enums"]
       68 GETTABLEKS                       R16 R16 K23 ["InputSize"]
       70 DUPCLOSURE                       R17 K24 [PROTO_3]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R15
       83 CAPTURE                          VAL R16
       84 GETTABLEKS                       R18 R4 K25 ["memo"]
       86 MOVE                             R19 R17
       87 CALL                             R18 1 -1
       88 RETURN                           R18 -1
