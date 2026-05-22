PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Small"]
        5 DUPTABLE                         R3 K3 [{"bar", "circle"}]
        6 DUPTABLE                         R4 K5 [{"height"}]
        7 GETTABLEKS                       R5 R0 K6 ["Size"]
        9 GETTABLEKS                       R5 R5 K7 ["Size_50"]
       11 SETTABLEKS                       R5 R4 K4 ["height"]
       13 SETTABLEKS                       R4 R3 K1 ["bar"]
       15 DUPTABLE                         R4 K9 [{"size"}]
       16 GETTABLEKS                       R5 R0 K6 ["Size"]
       18 GETTABLEKS                       R5 R5 K10 ["Size_400"]
       20 SETTABLEKS                       R5 R4 K8 ["size"]
       22 SETTABLEKS                       R4 R3 K2 ["circle"]
       24 SETTABLE                         R3 R1 R2
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K11 ["Medium"]
       28 DUPTABLE                         R3 K3 [{"bar", "circle"}]
       29 DUPTABLE                         R4 K5 [{"height"}]
       30 GETTABLEKS                       R5 R0 K6 ["Size"]
       32 GETTABLEKS                       R5 R5 K12 ["Size_100"]
       34 SETTABLEKS                       R5 R4 K4 ["height"]
       36 SETTABLEKS                       R4 R3 K1 ["bar"]
       38 DUPTABLE                         R4 K9 [{"size"}]
       39 GETTABLEKS                       R5 R0 K6 ["Size"]
       41 GETTABLEKS                       R5 R5 K13 ["Size_800"]
       43 SETTABLEKS                       R5 R4 K8 ["size"]
       45 SETTABLEKS                       R4 R3 K2 ["circle"]
       47 SETTABLE                         R3 R1 R2
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K14 ["Large"]
       51 DUPTABLE                         R3 K3 [{"bar", "circle"}]
       52 DUPTABLE                         R4 K5 [{"height"}]
       53 GETTABLEKS                       R5 R0 K6 ["Size"]
       55 GETTABLEKS                       R5 R5 K15 ["Size_150"]
       57 SETTABLEKS                       R5 R4 K4 ["height"]
       59 SETTABLEKS                       R4 R3 K1 ["bar"]
       61 DUPTABLE                         R4 K17 [{"size", "labelFont"}]
       62 GETTABLEKS                       R5 R0 K6 ["Size"]
       64 GETTABLEKS                       R5 R5 K18 ["Size_1300"]
       66 SETTABLEKS                       R5 R4 K8 ["size"]
       68 GETTABLEKS                       R5 R0 K19 ["Typography"]
       70 GETTABLEKS                       R5 R5 K20 ["LabelMedium"]
       72 SETTABLEKS                       R5 R4 K16 ["labelFont"]
       74 SETTABLEKS                       R4 R3 K2 ["circle"]
       76 SETTABLE                         R3 R1 R2
       77 DUPTABLE                         R2 K22 [{"sizes"}]
       78 SETTABLEKS                       R1 R2 K21 ["sizes"]
       80 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["Progress"]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R5 R2 K2 ["sizes"]
       10 GETTABLE                         R4 R5 R1
       11 CALL                             R3 1 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["ProgressSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R3 K9 ["composeStyleVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Providers"]
       25 GETTABLEKS                       R4 R4 K11 ["Style"]
       27 GETTABLEKS                       R4 R4 K12 ["Tokens"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Providers"]
       34 GETTABLEKS                       R5 R5 K11 ["Style"]
       36 GETTABLEKS                       R5 R5 K13 ["VariantsContext"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R6 K15 [PROTO_1]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 RETURN                           R6 1
