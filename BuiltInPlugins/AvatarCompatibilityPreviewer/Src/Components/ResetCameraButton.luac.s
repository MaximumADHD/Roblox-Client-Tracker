PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ResetCameraButton"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["useContext"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K3 ["Context"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K6 [UDim.new]
       14 LOADN                            R4 0
       15 GETTABLEKS                       R5 R1 K7 ["Spacing"]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K8 ["createElement"]
       21 GETUPVAL                         R5 3
       22 DUPTABLE                         R6 K15 [{"AnchorPoint", "LayoutOrder", "OnClick", "Style", "Size", "ZIndex"}]
       23 GETIMPORT                        R7 K17 [Vector2.new]
       25 LOADN                            R8 1
       26 LOADN                            R9 0
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K9 ["AnchorPoint"]
       30 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       32 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       34 GETTABLEKS                       R7 R2 K18 ["resetCamera"]
       36 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       38 LOADK                            R7 K19 ["Round"]
       39 SETTABLEKS                       R7 R6 K12 ["Style"]
       41 GETTABLEKS                       R7 R1 K13 ["Size"]
       43 SETTABLEKS                       R7 R6 K13 ["Size"]
       45 LOADN                            R7 2
       46 SETTABLEKS                       R7 R6 K14 ["ZIndex"]
       48 DUPTABLE                         R7 K22 [{"Spacing", "Icon", "Tooltip"}]
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R8 R9 K8 ["createElement"]
       52 LOADK                            R9 K23 ["UIPadding"]
       53 DUPTABLE                         R10 K28 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       54 SETTABLEKS                       R3 R10 K24 ["PaddingLeft"]
       56 SETTABLEKS                       R3 R10 K25 ["PaddingRight"]
       58 SETTABLEKS                       R3 R10 K26 ["PaddingTop"]
       60 SETTABLEKS                       R3 R10 K27 ["PaddingBottom"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K7 ["Spacing"]
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R8 R9 K8 ["createElement"]
       68 GETUPVAL                         R9 4
       69 DUPTABLE                         R10 K30 [{"Image"}]
       70 GETTABLEKS                       R11 R1 K29 ["Image"]
       72 SETTABLEKS                       R11 R10 K29 ["Image"]
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R7 K20 ["Icon"]
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R8 R9 K8 ["createElement"]
       80 GETUPVAL                         R9 5
       81 DUPTABLE                         R10 K32 [{"Text"}]
       82 LOADK                            R11 K33 ["Reset Camera"]
       83 SETTABLEKS                       R11 R10 K31 ["Text"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K21 ["Tooltip"]
       88 CALL                             R4 3 -1
       89 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Components"]
       27 GETTABLEKS                       R4 R5 K11 ["AvatarScreenContext"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["UI"]
       32 GETTABLEKS                       R5 R4 K13 ["Button"]
       34 GETTABLEKS                       R6 R4 K14 ["Image"]
       36 GETTABLEKS                       R7 R4 K15 ["Tooltip"]
       38 GETTABLEKS                       R9 R1 K16 ["ContextServices"]
       40 GETTABLEKS                       R8 R9 K17 ["Stylizer"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R12 R0 K9 ["Src"]
       46 GETTABLEKS                       R11 R12 K18 ["Resources"]
       48 GETTABLEKS                       R10 R11 K19 ["Theme"]
       50 CALL                             R9 1 1
       51 DUPCLOSURE                       R10 K20 [PROTO_0]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 RETURN                           R10 1
