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
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AnimationPreview"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 GETIMPORT                        R3 K5 [Instance.new]
       11 LOADK                            R4 K6 ["WorldModel"]
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K2 ["useState"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K2 ["useState"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 2
       25 GETUPVAL                         R6 2
       26 NEWCLOSURE                       R7 P1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R8 0 1
       31 GETTABLEKS                       R9 R0 K7 ["AnimateTargetAsset"]
       33 SETLIST                          R8 R9 1 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       39 NEWCLOSURE                       R8 P2
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R9 0 1
       45 MOVE                             R10 R6
       46 SETLIST                          R9 R10 1 [1]
       48 CALL                             R7 2 0
       49 GETUPVAL                         R7 2
       50 NEWCLOSURE                       R8 P3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U3
       53 NEWTABLE                         R9 0 2
       55 MOVE                             R10 R4
       56 GETTABLEKS                       R11 R0 K9 ["AssetId"]
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 1
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       64 NEWCLOSURE                       R9 P4
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R7
       68 NEWTABLE                         R10 0 4
       70 MOVE                             R11 R4
       71 GETTABLEKS                       R12 R0 K10 ["Child"]
       73 GETTABLEKS                       R13 R0 K9 ["AssetId"]
       75 MOVE                             R14 R7
       76 SETLIST                          R10 R11 4 [1]
       78 CALL                             R8 2 0
       79 JUMPIFNOT                        R4 ; [+62]
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R8 R8 K11 ["createElement"]
       83 GETUPVAL                         R9 4
       84 NEWTABLE                         R10 0 0
       86 DUPTABLE                         R11 K13 [{"Model"}]
       87 GETUPVAL                         R12 1
       88 GETTABLEKS                       R12 R12 K11 ["createElement"]
       90 GETUPVAL                         R13 5
       91 DUPTABLE                         R14 K21 [{"Ambient", "Camera", "FocusDirection", "InitialDistance", "Model", "ShouldClone", "Static", "ImageTransparency"}]
       92 GETIMPORT                        R15 K23 [Color3.new]
       94 LOADN                            R16 1
       95 LOADN                            R17 1
       96 LOADN                            R18 1
       97 CALL                             R15 3 1
       98 SETTABLEKS                       R15 R14 K14 ["Ambient"]
      100 SETTABLEKS                       R3 R14 K15 ["Camera"]
      102 GETTABLEKS                       R15 R4 K24 ["PrimaryPart"]
      104 GETTABLEKS                       R15 R15 K25 ["CFrame"]
      106 GETTABLEKS                       R15 R15 K26 ["LookVector"]
      108 GETTABLEKS                       R17 R4 K24 ["PrimaryPart"]
      110 GETTABLEKS                       R17 R17 K25 ["CFrame"]
      112 GETTABLEKS                       R17 R17 K27 ["RightVector"]
      114 GETTABLEKS                       R18 R1 K28 ["FrontRightAngleLerp"]
      116 NAMECALL                         R15 R15 K29 ["Lerp"]
      118 CALL                             R15 3 1
      119 SETTABLEKS                       R15 R14 K16 ["FocusDirection"]
      121 GETTABLEKS                       R15 R1 K17 ["InitialDistance"]
      123 SETTABLEKS                       R15 R14 K17 ["InitialDistance"]
      125 SETTABLEKS                       R2 R14 K12 ["Model"]
      127 LOADB                            R15 0
      128 SETTABLEKS                       R15 R14 K18 ["ShouldClone"]
      130 LOADB                            R15 1
      131 SETTABLEKS                       R15 R14 K19 ["Static"]
      133 GETTABLEKS                       R15 R0 K30 ["Transparency"]
      135 SETTABLEKS                       R15 R14 K20 ["ImageTransparency"]
      137 CALL                             R12 2 1
      138 SETTABLEKS                       R12 R11 K12 ["Model"]
      140 CALL                             R8 3 1
      141 RETURN                           R8 1
      142 LOADNIL                          R8
      143 RETURN                           R8 1

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
       52 GETTABLEKS                       R7 R2 K19 ["ContextServices"]
       54 GETTABLEKS                       R7 R7 K20 ["Stylizer"]
       56 GETTABLEKS                       R8 R2 K21 ["UI"]
       58 GETTABLEKS                       R9 R8 K22 ["AssetRenderModel"]
       60 GETTABLEKS                       R10 R8 K23 ["Pane"]
       62 DUPCLOSURE                       R11 K24 [PROTO_9]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R9
       69 RETURN                           R11 1
