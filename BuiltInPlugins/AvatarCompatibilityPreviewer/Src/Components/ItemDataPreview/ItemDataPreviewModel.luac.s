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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Instance"]
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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K3 ["Instance"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+30]
       20 GETTABLEKS                       R3 R0 K3 ["Instance"]
       22 LOADK                            R5 K4 ["Decal"]
       23 NAMECALL                         R3 R3 K5 ["IsA"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+20]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K6 ["createElement"]
       30 GETUPVAL                         R4 3
       31 DUPTABLE                         R5 K12 [{["AnimateTargetAsset"], ["Child"], ["Style"] = "FacePreview", ["Transparency"]}]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K13 ["HEAD_PREVIEW_PATH"]
       35 SETTABLEKS                       R6 R5 K7 ["AnimateTargetAsset"]
       37 GETTABLEKS                       R6 R0 K3 ["Instance"]
       39 SETTABLEKS                       R6 R5 K8 ["Child"]
       41 GETTABLEKS                       R6 R0 K11 ["Transparency"]
       43 SETTABLEKS                       R6 R5 K11 ["Transparency"]
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1
       47 LOADNIL                          R3
       48 RETURN                           R3 1
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K6 ["createElement"]
       52 GETUPVAL                         R4 5
       53 DUPTABLE                         R5 K22 [{["FocusDirection"], ["Model"], ["Static"] = True, ["Ambient"], ["LightColor"], ["LightDirection"], ["ImageTransparency"]}]
       54 GETTABLEKS                       R6 R2 K23 ["PrimaryPart"]
       56 JUMPIFNOT                        R6 ; [+6]
       57 GETTABLEKS                       R6 R2 K23 ["PrimaryPart"]
       59 GETTABLEKS                       R6 R6 K24 ["CFrame"]
       61 GETTABLEKS                       R6 R6 K25 ["LookVector"]
       63 SETTABLEKS                       R6 R5 K14 ["FocusDirection"]
       65 SETTABLEKS                       R2 R5 K15 ["Model"]
       67 GETTABLEKS                       R6 R1 K26 ["InstanceAmbient"]
       69 SETTABLEKS                       R6 R5 K18 ["Ambient"]
       71 GETIMPORT                        R6 K29 [Color3.new]
       73 LOADN                            R7 1
       74 LOADN                            R8 1
       75 LOADN                            R9 1
       76 CALL                             R6 3 1
       77 SETTABLEKS                       R6 R5 K19 ["LightColor"]
       79 GETTABLEKS                       R6 R2 K23 ["PrimaryPart"]
       81 JUMPIFNOT                        R6 ; [+7]
       82 GETTABLEKS                       R7 R2 K23 ["PrimaryPart"]
       84 GETTABLEKS                       R7 R7 K24 ["CFrame"]
       86 GETTABLEKS                       R7 R7 K25 ["LookVector"]
       88 MINUS                            R6 R7
       89 SETTABLEKS                       R6 R5 K20 ["LightDirection"]
       91 GETTABLEKS                       R6 R0 K11 ["Transparency"]
       93 SETTABLEKS                       R6 R5 K21 ["ImageTransparency"]
       95 CALL                             R3 2 -1
       96 RETURN                           R3 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Resources"]
       36 GETTABLEKS                       R5 R5 K13 ["Theme"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Components"]
       45 GETTABLEKS                       R6 R6 K15 ["FacePreview"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K16 ["UI"]
       50 GETTABLEKS                       R7 R6 K17 ["AssetRenderModel"]
       52 GETTABLEKS                       R8 R1 K18 ["ContextServices"]
       54 GETTABLEKS                       R8 R8 K19 ["Stylizer"]
       56 DUPCLOSURE                       R9 K20 [PROTO_0]
       57 DUPCLOSURE                       R10 K21 [PROTO_2]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 RETURN                           R10 1
