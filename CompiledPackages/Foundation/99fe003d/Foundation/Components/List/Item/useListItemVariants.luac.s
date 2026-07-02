PROTO_0:
        0 DUPTABLE                         R1 K3 [{"title", "metadata", "description"}]
        1 DUPTABLE                         R2 K6 [{["tag"] = "auto-xy text-wrap text-align-x-left content-emphasis"}]
        2 SETTABLEKS                       R2 R1 K0 ["title"]
        4 DUPTABLE                         R2 K8 [{["tag"] = "auto-xy text-align-x-left text-truncate-split"}]
        5 SETTABLEKS                       R2 R1 K1 ["metadata"]
        7 DUPTABLE                         R2 K10 [{["tag"] = "auto-xy text-wrap text-align-x-left"}]
        8 SETTABLEKS                       R2 R1 K2 ["description"]
       10 NEWTABLE                         R2 4 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K11 ["XSmall"]
       15 DUPTABLE                         R4 K13 [{"title", "metadata", "description", "icon"}]
       16 DUPTABLE                         R5 K15 [{["tag"] = "text-title-small"}]
       17 SETTABLEKS                       R5 R4 K0 ["title"]
       19 DUPTABLE                         R5 K17 [{["tag"] = "text-body-small"}]
       20 SETTABLEKS                       R5 R4 K1 ["metadata"]
       22 DUPTABLE                         R5 K17 [{["tag"] = "text-body-small"}]
       23 SETTABLEKS                       R5 R4 K2 ["description"]
       25 DUPTABLE                         R5 K19 [{"size"}]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K11 ["XSmall"]
       29 SETTABLEKS                       R6 R5 K18 ["size"]
       31 SETTABLEKS                       R5 R4 K12 ["icon"]
       33 SETTABLE                         R4 R2 R3
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K20 ["Small"]
       37 DUPTABLE                         R4 K13 [{"title", "metadata", "description", "icon"}]
       38 DUPTABLE                         R5 K15 [{["tag"] = "text-title-small"}]
       39 SETTABLEKS                       R5 R4 K0 ["title"]
       41 DUPTABLE                         R5 K17 [{["tag"] = "text-body-small"}]
       42 SETTABLEKS                       R5 R4 K1 ["metadata"]
       44 DUPTABLE                         R5 K17 [{["tag"] = "text-body-small"}]
       45 SETTABLEKS                       R5 R4 K2 ["description"]
       47 DUPTABLE                         R5 K19 [{"size"}]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K20 ["Small"]
       51 SETTABLEKS                       R6 R5 K18 ["size"]
       53 SETTABLEKS                       R5 R4 K12 ["icon"]
       55 SETTABLE                         R4 R2 R3
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K21 ["Medium"]
       59 DUPTABLE                         R4 K13 [{"title", "metadata", "description", "icon"}]
       60 DUPTABLE                         R5 K23 [{["tag"] = "text-title-medium"}]
       61 SETTABLEKS                       R5 R4 K0 ["title"]
       63 DUPTABLE                         R5 K25 [{["tag"] = "text-body-medium"}]
       64 SETTABLEKS                       R5 R4 K1 ["metadata"]
       66 DUPTABLE                         R5 K25 [{["tag"] = "text-body-medium"}]
       67 SETTABLEKS                       R5 R4 K2 ["description"]
       69 DUPTABLE                         R5 K19 [{"size"}]
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K21 ["Medium"]
       73 SETTABLEKS                       R6 R5 K18 ["size"]
       75 SETTABLEKS                       R5 R4 K12 ["icon"]
       77 SETTABLE                         R4 R2 R3
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K26 ["Large"]
       81 DUPTABLE                         R4 K13 [{"title", "metadata", "description", "icon"}]
       82 DUPTABLE                         R5 K28 [{["tag"] = "text-title-large"}]
       83 SETTABLEKS                       R5 R4 K0 ["title"]
       85 DUPTABLE                         R5 K25 [{["tag"] = "text-body-medium"}]
       86 SETTABLEKS                       R5 R4 K1 ["metadata"]
       88 DUPTABLE                         R5 K25 [{["tag"] = "text-body-medium"}]
       89 SETTABLEKS                       R5 R4 K2 ["description"]
       91 DUPTABLE                         R5 K19 [{"size"}]
       92 GETUPVAL                         R6 1
       93 GETTABLEKS                       R6 R6 K26 ["Large"]
       95 SETTABLEKS                       R6 R5 K18 ["size"]
       97 SETTABLEKS                       R5 R4 K12 ["icon"]
       99 SETTABLE                         R4 R2 R3
      100 DUPTABLE                         R3 K31 [{"common", "sizes"}]
      101 SETTABLEKS                       R1 R3 K29 ["common"]
      103 SETTABLEKS                       R2 R3 K30 ["sizes"]
      105 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["ListItem"]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R2 K2 ["common"]
       10 GETTABLEKS                       R6 R2 K3 ["sizes"]
       12 GETTABLE                         R5 R6 R1
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["IconSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R4 K10 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Providers"]
       32 GETTABLEKS                       R5 R5 K12 ["Style"]
       34 GETTABLEKS                       R5 R5 K13 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Providers"]
       41 GETTABLEKS                       R6 R6 K12 ["Style"]
       43 GETTABLEKS                       R6 R6 K14 ["VariantsContext"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R7 K16 [PROTO_1]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 RETURN                           R7 1
