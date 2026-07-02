PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 DUPTABLE                         R4 K4 [{["layerType"] = "layered"}]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 3
       13 DUPTABLE                         R5 K6 [{["layerType"] = "makeup"}]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R5 R0 K7 ["Dummy"]
       17 JUMPIFNOTEQKNIL                  R5 ; [+3]
       19 LOADNIL                          R5
       20 RETURN                           R5 1
       21 GETTABLEKS                       R7 R0 K7 ["Dummy"]
       23 JUMPIFNOTEQKNIL                  R7 ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R7 R7 K8 ["LUAU_ANALYZE_ERROR"]
       30 FASTCALL2                        ASSERT R6 R7 ; [+3]
       32 GETIMPORT                        R5 K10 [assert]
       34 CALL                             R5 2 0
       35 GETTABLEKS                       R5 R0 K7 ["Dummy"]
       37 GETTABLEKS                       R5 R5 K11 ["Head"]
       39 LOADK                            R7 K12 ["FaceControls"]
       40 NAMECALL                         R5 R5 K13 ["FindFirstChildWhichIsA"]
       42 CALL                             R5 2 1
       43 JUMPIFNOTEQKNIL                  R5 ; [+19]
       45 GETTABLEKS                       R7 R0 K14 ["SelectedTab"]
       47 JUMPIFNOTEQKS                    R7 K15 ["animations_face"] ; [+15]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K16 ["createElement"]
       52 GETUPVAL                         R7 5
       53 DUPTABLE                         R8 K20 [{["key"] = "Notice", ["Text"]}]
       54 LOADK                            R11 K21 ["CheckFace"]
       55 LOADK                            R12 K22 ["DynamicHeadNotice"]
       56 NAMECALL                         R9 R1 K23 ["getText"]
       58 CALL                             R9 3 1
       59 SETTABLEKS                       R9 R8 K19 ["Text"]
       61 CALL                             R6 2 1
       62 JUMP                             ; [+24]
       63 GETTABLEKS                       R7 R2 K24 ["avatarAssets"]
       65 GETTABLEKS                       R7 R7 K25 ["emotion"]
       67 JUMPIFEQKNIL                     R7 ; [+18]
       69 GETUPVAL                         R6 1
       70 GETTABLEKS                       R6 R6 K16 ["createElement"]
       72 GETUPVAL                         R7 6
       73 DUPTABLE                         R8 K28 [{["key"] = "AnimationController", ["Dummy"], ["AnimationId"]}]
       74 GETTABLEKS                       R9 R0 K7 ["Dummy"]
       76 SETTABLEKS                       R9 R8 K7 ["Dummy"]
       78 GETTABLEKS                       R9 R2 K24 ["avatarAssets"]
       80 GETTABLEKS                       R9 R9 K25 ["emotion"]
       82 SETTABLEKS                       R9 R8 K27 ["AnimationId"]
       84 CALL                             R6 2 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R6
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R7 R7 K16 ["createElement"]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K29 ["Fragment"]
       93 NEWTABLE                         R9 0 0
       95 NEWTABLE                         R10 1 1
       97 GETUPVAL                         R12 1
       98 GETTABLEKS                       R12 R12 K16 ["createElement"]
      100 GETUPVAL                         R13 7
      101 DUPTABLE                         R14 K32 [{"OnClothingLayerOrderChanged", "OnMakeupLayerOrderChanged"}]
      102 SETTABLEKS                       R3 R14 K30 ["OnClothingLayerOrderChanged"]
      104 SETTABLEKS                       R4 R14 K31 ["OnMakeupLayerOrderChanged"]
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R10 K33 ["EquippedItemsSidebar"]
      109 MOVE                             R11 R6
      110 SETLIST                          R10 R11 1 [1]
      112 CALL                             R7 3 -1
      113 RETURN                           R7 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Head"]
        2 DUPTABLE                         R2 K5 [{["focus"], ["cframe"], ["fov"] = 35}]
        3 GETIMPORT                        R3 K8 [CFrame.new]
        5 GETTABLEKS                       R4 R1 K9 ["Position"]
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K1 ["focus"]
       10 GETIMPORT                        R3 K11 [CFrame.lookAt]
       12 GETTABLEKS                       R6 R1 K9 ["Position"]
       14 GETTABLEKS                       R9 R1 K13 ["Size"]
       16 GETTABLEKS                       R9 R9 K14 ["Magnitude"]
       18 GETTABLEKS                       R10 R1 K6 ["CFrame"]
       20 GETTABLEKS                       R10 R10 K15 ["LookVector"]
       22 MUL                              R8 R9 R10
       23 MULK                             R7 R8 K12 [2]
       24 ADD                              R5 R6 R7
       25 GETTABLEKS                       R8 R1 K13 ["Size"]
       27 GETTABLEKS                       R8 R8 K14 ["Magnitude"]
       29 GETTABLEKS                       R9 R1 K6 ["CFrame"]
       31 GETTABLEKS                       R9 R9 K17 ["RightVector"]
       33 MUL                              R7 R8 R9
       34 MULK                             R6 R7 K16 [1]
       35 SUB                              R4 R5 R6
       36 GETTABLEKS                       R5 R1 K9 ["Position"]
       38 CALL                             R3 2 1
       39 SETTABLEKS                       R3 R2 K2 ["cframe"]
       41 RETURN                           R2 1

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
