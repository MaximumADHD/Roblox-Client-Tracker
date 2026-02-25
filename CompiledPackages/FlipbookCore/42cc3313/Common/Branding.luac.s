PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["View"]
        6 DUPTABLE                         R4 K3 [{"tag", "LayoutOrder"}]
        7 LOADK                            R5 K4 ["auto-xy row gap-small align-y-center"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 GETTABLEKS                       R5 R0 K5 ["layoutOrder"]
       12 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       14 DUPTABLE                         R5 K8 [{"Icon", "Typography"}]
       15 GETUPVAL                         R6 1
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R7 R8 K9 ["Image"]
       19 DUPTABLE                         R8 K11 [{"LayoutOrder", "Image", "Size"}]
       20 GETUPVAL                         R9 3
       21 CALL                             R9 0 1
       22 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       24 GETUPVAL                         R10 4
       25 GETTABLEKS                       R9 R10 K12 ["FLIPBOOK_LOGO"]
       27 SETTABLEKS                       R9 R8 K9 ["Image"]
       29 GETIMPORT                        R9 K15 [UDim2.fromOffset]
       31 GETTABLEKS                       R11 R1 K10 ["Size"]
       33 GETTABLEKS                       R10 R11 K16 ["Size_800"]
       35 GETTABLEKS                       R12 R1 K10 ["Size"]
       37 GETTABLEKS                       R11 R12 K16 ["Size_800"]
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K10 ["Size"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K6 ["Icon"]
       45 GETUPVAL                         R6 1
       46 GETUPVAL                         R8 2
       47 GETTABLEKS                       R7 R8 K17 ["Text"]
       49 DUPTABLE                         R8 K18 [{"tag", "LayoutOrder", "Text"}]
       50 LOADK                            R9 K19 ["auto-xy text-heading-medium"]
       51 SETTABLEKS                       R9 R8 K1 ["tag"]
       53 GETUPVAL                         R9 3
       54 CALL                             R9 0 1
       55 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       57 LOADK                            R9 K20 ["Flipbook"]
       58 SETTABLEKS                       R9 R8 K17 ["Text"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K7 ["Typography"]
       63 CALL                             R2 3 -1
       64 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["RobloxPackages"]
       11 GETTABLEKS                       R1 R2 K6 ["Foundation"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Packages"]
       24 GETTABLEKS                       R2 R3 K8 ["React"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R6 K3 [script]
       31 GETTABLEKS                       R5 R6 K4 ["Parent"]
       33 GETTABLEKS                       R4 R5 K4 ["Parent"]
       35 GETTABLEKS                       R3 R4 K9 ["constants"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K1 [require]
       40 GETIMPORT                        R6 K3 [script]
       42 GETTABLEKS                       R5 R6 K4 ["Parent"]
       44 GETTABLEKS                       R4 R5 K10 ["nextLayoutOrder"]
       46 CALL                             R3 1 1
       47 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       49 GETTABLEKS                       R4 R5 K12 ["useTokens"]
       51 GETTABLEKS                       R5 R1 K13 ["createElement"]
       53 DUPCLOSURE                       R6 K14 [PROTO_0]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 RETURN                           R6 1
