PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["UGCValidationStatusIcon"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createElement"]
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K6 [{"Position", "Size", "OnClick"}]
       11 GETTABLEKS                       R5 R1 K3 ["Position"]
       13 SETTABLEKS                       R5 R4 K3 ["Position"]
       15 GETTABLEKS                       R5 R1 K4 ["Size"]
       17 SETTABLEKS                       R5 R4 K4 ["Size"]
       19 GETTABLEKS                       R5 R0 K5 ["OnClick"]
       21 SETTABLEKS                       R5 R4 K5 ["OnClick"]
       23 DUPTABLE                         R5 K10 [{"UIAspectRatioConstraint", "Image", "Tooltip"}]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K2 ["createElement"]
       27 LOADK                            R7 K7 ["UIAspectRatioConstraint"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R5 K7 ["UIAspectRatioConstraint"]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K2 ["createElement"]
       34 GETUPVAL                         R7 3
       35 DUPTABLE                         R8 K12 [{"Image", "ImageColor3"}]
       36 GETTABLEKS                       R9 R1 K8 ["Image"]
       38 SETTABLEKS                       R9 R8 K8 ["Image"]
       40 GETTABLEKS                       R9 R1 K13 ["Color"]
       42 SETTABLEKS                       R9 R8 K11 ["ImageColor3"]
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K8 ["Image"]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R6 R7 K2 ["createElement"]
       50 GETUPVAL                         R7 4
       51 DUPTABLE                         R8 K15 [{"Text"}]
       52 GETTABLEKS                       R9 R0 K16 ["TooltipText"]
       54 SETTABLEKS                       R9 R8 K14 ["Text"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K9 ["Tooltip"]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

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
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["UI"]
       32 GETTABLEKS                       R5 R4 K13 ["Image"]
       34 GETTABLEKS                       R6 R4 K14 ["Pane"]
       36 GETTABLEKS                       R7 R4 K15 ["Tooltip"]
       38 GETTABLEKS                       R9 R1 K16 ["ContextServices"]
       40 GETTABLEKS                       R8 R9 K17 ["Stylizer"]
       42 DUPCLOSURE                       R9 K18 [PROTO_0]
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 RETURN                           R9 1
