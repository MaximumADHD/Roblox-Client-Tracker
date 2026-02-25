PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["remove %*"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K3 ["tag"]
        6 GETTABLEKS                       R5 R6 K4 ["id"]
        8 GETTABLEKS                       R4 R5 K5 ["name"]
       10 NAMECALL                         R2 R2 K6 ["format"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["context menu for %*"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K3 ["tag"]
        6 GETTABLEKS                       R5 R6 K4 ["id"]
        8 GETTABLEKS                       R4 R5 K5 ["name"]
       10 NAMECALL                         R2 R2 K6 ["format"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R7 R0 K2 ["tag"]
       13 GETTABLEKS                       R6 R7 K3 ["id"]
       15 GETTABLEKS                       R5 R6 K4 ["name"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R5 0 1
       27 GETTABLEKS                       R8 R0 K2 ["tag"]
       29 GETTABLEKS                       R7 R8 K3 ["id"]
       31 GETTABLEKS                       R6 R7 K4 ["name"]
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 2
       37 GETUPVAL                         R5 3
       38 DUPTABLE                         R6 K8 [{"tag", "LayoutOrder", "onSecondaryActivated", "stateLayer"}]
       39 LOADK                            R7 K9 ["row align-y-center padding-left-medium gap-small size-full-700"]
       40 SETTABLEKS                       R7 R6 K2 ["tag"]
       42 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       44 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       46 SETTABLEKS                       R3 R6 K6 ["onSecondaryActivated"]
       48 DUPTABLE                         R7 K11 [{"affordance"}]
       49 GETUPVAL                         R9 4
       50 GETTABLEKS                       R8 R9 K12 ["None"]
       52 SETTABLEKS                       R8 R7 K10 ["affordance"]
       54 SETTABLEKS                       R7 R6 K7 ["stateLayer"]
       56 DUPTABLE                         R7 K17 [{"ArrowSpacer", "Icon", "TagName", "Remove"}]
       57 GETUPVAL                         R8 2
       58 GETUPVAL                         R9 5
       59 DUPTABLE                         R10 K18 [{"LayoutOrder"}]
       60 MOVE                             R11 R1
       61 CALL                             R11 0 1
       62 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K13 ["ArrowSpacer"]
       67 GETUPVAL                         R8 2
       68 GETUPVAL                         R10 6
       69 GETTABLEKS                       R9 R10 K19 ["Image"]
       71 DUPTABLE                         R10 K20 [{"tag", "LayoutOrder"}]
       72 LOADK                            R11 K21 ["size-300-300 bg-alert"]
       73 SETTABLEKS                       R11 R10 K2 ["tag"]
       75 MOVE                             R11 R1
       76 CALL                             R11 0 1
       77 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K14 ["Icon"]
       82 GETUPVAL                         R8 2
       83 GETUPVAL                         R9 7
       84 DUPTABLE                         R10 K23 [{"tag", "LayoutOrder", "Text"}]
       85 LOADK                            R11 K24 ["clip text-no-wrap text-align-x-left text-align-y-center text-body-small size-full-full shrink"]
       86 SETTABLEKS                       R11 R10 K2 ["tag"]
       88 MOVE                             R11 R1
       89 CALL                             R11 0 1
       90 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       92 GETTABLEKS                       R13 R0 K2 ["tag"]
       94 GETTABLEKS                       R12 R13 K3 ["id"]
       96 GETTABLEKS                       R11 R12 K4 ["name"]
       98 SETTABLEKS                       R11 R10 K22 ["Text"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K15 ["TagName"]
      103 GETUPVAL                         R8 2
      104 GETUPVAL                         R9 8
      105 DUPTABLE                         R10 K28 [{"LayoutOrder", "icon", "size", "onActivated"}]
      106 MOVE                             R11 R1
      107 CALL                             R11 0 1
      108 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      110 DUPTABLE                         R11 K29 [{"name"}]
      111 GETUPVAL                         R13 9
      112 GETTABLEKS                       R12 R13 K30 ["Minus"]
      114 SETTABLEKS                       R12 R11 K4 ["name"]
      116 SETTABLEKS                       R11 R10 K25 ["icon"]
      118 GETUPVAL                         R12 10
      119 GETTABLEKS                       R11 R12 K31 ["XSmall"]
      121 SETTABLEKS                       R11 R10 K26 ["size"]
      123 SETTABLEKS                       R2 R10 K27 ["onActivated"]
      125 CALL                             R8 2 1
      126 SETTABLEKS                       R8 R7 K16 ["Remove"]
      128 CALL                             R4 3 -1
      129 RETURN                           R4 -1

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
       38 GETTABLEKS                       R7 R5 K14 ["createElement"]
       40 GETTABLEKS                       R8 R2 K15 ["IconButton"]
       42 GETTABLEKS                       R9 R2 K16 ["Text"]
       44 GETTABLEKS                       R10 R2 K17 ["View"]
       46 GETTABLEKS                       R12 R2 K18 ["Enums"]
       48 GETTABLEKS                       R11 R12 K19 ["StateLayerAffordance"]
       50 GETTABLEKS                       R13 R2 K18 ["Enums"]
       52 GETTABLEKS                       R12 R13 K20 ["IconName"]
       54 GETTABLEKS                       R14 R2 K18 ["Enums"]
       56 GETTABLEKS                       R13 R14 K21 ["InputSize"]
       58 DUPCLOSURE                       R14 K22 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R13
       70 RETURN                           R14 1
