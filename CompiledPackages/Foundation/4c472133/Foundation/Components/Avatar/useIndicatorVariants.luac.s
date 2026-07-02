PROTO_0:
        0 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        2 MOVE                             R4 R2
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K3 ["Ring"]
        8 JUMPIFNOTEQ                      R0 R4 ; [+15]
       10 DUPTABLE                         R4 K5 [{"indicator"}]
       11 DUPTABLE                         R5 K10 [{["imageStyle"], ["Image"] = "component_assets/circle_15_stroke_3", ["Size"]}]
       12 SETTABLEKS                       R1 R5 K6 ["imageStyle"]
       14 GETIMPORT                        R6 K2 [UDim2.fromOffset]
       16 MOVE                             R7 R2
       17 MOVE                             R8 R2
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K9 ["Size"]
       21 SETTABLEKS                       R5 R4 K4 ["indicator"]
       23 RETURN                           R4 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K11 ["Circle"]
       27 JUMPIFNOTEQ                      R0 R4 ; [+10]
       29 DUPTABLE                         R4 K5 [{"indicator"}]
       30 DUPTABLE                         R5 K13 [{["imageStyle"], ["Image"] = "component_assets/circle_16", ["Size"]}]
       31 SETTABLEKS                       R1 R5 K6 ["imageStyle"]
       33 SETTABLEKS                       R3 R5 K9 ["Size"]
       35 SETTABLEKS                       R5 R4 K4 ["indicator"]
       37 RETURN                           R4 1
       38 DUPTABLE                         R4 K5 [{"indicator"}]
       39 DUPTABLE                         R5 K14 [{"imageStyle", "Size"}]
       40 SETTABLEKS                       R1 R5 K6 ["imageStyle"]
       42 SETTABLEKS                       R3 R5 K9 ["Size"]
       44 SETTABLEKS                       R5 R4 K4 ["indicator"]
       46 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Success"]
        5 GETTABLEKS                       R3 R0 K1 ["Color"]
        7 GETTABLEKS                       R3 R3 K2 ["System"]
        9 GETTABLEKS                       R3 R3 K0 ["Success"]
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["Neutral"]
       15 GETTABLEKS                       R3 R0 K1 ["Color"]
       17 GETTABLEKS                       R3 R3 K2 ["System"]
       19 GETTABLEKS                       R3 R3 K3 ["Neutral"]
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K4 ["Warning"]
       25 GETTABLEKS                       R3 R0 K1 ["Color"]
       27 GETTABLEKS                       R3 R3 K2 ["System"]
       29 GETTABLEKS                       R3 R3 K4 ["Warning"]
       31 SETTABLE                         R3 R1 R2
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K5 ["Emphasis"]
       35 GETTABLEKS                       R3 R0 K1 ["Color"]
       37 GETTABLEKS                       R3 R3 K2 ["System"]
       39 GETTABLEKS                       R3 R3 K5 ["Emphasis"]
       41 SETTABLE                         R3 R1 R2
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K6 ["Alert"]
       45 GETTABLEKS                       R3 R0 K1 ["Color"]
       47 GETTABLEKS                       R3 R3 K2 ["System"]
       49 GETTABLEKS                       R3 R3 K6 ["Alert"]
       51 SETTABLE                         R3 R1 R2
       52 NEWTABLE                         R2 2 0
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K7 ["Circle"]
       57 DUPTABLE                         R4 K9 [{"indicator"}]
       58 DUPTABLE                         R5 K12 [{["tag"] = "radius-circle"}]
       59 SETTABLEKS                       R5 R4 K8 ["indicator"]
       61 SETTABLE                         R4 R2 R3
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K13 ["Ring"]
       65 DUPTABLE                         R4 K9 [{"indicator"}]
       66 DUPTABLE                         R5 K12 [{["tag"] = "radius-circle"}]
       67 SETTABLEKS                       R5 R4 K8 ["indicator"]
       69 SETTABLE                         R4 R2 R3
       70 DUPTABLE                         R3 K16 [{"shapes", "variants"}]
       71 SETTABLEKS                       R2 R3 K14 ["shapes"]
       73 SETTABLEKS                       R1 R3 K15 ["variants"]
       75 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useVariants"]
        3 LOADK                            R5 K1 ["Indicator"]
        4 GETUPVAL                         R6 1
        5 MOVE                             R7 R0
        6 CALL                             R4 3 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R7 R4 K2 ["shapes"]
       10 GETTABLE                         R6 R7 R1
       11 GETGLOBAL                        R7 K3 ["mapToProps"]
       13 MOVE                             R8 R1
       14 GETTABLEKS                       R10 R4 K4 ["variants"]
       16 GETTABLE                         R9 R10 R2
       17 MOVE                             R10 R3
       18 CALL                             R7 3 -1
       19 CALL                             R5 -1 -1
       20 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["composeStyleVariant"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Providers"]
       18 GETTABLEKS                       R3 R3 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["Tokens"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Providers"]
       27 GETTABLEKS                       R4 R4 K9 ["Style"]
       29 GETTABLEKS                       R4 R4 K11 ["VariantsContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Enums"]
       36 GETTABLEKS                       R5 R5 K13 ["IndicatorShape"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K12 ["Enums"]
       43 GETTABLEKS                       R6 R6 K14 ["IndicatorVariant"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["Components"]
       50 GETTABLEKS                       R7 R7 K16 ["Types"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R4
       55 SETGLOBAL                        R7 K18 ["mapToProps"]
       57 DUPCLOSURE                       R7 K19 [PROTO_1]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R4
       60 DUPCLOSURE                       R8 K20 [PROTO_2]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R1
       64 RETURN                           R8 1
