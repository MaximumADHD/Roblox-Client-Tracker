PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K0 ["Model"]
        6 NAMECALL                         R0 R0 K1 ["FindFirstChildWhichIsA"]
        8 CALL                             R0 2 1
        9 JUMPIF                           R0 ; [+2]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 NAMECALL                         R1 R0 K2 ["Clone"]
       14 CALL                             R1 1 1
       15 LOADK                            R4 K3 ["Head"]
       16 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+5]
       20 LOADK                            R5 K5 ["BasePart"]
       21 NAMECALL                         R3 R2 K6 ["IsA"]
       23 CALL                             R3 2 1
       24 JUMPIF                           R3 ; [+2]
       25 LOADNIL                          R3
       26 RETURN                           R3 1
       27 SETTABLEKS                       R2 R1 K7 ["PrimaryPart"]
       29 GETUPVAL                         R3 1
       30 SETTABLEKS                       R3 R2 K8 ["Color"]
       32 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createFaceCamera"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+4]
        5 GETIMPORT                        R0 K3 [Instance.new]
        7 LOADK                            R1 K4 ["Camera"]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 LOADK                            R2 K0 ["Head"]
        5 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+8]
        9 LOADK                            R3 K2 ["BasePart"]
       10 NAMECALL                         R1 R0 K3 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETUPVAL                         R1 1
       15 SETTABLEKS                       R1 R0 K4 ["Color"]
       17 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["Head"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 GETTABLEKS                       R2 R1 K2 ["Position"]
        6 DUPTABLE                         R3 K6 [{"focus", "cframe", "fov"}]
        7 GETIMPORT                        R4 K9 [CFrame.new]
        9 MOVE                             R5 R2
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K3 ["focus"]
       13 GETIMPORT                        R5 K9 [CFrame.new]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K7 ["CFrame"]
       18 GETTABLEKS                       R7 R8 K2 ["Position"]
       20 ADD                              R6 R2 R7
       21 CALL                             R5 1 1
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K7 ["CFrame"]
       25 GETTABLEKS                       R6 R7 K10 ["Rotation"]
       27 MUL                              R4 R5 R6
       28 SETTABLEKS                       R4 R3 K4 ["cframe"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K11 ["FieldOfView"]
       33 SETTABLEKS                       R4 R3 K5 ["fov"]
       35 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["worldModel"]
        7 GETTABLEKS                       R2 R0 K1 ["skinColor"]
        9 JUMPIF                           R2 ; [+3]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K2 ["DEFAULT_SKIN_COLOR"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K3 ["useMemo"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 1
       21 MOVE                             R6 R1
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K4 ["useState"]
       28 DUPCLOSURE                       R5 K5 [PROTO_1]
       29 CAPTURE                          UPVAL U3
       30 CALL                             R4 1 2
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K6 ["useEffect"]
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R8 0 2
       39 MOVE                             R9 R2
       40 MOVE                             R10 R3
       41 SETLIST                          R8 R9 2 [1]
       43 CALL                             R6 2 0
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R6 R7 K7 ["createElement"]
       47 GETUPVAL                         R7 4
       48 DUPTABLE                         R8 K11 [{"tag", "Size", "LayoutOrder"}]
       49 LOADK                            R9 K12 ["bg-surface-200 radius-medium stroke-default"]
       50 SETTABLEKS                       R9 R8 K8 ["tag"]
       52 GETIMPORT                        R9 K15 [UDim2.fromOffset]
       54 LOADN                            R10 150
       55 LOADN                            R11 150
       56 CALL                             R9 2 1
       57 SETTABLEKS                       R9 R8 K9 ["Size"]
       59 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
       61 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       63 DUPTABLE                         R9 K18 [{"Preview", "LoadingOverlay"}]
       64 JUMPIFNOT                        R3 ; [+16]
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R10 R11 K7 ["createElement"]
       68 GETUPVAL                         R11 5
       69 DUPTABLE                         R12 K22 [{"Model", "GetCameraModifications", "Static"}]
       70 SETTABLEKS                       R3 R12 K19 ["Model"]
       72 NEWCLOSURE                       R13 P3
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R13 R12 K20 ["GetCameraModifications"]
       76 LOADB                            R13 1
       77 SETTABLEKS                       R13 R12 K21 ["Static"]
       79 CALL                             R10 2 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R10
       82 SETTABLEKS                       R10 R9 K16 ["Preview"]
       84 JUMPIF                           R3 ; [+45]
       85 GETUPVAL                         R11 2
       86 GETTABLEKS                       R10 R11 K7 ["createElement"]
       88 GETUPVAL                         R11 4
       89 DUPTABLE                         R12 K24 [{"tag", "ZIndex"}]
       90 LOADK                            R13 K25 ["size-full bg-surface-200"]
       91 SETTABLEKS                       R13 R12 K8 ["tag"]
       93 LOADN                            R13 10
       94 SETTABLEKS                       R13 R12 K23 ["ZIndex"]
       96 DUPTABLE                         R13 K27 [{"LoadingIndicator"}]
       97 GETUPVAL                         R15 2
       98 GETTABLEKS                       R14 R15 K7 ["createElement"]
      100 GETUPVAL                         R16 6
      101 GETTABLEKS                       R15 R16 K26 ["LoadingIndicator"]
      103 DUPTABLE                         R16 K30 [{"Size", "AnchorPoint", "Position"}]
      104 GETIMPORT                        R17 K15 [UDim2.fromOffset]
      106 LOADN                            R18 32
      107 LOADN                            R19 32
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K9 ["Size"]
      111 GETIMPORT                        R17 K33 [Vector2.new]
      113 LOADK                            R18 K34 [0.5]
      114 LOADK                            R19 K34 [0.5]
      115 CALL                             R17 2 1
      116 SETTABLEKS                       R17 R16 K28 ["AnchorPoint"]
      118 GETIMPORT                        R17 K36 [UDim2.fromScale]
      120 LOADK                            R18 K34 [0.5]
      121 LOADK                            R19 K34 [0.5]
      122 CALL                             R17 2 1
      123 SETTABLEKS                       R17 R16 K29 ["Position"]
      125 CALL                             R14 2 1
      126 SETTABLEKS                       R14 R13 K26 ["LoadingIndicator"]
      128 CALL                             R10 3 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R10
      131 SETTABLEKS                       R10 R9 K17 ["LoadingOverlay"]
      133 CALL                             R6 3 -1
      134 RETURN                           R6 -1

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
       25 GETTABLEKS                       R6 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R6 K10 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["UI"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Util"]
       38 GETTABLEKS                       R7 R8 K14 ["Constants"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R9 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R9 K15 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R11 R0 K12 ["Src"]
       52 GETTABLEKS                       R10 R11 K16 ["Components"]
       54 GETTABLEKS                       R9 R10 K17 ["ModelPreview"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R12 R0 K12 ["Src"]
       61 GETTABLEKS                       R11 R12 K18 ["Flags"]
       63 GETTABLEKS                       R10 R11 K19 ["getFFlagAvatarPreviewerLookComposer"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R13 R0 K12 ["Src"]
       70 GETTABLEKS                       R12 R13 K13 ["Util"]
       72 GETTABLEKS                       R11 R12 K20 ["MakeupLookPreviewUtils"]
       74 CALL                             R10 1 1
       75 DUPCLOSURE                       R11 K21 [PROTO_4]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R5
       83 RETURN                           R11 1
