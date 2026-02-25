PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["icon"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K0 ["icon"]
        8 GETTABLE                         R2 R3 R4
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 3
       11 DUPTABLE                         R5 K3 [{"tag", "LayoutOrder"}]
       12 LOADK                            R6 K4 ["col size-full-0 auto-xy gap-small"]
       13 SETTABLEKS                       R6 R5 K1 ["tag"]
       15 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       19 DUPTABLE                         R6 K6 [{"Title"}]
       20 GETUPVAL                         R7 2
       21 GETUPVAL                         R8 3
       22 DUPTABLE                         R9 K3 [{"tag", "LayoutOrder"}]
       23 LOADK                            R10 K7 ["row gap-xsmall size-full-600 radius-medium align-y-center"]
       24 SETTABLEKS                       R10 R9 K1 ["tag"]
       26 MOVE                             R10 R1
       27 CALL                             R10 0 1
       28 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       30 DUPTABLE                         R10 K10 [{"Icon", "Text"}]
       31 MOVE                             R11 R2
       32 JUMPIFNOT                        R11 ; [+13]
       33 GETUPVAL                         R11 2
       34 GETUPVAL                         R12 4
       35 DUPTABLE                         R13 K12 [{"Image", "tag", "LayoutOrder"}]
       36 SETTABLEKS                       R2 R13 K11 ["Image"]
       38 LOADK                            R14 K13 ["size-300-300 anchor-center-center position-center-center content-emphasis"]
       39 SETTABLEKS                       R14 R13 K1 ["tag"]
       41 MOVE                             R14 R1
       42 CALL                             R14 0 1
       43 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K8 ["Icon"]
       48 GETUPVAL                         R11 2
       49 GETUPVAL                         R12 5
       50 DUPTABLE                         R13 K14 [{"tag", "Text", "LayoutOrder"}]
       51 LOADK                            R14 K15 ["size-0-full auto-x text-label-small text-truncate-end content-emphasis"]
       52 SETTABLEKS                       R14 R13 K1 ["tag"]
       54 GETTABLEKS                       R14 R0 K16 ["summary"]
       56 SETTABLEKS                       R14 R13 K9 ["Text"]
       58 MOVE                             R14 R1
       59 CALL                             R14 0 1
       60 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       62 DUPTABLE                         R14 K18 [{"Shimmer"}]
       63 GETTABLEKS                       R15 R0 K19 ["generating"]
       65 JUMPIFNOT                        R15 ; [+3]
       66 GETUPVAL                         R15 2
       67 GETUPVAL                         R16 6
       68 CALL                             R15 1 1
       69 SETTABLEKS                       R15 R14 K17 ["Shimmer"]
       71 CALL                             R11 3 1
       72 SETTABLEKS                       R11 R10 K9 ["Text"]
       74 CALL                             R7 3 1
       75 SETTABLEKS                       R7 R6 K5 ["Title"]
       77 CALL                             R3 3 -1
       78 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentWidgetRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["ShimmerGradient"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Types"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Flags"]
       51 GETTABLEKS                       R8 R9 K16 ["FFlagAssistantRegisterWidgetsThroughTools"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R2 K17 ["Text"]
       56 GETTABLEKS                       R9 R2 K18 ["View"]
       58 GETTABLEKS                       R10 R2 K19 ["Image"]
       60 GETTABLEKS                       R11 R4 K20 ["createNextOrder"]
       62 GETTABLEKS                       R12 R3 K21 ["createElement"]
       64 DUPTABLE                         R13 K23 [{"Search"}]
       65 LOADK                            R14 K24 ["search"]
       66 SETTABLEKS                       R14 R13 K22 ["Search"]
       68 DUPTABLE                         R14 K25 [{"search"}]
       69 LOADK                            R15 K26 ["icons/common/search_small"]
       70 SETTABLEKS                       R15 R14 K24 ["search"]
       72 DUPCLOSURE                       R15 K27 [PROTO_0]
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R5
       80 DUPTABLE                         R16 K31 [{"Type", "ContentWidget", "Icons"}]
       81 LOADK                            R17 K32 ["Summarized"]
       82 SETTABLEKS                       R17 R16 K28 ["Type"]
       84 GETTABLEKS                       R17 R3 K33 ["memo"]
       86 MOVE                             R18 R15
       87 CALL                             R17 1 1
       88 SETTABLEKS                       R17 R16 K29 ["ContentWidget"]
       90 SETTABLEKS                       R13 R16 K30 ["Icons"]
       92 MOVE                             R17 R7
       93 CALL                             R17 0 1
       94 JUMPIF                           R17 ; [+7]
       95 GETTABLEKS                       R17 R1 K34 ["registerWidget"]
       97 GETTABLEKS                       R18 R16 K28 ["Type"]
       99 GETTABLEKS                       R19 R16 K29 ["ContentWidget"]
      101 CALL                             R17 2 0
      102 RETURN                           R16 1
