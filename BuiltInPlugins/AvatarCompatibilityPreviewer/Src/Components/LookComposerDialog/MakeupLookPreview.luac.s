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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getMakeupPreviewCameraModifications"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

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
       64 JUMPIFNOT                        R3 ; [+26]
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R10 R11 K7 ["createElement"]
       68 GETUPVAL                         R11 5
       69 DUPTABLE                         R12 K22 [{"Model", "GetCameraModifications", "Static"}]
       70 SETTABLEKS                       R3 R12 K19 ["Model"]
       72 GETUPVAL                         R14 2
       73 GETTABLEKS                       R13 R14 K23 ["useCallback"]
       75 NEWCLOSURE                       R14 P3
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R4
       78 NEWTABLE                         R15 0 1
       80 MOVE                             R16 R4
       81 SETLIST                          R15 R16 1 [1]
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K20 ["GetCameraModifications"]
       86 LOADB                            R13 1
       87 SETTABLEKS                       R13 R12 K21 ["Static"]
       89 CALL                             R10 2 1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R10
       92 SETTABLEKS                       R10 R9 K16 ["Preview"]
       94 JUMPIF                           R3 ; [+45]
       95 GETUPVAL                         R11 2
       96 GETTABLEKS                       R10 R11 K7 ["createElement"]
       98 GETUPVAL                         R11 4
       99 DUPTABLE                         R12 K25 [{"tag", "ZIndex"}]
      100 LOADK                            R13 K26 ["size-full bg-surface-200"]
      101 SETTABLEKS                       R13 R12 K8 ["tag"]
      103 LOADN                            R13 10
      104 SETTABLEKS                       R13 R12 K24 ["ZIndex"]
      106 DUPTABLE                         R13 K28 [{"LoadingIndicator"}]
      107 GETUPVAL                         R15 2
      108 GETTABLEKS                       R14 R15 K7 ["createElement"]
      110 GETUPVAL                         R16 6
      111 GETTABLEKS                       R15 R16 K27 ["LoadingIndicator"]
      113 DUPTABLE                         R16 K31 [{"Size", "AnchorPoint", "Position"}]
      114 GETIMPORT                        R17 K15 [UDim2.fromOffset]
      116 LOADN                            R18 32
      117 LOADN                            R19 32
      118 CALL                             R17 2 1
      119 SETTABLEKS                       R17 R16 K9 ["Size"]
      121 GETIMPORT                        R17 K34 [Vector2.new]
      123 LOADK                            R18 K35 [0.5]
      124 LOADK                            R19 K35 [0.5]
      125 CALL                             R17 2 1
      126 SETTABLEKS                       R17 R16 K29 ["AnchorPoint"]
      128 GETIMPORT                        R17 K37 [UDim2.fromScale]
      130 LOADK                            R18 K35 [0.5]
      131 LOADK                            R19 K35 [0.5]
      132 CALL                             R17 2 1
      133 SETTABLEKS                       R17 R16 K30 ["Position"]
      135 CALL                             R14 2 1
      136 SETTABLEKS                       R14 R13 K27 ["LoadingIndicator"]
      138 CALL                             R10 3 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R10
      141 SETTABLEKS                       R10 R9 K17 ["LoadingOverlay"]
      143 CALL                             R6 3 -1
      144 RETURN                           R6 -1

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
