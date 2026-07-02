PROTO_0:
        0 DUPTABLE                         R2 K3 [{"icon", "stroke", "backgroundStyle"}]
        1 DUPTABLE                         R3 K5 [{"style"}]
        2 SETTABLEKS                       R1 R3 K4 ["style"]
        4 SETTABLEKS                       R3 R2 K0 ["icon"]
        6 DUPTABLE                         R3 K10 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
        7 GETTABLEKS                       R4 R1 K11 ["Color3"]
        9 SETTABLEKS                       R4 R3 K6 ["Color"]
       11 GETTABLEKS                       R4 R1 K7 ["Transparency"]
       13 SETTABLEKS                       R4 R3 K7 ["Transparency"]
       15 SETTABLEKS                       R3 R2 K1 ["stroke"]
       17 DUPTABLE                         R3 K13 [{["Color3"], ["Transparency"] = 0.95}]
       18 GETTABLEKS                       R4 R1 K11 ["Color3"]
       20 SETTABLEKS                       R4 R3 K11 ["Color3"]
       22 SETTABLEKS                       R3 R2 K2 ["backgroundStyle"]
       24 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{"container", "headerRow", "title", "subtitle", "description", "link"}]
        1 DUPTABLE                         R2 K9 [{["tag"] = "col align-x-left align-y-center gap-medium size-full-0 auto-y padding-large radius-medium"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K11 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y"}]
        5 SETTABLEKS                       R2 R1 K1 ["headerRow"]
        7 DUPTABLE                         R2 K13 [{["tag"] = "shrink auto-xy text-title-medium text-truncate-split content-emphasis"}]
        8 SETTABLEKS                       R2 R1 K2 ["title"]
       10 DUPTABLE                         R2 K15 [{["tag"] = "shrink auto-xy text-body-medium text-truncate-split content-default"}]
       11 SETTABLEKS                       R2 R1 K3 ["subtitle"]
       13 DUPTABLE                         R2 K17 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-truncate-split content-default"}]
       14 SETTABLEKS                       R2 R1 K4 ["description"]
       16 DUPTABLE                         R2 K19 [{["tag"] = "shrink auto-xy text-body-medium text-truncate-split content-emphasis"}]
       17 SETTABLEKS                       R2 R1 K5 ["link"]
       19 NEWTABLE                         R2 4 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K20 ["Info"]
       24 GETUPVAL                         R4 1
       25 MOVE                             R5 R0
       26 GETTABLEKS                       R6 R0 K21 ["Color"]
       28 GETTABLEKS                       R6 R6 K22 ["System"]
       30 GETTABLEKS                       R6 R6 K23 ["Emphasis"]
       32 CALL                             R4 2 1
       33 SETTABLE                         R4 R2 R3
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K24 ["Warning"]
       37 GETUPVAL                         R4 1
       38 MOVE                             R5 R0
       39 GETTABLEKS                       R6 R0 K21 ["Color"]
       41 GETTABLEKS                       R6 R6 K22 ["System"]
       43 GETTABLEKS                       R6 R6 K24 ["Warning"]
       45 CALL                             R4 2 1
       46 SETTABLE                         R4 R2 R3
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K25 ["Success"]
       50 GETUPVAL                         R4 1
       51 MOVE                             R5 R0
       52 GETTABLEKS                       R6 R0 K21 ["Color"]
       54 GETTABLEKS                       R6 R6 K22 ["System"]
       56 GETTABLEKS                       R6 R6 K25 ["Success"]
       58 CALL                             R4 2 1
       59 SETTABLE                         R4 R2 R3
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K26 ["Error"]
       63 GETUPVAL                         R4 1
       64 MOVE                             R5 R0
       65 GETTABLEKS                       R6 R0 K21 ["Color"]
       67 GETTABLEKS                       R6 R6 K22 ["System"]
       69 GETTABLEKS                       R6 R6 K27 ["Alert"]
       71 CALL                             R4 2 1
       72 SETTABLE                         R4 R2 R3
       73 DUPTABLE                         R3 K30 [{"common", "severity"}]
       74 SETTABLEKS                       R1 R3 K28 ["common"]
       76 SETTABLEKS                       R2 R3 K29 ["severity"]
       78 RETURN                           R3 1

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
