PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["avatarAssets"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R5 3
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+5]
       11 DUPTABLE                         R4 K3 [{"layerType"}]
       12 LOADK                            R5 K4 ["layered"]
       13 SETTABLEKS                       R5 R4 K2 ["layerType"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R0 K5 ["Dummy"]
       20 JUMPIFNOTEQKNIL                  R4 ; [+3]
       22 LOADNIL                          R4
       23 RETURN                           R4 1
       24 GETTABLEKS                       R5 R0 K5 ["Dummy"]
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R6 R7 K6 ["LUAU_ANALYZE_ERROR"]
       29 FASTCALL2                        ASSERT R5 R6 ; [+3]
       31 GETIMPORT                        R4 K8 [assert]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K9 ["createElement"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K10 ["Fragment"]
       40 NEWTABLE                         R6 0 0
       42 DUPTABLE                         R7 K13 [{"EquippedItemsSidebar", "AnimationController"}]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K9 ["createElement"]
       46 GETUPVAL                         R9 5
       47 DUPTABLE                         R10 K15 [{"OnClothingLayerOrderChanged"}]
       48 SETTABLEKS                       R3 R10 K14 ["OnClothingLayerOrderChanged"]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K11 ["EquippedItemsSidebar"]
       53 GETTABLEKS                       R8 R2 K16 ["animation"]
       55 JUMPIFNOT                        R8 ; [+14]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R8 R9 K9 ["createElement"]
       59 GETUPVAL                         R9 6
       60 DUPTABLE                         R10 K18 [{"Dummy", "AnimationId"}]
       61 GETTABLEKS                       R11 R0 K5 ["Dummy"]
       63 SETTABLEKS                       R11 R10 K5 ["Dummy"]
       65 GETTABLEKS                       R11 R2 K16 ["animation"]
       67 SETTABLEKS                       R11 R10 K17 ["AnimationId"]
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K12 ["AnimationController"]
       72 CALL                             R4 3 -1
       73 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"focus", "fov"}]
        1 GETTABLEKS                       R3 R0 K3 ["PrimaryPart"]
        3 GETTABLEKS                       R2 R3 K4 ["CFrame"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Components"]
       20 GETTABLEKS                       R3 R4 K10 ["AnimationController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Components"]
       29 GETTABLEKS                       R4 R5 K11 ["EquippedItemsSidebar"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R7 K1 [script]
       36 GETTABLEKS                       R6 R7 K12 ["Parent"]
       38 GETTABLEKS                       R5 R6 K13 ["StageType"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K14 ["Util"]
       47 GETTABLEKS                       R6 R7 K15 ["Constants"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R9 K14 ["Util"]
       56 GETTABLEKS                       R7 R8 K16 ["EquipmentStateContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R9 K17 ["Types"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K8 ["Src"]
       70 GETTABLEKS                       R10 R11 K18 ["Flags"]
       72 GETTABLEKS                       R9 R10 K19 ["getFFlagAvatarPreviewerMakeup"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K8 ["Src"]
       79 GETTABLEKS                       R11 R12 K20 ["Hooks"]
       81 GETTABLEKS                       R10 R11 K21 ["useOnClothingLayerOrderChanged"]
       83 CALL                             R9 1 1
       84 DUPCLOSURE                       R10 K22 [PROTO_0]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 DUPTABLE                         R11 K26 [{"tabs", "render", "getPreviewCameraModifications"}]
       93 NEWTABLE                         R12 0 4
       95 LOADK                            R13 K27 ["animations"]
       96 LOADK                            R14 K28 ["clothing"]
       97 LOADK                            R15 K29 ["accessories"]
       98 LOADK                            R16 K30 ["body"]
       99 SETLIST                          R12 R13 4 [1]
      101 SETTABLEKS                       R12 R11 K23 ["tabs"]
      103 SETTABLEKS                       R10 R11 K24 ["render"]
      105 DUPCLOSURE                       R12 K31 [PROTO_1]
      106 SETTABLEKS                       R12 R11 K25 ["getPreviewCameraModifications"]
      108 RETURN                           R11 1
