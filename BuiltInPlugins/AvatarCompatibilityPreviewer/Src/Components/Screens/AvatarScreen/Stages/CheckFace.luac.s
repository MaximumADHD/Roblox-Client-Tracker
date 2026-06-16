PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 DUPTABLE                         R4 K3 [{"layerType"}]
       11 LOADK                            R5 K4 ["layered"]
       12 SETTABLEKS                       R5 R4 K2 ["layerType"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 DUPTABLE                         R5 K3 [{"layerType"}]
       17 LOADK                            R6 K5 ["makeup"]
       18 SETTABLEKS                       R6 R5 K2 ["layerType"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R0 K6 ["Dummy"]
       23 JUMPIFNOTEQKNIL                  R5 ; [+3]
       25 LOADNIL                          R5
       26 RETURN                           R5 1
       27 GETTABLEKS                       R7 R0 K6 ["Dummy"]
       29 JUMPIFNOTEQKNIL                  R7 ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K7 ["LUAU_ANALYZE_ERROR"]
       36 FASTCALL2                        ASSERT R6 R7 ; [+3]
       38 GETIMPORT                        R5 K9 [assert]
       40 CALL                             R5 2 0
       41 GETTABLEKS                       R5 R0 K6 ["Dummy"]
       43 GETTABLEKS                       R5 R5 K10 ["Head"]
       45 LOADK                            R7 K11 ["FaceControls"]
       46 NAMECALL                         R5 R5 K12 ["FindFirstChildWhichIsA"]
       48 CALL                             R5 2 1
       49 JUMPIFNOTEQKNIL                  R5 ; [+22]
       51 GETTABLEKS                       R7 R0 K13 ["SelectedTab"]
       53 JUMPIFNOTEQKS                    R7 K14 ["animations_face"] ; [+18]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K15 ["createElement"]
       58 GETUPVAL                         R7 5
       59 DUPTABLE                         R8 K18 [{"key", "Text"}]
       60 LOADK                            R9 K19 ["Notice"]
       61 SETTABLEKS                       R9 R8 K16 ["key"]
       63 LOADK                            R11 K20 ["CheckFace"]
       64 LOADK                            R12 K21 ["DynamicHeadNotice"]
       65 NAMECALL                         R9 R1 K22 ["getText"]
       67 CALL                             R9 3 1
       68 SETTABLEKS                       R9 R8 K17 ["Text"]
       70 CALL                             R6 2 1
       71 JUMP                             ; [+27]
       72 GETTABLEKS                       R7 R2 K23 ["avatarAssets"]
       74 GETTABLEKS                       R7 R7 K24 ["emotion"]
       76 JUMPIFEQKNIL                     R7 ; [+21]
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R6 R6 K15 ["createElement"]
       81 GETUPVAL                         R7 6
       82 DUPTABLE                         R8 K26 [{"key", "Dummy", "AnimationId"}]
       83 LOADK                            R9 K27 ["AnimationController"]
       84 SETTABLEKS                       R9 R8 K16 ["key"]
       86 GETTABLEKS                       R9 R0 K6 ["Dummy"]
       88 SETTABLEKS                       R9 R8 K6 ["Dummy"]
       90 GETTABLEKS                       R9 R2 K23 ["avatarAssets"]
       92 GETTABLEKS                       R9 R9 K24 ["emotion"]
       94 SETTABLEKS                       R9 R8 K25 ["AnimationId"]
       96 CALL                             R6 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R6
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R7 R7 K15 ["createElement"]
      102 GETUPVAL                         R8 1
      103 GETTABLEKS                       R8 R8 K28 ["Fragment"]
      105 NEWTABLE                         R9 0 0
      107 NEWTABLE                         R10 1 1
      109 GETUPVAL                         R12 1
      110 GETTABLEKS                       R12 R12 K15 ["createElement"]
      112 GETUPVAL                         R13 7
      113 DUPTABLE                         R14 K31 [{"OnClothingLayerOrderChanged", "OnMakeupLayerOrderChanged"}]
      114 SETTABLEKS                       R3 R14 K29 ["OnClothingLayerOrderChanged"]
      116 SETTABLEKS                       R4 R14 K30 ["OnMakeupLayerOrderChanged"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R10 K32 ["EquippedItemsSidebar"]
      121 MOVE                             R11 R6
      122 SETLIST                          R10 R11 1 [1]
      124 CALL                             R7 3 -1
      125 RETURN                           R7 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Head"]
        2 DUPTABLE                         R2 K4 [{"focus", "cframe", "fov"}]
        3 GETIMPORT                        R3 K7 [CFrame.new]
        5 GETTABLEKS                       R4 R1 K8 ["Position"]
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K1 ["focus"]
       10 GETIMPORT                        R3 K10 [CFrame.lookAt]
       12 GETTABLEKS                       R6 R1 K8 ["Position"]
       14 GETTABLEKS                       R9 R1 K12 ["Size"]
       16 GETTABLEKS                       R9 R9 K13 ["Magnitude"]
       18 GETTABLEKS                       R10 R1 K5 ["CFrame"]
       20 GETTABLEKS                       R10 R10 K14 ["LookVector"]
       22 MUL                              R8 R9 R10
       23 MULK                             R7 R8 K11 [2]
       24 ADD                              R5 R6 R7
       25 GETTABLEKS                       R8 R1 K12 ["Size"]
       27 GETTABLEKS                       R8 R8 K13 ["Magnitude"]
       29 GETTABLEKS                       R9 R1 K5 ["CFrame"]
       31 GETTABLEKS                       R9 R9 K16 ["RightVector"]
       33 MUL                              R7 R8 R9
       34 MULK                             R6 R7 K15 [1]
       35 SUB                              R4 R5 R6
       36 GETTABLEKS                       R5 R1 K8 ["Position"]
       38 CALL                             R3 2 1
       39 SETTABLEKS                       R3 R2 K2 ["cframe"]
       41 LOADN                            R3 35
       42 SETTABLEKS                       R3 R2 K3 ["fov"]
       44 RETURN                           R2 1

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
       27 GETTABLEKS                       R4 R4 K11 ["AnimationController"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K12 ["EquippedItemsSidebar"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["Notice"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       54 GETTABLEKS                       R7 R7 K15 ["useOnClothingLayerOrderChanged"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K16 ["Flags"]
       63 GETTABLEKS                       R8 R8 K17 ["getFFlagAvatarPreviewerLookComposer"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K18 ["Util"]
       72 GETTABLEKS                       R9 R9 K19 ["Constants"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K9 ["Src"]
       79 GETTABLEKS                       R10 R10 K18 ["Util"]
       81 GETTABLEKS                       R10 R10 K20 ["EquipmentStateContext"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETIMPORT                        R11 K1 [script]
       88 GETTABLEKS                       R11 R11 K21 ["Parent"]
       90 GETTABLEKS                       R11 R11 K22 ["StageType"]
       92 CALL                             R10 1 1
       93 GETTABLEKS                       R11 R1 K23 ["ContextServices"]
       95 GETTABLEKS                       R11 R11 K24 ["Localization"]
       97 DUPTABLE                         R12 K28 [{"tabs", "render", "getPreviewCameraModifications"}]
       98 MOVE                             R14 R7
       99 CALL                             R14 0 1
      100 JUMPIFNOT                        R14 ; [+9]
      101 NEWTABLE                         R13 0 4
      103 LOADK                            R14 K29 ["animations_face"]
      104 LOADK                            R15 K30 ["body_face"]
      105 LOADK                            R16 K31 ["makeup"]
      106 LOADK                            R17 K32 ["accessories_face"]
      107 SETLIST                          R13 R14 4 [1]
      109 JUMP                             ; [+7]
      110 NEWTABLE                         R13 0 3
      112 LOADK                            R14 K29 ["animations_face"]
      113 LOADK                            R15 K32 ["accessories_face"]
      114 LOADK                            R16 K31 ["makeup"]
      115 SETLIST                          R13 R14 3 [1]
      117 SETTABLEKS                       R13 R12 K25 ["tabs"]
      119 DUPCLOSURE                       R13 K33 [PROTO_0]
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R4
      128 SETTABLEKS                       R13 R12 K26 ["render"]
      130 DUPCLOSURE                       R13 K34 [PROTO_1]
      131 SETTABLEKS                       R13 R12 K27 ["getPreviewCameraModifications"]
      133 RETURN                           R12 1
