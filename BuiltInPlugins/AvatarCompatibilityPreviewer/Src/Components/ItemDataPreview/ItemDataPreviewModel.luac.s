PROTO_0:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["PrimaryPart"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["Accessory"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+12]
       13 LOADK                            R3 K4 ["Handle"]
       14 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+35]
       18 LOADK                            R4 K6 ["BasePart"]
       19 NAMECALL                         R2 R1 K1 ["IsA"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+30]
       23 RETURN                           R1 1
       24 JUMP                             ; [+28]
       25 LOADK                            R3 K6 ["BasePart"]
       26 NAMECALL                         R1 R0 K1 ["IsA"]
       28 CALL                             R1 2 1
       29 JUMPIFNOT                        R1 ; [+1]
       30 RETURN                           R0 1
       31 LOADK                            R3 K7 ["Folder"]
       32 NAMECALL                         R1 R0 K1 ["IsA"]
       34 CALL                             R1 2 1
       35 JUMPIFNOT                        R1 ; [+17]
       36 LOADK                            R3 K3 ["Accessory"]
       37 NAMECALL                         R1 R0 K8 ["FindFirstChildWhichIsA"]
       39 CALL                             R1 2 1
       40 MOVE                             R2 R1
       41 JUMPIFNOT                        R2 ; [+4]
       42 LOADK                            R4 K4 ["Handle"]
       43 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       45 CALL                             R2 2 1
       46 JUMPIFNOT                        R2 ; [+6]
       47 LOADK                            R5 K6 ["BasePart"]
       48 NAMECALL                         R3 R2 K1 ["IsA"]
       50 CALL                             R3 2 1
       51 JUMPIFNOT                        R3 ; [+1]
       52 RETURN                           R2 1
       53 LOADNIL                          R1
       54 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Instance"]
        3 NAMECALL                         R0 R0 K1 ["Clone"]
        5 CALL                             R0 1 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETIMPORT                        R2 K3 [Instance.new]
       19 LOADK                            R3 K4 ["Model"]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R0 K5 ["Parent"]
       23 MOVE                             R6 R2
       24 NAMECALL                         R4 R1 K6 ["IsDescendantOf"]
       26 CALL                             R4 2 1
       27 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       29 LOADK                            R5 K7 ["The primary part we're about to use should have been moved"]
       30 GETIMPORT                        R3 K9 [assert]
       32 CALL                             R3 2 0
       33 SETTABLEKS                       R1 R2 K10 ["PrimaryPart"]
       35 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ItemDataPreviewModel"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K3 ["Instance"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+36]
       20 GETUPVAL                         R3 3
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+30]
       23 GETTABLEKS                       R3 R0 K3 ["Instance"]
       25 LOADK                            R5 K4 ["Decal"]
       26 NAMECALL                         R3 R3 K5 ["IsA"]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+23]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K6 ["createElement"]
       33 GETUPVAL                         R4 4
       34 DUPTABLE                         R5 K11 [{"AnimateTargetAsset", "Child", "Style", "Transparency"}]
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R6 R7 K12 ["HEAD_PREVIEW_PATH"]
       38 SETTABLEKS                       R6 R5 K7 ["AnimateTargetAsset"]
       40 GETTABLEKS                       R6 R0 K3 ["Instance"]
       42 SETTABLEKS                       R6 R5 K8 ["Child"]
       44 LOADK                            R6 K13 ["FacePreview"]
       45 SETTABLEKS                       R6 R5 K9 ["Style"]
       47 GETTABLEKS                       R6 R0 K10 ["Transparency"]
       49 SETTABLEKS                       R6 R5 K10 ["Transparency"]
       51 CALL                             R3 2 -1
       52 RETURN                           R3 -1
       53 LOADNIL                          R3
       54 RETURN                           R3 1
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R3 R4 K6 ["createElement"]
       58 GETUPVAL                         R4 6
       59 DUPTABLE                         R5 K21 [{"FocusDirection", "Model", "Static", "Ambient", "LightColor", "LightDirection", "ImageTransparency"}]
       60 GETTABLEKS                       R6 R2 K22 ["PrimaryPart"]
       62 JUMPIFNOT                        R6 ; [+6]
       63 GETTABLEKS                       R8 R2 K22 ["PrimaryPart"]
       65 GETTABLEKS                       R7 R8 K23 ["CFrame"]
       67 GETTABLEKS                       R6 R7 K24 ["LookVector"]
       69 SETTABLEKS                       R6 R5 K14 ["FocusDirection"]
       71 SETTABLEKS                       R2 R5 K15 ["Model"]
       73 LOADB                            R6 1
       74 SETTABLEKS                       R6 R5 K16 ["Static"]
       76 GETTABLEKS                       R6 R1 K25 ["InstanceAmbient"]
       78 SETTABLEKS                       R6 R5 K17 ["Ambient"]
       80 GETIMPORT                        R6 K28 [Color3.new]
       82 LOADN                            R7 1
       83 LOADN                            R8 1
       84 LOADN                            R9 1
       85 CALL                             R6 3 1
       86 SETTABLEKS                       R6 R5 K18 ["LightColor"]
       88 GETTABLEKS                       R6 R2 K22 ["PrimaryPart"]
       90 JUMPIFNOT                        R6 ; [+7]
       91 GETTABLEKS                       R9 R2 K22 ["PrimaryPart"]
       93 GETTABLEKS                       R8 R9 K23 ["CFrame"]
       95 GETTABLEKS                       R7 R8 K24 ["LookVector"]
       97 MINUS                            R6 R7
       98 SETTABLEKS                       R6 R5 K19 ["LightDirection"]
      100 GETTABLEKS                       R6 R0 K10 ["Transparency"]
      102 SETTABLEKS                       R6 R5 K20 ["ImageTransparency"]
      104 CALL                             R3 2 -1
      105 RETURN                           R3 -1

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
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Resources"]
       36 GETTABLEKS                       R5 R6 K13 ["Theme"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Components"]
       45 GETTABLEKS                       R6 R7 K15 ["FacePreview"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K9 ["Src"]
       52 GETTABLEKS                       R8 R9 K16 ["Flags"]
       54 GETTABLEKS                       R7 R8 K17 ["getFFlagAvatarPreviewerMakeup"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R1 K18 ["UI"]
       59 GETTABLEKS                       R8 R7 K19 ["AssetRenderModel"]
       61 GETTABLEKS                       R10 R1 K20 ["ContextServices"]
       63 GETTABLEKS                       R9 R10 K21 ["Stylizer"]
       65 DUPCLOSURE                       R10 K22 [PROTO_0]
       66 DUPCLOSURE                       R11 K23 [PROTO_2]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R8
       74 RETURN                           R11 1
