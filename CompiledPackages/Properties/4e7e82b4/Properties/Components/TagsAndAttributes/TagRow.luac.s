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
       30 DUPTABLE                         R8 K10 [{"tag", "onSecondaryActivated", "stateLayer", "LayoutOrder", "Size", "Visible"}]
       31 LOADK                            R9 K11 ["row align-y-center gap-small"]
       32 SETTABLEKS                       R9 R8 K4 ["tag"]
       34 SETTABLEKS                       R5 R8 K5 ["onSecondaryActivated"]
       36 DUPTABLE                         R9 K13 [{"affordance"}]
       37 GETUPVAL                         R10 6
       38 GETTABLEKS                       R10 R10 K14 ["None"]
       40 SETTABLEKS                       R10 R9 K12 ["affordance"]
       42 SETTABLEKS                       R9 R8 K6 ["stateLayer"]
       44 GETTABLEKS                       R9 R0 K7 ["LayoutOrder"]
       46 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       48 GETIMPORT                        R9 K17 [UDim2.new]
       50 LOADN                            R10 1
       51 LOADN                            R11 0
       52 LOADN                            R12 0
       53 GETTABLEKS                       R13 R2 K18 ["PropertyRow"]
       55 GETTABLEKS                       R13 R13 K19 ["MinHeight"]
       57 CALL                             R9 4 1
       58 SETTABLEKS                       R9 R8 K8 ["Size"]
       60 GETTABLEKS                       R9 R0 K9 ["Visible"]
       62 SETTABLEKS                       R9 R8 K9 ["Visible"]
       64 DUPTABLE                         R9 K24 [{"UIPadding", "Icon", "TagName", "Remove"}]
       65 GETUPVAL                         R10 4
       66 LOADK                            R11 K20 ["UIPadding"]
       67 DUPTABLE                         R12 K26 [{"PaddingLeft"}]
       68 GETIMPORT                        R13 K28 [UDim.new]
       70 LOADN                            R14 0
       71 GETTABLEKS                       R15 R2 K18 ["PropertyRow"]
       73 GETTABLEKS                       R15 R15 K29 ["Label"]
       75 GETTABLEKS                       R15 R15 K30 ["IndentWidth"]
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K25 ["PaddingLeft"]
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K20 ["UIPadding"]
       83 GETUPVAL                         R10 4
       84 GETUPVAL                         R11 7
       85 GETTABLEKS                       R11 R11 K31 ["Image"]
       87 DUPTABLE                         R12 K32 [{"tag", "LayoutOrder"}]
       88 LOADK                            R13 K33 ["size-300-300 bg-alert"]
       89 SETTABLEKS                       R13 R12 K4 ["tag"]
       91 MOVE                             R13 R1
       92 CALL                             R13 0 1
       93 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       95 CALL                             R10 2 1
       96 SETTABLEKS                       R10 R9 K21 ["Icon"]
       98 GETUPVAL                         R10 4
       99 GETUPVAL                         R11 8
      100 DUPTABLE                         R12 K35 [{"tag", "LayoutOrder", "Text"}]
      101 LOADK                            R13 K36 ["clip text-no-wrap text-align-x-left text-align-y-center text-body-small size-full-full shrink"]
      102 SETTABLEKS                       R13 R12 K4 ["tag"]
      104 MOVE                             R13 R1
      105 CALL                             R13 0 1
      106 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      108 DUPCLOSURE                       R15 K37 [PROTO_2]
      109 NAMECALL                         R13 R3 K38 ["map"]
      111 CALL                             R13 2 1
      112 SETTABLEKS                       R13 R12 K34 ["Text"]
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K22 ["TagName"]
      117 GETUPVAL                         R10 4
      118 GETUPVAL                         R11 9
      119 DUPTABLE                         R12 K42 [{"LayoutOrder", "icon", "size", "onActivated"}]
      120 MOVE                             R13 R1
      121 CALL                             R13 0 1
      122 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      124 DUPTABLE                         R13 K45 [{"name", "variant"}]
      125 GETUPVAL                         R14 10
      126 GETTABLEKS                       R14 R14 K46 ["Minus"]
      128 SETTABLEKS                       R14 R13 K43 ["name"]
      130 GETUPVAL                         R14 11
      131 GETTABLEKS                       R14 R14 K47 ["Filled"]
      133 SETTABLEKS                       R14 R13 K44 ["variant"]
      135 SETTABLEKS                       R13 R12 K39 ["icon"]
      137 GETUPVAL                         R13 12
      138 GETTABLEKS                       R13 R13 K48 ["XSmall"]
      140 SETTABLEKS                       R13 R12 K40 ["size"]
      142 SETTABLEKS                       R4 R12 K41 ["onActivated"]
      144 CALL                             R10 2 1
      145 SETTABLEKS                       R10 R9 K23 ["Remove"]
      147 CALL                             R6 3 -1
      148 RETURN                           R6 -1

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
