PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["Clone"]
        2 CALL                             R2 1 1
        3 JUMPIFEQKNIL                     R1 ; [+27]
        5 LOADK                            R5 K1 ["BodyColors"]
        6 NAMECALL                         R3 R2 K2 ["FindFirstChildWhichIsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 MOVE                             R4 R3
       11 JUMP                             ; [+4]
       12 GETIMPORT                        R4 K5 [Instance.new]
       14 LOADK                            R5 K1 ["BodyColors"]
       15 CALL                             R4 1 1
       16 JUMPIF                           R3 ; [+2]
       17 SETTABLEKS                       R2 R4 K6 ["Parent"]
       19 SETTABLEKS                       R1 R4 K7 ["HeadColor3"]
       21 SETTABLEKS                       R1 R4 K8 ["TorsoColor3"]
       23 SETTABLEKS                       R1 R4 K9 ["LeftArmColor3"]
       25 SETTABLEKS                       R1 R4 K10 ["RightArmColor3"]
       27 SETTABLEKS                       R1 R4 K11 ["LeftLegColor3"]
       29 SETTABLEKS                       R1 R4 K12 ["RightLegColor3"]
       31 GETIMPORT                        R3 K5 [Instance.new]
       33 LOADK                            R4 K13 ["WorldModel"]
       34 CALL                             R3 1 1
       35 LOADK                            R4 K14 ["Dummy"]
       36 SETTABLEKS                       R4 R2 K15 ["Name"]
       38 SETTABLEKS                       R3 R2 K6 ["Parent"]
       40 GETTABLEKS                       R4 R2 K16 ["PrimaryPart"]
       42 JUMPIFEQKNIL                     R4 ; [+5]
       44 GETTABLEKS                       R4 R2 K16 ["PrimaryPart"]
       46 SETTABLEKS                       R4 R3 K16 ["PrimaryPart"]
       48 GETIMPORT                        R6 K18 [CFrame.new]
       50 CALL                             R6 0 -1
       51 NAMECALL                         R4 R3 K19 ["PivotTo"]
       53 CALL                             R4 -1 0
       54 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 3
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+6]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["AvatarLookPreview is not available because the flag AvatarPreviewerLookComposer is not enabled"]
        6 CALL                             R1 1 0
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K3 ["bodyColor"]
       11 GETTABLEKS                       R2 R0 K4 ["bodyProportions"]
       13 GETTABLEKS                       R3 R0 K5 ["dummy"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K6 ["useState"]
       18 LOADNIL                          R5
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R5
       28 NEWTABLE                         R8 0 3
       30 MOVE                             R9 R3
       31 MOVE                             R10 R1
       32 MOVE                             R11 R2
       33 SETLIST                          R8 R9 3 [1]
       35 CALL                             R6 2 0
       36 JUMPIFEQKNIL                     R4 ; [+67]
       38 GETTABLEKS                       R6 R4 K8 ["PrimaryPart"]
       40 JUMPIFEQKNIL                     R6 ; [+63]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K9 ["createElement"]
       45 GETUPVAL                         R7 3
       46 DUPTABLE                         R8 K14 [{["tag"] = "stroke-default radius-medium clip bg-surface-200", ["Size"], ["LayoutOrder"]}]
       47 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       49 LOADN                            R10 150
       50 LOADN                            R11 150
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K12 ["Size"]
       54 GETTABLEKS                       R9 R0 K13 ["LayoutOrder"]
       56 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       58 DUPTABLE                         R9 K19 [{"AvatarPreview"}]
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K9 ["createElement"]
       62 GETUPVAL                         R11 4
       63 DUPTABLE                         R12 K29 [{["FocusDirection"], ["Model"], ["Static"] = True, ["ShouldClone"] = False, ["Ambient"], ["LightColor"], ["LightDirection"]}]
       64 GETTABLEKS                       R13 R4 K8 ["PrimaryPart"]
       66 GETTABLEKS                       R13 R13 K30 ["CFrame"]
       68 GETTABLEKS                       R13 R13 K31 ["LookVector"]
       70 SETTABLEKS                       R13 R12 K20 ["FocusDirection"]
       72 SETTABLEKS                       R4 R12 K21 ["Model"]
       74 GETIMPORT                        R13 K34 [Color3.new]
       76 LOADK                            R14 K35 [0.5]
       77 LOADK                            R15 K35 [0.5]
       78 LOADK                            R16 K35 [0.5]
       79 CALL                             R13 3 1
       80 SETTABLEKS                       R13 R12 K26 ["Ambient"]
       82 GETIMPORT                        R13 K34 [Color3.new]
       84 LOADN                            R14 1
       85 LOADN                            R15 1
       86 LOADN                            R16 1
       87 CALL                             R13 3 1
       88 SETTABLEKS                       R13 R12 K27 ["LightColor"]
       90 GETTABLEKS                       R14 R4 K8 ["PrimaryPart"]
       92 GETTABLEKS                       R14 R14 K30 ["CFrame"]
       94 GETTABLEKS                       R14 R14 K31 ["LookVector"]
       96 MINUS                            R13 R14
       97 SETTABLEKS                       R13 R12 K28 ["LightDirection"]
       99 CALL                             R10 2 1
      100 SETTABLEKS                       R10 R9 K18 ["AvatarPreview"]
      102 CALL                             R6 3 -1
      103 RETURN                           R6 -1
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R6 R6 K9 ["createElement"]
      107 GETUPVAL                         R7 3
      108 DUPTABLE                         R8 K37 [{["tag"] = "stroke-default radius-medium bg-surface-200", ["Size"], ["LayoutOrder"]}]
      109 GETIMPORT                        R9 K17 [UDim2.fromOffset]
      111 LOADN                            R10 150
      112 LOADN                            R11 150
      113 CALL                             R9 2 1
      114 SETTABLEKS                       R9 R8 K12 ["Size"]
      116 GETTABLEKS                       R9 R0 K13 ["LayoutOrder"]
      118 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
      120 CALL                             R6 2 -1
      121 RETURN                           R6 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["UI"]
       32 GETTABLEKS                       R6 R5 K12 ["AssetRenderModel"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Src"]
       38 GETTABLEKS                       R8 R8 K14 ["Types"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K13 ["Src"]
       45 GETTABLEKS                       R9 R9 K15 ["Flags"]
       47 GETTABLEKS                       R9 R9 K16 ["getFFlagAvatarPreviewerLookComposer"]
       49 CALL                             R8 1 1
       50 DUPCLOSURE                       R9 K17 [PROTO_0]
       51 DUPCLOSURE                       R10 K18 [PROTO_3]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 RETURN                           R10 1
