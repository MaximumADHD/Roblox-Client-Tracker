PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Camera"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K4 ["FieldOfView"]
        7 JUMPIFEQKNIL                     R1 ; [+6]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["FieldOfView"]
       12 SETTABLEKS                       R1 R0 K4 ["FieldOfView"]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETTABLEKS                       R2 R2 K0 ["AnimateTargetAsset"]
        4 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 1 2
        8 JUMPIF                           R1 ; [+12]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R5 K4 ["Failed to load animation target asset due to %*"]
       12 MOVE                             R7 R2
       13 NAMECALL                         R5 R5 K5 ["format"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 CALL                             R3 1 0
       18 LOADNIL                          R3
       19 CLOSEUPVALS                      R0
       20 RETURN                           R3 1
       21 CLOSEUPVALS                      R0
       22 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 NAMECALL                         R0 R0 K1 ["Destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["Destroy"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 JUMPIFEQKS                       R0 K1 ["loading"] ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["value"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K2 ["value"]
       14 NAMECALL                         R0 R0 K3 ["Clone"]
       16 CALL                             R0 1 1
       17 GETUPVAL                         R1 1
       18 SETTABLEKS                       R1 R0 K4 ["Parent"]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R2 R0 K5 ["PrimaryPart"]
       23 SETTABLEKS                       R2 R1 K5 ["PrimaryPart"]
       25 GETUPVAL                         R1 2
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 NEWCLOSURE                       R1 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AssetId"]
        4 NAMECALL                         R0 R0 K1 ["LoadAsset"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetId"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETIMPORT                        R0 K2 [pcall]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U0
       12 CALL                             R0 1 2
       13 JUMPIF                           R0 ; [+2]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 LOADK                            R4 K3 ["Decal"]
       17 NAMECALL                         R2 R1 K4 ["FindFirstChildWhichIsA"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Destroy"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["state"]
       10 JUMPIFNOTEQKS                    R0 K2 ["ok"] ; [+12]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K3 ["value"]
       15 JUMPIFEQKNIL                     R0 ; [+7]
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K3 ["value"]
       20 NAMECALL                         R0 R0 K0 ["Destroy"]
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 2
       24 JUMPIFEQKNIL                     R0 ; [+5]
       26 GETUPVAL                         R0 2
       27 NAMECALL                         R0 R0 K0 ["Destroy"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 LOADNIL                          R0
        5 LOADNIL                          R1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["Child"]
        9 JUMPIFEQKNIL                     R2 ; [+13]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K0 ["Child"]
       14 NAMECALL                         R2 R2 K1 ["Clone"]
       16 CALL                             R2 1 1
       17 MOVE                             R0 R2
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["Head"]
       21 SETTABLEKS                       R2 R0 K3 ["Parent"]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K4 ["AssetId"]
       26 JUMPIFEQKNIL                     R2 ; [+30]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K5 ["state"]
       31 JUMPIFNOTEQKS                    R2 K6 ["ok"] ; [+25]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K7 ["value"]
       36 JUMPIFEQKNIL                     R2 ; [+20]
       38 NAMECALL                         R3 R2 K1 ["Clone"]
       40 CALL                             R3 1 1
       41 MOVE                             R1 R3
       42 JUMPIFNOTEQKNIL                  R1 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       48 LOADK                            R5 K8 ["Luau"]
       49 GETIMPORT                        R3 K10 [assert]
       51 CALL                             R3 2 0
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K2 ["Head"]
       55 SETTABLEKS                       R3 R1 K3 ["Parent"]
       57 NEWCLOSURE                       R2 P0
       58 CAPTURE                          REF R0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          REF R1
       61 CLOSEUPVALS                      R0
       62 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["AssetId"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["MakeupDescription flag is not enabled"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 LOADK                            R3 K4 ["AnimationPreview"]
       14 MOVE                             R4 R0
       15 NAMECALL                         R1 R1 K5 ["use"]
       17 CALL                             R1 3 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K6 ["useState"]
       21 GETIMPORT                        R3 K9 [Instance.new]
       23 LOADK                            R4 K10 ["WorldModel"]
       24 CALL                             R3 1 -1
       25 CALL                             R2 -1 1
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K6 ["useState"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R1
       31 CALL                             R3 1 1
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K6 ["useState"]
       35 LOADNIL                          R5
       36 CALL                             R4 1 2
       37 GETUPVAL                         R6 3
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R8 0 1
       43 GETTABLEKS                       R9 R0 K11 ["AnimateTargetAsset"]
       45 SETLIST                          R8 R9 1 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K12 ["useEffect"]
       51 NEWCLOSURE                       R8 P2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 NEWTABLE                         R9 0 1
       57 MOVE                             R10 R6
       58 SETLIST                          R9 R10 1 [1]
       60 CALL                             R7 2 0
       61 GETUPVAL                         R7 3
       62 NEWCLOSURE                       R8 P3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U4
       65 NEWTABLE                         R9 0 2
       67 MOVE                             R10 R4
       68 GETTABLEKS                       R11 R0 K0 ["AssetId"]
       70 SETLIST                          R9 R10 2 [1]
       72 CALL                             R7 2 1
       73 GETUPVAL                         R8 2
       74 GETTABLEKS                       R8 R8 K12 ["useEffect"]
       76 NEWCLOSURE                       R9 P4
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R7
       80 NEWTABLE                         R10 0 4
       82 MOVE                             R11 R4
       83 GETTABLEKS                       R12 R0 K13 ["Child"]
       85 GETTABLEKS                       R13 R0 K0 ["AssetId"]
       87 MOVE                             R14 R7
       88 SETLIST                          R10 R11 4 [1]
       90 CALL                             R8 2 0
       91 JUMPIFNOT                        R4 ; [+62]
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R8 R8 K14 ["createElement"]
       95 GETUPVAL                         R9 5
       96 NEWTABLE                         R10 0 0
       98 DUPTABLE                         R11 K16 [{"Model"}]
       99 GETUPVAL                         R12 2
      100 GETTABLEKS                       R12 R12 K14 ["createElement"]
      102 GETUPVAL                         R13 6
      103 DUPTABLE                         R14 K24 [{"Ambient", "Camera", "FocusDirection", "InitialDistance", "Model", "ShouldClone", "Static", "ImageTransparency"}]
      104 GETIMPORT                        R15 K26 [Color3.new]
      106 LOADN                            R16 1
      107 LOADN                            R17 1
      108 LOADN                            R18 1
      109 CALL                             R15 3 1
      110 SETTABLEKS                       R15 R14 K17 ["Ambient"]
      112 SETTABLEKS                       R3 R14 K18 ["Camera"]
      114 GETTABLEKS                       R15 R4 K27 ["PrimaryPart"]
      116 GETTABLEKS                       R15 R15 K28 ["CFrame"]
      118 GETTABLEKS                       R15 R15 K29 ["LookVector"]
      120 GETTABLEKS                       R17 R4 K27 ["PrimaryPart"]
      122 GETTABLEKS                       R17 R17 K28 ["CFrame"]
      124 GETTABLEKS                       R17 R17 K30 ["RightVector"]
      126 GETTABLEKS                       R18 R1 K31 ["FrontRightAngleLerp"]
      128 NAMECALL                         R15 R15 K32 ["Lerp"]
      130 CALL                             R15 3 1
      131 SETTABLEKS                       R15 R14 K19 ["FocusDirection"]
      133 GETTABLEKS                       R15 R1 K20 ["InitialDistance"]
      135 SETTABLEKS                       R15 R14 K20 ["InitialDistance"]
      137 SETTABLEKS                       R2 R14 K15 ["Model"]
      139 LOADB                            R15 0
      140 SETTABLEKS                       R15 R14 K21 ["ShouldClone"]
      142 LOADB                            R15 1
      143 SETTABLEKS                       R15 R14 K22 ["Static"]
      145 GETTABLEKS                       R15 R0 K33 ["Transparency"]
      147 SETTABLEKS                       R15 R14 K23 ["ImageTransparency"]
      149 CALL                             R12 2 1
      150 SETTABLEKS                       R12 R11 K15 ["Model"]
      152 CALL                             R8 3 1
      153 RETURN                           R8 1
      154 LOADNIL                          R8
      155 RETURN                           R8 1

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
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Resources"]
       33 GETTABLEKS                       R5 R5 K15 ["Theme"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Types"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K13 ["Src"]
       47 GETTABLEKS                       R7 R7 K17 ["Hooks"]
       49 GETTABLEKS                       R7 R7 K18 ["useAsync"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K13 ["Src"]
       56 GETTABLEKS                       R8 R8 K19 ["Flags"]
       58 GETTABLEKS                       R8 R8 K20 ["getFFlagAvatarPreviewerMakeupDescription"]
       60 CALL                             R7 1 1
       61 GETTABLEKS                       R8 R2 K21 ["ContextServices"]
       63 GETTABLEKS                       R8 R8 K22 ["Stylizer"]
       65 GETTABLEKS                       R9 R2 K23 ["UI"]
       67 GETTABLEKS                       R10 R9 K24 ["AssetRenderModel"]
       69 GETTABLEKS                       R11 R9 K25 ["Pane"]
       71 DUPCLOSURE                       R12 K26 [PROTO_9]
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R10
       79 RETURN                           R12 1
