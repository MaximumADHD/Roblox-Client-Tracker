PROTO_0:
        0 DUPTABLE                         R2 K4 [{"container", "title", "description", "icon"}]
        1 DUPTABLE                         R3 K8 [{["tag"] = "bg-shift-200", ["colorMode"]}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K9 ["Color"]
        5 SETTABLEKS                       R4 R3 K7 ["colorMode"]
        7 SETTABLEKS                       R3 R2 K0 ["container"]
        9 DUPTABLE                         R3 K11 [{"style"}]
       10 GETTABLEKS                       R4 R0 K9 ["Color"]
       12 GETTABLEKS                       R4 R4 K12 ["Content"]
       14 GETTABLEKS                       R4 R4 K13 ["Emphasis"]
       16 SETTABLEKS                       R4 R3 K10 ["style"]
       18 SETTABLEKS                       R3 R2 K1 ["title"]
       20 DUPTABLE                         R3 K11 [{"style"}]
       21 GETTABLEKS                       R4 R0 K9 ["Color"]
       23 GETTABLEKS                       R4 R4 K12 ["Content"]
       25 GETTABLEKS                       R4 R4 K14 ["Default"]
       27 SETTABLEKS                       R4 R3 K10 ["style"]
       29 SETTABLEKS                       R3 R2 K2 ["description"]
       31 DUPTABLE                         R3 K11 [{"style"}]
       32 SETTABLEKS                       R1 R3 K10 ["style"]
       34 SETTABLEKS                       R3 R2 K3 ["icon"]
       36 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R3 K4 [{"container", "title", "description", "icon"}]
        1 DUPTABLE                         R4 K7 [{"tag", "colorMode"}]
        2 SETTABLEKS                       R1 R4 K5 ["tag"]
        4 SETTABLEKS                       R2 R4 K6 ["colorMode"]
        6 SETTABLEKS                       R4 R3 K0 ["container"]
        8 DUPTABLE                         R4 K9 [{"style"}]
        9 GETTABLE                         R5 R0 R2
       10 GETTABLEKS                       R5 R5 K10 ["Content"]
       12 GETTABLEKS                       R5 R5 K11 ["Emphasis"]
       14 SETTABLEKS                       R5 R4 K8 ["style"]
       16 SETTABLEKS                       R4 R3 K1 ["title"]
       18 DUPTABLE                         R4 K9 [{"style"}]
       19 GETTABLE                         R5 R0 R2
       20 GETTABLEKS                       R5 R5 K10 ["Content"]
       22 GETTABLEKS                       R5 R5 K12 ["Default"]
       24 SETTABLEKS                       R5 R4 K8 ["style"]
       26 SETTABLEKS                       R4 R3 K2 ["description"]
       28 DUPTABLE                         R4 K9 [{"style"}]
       29 GETTABLE                         R5 R0 R2
       30 GETTABLEKS                       R5 R5 K10 ["Content"]
       32 GETTABLEKS                       R5 R5 K11 ["Emphasis"]
       34 SETTABLEKS                       R5 R4 K8 ["style"]
       36 SETTABLEKS                       R4 R3 K3 ["icon"]
       38 RETURN                           R3 1

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"container", "title", "description"}]
        1 DUPTABLE                         R2 K6 [{["tag"] = "size-full-0 auto-y row padding-y-large padding-x-medium gap-medium"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K8 [{["tag"] = "text-align-x-left text-wrap auto-xy text-title-medium padding-y-xxsmall"}]
        5 SETTABLEKS                       R2 R1 K1 ["title"]
        7 DUPTABLE                         R2 K10 [{["tag"] = "text-align-x-left text-wrap auto-xy text-body-medium text-wrap"}]
        8 SETTABLEKS                       R2 R1 K2 ["description"]
       10 NEWTABLE                         R2 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K11 ["Standard"]
       15 NEWTABLE                         R4 4 0
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K12 ["Info"]
       20 GETUPVAL                         R6 2
       21 MOVE                             R7 R0
       22 GETTABLEKS                       R8 R0 K13 ["Color"]
       24 GETTABLEKS                       R8 R8 K14 ["System"]
       26 GETTABLEKS                       R8 R8 K15 ["Emphasis"]
       28 CALL                             R6 2 1
       29 SETTABLE                         R6 R4 R5
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K16 ["Warning"]
       33 GETUPVAL                         R6 2
       34 MOVE                             R7 R0
       35 GETTABLEKS                       R8 R0 K13 ["Color"]
       37 GETTABLEKS                       R8 R8 K14 ["System"]
       39 GETTABLEKS                       R8 R8 K16 ["Warning"]
       41 CALL                             R6 2 1
       42 SETTABLE                         R6 R4 R5
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K17 ["Success"]
       46 GETUPVAL                         R6 2
       47 MOVE                             R7 R0
       48 GETTABLEKS                       R8 R0 K13 ["Color"]
       50 GETTABLEKS                       R8 R8 K14 ["System"]
       52 GETTABLEKS                       R8 R8 K17 ["Success"]
       54 CALL                             R6 2 1
       55 SETTABLE                         R6 R4 R5
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R5 R5 K18 ["Error"]
       59 GETUPVAL                         R6 2
       60 MOVE                             R7 R0
       61 GETTABLEKS                       R8 R0 K13 ["Color"]
       63 GETTABLEKS                       R8 R8 K14 ["System"]
       65 GETTABLEKS                       R8 R8 K19 ["Alert"]
       67 CALL                             R6 2 1
       68 SETTABLE                         R6 R4 R5
       69 SETTABLE                         R4 R2 R3
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K15 ["Emphasis"]
       73 NEWTABLE                         R4 4 0
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R5 R5 K12 ["Info"]
       78 GETUPVAL                         R6 3
       79 MOVE                             R7 R0
       80 LOADK                            R8 K20 ["bg-system-emphasis"]
       81 GETUPVAL                         R9 4
       82 GETTABLEKS                       R9 R9 K21 ["DarkMode"]
       84 CALL                             R6 3 1
       85 SETTABLE                         R6 R4 R5
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K16 ["Warning"]
       89 GETUPVAL                         R6 3
       90 MOVE                             R7 R0
       91 LOADK                            R8 K22 ["bg-system-warning"]
       92 GETUPVAL                         R9 4
       93 GETTABLEKS                       R9 R9 K23 ["LightMode"]
       95 CALL                             R6 3 1
       96 SETTABLE                         R6 R4 R5
       97 GETUPVAL                         R5 1
       98 GETTABLEKS                       R5 R5 K17 ["Success"]
      100 GETUPVAL                         R6 3
      101 MOVE                             R7 R0
      102 LOADK                            R8 K24 ["bg-system-success"]
      103 GETUPVAL                         R9 4
      104 GETTABLEKS                       R9 R9 K23 ["LightMode"]
      106 CALL                             R6 3 1
      107 SETTABLE                         R6 R4 R5
      108 GETUPVAL                         R5 1
      109 GETTABLEKS                       R5 R5 K18 ["Error"]
      111 GETUPVAL                         R6 3
      112 MOVE                             R7 R0
      113 LOADK                            R8 K25 ["bg-system-alert"]
      114 GETUPVAL                         R9 4
      115 GETTABLEKS                       R9 R9 K21 ["DarkMode"]
      117 CALL                             R6 3 1
      118 SETTABLE                         R6 R4 R5
      119 SETTABLE                         R4 R2 R3
      120 DUPTABLE                         R3 K28 [{"common", "severity"}]
      121 SETTABLEKS                       R1 R3 K26 ["common"]
      123 SETTABLEKS                       R2 R3 K27 ["severity"]
      125 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["SystemBanner"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R8 R3 K3 ["severity"]
       12 GETTABLE                         R7 R8 R1
       13 GETTABLE                         R6 R7 R2
       14 CALL                             R4 2 -1
       15 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["ColorMode"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["AlertVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Enums"]
       32 GETTABLEKS                       R5 R5 K11 ["AlertSeverity"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Utility"]
       39 GETTABLEKS                       R6 R6 K13 ["composeStyleVariant"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Providers"]
       46 GETTABLEKS                       R7 R7 K15 ["Style"]
       48 GETTABLEKS                       R7 R7 K16 ["Tokens"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Providers"]
       55 GETTABLEKS                       R8 R8 K15 ["Style"]
       57 GETTABLEKS                       R8 R8 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R2
       62 DUPCLOSURE                       R9 K19 [PROTO_1]
       63 DUPCLOSURE                       R10 K20 [PROTO_2]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R11 K21 [PROTO_3]
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R5
       73 RETURN                           R11 1
