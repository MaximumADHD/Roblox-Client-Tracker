PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"tag", "Size", "LayoutOrder"}]
        5 LOADK                            R4 K5 ["bg-surface-200 radius-medium stroke-default"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETIMPORT                        R4 K8 [UDim2.fromOffset]
       10 LOADN                            R5 150
       11 LOADN                            R6 150
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K2 ["Size"]
       15 SETTABLEKS                       R0 R3 K3 ["LayoutOrder"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["useContext"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["Context"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K0 ["useContext"]
       15 GETUPVAL                         R3 3
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R1 K2 ["dialogLookType"]
       19 JUMPIF                           R3 ; [+5]
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       23 CALL                             R4 1 -1
       24 RETURN                           R4 -1
       25 JUMPIFEQKS                       R3 K4 ["MakeupLook"] ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 JUMPIFEQKS                       R3 K5 ["AvatarLook"] ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 JUMPIFNOT                        R4 ; [+19]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R6 R7 K6 ["createElement"]
       37 GETUPVAL                         R7 5
       38 DUPTABLE                         R8 K9 [{"LayoutOrder", "worldModel", "skinColor"}]
       39 GETTABLEKS                       R9 R0 K3 ["LayoutOrder"]
       41 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       43 GETTABLEKS                       R9 R0 K10 ["makeupWorldModel"]
       45 SETTABLEKS                       R9 R8 K7 ["worldModel"]
       47 GETTABLEKS                       R9 R0 K11 ["makeupSkinColor"]
       49 SETTABLEKS                       R9 R8 K8 ["skinColor"]
       51 CALL                             R6 2 -1
       52 RETURN                           R6 -1
       53 JUMPIFNOT                        R5 ; [+45]
       54 LOADNIL                          R6
       55 GETTABLEKS                       R7 R1 K12 ["itemsList"]
       57 LOADNIL                          R8
       58 LOADNIL                          R9
       59 FORGPREP                         R7
       60 GETTABLEKS                       R12 R11 K13 ["type"]
       62 JUMPIFNOTEQKS                    R12 K14 ["BodyColor"] ; [+8]
       64 GETTABLEKS                       R12 R11 K15 ["rowState"]
       66 JUMPIFNOTEQKS                    R12 K16 ["Selected"] ; [+4]
       68 GETTABLEKS                       R6 R11 K17 ["color"]
       70 JUMP                             ; [+2]
       71 FORGLOOP                         R7 2 ; [-12]
       73 JUMPIF                           R6 ; [+4]
       74 GETTABLEKS                       R7 R2 K18 ["avatarAssets"]
       76 GETTABLEKS                       R6 R7 K19 ["skinTone"]
       78 GETUPVAL                         R8 1
       79 GETTABLEKS                       R7 R8 K6 ["createElement"]
       81 GETUPVAL                         R8 6
       82 DUPTABLE                         R9 K23 [{"bodyColor", "bodyProportions", "LayoutOrder", "dummy"}]
       83 SETTABLEKS                       R6 R9 K20 ["bodyColor"]
       85 GETTABLEKS                       R10 R1 K21 ["bodyProportions"]
       87 SETTABLEKS                       R10 R9 K21 ["bodyProportions"]
       89 GETTABLEKS                       R10 R0 K3 ["LayoutOrder"]
       91 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       93 GETTABLEKS                       R10 R0 K22 ["dummy"]
       95 SETTABLEKS                       R10 R9 K22 ["dummy"]
       97 CALL                             R7 2 -1
       98 RETURN                           R7 -1
       99 GETUPVAL                         R6 4
      100 GETTABLEKS                       R7 R0 K3 ["LayoutOrder"]
      102 CALL                             R6 1 -1
      103 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Util"]
       29 GETTABLEKS                       R5 R6 K12 ["EquipmentStateContext"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Components"]
       38 GETTABLEKS                       R6 R7 K14 ["LookContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K10 ["Src"]
       52 GETTABLEKS                       R9 R10 K16 ["Flags"]
       54 GETTABLEKS                       R8 R9 K17 ["getFFlagAvatarPreviewerLookComposer"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R12 R0 K10 ["Src"]
       61 GETTABLEKS                       R11 R12 K13 ["Components"]
       63 GETTABLEKS                       R10 R11 K18 ["LookComposerDialog"]
       65 GETTABLEKS                       R9 R10 K19 ["MakeupLookPreview"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R13 R0 K10 ["Src"]
       72 GETTABLEKS                       R12 R13 K13 ["Components"]
       74 GETTABLEKS                       R11 R12 K18 ["LookComposerDialog"]
       76 GETTABLEKS                       R10 R11 K20 ["AvatarLookPreview"]
       78 CALL                             R9 1 1
       79 DUPCLOSURE                       R10 K21 [PROTO_0]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R3
       82 DUPCLOSURE                       R11 K22 [PROTO_1]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 RETURN                           R11 1
