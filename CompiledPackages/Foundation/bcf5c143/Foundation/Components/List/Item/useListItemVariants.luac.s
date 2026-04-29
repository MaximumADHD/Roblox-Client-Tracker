PROTO_0:
        0 DUPTABLE                         R1 K3 [{"title", "metadata", "description"}]
        1 DUPTABLE                         R2 K5 [{"tag"}]
        2 LOADK                            R3 K6 ["auto-xy text-wrap text-align-x-left content-emphasis"]
        3 SETTABLEKS                       R3 R2 K4 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["title"]
        7 DUPTABLE                         R2 K5 [{"tag"}]
        8 LOADK                            R3 K7 ["auto-xy text-align-x-left text-truncate-split"]
        9 SETTABLEKS                       R3 R2 K4 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["metadata"]
       13 DUPTABLE                         R2 K5 [{"tag"}]
       14 LOADK                            R3 K8 ["auto-xy text-wrap text-align-x-left"]
       15 SETTABLEKS                       R3 R2 K4 ["tag"]
       17 SETTABLEKS                       R2 R1 K2 ["description"]
       19 NEWTABLE                         R2 4 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K9 ["XSmall"]
       24 DUPTABLE                         R4 K11 [{"title", "metadata", "description", "icon"}]
       25 DUPTABLE                         R5 K5 [{"tag"}]
       26 LOADK                            R6 K12 ["text-title-small"]
       27 SETTABLEKS                       R6 R5 K4 ["tag"]
       29 SETTABLEKS                       R5 R4 K0 ["title"]
       31 DUPTABLE                         R5 K5 [{"tag"}]
       32 LOADK                            R6 K13 ["text-body-small"]
       33 SETTABLEKS                       R6 R5 K4 ["tag"]
       35 SETTABLEKS                       R5 R4 K1 ["metadata"]
       37 DUPTABLE                         R5 K5 [{"tag"}]
       38 LOADK                            R6 K13 ["text-body-small"]
       39 SETTABLEKS                       R6 R5 K4 ["tag"]
       41 SETTABLEKS                       R5 R4 K2 ["description"]
       43 DUPTABLE                         R5 K15 [{"size"}]
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R6 R7 K9 ["XSmall"]
       47 SETTABLEKS                       R6 R5 K14 ["size"]
       49 SETTABLEKS                       R5 R4 K10 ["icon"]
       51 SETTABLE                         R4 R2 R3
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R3 R4 K16 ["Small"]
       55 DUPTABLE                         R4 K11 [{"title", "metadata", "description", "icon"}]
       56 DUPTABLE                         R5 K5 [{"tag"}]
       57 LOADK                            R6 K12 ["text-title-small"]
       58 SETTABLEKS                       R6 R5 K4 ["tag"]
       60 SETTABLEKS                       R5 R4 K0 ["title"]
       62 DUPTABLE                         R5 K5 [{"tag"}]
       63 LOADK                            R6 K13 ["text-body-small"]
       64 SETTABLEKS                       R6 R5 K4 ["tag"]
       66 SETTABLEKS                       R5 R4 K1 ["metadata"]
       68 DUPTABLE                         R5 K5 [{"tag"}]
       69 LOADK                            R6 K13 ["text-body-small"]
       70 SETTABLEKS                       R6 R5 K4 ["tag"]
       72 SETTABLEKS                       R5 R4 K2 ["description"]
       74 DUPTABLE                         R5 K15 [{"size"}]
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R6 R7 K16 ["Small"]
       78 SETTABLEKS                       R6 R5 K14 ["size"]
       80 SETTABLEKS                       R5 R4 K10 ["icon"]
       82 SETTABLE                         R4 R2 R3
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R3 R4 K17 ["Medium"]
       86 DUPTABLE                         R4 K11 [{"title", "metadata", "description", "icon"}]
       87 DUPTABLE                         R5 K5 [{"tag"}]
       88 LOADK                            R6 K18 ["text-title-medium"]
       89 SETTABLEKS                       R6 R5 K4 ["tag"]
       91 SETTABLEKS                       R5 R4 K0 ["title"]
       93 DUPTABLE                         R5 K5 [{"tag"}]
       94 LOADK                            R6 K19 ["text-body-medium"]
       95 SETTABLEKS                       R6 R5 K4 ["tag"]
       97 SETTABLEKS                       R5 R4 K1 ["metadata"]
       99 DUPTABLE                         R5 K5 [{"tag"}]
      100 LOADK                            R6 K19 ["text-body-medium"]
      101 SETTABLEKS                       R6 R5 K4 ["tag"]
      103 SETTABLEKS                       R5 R4 K2 ["description"]
      105 DUPTABLE                         R5 K15 [{"size"}]
      106 GETUPVAL                         R7 1
      107 GETTABLEKS                       R6 R7 K17 ["Medium"]
      109 SETTABLEKS                       R6 R5 K14 ["size"]
      111 SETTABLEKS                       R5 R4 K10 ["icon"]
      113 SETTABLE                         R4 R2 R3
      114 GETUPVAL                         R4 0
      115 GETTABLEKS                       R3 R4 K20 ["Large"]
      117 DUPTABLE                         R4 K11 [{"title", "metadata", "description", "icon"}]
      118 DUPTABLE                         R5 K5 [{"tag"}]
      119 LOADK                            R6 K21 ["text-title-large"]
      120 SETTABLEKS                       R6 R5 K4 ["tag"]
      122 SETTABLEKS                       R5 R4 K0 ["title"]
      124 DUPTABLE                         R5 K5 [{"tag"}]
      125 LOADK                            R6 K19 ["text-body-medium"]
      126 SETTABLEKS                       R6 R5 K4 ["tag"]
      128 SETTABLEKS                       R5 R4 K1 ["metadata"]
      130 DUPTABLE                         R5 K5 [{"tag"}]
      131 LOADK                            R6 K19 ["text-body-medium"]
      132 SETTABLEKS                       R6 R5 K4 ["tag"]
      134 SETTABLEKS                       R5 R4 K2 ["description"]
      136 DUPTABLE                         R5 K15 [{"size"}]
      137 GETUPVAL                         R7 1
      138 GETTABLEKS                       R6 R7 K20 ["Large"]
      140 SETTABLEKS                       R6 R5 K14 ["size"]
      142 SETTABLEKS                       R5 R4 K10 ["icon"]
      144 SETTABLE                         R4 R2 R3
      145 DUPTABLE                         R3 K24 [{"common", "sizes"}]
      146 SETTABLEKS                       R1 R3 K22 ["common"]
      148 SETTABLEKS                       R2 R3 K23 ["sizes"]
      150 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useVariants"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["IconSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R5 K10 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Providers"]
       32 GETTABLEKS                       R6 R7 K12 ["Style"]
       34 GETTABLEKS                       R5 R6 K13 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Providers"]
       41 GETTABLEKS                       R7 R8 K12 ["Style"]
       43 GETTABLEKS                       R6 R7 K14 ["VariantsContext"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R7 K16 [PROTO_1]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 RETURN                           R7 1
