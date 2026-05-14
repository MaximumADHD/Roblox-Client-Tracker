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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createFaceCamera"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+4]
        5 GETIMPORT                        R0 K3 [Instance.new]
        7 LOADK                            R1 K4 ["Camera"]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_2:
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
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K7 ["CFrame"]
       18 GETTABLEKS                       R7 R7 K2 ["Position"]
       20 ADD                              R6 R2 R7
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K7 ["CFrame"]
       25 GETTABLEKS                       R6 R6 K10 ["Rotation"]
       27 MUL                              R4 R5 R6
       28 SETTABLEKS                       R4 R3 K4 ["cframe"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K11 ["FieldOfView"]
       33 SETTABLEKS                       R4 R3 K5 ["fov"]
       35 RETURN                           R3 1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["worldModel"]
        7 GETTABLEKS                       R2 R0 K1 ["skinColor"]
        9 JUMPIF                           R2 ; [+3]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["DEFAULT_SKIN_COLOR"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 1
       21 MOVE                             R6 R1
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K4 ["useState"]
       28 DUPCLOSURE                       R5 K5 [PROTO_1]
       29 CAPTURE                          UPVAL U3
       30 CALL                             R4 1 2
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R4
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K7 ["useEffect"]
       45 NEWCLOSURE                       R8 P3
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 NEWTABLE                         R9 0 2
       50 MOVE                             R10 R2
       51 MOVE                             R11 R3
       52 SETLIST                          R9 R10 2 [1]
       54 CALL                             R7 2 0
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K8 ["createElement"]
       58 GETUPVAL                         R8 4
       59 DUPTABLE                         R9 K12 [{"tag", "Size", "LayoutOrder"}]
       60 LOADK                            R10 K13 ["bg-surface-200 radius-medium stroke-default"]
       61 SETTABLEKS                       R10 R9 K9 ["tag"]
       63 GETIMPORT                        R10 K16 [UDim2.fromOffset]
       65 LOADN                            R11 150
       66 LOADN                            R12 150
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K10 ["Size"]
       70 GETTABLEKS                       R10 R0 K11 ["LayoutOrder"]
       72 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       74 DUPTABLE                         R10 K19 [{"Preview", "LoadingOverlay"}]
       75 JUMPIFNOT                        R3 ; [+14]
       76 GETUPVAL                         R11 2
       77 GETTABLEKS                       R11 R11 K8 ["createElement"]
       79 GETUPVAL                         R12 5
       80 DUPTABLE                         R13 K23 [{"Model", "GetCameraModifications", "Static"}]
       81 SETTABLEKS                       R3 R13 K20 ["Model"]
       83 SETTABLEKS                       R6 R13 K21 ["GetCameraModifications"]
       85 LOADB                            R14 1
       86 SETTABLEKS                       R14 R13 K22 ["Static"]
       88 CALL                             R11 2 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R11
       91 SETTABLEKS                       R11 R10 K17 ["Preview"]
       93 JUMPIF                           R3 ; [+45]
       94 GETUPVAL                         R11 2
       95 GETTABLEKS                       R11 R11 K8 ["createElement"]
       97 GETUPVAL                         R12 4
       98 DUPTABLE                         R13 K25 [{"tag", "ZIndex"}]
       99 LOADK                            R14 K26 ["size-full bg-surface-200"]
      100 SETTABLEKS                       R14 R13 K9 ["tag"]
      102 LOADN                            R14 10
      103 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
      105 DUPTABLE                         R14 K28 [{"LoadingIndicator"}]
      106 GETUPVAL                         R15 2
      107 GETTABLEKS                       R15 R15 K8 ["createElement"]
      109 GETUPVAL                         R16 6
      110 GETTABLEKS                       R16 R16 K27 ["LoadingIndicator"]
      112 DUPTABLE                         R17 K31 [{"Size", "AnchorPoint", "Position"}]
      113 GETIMPORT                        R18 K16 [UDim2.fromOffset]
      115 LOADN                            R19 32
      116 LOADN                            R20 32
      117 CALL                             R18 2 1
      118 SETTABLEKS                       R18 R17 K10 ["Size"]
      120 GETIMPORT                        R18 K34 [Vector2.new]
      122 LOADK                            R19 K35 [0.5]
      123 LOADK                            R20 K35 [0.5]
      124 CALL                             R18 2 1
      125 SETTABLEKS                       R18 R17 K29 ["AnchorPoint"]
      127 GETIMPORT                        R18 K37 [UDim2.fromScale]
      129 LOADK                            R19 K35 [0.5]
      130 LOADK                            R20 K35 [0.5]
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K30 ["Position"]
      134 CALL                             R15 2 1
      135 SETTABLEKS                       R15 R14 K27 ["LoadingIndicator"]
      137 CALL                             R11 3 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R11
      140 SETTABLEKS                       R11 R10 K18 ["LoadingOverlay"]
      142 CALL                             R7 3 -1
      143 RETURN                           R7 -1

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
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Util"]
       38 GETTABLEKS                       R7 R7 K14 ["Constants"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Components"]
       54 GETTABLEKS                       R9 R9 K17 ["ModelPreview"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K18 ["Flags"]
       63 GETTABLEKS                       R10 R10 K19 ["getFFlagAvatarPreviewerLookComposer"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K13 ["Util"]
       72 GETTABLEKS                       R11 R11 K20 ["MakeupLookPreviewUtils"]
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
