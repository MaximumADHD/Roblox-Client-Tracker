PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["remove %*"]
        3 GETUPVAL                         R6 0
        4 NAMECALL                         R6 R6 K3 ["getValue"]
        6 CALL                             R6 1 1
        7 GETTABLEKS                       R5 R6 K4 ["id"]
        9 GETTABLEKS                       R4 R5 K5 ["name"]
       11 NAMECALL                         R2 R2 K6 ["format"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["context menu for %*"]
        3 GETUPVAL                         R6 0
        4 NAMECALL                         R6 R6 K3 ["getValue"]
        6 CALL                             R6 1 1
        7 GETTABLEKS                       R5 R6 K4 ["id"]
        9 GETTABLEKS                       R4 R5 K5 ["name"]
       11 NAMECALL                         R2 R2 K6 ["format"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETTABLEKS                       R1 R2 K1 ["name"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useSignalBinding"]
        7 GETTABLEKS                       R3 R0 K2 ["getTag"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K3 ["useCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 0
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 GETUPVAL                         R6 4
       28 DUPTABLE                         R7 K9 [{"tag", "onSecondaryActivated", "stateLayer", "LayoutOrder", "Visible"}]
       29 LOADK                            R8 K10 ["row align-y-center padding-left-medium gap-small size-full-700"]
       30 SETTABLEKS                       R8 R7 K4 ["tag"]
       32 SETTABLEKS                       R4 R7 K5 ["onSecondaryActivated"]
       34 DUPTABLE                         R8 K12 [{"affordance"}]
       35 GETUPVAL                         R10 5
       36 GETTABLEKS                       R9 R10 K13 ["None"]
       38 SETTABLEKS                       R9 R8 K11 ["affordance"]
       40 SETTABLEKS                       R8 R7 K6 ["stateLayer"]
       42 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       44 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       46 GETTABLEKS                       R8 R0 K8 ["Visible"]
       48 SETTABLEKS                       R8 R7 K8 ["Visible"]
       50 DUPTABLE                         R8 K18 [{"ArrowSpacer", "Icon", "TagName", "Remove"}]
       51 GETUPVAL                         R9 3
       52 GETUPVAL                         R10 6
       53 DUPTABLE                         R11 K19 [{"LayoutOrder"}]
       54 MOVE                             R12 R1
       55 CALL                             R12 0 1
       56 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K14 ["ArrowSpacer"]
       61 GETUPVAL                         R9 3
       62 GETUPVAL                         R11 7
       63 GETTABLEKS                       R10 R11 K20 ["Image"]
       65 DUPTABLE                         R11 K21 [{"tag", "LayoutOrder"}]
       66 LOADK                            R12 K22 ["size-300-300 bg-alert"]
       67 SETTABLEKS                       R12 R11 K4 ["tag"]
       69 MOVE                             R12 R1
       70 CALL                             R12 0 1
       71 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K15 ["Icon"]
       76 GETUPVAL                         R9 3
       77 GETUPVAL                         R10 8
       78 DUPTABLE                         R11 K24 [{"tag", "LayoutOrder", "Text"}]
       79 LOADK                            R12 K25 ["clip text-no-wrap text-align-x-left text-align-y-center text-body-small size-full-full shrink"]
       80 SETTABLEKS                       R12 R11 K4 ["tag"]
       82 MOVE                             R12 R1
       83 CALL                             R12 0 1
       84 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       86 DUPCLOSURE                       R14 K26 [PROTO_2]
       87 NAMECALL                         R12 R2 K27 ["map"]
       89 CALL                             R12 2 1
       90 SETTABLEKS                       R12 R11 K23 ["Text"]
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K16 ["TagName"]
       95 GETUPVAL                         R9 3
       96 GETUPVAL                         R10 9
       97 DUPTABLE                         R11 K31 [{"LayoutOrder", "icon", "size", "onActivated"}]
       98 MOVE                             R12 R1
       99 CALL                             R12 0 1
      100 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      102 DUPTABLE                         R12 K33 [{"name"}]
      103 GETUPVAL                         R14 10
      104 GETTABLEKS                       R13 R14 K34 ["Minus"]
      106 SETTABLEKS                       R13 R12 K32 ["name"]
      108 SETTABLEKS                       R12 R11 K28 ["icon"]
      110 GETUPVAL                         R13 11
      111 GETTABLEKS                       R12 R13 K35 ["XSmall"]
      113 SETTABLEKS                       R12 R11 K29 ["size"]
      115 SETTABLEKS                       R3 R11 K30 ["onActivated"]
      117 CALL                             R9 2 1
      118 SETTABLEKS                       R9 R8 K17 ["Remove"]
      120 CALL                             R5 3 -1
      121 RETURN                           R5 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["Util"]
       20 GETTABLEKS                       R4 R5 K10 ["LeftArrowSpacer"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["PropertyTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["React"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K13 ["ReactUtils"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R1 K14 ["Signals"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R1 K15 ["SignalsReact"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R5 K16 ["createElement"]
       50 GETTABLEKS                       R10 R2 K17 ["IconButton"]
       52 GETTABLEKS                       R11 R2 K18 ["Text"]
       54 GETTABLEKS                       R12 R2 K19 ["View"]
       56 GETTABLEKS                       R14 R2 K20 ["Enums"]
       58 GETTABLEKS                       R13 R14 K21 ["StateLayerAffordance"]
       60 GETTABLEKS                       R15 R2 K20 ["Enums"]
       62 GETTABLEKS                       R14 R15 K22 ["IconName"]
       64 GETTABLEKS                       R16 R2 K20 ["Enums"]
       66 GETTABLEKS                       R15 R16 K23 ["InputSize"]
       68 DUPCLOSURE                       R16 K24 [PROTO_3]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R15
       81 GETTABLEKS                       R17 R5 K25 ["memo"]
       83 MOVE                             R18 R16
       84 CALL                             R17 1 -1
       85 RETURN                           R17 -1
