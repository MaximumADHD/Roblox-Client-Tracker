PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETIMPORT                        R2 K2 [task.delay]
        6 LOADK                            R3 K3 [0.05]
        7 GETUPVAL                         R4 1
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R5 4
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+5]
       13 DUPTABLE                         R4 K3 [{"layerType"}]
       14 LOADK                            R5 K4 ["layered"]
       15 SETTABLEKS                       R5 R4 K2 ["layerType"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 3
       21 DUPTABLE                         R5 K3 [{"layerType"}]
       22 LOADK                            R6 K5 ["makeup"]
       23 SETTABLEKS                       R6 R5 K2 ["layerType"]
       25 CALL                             R4 1 1
       26 LOADNIL                          R5
       27 GETUPVAL                         R6 5
       28 CALL                             R6 0 1
       29 JUMPIF                           R6 ; [+18]
       30 GETUPVAL                         R6 6
       31 GETTABLEKS                       R7 R0 K6 ["Dummy"]
       33 CALL                             R6 1 1
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R6
       40 NEWTABLE                         R9 0 2
       42 MOVE                             R10 R4
       43 MOVE                             R11 R6
       44 SETLIST                          R9 R10 2 [1]
       46 CALL                             R7 2 1
       47 MOVE                             R5 R7
       48 GETTABLEKS                       R6 R0 K6 ["Dummy"]
       50 JUMPIFNOTEQKNIL                  R6 ; [+3]
       52 LOADNIL                          R6
       53 RETURN                           R6 1
       54 GETTABLEKS                       R8 R0 K6 ["Dummy"]
       56 JUMPIFNOTEQKNIL                  R8 ; [+2]
       58 LOADB                            R7 0 +1
       59 LOADB                            R7 1
       60 GETUPVAL                         R9 7
       61 GETTABLEKS                       R8 R9 K8 ["LUAU_ANALYZE_ERROR"]
       63 FASTCALL2                        ASSERT R7 R8 ; [+3]
       65 GETIMPORT                        R6 K10 [assert]
       67 CALL                             R6 2 0
       68 GETTABLEKS                       R7 R0 K6 ["Dummy"]
       70 GETTABLEKS                       R6 R7 K11 ["Head"]
       72 LOADK                            R8 K12 ["FaceControls"]
       73 NAMECALL                         R6 R6 K13 ["FindFirstChildWhichIsA"]
       75 CALL                             R6 2 1
       76 JUMPIFNOTEQKNIL                  R6 ; [+22]
       78 GETTABLEKS                       R8 R0 K14 ["SelectedTab"]
       80 JUMPIFNOTEQKS                    R8 K15 ["animations_face"] ; [+18]
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R7 R8 K16 ["createElement"]
       85 GETUPVAL                         R8 8
       86 DUPTABLE                         R9 K19 [{"key", "Text"}]
       87 LOADK                            R10 K20 ["Notice"]
       88 SETTABLEKS                       R10 R9 K17 ["key"]
       90 LOADK                            R12 K21 ["CheckFace"]
       91 LOADK                            R13 K22 ["DynamicHeadNotice"]
       92 NAMECALL                         R10 R1 K23 ["getText"]
       94 CALL                             R10 3 1
       95 SETTABLEKS                       R10 R9 K18 ["Text"]
       97 CALL                             R7 2 1
       98 JUMP                             ; [+27]
       99 GETTABLEKS                       R9 R2 K24 ["avatarAssets"]
      101 GETTABLEKS                       R8 R9 K25 ["emotion"]
      103 JUMPIFEQKNIL                     R8 ; [+21]
      105 GETUPVAL                         R8 1
      106 GETTABLEKS                       R7 R8 K16 ["createElement"]
      108 GETUPVAL                         R8 9
      109 DUPTABLE                         R9 K27 [{"key", "Dummy", "AnimationId"}]
      110 LOADK                            R10 K28 ["AnimationController"]
      111 SETTABLEKS                       R10 R9 K17 ["key"]
      113 GETTABLEKS                       R10 R0 K6 ["Dummy"]
      115 SETTABLEKS                       R10 R9 K6 ["Dummy"]
      117 GETTABLEKS                       R11 R2 K24 ["avatarAssets"]
      119 GETTABLEKS                       R10 R11 K25 ["emotion"]
      121 SETTABLEKS                       R10 R9 K26 ["AnimationId"]
      123 CALL                             R7 2 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R7
      126 GETUPVAL                         R9 1
      127 GETTABLEKS                       R8 R9 K16 ["createElement"]
      129 GETUPVAL                         R10 1
      130 GETTABLEKS                       R9 R10 K29 ["Fragment"]
      132 NEWTABLE                         R10 0 0
      134 NEWTABLE                         R11 1 1
      136 GETUPVAL                         R14 1
      137 GETTABLEKS                       R13 R14 K16 ["createElement"]
      139 GETUPVAL                         R14 10
      140 DUPTABLE                         R15 K32 [{"OnClothingLayerOrderChanged", "OnMakeupLayerOrderChanged"}]
      141 SETTABLEKS                       R3 R15 K30 ["OnClothingLayerOrderChanged"]
      143 GETUPVAL                         R17 5
      144 CALL                             R17 0 1
      145 JUMPIFNOT                        R17 ; [+2]
      146 MOVE                             R16 R4
      147 JUMP                             ; [+6]
      148 GETUPVAL                         R17 4
      149 CALL                             R17 0 1
      150 JUMPIFNOT                        R17 ; [+2]
      151 MOVE                             R16 R5
      152 JUMP                             ; [+1]
      153 LOADNIL                          R16
      154 SETTABLEKS                       R16 R15 K31 ["OnMakeupLayerOrderChanged"]
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R11 K33 ["EquippedItemsSidebar"]
      159 MOVE                             R12 R7
      160 SETLIST                          R11 R12 1 [1]
      162 CALL                             R8 3 -1
      163 RETURN                           R8 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Head"]
        2 DUPTABLE                         R2 K4 [{"focus", "cframe", "fov"}]
        3 GETIMPORT                        R3 K7 [CFrame.new]
        5 GETTABLEKS                       R4 R1 K8 ["Position"]
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K1 ["focus"]
       10 GETIMPORT                        R3 K10 [CFrame.lookAt]
       12 GETTABLEKS                       R6 R1 K8 ["Position"]
       14 GETTABLEKS                       R10 R1 K12 ["Size"]
       16 GETTABLEKS                       R9 R10 K13 ["Magnitude"]
       18 GETTABLEKS                       R11 R1 K5 ["CFrame"]
       20 GETTABLEKS                       R10 R11 K14 ["LookVector"]
       22 MUL                              R8 R9 R10
       23 MULK                             R7 R8 K11 [2]
       24 ADD                              R5 R6 R7
       25 GETTABLEKS                       R9 R1 K12 ["Size"]
       27 GETTABLEKS                       R8 R9 K13 ["Magnitude"]
       29 GETTABLEKS                       R10 R1 K5 ["CFrame"]
       31 GETTABLEKS                       R9 R10 K16 ["RightVector"]
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
       27 GETTABLEKS                       R4 R5 K11 ["AnimationController"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Components"]
       36 GETTABLEKS                       R5 R6 K12 ["EquippedItemsSidebar"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K10 ["Components"]
       45 GETTABLEKS                       R6 R7 K13 ["Notice"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K9 ["Src"]
       52 GETTABLEKS                       R8 R9 K14 ["Hooks"]
       54 GETTABLEKS                       R7 R8 K15 ["useEquipAvatarMakeup_DEPRECATED"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K9 ["Src"]
       61 GETTABLEKS                       R9 R10 K14 ["Hooks"]
       63 GETTABLEKS                       R8 R9 K16 ["useOnClothingLayerOrderChanged"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K9 ["Src"]
       70 GETTABLEKS                       R10 R11 K17 ["Flags"]
       72 GETTABLEKS                       R9 R10 K18 ["getFFlagAvatarPreviewerMakeup"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K9 ["Src"]
       79 GETTABLEKS                       R11 R12 K17 ["Flags"]
       81 GETTABLEKS                       R10 R11 K19 ["getFFlagAvatarPreviewerMakeupDescription"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K9 ["Src"]
       88 GETTABLEKS                       R12 R13 K20 ["Util"]
       90 GETTABLEKS                       R11 R12 K21 ["Constants"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R14 R0 K9 ["Src"]
       97 GETTABLEKS                       R13 R14 K20 ["Util"]
       99 GETTABLEKS                       R12 R13 K22 ["EquipmentStateContext"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETIMPORT                        R15 K1 [script]
      106 GETTABLEKS                       R14 R15 K23 ["Parent"]
      108 GETTABLEKS                       R13 R14 K24 ["StageType"]
      110 CALL                             R12 1 1
      111 GETTABLEKS                       R14 R1 K25 ["ContextServices"]
      113 GETTABLEKS                       R13 R14 K26 ["Localization"]
      115 DUPTABLE                         R14 K30 [{"tabs", "render", "getPreviewCameraModifications"}]
      116 MOVE                             R16 R8
      117 CALL                             R16 0 1
      118 JUMPIFNOT                        R16 ; [+8]
      119 NEWTABLE                         R15 0 3
      121 LOADK                            R16 K31 ["animations_face"]
      122 LOADK                            R17 K32 ["accessories_face"]
      123 LOADK                            R18 K33 ["makeup"]
      124 SETLIST                          R15 R16 3 [1]
      126 JUMP                             ; [+6]
      127 NEWTABLE                         R15 0 2
      129 LOADK                            R16 K31 ["animations_face"]
      130 LOADK                            R17 K32 ["accessories_face"]
      131 SETLIST                          R15 R16 2 [1]
      133 SETTABLEKS                       R15 R14 K27 ["tabs"]
      135 DUPCLOSURE                       R15 K34 [PROTO_1]
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R4
      147 SETTABLEKS                       R15 R14 K28 ["render"]
      149 DUPCLOSURE                       R15 K35 [PROTO_2]
      150 SETTABLEKS                       R15 R14 K29 ["getPreviewCameraModifications"]
      152 RETURN                           R14 1
