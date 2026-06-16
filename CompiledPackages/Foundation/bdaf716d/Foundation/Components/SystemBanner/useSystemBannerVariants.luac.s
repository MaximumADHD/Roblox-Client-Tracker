PROTO_0:
        0 DUPTABLE                         R2 K4 [{"container", "title", "description", "icon"}]
        1 DUPTABLE                         R3 K7 [{"tag", "colorMode"}]
        2 LOADK                            R4 K8 ["bg-shift-200"]
        3 SETTABLEKS                       R4 R3 K5 ["tag"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K9 ["Color"]
        8 SETTABLEKS                       R4 R3 K6 ["colorMode"]
       10 SETTABLEKS                       R3 R2 K0 ["container"]
       12 DUPTABLE                         R3 K11 [{"style"}]
       13 GETTABLEKS                       R4 R0 K9 ["Color"]
       15 GETTABLEKS                       R4 R4 K12 ["Content"]
       17 GETTABLEKS                       R4 R4 K13 ["Emphasis"]
       19 SETTABLEKS                       R4 R3 K10 ["style"]
       21 SETTABLEKS                       R3 R2 K1 ["title"]
       23 DUPTABLE                         R3 K11 [{"style"}]
       24 GETTABLEKS                       R4 R0 K9 ["Color"]
       26 GETTABLEKS                       R4 R4 K12 ["Content"]
       28 GETTABLEKS                       R4 R4 K14 ["Default"]
       30 SETTABLEKS                       R4 R3 K10 ["style"]
       32 SETTABLEKS                       R3 R2 K2 ["description"]
       34 DUPTABLE                         R3 K11 [{"style"}]
       35 SETTABLEKS                       R1 R3 K10 ["style"]
       37 SETTABLEKS                       R3 R2 K3 ["icon"]
       39 RETURN                           R2 1

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
        1 DUPTABLE                         R2 K5 [{"tag"}]
        2 LOADK                            R3 K6 ["size-full-0 auto-y row padding-y-large padding-x-medium gap-medium"]
        3 SETTABLEKS                       R3 R2 K4 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K5 [{"tag"}]
        8 LOADK                            R3 K7 ["text-align-x-left text-wrap auto-xy text-title-medium padding-y-xxsmall"]
        9 SETTABLEKS                       R3 R2 K4 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["title"]
       13 DUPTABLE                         R2 K5 [{"tag"}]
       14 LOADK                            R3 K8 ["text-align-x-left text-wrap auto-xy text-body-medium text-wrap"]
       15 SETTABLEKS                       R3 R2 K4 ["tag"]
       17 SETTABLEKS                       R2 R1 K2 ["description"]
       19 NEWTABLE                         R2 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["Standard"]
       24 NEWTABLE                         R4 4 0
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K10 ["Info"]
       29 GETUPVAL                         R6 2
       30 MOVE                             R7 R0
       31 GETTABLEKS                       R8 R0 K11 ["Color"]
       33 GETTABLEKS                       R8 R8 K12 ["System"]
       35 GETTABLEKS                       R8 R8 K13 ["Emphasis"]
       37 CALL                             R6 2 1
       38 SETTABLE                         R6 R4 R5
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K14 ["Warning"]
       42 GETUPVAL                         R6 2
       43 MOVE                             R7 R0
       44 GETTABLEKS                       R8 R0 K11 ["Color"]
       46 GETTABLEKS                       R8 R8 K12 ["System"]
       48 GETTABLEKS                       R8 R8 K14 ["Warning"]
       50 CALL                             R6 2 1
       51 SETTABLE                         R6 R4 R5
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R5 R5 K15 ["Success"]
       55 GETUPVAL                         R6 2
       56 MOVE                             R7 R0
       57 GETTABLEKS                       R8 R0 K11 ["Color"]
       59 GETTABLEKS                       R8 R8 K12 ["System"]
       61 GETTABLEKS                       R8 R8 K15 ["Success"]
       63 CALL                             R6 2 1
       64 SETTABLE                         R6 R4 R5
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K16 ["Error"]
       68 GETUPVAL                         R6 2
       69 MOVE                             R7 R0
       70 GETTABLEKS                       R8 R0 K11 ["Color"]
       72 GETTABLEKS                       R8 R8 K12 ["System"]
       74 GETTABLEKS                       R8 R8 K17 ["Alert"]
       76 CALL                             R6 2 1
       77 SETTABLE                         R6 R4 R5
       78 SETTABLE                         R4 R2 R3
       79 GETUPVAL                         R3 0
       80 GETTABLEKS                       R3 R3 K13 ["Emphasis"]
       82 NEWTABLE                         R4 4 0
       84 GETUPVAL                         R5 1
       85 GETTABLEKS                       R5 R5 K10 ["Info"]
       87 GETUPVAL                         R6 3
       88 MOVE                             R7 R0
       89 LOADK                            R8 K18 ["bg-system-emphasis"]
       90 GETUPVAL                         R9 4
       91 GETTABLEKS                       R9 R9 K19 ["DarkMode"]
       93 CALL                             R6 3 1
       94 SETTABLE                         R6 R4 R5
       95 GETUPVAL                         R5 1
       96 GETTABLEKS                       R5 R5 K14 ["Warning"]
       98 GETUPVAL                         R6 3
       99 MOVE                             R7 R0
      100 LOADK                            R8 K20 ["bg-system-warning"]
      101 GETUPVAL                         R9 4
      102 GETTABLEKS                       R9 R9 K21 ["LightMode"]
      104 CALL                             R6 3 1
      105 SETTABLE                         R6 R4 R5
      106 GETUPVAL                         R5 1
      107 GETTABLEKS                       R5 R5 K15 ["Success"]
      109 GETUPVAL                         R6 3
      110 MOVE                             R7 R0
      111 LOADK                            R8 K22 ["bg-system-success"]
      112 GETUPVAL                         R9 4
      113 GETTABLEKS                       R9 R9 K21 ["LightMode"]
      115 CALL                             R6 3 1
      116 SETTABLE                         R6 R4 R5
      117 GETUPVAL                         R5 1
      118 GETTABLEKS                       R5 R5 K16 ["Error"]
      120 GETUPVAL                         R6 3
      121 MOVE                             R7 R0
      122 LOADK                            R8 K23 ["bg-system-alert"]
      123 GETUPVAL                         R9 4
      124 GETTABLEKS                       R9 R9 K19 ["DarkMode"]
      126 CALL                             R6 3 1
      127 SETTABLE                         R6 R4 R5
      128 SETTABLE                         R4 R2 R3
      129 DUPTABLE                         R3 K26 [{"common", "severity"}]
      130 SETTABLEKS                       R1 R3 K24 ["common"]
      132 SETTABLEKS                       R2 R3 K25 ["severity"]
      134 RETURN                           R3 1

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
