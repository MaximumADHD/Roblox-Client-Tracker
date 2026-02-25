PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Camera"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K4 ["FieldOfView"]
        7 JUMPIFEQKNIL                     R1 ; [+6]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K4 ["FieldOfView"]
       12 SETTABLEKS                       R1 R0 K4 ["FieldOfView"]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R3 2
        2 GETTABLEKS                       R2 R3 K0 ["AnimateTargetAsset"]
        4 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+21]
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+21]
       12 GETIMPORT                        R3 K3 [warn]
       14 LOADK                            R5 K4 ["Failed to load animation target asset due to %*"]
       15 MOVE                             R7 R2
       16 NAMECALL                         R5 R5 K5 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 CALL                             R3 1 0
       21 DUPCLOSURE                       R3 K6 [PROTO_2]
       22 CLOSEUPVALS                      R0
       23 RETURN                           R3 1
       24 JUMP                             ; [+8]
       25 GETUPVAL                         R1 1
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R3 R4 K7 ["AnimateTargetAsset"]
       29 NAMECALL                         R1 R1 K8 ["LoadLocalAsset"]
       31 CALL                             R1 2 1
       32 MOVE                             R0 R1
       33 NAMECALL                         R1 R0 K9 ["Clone"]
       35 CALL                             R1 1 1
       36 GETUPVAL                         R2 3
       37 SETTABLEKS                       R2 R1 K10 ["Parent"]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R3 R1 K11 ["PrimaryPart"]
       42 SETTABLEKS                       R3 R2 K11 ["PrimaryPart"]
       44 GETUPVAL                         R2 4
       45 MOVE                             R3 R1
       46 CALL                             R2 1 0
       47 NEWCLOSURE                       R2 P2
       48 CAPTURE                          VAL R1
       49 CLOSEUPVALS                      R0
       50 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AnimationPreview"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["useState"]
        9 GETIMPORT                        R3 K5 [Instance.new]
       11 LOADK                            R4 K6 ["WorldModel"]
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K2 ["useState"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K2 ["useState"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 2
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K7 ["useEffect"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 4
       38 LOADB                            R7 0
       39 CALL                             R6 1 1
       40 GETUPVAL                         R7 5
       41 MOVE                             R8 R4
       42 GETTABLEKS                       R9 R0 K8 ["AnimationId"]
       44 LOADNIL                          R10
       45 GETTABLEKS                       R12 R6 K9 ["enabled"]
       47 JUMPIFNOT                        R12 ; [+2]
       48 LOADNIL                          R11
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R11 R1 K10 ["PausedAnimationAlpha"]
       52 CALL                             R7 4 0
       53 JUMPIFNOT                        R4 ; [+81]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R7 R8 K11 ["createElement"]
       57 GETUPVAL                         R8 6
       58 NEWTABLE                         R9 4 0
       60 LOADB                            R10 1
       61 SETTABLEKS                       R10 R9 K12 ["Active"]
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R11 R12 K13 ["Event"]
       66 GETTABLEKS                       R10 R11 K14 ["MouseEnter"]
       68 GETTABLEKS                       R11 R6 K15 ["enable"]
       70 SETTABLE                         R11 R9 R10
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R11 R12 K13 ["Event"]
       74 GETTABLEKS                       R10 R11 K16 ["MouseLeave"]
       76 GETTABLEKS                       R11 R6 K17 ["disable"]
       78 SETTABLE                         R11 R9 R10
       79 DUPTABLE                         R10 K19 [{"Model"}]
       80 GETUPVAL                         R12 1
       81 GETTABLEKS                       R11 R12 K11 ["createElement"]
       83 GETUPVAL                         R12 7
       84 DUPTABLE                         R13 K27 [{"Ambient", "Camera", "FocusDirection", "InitialDistance", "Model", "ShouldClone", "Static", "ImageTransparency"}]
       85 GETIMPORT                        R14 K29 [Color3.new]
       87 LOADN                            R15 1
       88 LOADN                            R16 1
       89 LOADN                            R17 1
       90 CALL                             R14 3 1
       91 SETTABLEKS                       R14 R13 K20 ["Ambient"]
       93 SETTABLEKS                       R3 R13 K21 ["Camera"]
       95 GETTABLEKS                       R16 R4 K30 ["PrimaryPart"]
       97 GETTABLEKS                       R15 R16 K31 ["CFrame"]
       99 GETTABLEKS                       R14 R15 K32 ["LookVector"]
      101 GETTABLEKS                       R18 R4 K30 ["PrimaryPart"]
      103 GETTABLEKS                       R17 R18 K31 ["CFrame"]
      105 GETTABLEKS                       R16 R17 K33 ["RightVector"]
      107 GETTABLEKS                       R17 R1 K34 ["FrontRightAngleLerp"]
      109 NAMECALL                         R14 R14 K35 ["Lerp"]
      111 CALL                             R14 3 1
      112 SETTABLEKS                       R14 R13 K22 ["FocusDirection"]
      114 GETTABLEKS                       R14 R1 K23 ["InitialDistance"]
      116 SETTABLEKS                       R14 R13 K23 ["InitialDistance"]
      118 SETTABLEKS                       R2 R13 K18 ["Model"]
      120 LOADB                            R14 0
      121 SETTABLEKS                       R14 R13 K24 ["ShouldClone"]
      123 LOADB                            R14 1
      124 SETTABLEKS                       R14 R13 K25 ["Static"]
      126 GETTABLEKS                       R14 R0 K36 ["Transparency"]
      128 SETTABLEKS                       R14 R13 K26 ["ImageTransparency"]
      130 CALL                             R11 2 1
      131 SETTABLEKS                       R11 R10 K18 ["Model"]
      133 CALL                             R7 3 1
      134 RETURN                           R7 1
      135 LOADNIL                          R7
      136 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R7 R1 K13 ["Src"]
       31 GETTABLEKS                       R6 R7 K14 ["Resources"]
       33 GETTABLEKS                       R5 R6 K15 ["Theme"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R1 K13 ["Src"]
       40 GETTABLEKS                       R6 R7 K16 ["Types"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R9 R1 K13 ["Src"]
       47 GETTABLEKS                       R8 R9 K17 ["Hooks"]
       49 GETTABLEKS                       R7 R8 K18 ["useAnimationOnAnimateTarget"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R10 R1 K13 ["Src"]
       56 GETTABLEKS                       R9 R10 K17 ["Hooks"]
       58 GETTABLEKS                       R8 R9 K19 ["useToggleState"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R11 R1 K13 ["Src"]
       65 GETTABLEKS                       R10 R11 K20 ["Flags"]
       67 GETTABLEKS                       R9 R10 K21 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R10 R2 K22 ["ContextServices"]
       72 GETTABLEKS                       R9 R10 K23 ["Stylizer"]
       74 GETTABLEKS                       R10 R2 K24 ["UI"]
       76 GETTABLEKS                       R11 R10 K25 ["AssetRenderModel"]
       78 GETTABLEKS                       R12 R10 K26 ["Pane"]
       80 DUPCLOSURE                       R13 K27 [PROTO_5]
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R11
       89 RETURN                           R13 1
