PROTO_0:
        0 DUPTABLE                         R2 K3 [{"icon", "stroke", "backgroundStyle"}]
        1 DUPTABLE                         R3 K5 [{"style"}]
        2 SETTABLEKS                       R1 R3 K4 ["style"]
        4 SETTABLEKS                       R3 R2 K0 ["icon"]
        6 DUPTABLE                         R3 K9 [{"Color", "Transparency", "Thickness"}]
        7 GETTABLEKS                       R4 R1 K10 ["Color3"]
        9 SETTABLEKS                       R4 R3 K6 ["Color"]
       11 GETTABLEKS                       R4 R1 K7 ["Transparency"]
       13 SETTABLEKS                       R4 R3 K7 ["Transparency"]
       15 LOADN                            R4 1
       16 SETTABLEKS                       R4 R3 K8 ["Thickness"]
       18 SETTABLEKS                       R3 R2 K1 ["stroke"]
       20 DUPTABLE                         R3 K11 [{"Color3", "Transparency"}]
       21 GETTABLEKS                       R4 R1 K10 ["Color3"]
       23 SETTABLEKS                       R4 R3 K10 ["Color3"]
       25 LOADK                            R4 K12 [0.95]
       26 SETTABLEKS                       R4 R3 K7 ["Transparency"]
       28 SETTABLEKS                       R3 R2 K2 ["backgroundStyle"]
       30 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{"container", "headerRow", "title", "subtitle", "description", "link"}]
        1 DUPTABLE                         R2 K8 [{"tag"}]
        2 LOADK                            R3 K9 ["col align-x-left align-y-center gap-medium size-full-0 auto-y padding-large radius-medium"]
        3 SETTABLEKS                       R3 R2 K7 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K8 [{"tag"}]
        8 LOADK                            R3 K10 ["row align-y-center gap-medium size-full-0 auto-y"]
        9 SETTABLEKS                       R3 R2 K7 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["headerRow"]
       13 DUPTABLE                         R2 K8 [{"tag"}]
       14 LOADK                            R3 K11 ["shrink auto-xy text-title-medium text-truncate-split content-emphasis"]
       15 SETTABLEKS                       R3 R2 K7 ["tag"]
       17 SETTABLEKS                       R2 R1 K2 ["title"]
       19 DUPTABLE                         R2 K8 [{"tag"}]
       20 LOADK                            R3 K12 ["shrink auto-xy text-body-medium text-truncate-split content-default"]
       21 SETTABLEKS                       R3 R2 K7 ["tag"]
       23 SETTABLEKS                       R2 R1 K3 ["subtitle"]
       25 DUPTABLE                         R2 K8 [{"tag"}]
       26 LOADK                            R3 K13 ["size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-truncate-split content-default"]
       27 SETTABLEKS                       R3 R2 K7 ["tag"]
       29 SETTABLEKS                       R2 R1 K4 ["description"]
       31 DUPTABLE                         R2 K8 [{"tag"}]
       32 LOADK                            R3 K14 ["shrink auto-xy text-body-medium text-truncate-split content-emphasis"]
       33 SETTABLEKS                       R3 R2 K7 ["tag"]
       35 SETTABLEKS                       R2 R1 K5 ["link"]
       37 NEWTABLE                         R2 4 0
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K15 ["Info"]
       42 GETUPVAL                         R4 1
       43 MOVE                             R5 R0
       44 GETTABLEKS                       R6 R0 K16 ["Color"]
       46 GETTABLEKS                       R6 R6 K17 ["System"]
       48 GETTABLEKS                       R6 R6 K18 ["Emphasis"]
       50 CALL                             R4 2 1
       51 SETTABLE                         R4 R2 R3
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K19 ["Warning"]
       55 GETUPVAL                         R4 1
       56 MOVE                             R5 R0
       57 GETTABLEKS                       R6 R0 K16 ["Color"]
       59 GETTABLEKS                       R6 R6 K17 ["System"]
       61 GETTABLEKS                       R6 R6 K19 ["Warning"]
       63 CALL                             R4 2 1
       64 SETTABLE                         R4 R2 R3
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R3 R3 K20 ["Success"]
       68 GETUPVAL                         R4 1
       69 MOVE                             R5 R0
       70 GETTABLEKS                       R6 R0 K16 ["Color"]
       72 GETTABLEKS                       R6 R6 K17 ["System"]
       74 GETTABLEKS                       R6 R6 K20 ["Success"]
       76 CALL                             R4 2 1
       77 SETTABLE                         R4 R2 R3
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K21 ["Error"]
       81 GETUPVAL                         R4 1
       82 MOVE                             R5 R0
       83 GETTABLEKS                       R6 R0 K16 ["Color"]
       85 GETTABLEKS                       R6 R6 K17 ["System"]
       87 GETTABLEKS                       R6 R6 K22 ["Alert"]
       89 CALL                             R4 2 1
       90 SETTABLE                         R4 R2 R3
       91 DUPTABLE                         R3 K25 [{"common", "severity"}]
       92 SETTABLEKS                       R1 R3 K23 ["common"]
       94 SETTABLEKS                       R2 R3 K24 ["severity"]
       96 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["FeedbackAlert"]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R2 K2 ["common"]
       10 GETTABLEKS                       R6 R2 K3 ["severity"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["AlertSeverity"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Utility"]
       25 GETTABLEKS                       R4 R4 K11 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Providers"]
       32 GETTABLEKS                       R5 R5 K13 ["Style"]
       34 GETTABLEKS                       R5 R5 K14 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Providers"]
       41 GETTABLEKS                       R6 R6 K13 ["Style"]
       43 GETTABLEKS                       R6 R6 K15 ["VariantsContext"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K16 [PROTO_0]
       47 DUPCLOSURE                       R7 K17 [PROTO_1]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 DUPCLOSURE                       R8 K18 [PROTO_2]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R3
       54 RETURN                           R8 1
