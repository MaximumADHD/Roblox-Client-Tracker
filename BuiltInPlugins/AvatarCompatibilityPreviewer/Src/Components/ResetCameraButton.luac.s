PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ResetCameraButton"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["useContext"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["Context"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K6 [UDim.new]
       14 LOADN                            R4 0
       15 GETTABLEKS                       R5 R1 K7 ["Spacing"]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K8 ["createElement"]
       21 GETUPVAL                         R5 3
       22 DUPTABLE                         R6 K17 [{["AnchorPoint"], ["LayoutOrder"], ["OnClick"], ["Style"] = "Round", ["Size"], ["ZIndex"] = 2}]
       23 GETIMPORT                        R7 K19 [Vector2.new]
       25 LOADN                            R8 1
       26 LOADN                            R9 0
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K9 ["AnchorPoint"]
       30 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       32 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       34 GETTABLEKS                       R7 R2 K20 ["resetCamera"]
       36 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       38 GETTABLEKS                       R7 R1 K14 ["Size"]
       40 SETTABLEKS                       R7 R6 K14 ["Size"]
       42 DUPTABLE                         R7 K23 [{"Spacing", "Icon", "Tooltip"}]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K8 ["createElement"]
       46 LOADK                            R9 K24 ["UIPadding"]
       47 DUPTABLE                         R10 K29 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       48 SETTABLEKS                       R3 R10 K25 ["PaddingLeft"]
       50 SETTABLEKS                       R3 R10 K26 ["PaddingRight"]
       52 SETTABLEKS                       R3 R10 K27 ["PaddingTop"]
       54 SETTABLEKS                       R3 R10 K28 ["PaddingBottom"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K7 ["Spacing"]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K8 ["createElement"]
       62 GETUPVAL                         R9 4
       63 DUPTABLE                         R10 K31 [{"Image"}]
       64 GETTABLEKS                       R11 R1 K30 ["Image"]
       66 SETTABLEKS                       R11 R10 K30 ["Image"]
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K21 ["Icon"]
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K8 ["createElement"]
       74 GETUPVAL                         R9 5
       75 DUPTABLE                         R10 K34 [{["Text"] = "Reset Camera"}]
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K22 ["Tooltip"]
       79 CALL                             R4 3 -1
       80 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["AvatarScreenContext"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["UI"]
       32 GETTABLEKS                       R5 R4 K13 ["Button"]
       34 GETTABLEKS                       R6 R4 K14 ["Image"]
       36 GETTABLEKS                       R7 R4 K15 ["Tooltip"]
       38 GETTABLEKS                       R8 R1 K16 ["ContextServices"]
       40 GETTABLEKS                       R8 R8 K17 ["Stylizer"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K9 ["Src"]
       46 GETTABLEKS                       R10 R10 K18 ["Resources"]
       48 GETTABLEKS                       R10 R10 K19 ["Theme"]
       50 CALL                             R9 1 1
       51 DUPCLOSURE                       R10 K20 [PROTO_0]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 RETURN                           R10 1
