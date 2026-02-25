PROTO_0:
        0 JUMPIFNOT                        R0 ; [+26]
        1 GETTABLEKS                       R1 R0 K0 ["className"]
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETTABLEKS                       R1 R0 K0 ["className"]
        6 JUMPIFNOTEQKS                    R1 K1 ["BlendSpace"] ; [+15]
        8 GETTABLEKS                       R2 R0 K2 ["props"]
       10 JUMPIFNOT                        R2 ; [+9]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K1 ["BlendSpace"]
       14 GETTABLEKS                       R4 R0 K2 ["props"]
       16 GETTABLEKS                       R3 R4 K3 ["blendSpaceType"]
       18 GETTABLE                         R1 R2 R3
       19 RETURN                           R1 1
       20 LOADNIL                          R1
       21 RETURN                           R1 1
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R3 R0 K0 ["className"]
       25 GETTABLE                         R1 R2 R3
       26 RETURN                           R1 1
       27 LOADNIL                          R1
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPTABLE                         R3 K11 [{"Blend1D", "Blend2D", "BlendSpace"}]
       17 GETIMPORT                        R4 K5 [require]
       19 GETIMPORT                        R6 K1 [script]
       21 GETTABLEKS                       R5 R6 K8 ["Blend1D"]
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K8 ["Blend1D"]
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R5 R6 K9 ["Blend2D"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K9 ["Blend2D"]
       35 DUPTABLE                         R4 K15 [{"Locomotion", "Scalar", "Directional"}]
       36 GETIMPORT                        R5 K5 [require]
       38 GETIMPORT                        R7 K1 [script]
       40 GETTABLEKS                       R6 R7 K9 ["Blend2D"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K12 ["Locomotion"]
       45 GETIMPORT                        R5 K5 [require]
       47 GETIMPORT                        R7 K1 [script]
       49 GETTABLEKS                       R6 R7 K8 ["Blend1D"]
       51 CALL                             R5 1 1
       52 SETTABLEKS                       R5 R4 K13 ["Scalar"]
       54 GETIMPORT                        R5 K5 [require]
       56 GETIMPORT                        R7 K1 [script]
       58 GETTABLEKS                       R6 R7 K9 ["Blend2D"]
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K14 ["Directional"]
       63 SETTABLEKS                       R4 R3 K10 ["BlendSpace"]
       65 DUPCLOSURE                       R4 K16 [PROTO_0]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R4 R2 K17 ["getModule"]
       69 RETURN                           R2 1
