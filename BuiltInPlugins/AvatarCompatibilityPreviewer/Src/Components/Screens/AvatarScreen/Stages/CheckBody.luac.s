PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["avatarAssets"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K3 [{"layerType"}]
        9 LOADK                            R5 K4 ["layered"]
       10 SETTABLEKS                       R5 R4 K2 ["layerType"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R0 K5 ["Dummy"]
       15 JUMPIFNOTEQKNIL                  R4 ; [+3]
       17 LOADNIL                          R4
       18 RETURN                           R4 1
       19 GETTABLEKS                       R5 R0 K5 ["Dummy"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K6 ["LUAU_ANALYZE_ERROR"]
       24 FASTCALL2                        ASSERT R5 R6 ; [+3]
       26 GETIMPORT                        R4 K8 [assert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K9 ["createElement"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K10 ["Fragment"]
       35 NEWTABLE                         R6 0 0
       37 DUPTABLE                         R7 K13 [{"EquippedItemsSidebar", "AnimationController"}]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K9 ["createElement"]
       41 GETUPVAL                         R9 4
       42 DUPTABLE                         R10 K15 [{"OnClothingLayerOrderChanged"}]
       43 SETTABLEKS                       R3 R10 K14 ["OnClothingLayerOrderChanged"]
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K11 ["EquippedItemsSidebar"]
       48 GETTABLEKS                       R8 R2 K16 ["animation"]
       50 JUMPIFNOT                        R8 ; [+14]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K9 ["createElement"]
       54 GETUPVAL                         R9 5
       55 DUPTABLE                         R10 K18 [{"Dummy", "AnimationId"}]
       56 GETTABLEKS                       R11 R0 K5 ["Dummy"]
       58 SETTABLEKS                       R11 R10 K5 ["Dummy"]
       60 GETTABLEKS                       R11 R2 K16 ["animation"]
       62 SETTABLEKS                       R11 R10 K17 ["AnimationId"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K12 ["AnimationController"]
       67 CALL                             R4 3 -1
       68 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"focus", "fov"}]
        1 GETTABLEKS                       R2 R0 K3 ["PrimaryPart"]
        3 GETTABLEKS                       R2 R2 K4 ["CFrame"]
        5 SETTABLEKS                       R2 R1 K0 ["focus"]
        7 LOADN                            R2 50
        8 SETTABLEKS                       R2 R1 K1 ["fov"]
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["EquippedItemsSidebar"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K12 ["Parent"]
       38 GETTABLEKS                       R5 R5 K13 ["StageType"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Util"]
       47 GETTABLEKS                       R6 R6 K15 ["Constants"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K14 ["Util"]
       56 GETTABLEKS                       R7 R7 K16 ["EquipmentStateContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K17 ["Types"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K8 ["Src"]
       70 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       72 GETTABLEKS                       R9 R9 K19 ["useOnClothingLayerOrderChanged"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K20 [PROTO_0]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R2
       82 DUPTABLE                         R10 K24 [{"tabs", "render", "getPreviewCameraModifications"}]
       83 NEWTABLE                         R11 0 4
       85 LOADK                            R12 K25 ["animations"]
       86 LOADK                            R13 K26 ["clothing"]
       87 LOADK                            R14 K27 ["accessories"]
       88 LOADK                            R15 K28 ["body"]
       89 SETLIST                          R11 R12 4 [1]
       91 SETTABLEKS                       R11 R10 K21 ["tabs"]
       93 SETTABLEKS                       R9 R10 K22 ["render"]
       95 DUPCLOSURE                       R11 K29 [PROTO_1]
       96 SETTABLEKS                       R11 R10 K23 ["getPreviewCameraModifications"]
       98 RETURN                           R10 1
