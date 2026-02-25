PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["parent"]
        2 GETTABLEKS                       R2 R3 K1 ["Name"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["FOLDERS"]
        7 GETTABLEKS                       R3 R4 K3 ["Microbones"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+64]
       11 GETTABLEKS                       R2 R0 K4 ["VisualizeBones"]
       13 JUMPIFNOT                        R2 ; [+60]
       14 JUMPIFNOT                        R1 ; [+28]
       15 LOADK                            R4 K5 ["Cone"]
       16 NAMECALL                         R2 R1 K6 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+23]
       20 GETTABLEKS                       R3 R1 K5 ["Cone"]
       22 GETTABLEKS                       R2 R3 K7 ["Color3"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K8 ["BONE_COLOR_SELECTED"]
       27 JUMPIFEQ                         R2 R3 ; [+15]
       29 GETTABLEKS                       R2 R1 K5 ["Cone"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K9 ["BONE_COLOR_HOVER"]
       34 SETTABLEKS                       R3 R2 K7 ["Color3"]
       36 GETTABLEKS                       R2 R1 K5 ["Cone"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K10 ["BONE_TRANSPARENCY_HOVER"]
       41 SETTABLEKS                       R3 R2 K11 ["Transparency"]
       43 JUMPIFNOT                        R1 ; [+28]
       44 LOADK                            R4 K12 ["Sphere"]
       45 NAMECALL                         R2 R1 K6 ["FindFirstChild"]
       47 CALL                             R2 2 1
       48 JUMPIFNOT                        R2 ; [+23]
       49 GETTABLEKS                       R3 R1 K12 ["Sphere"]
       51 GETTABLEKS                       R2 R3 K7 ["Color3"]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R3 R4 K8 ["BONE_COLOR_SELECTED"]
       56 JUMPIFEQ                         R2 R3 ; [+15]
       58 GETTABLEKS                       R2 R1 K12 ["Sphere"]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R3 R4 K9 ["BONE_COLOR_HOVER"]
       63 SETTABLEKS                       R3 R2 K7 ["Color3"]
       65 GETTABLEKS                       R2 R1 K12 ["Sphere"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R3 R4 K10 ["BONE_TRANSPARENCY_HOVER"]
       70 SETTABLEKS                       R3 R2 K11 ["Transparency"]
       72 LOADNIL                          R2
       73 RETURN                           R2 1
       74 LOADK                            R2 K13 ["SelectionBox"]
       75 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
