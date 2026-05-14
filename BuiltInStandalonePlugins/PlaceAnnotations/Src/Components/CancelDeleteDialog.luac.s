PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+8]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["use"]
        9 CALL                             R2 0 1
       10 NAMECALL                         R2 R2 K1 ["get"]
       12 CALL                             R2 1 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K2 ["createElement"]
       20 GETUPVAL                         R5 5
       21 DUPTABLE                         R6 K10 [{"Title", "Modal", "Resizable", "Enabled", "OnClose", "ZIndexBehavior", "Size"}]
       22 LOADK                            R9 K11 ["ConfirmDeleteDialog"]
       23 LOADK                            R10 K3 ["Title"]
       24 NAMECALL                         R7 R1 K12 ["getText"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K3 ["Title"]
       29 LOADB                            R7 1
       30 SETTABLEKS                       R7 R6 K4 ["Modal"]
       32 LOADB                            R7 0
       33 SETTABLEKS                       R7 R6 K5 ["Resizable"]
       35 LOADB                            R7 1
       36 SETTABLEKS                       R7 R6 K6 ["Enabled"]
       38 GETTABLEKS                       R7 R0 K13 ["OnCancel"]
       40 SETTABLEKS                       R7 R6 K7 ["OnClose"]
       42 GETIMPORT                        R7 K16 [Enum.ZIndexBehavior.Sibling]
       44 SETTABLEKS                       R7 R6 K8 ["ZIndexBehavior"]
       46 GETIMPORT                        R7 K19 [Vector2.new]
       48 LOADN                            R8 224
       49 LOADN                            R9 160
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K9 ["Size"]
       53 DUPTABLE                         R7 K23 [{"StyleLink", "Contents", "Provider"}]
       54 JUMPIFNOT                        R2 ; [+9]
       55 GETUPVAL                         R8 4
       56 GETTABLEKS                       R8 R8 K2 ["createElement"]
       58 LOADK                            R9 K20 ["StyleLink"]
       59 DUPTABLE                         R10 K25 [{"StyleSheet"}]
       60 SETTABLEKS                       R2 R10 K24 ["StyleSheet"]
       62 CALL                             R8 2 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R8
       65 SETTABLEKS                       R8 R7 K20 ["StyleLink"]
       67 GETUPVAL                         R9 1
       68 JUMPIFNOT                        R9 ; [+19]
       69 GETUPVAL                         R8 4
       70 GETTABLEKS                       R8 R8 K2 ["createElement"]
       72 GETUPVAL                         R9 6
       73 DUPTABLE                         R10 K28 [{"Text", "OnDelete", "OnCancel"}]
       74 GETTABLEKS                       R11 R0 K26 ["Text"]
       76 SETTABLEKS                       R11 R10 K26 ["Text"]
       78 GETTABLEKS                       R11 R0 K27 ["OnDelete"]
       80 SETTABLEKS                       R11 R10 K27 ["OnDelete"]
       82 GETTABLEKS                       R11 R0 K13 ["OnCancel"]
       84 SETTABLEKS                       R11 R10 K13 ["OnCancel"]
       86 CALL                             R8 2 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R8
       89 SETTABLEKS                       R8 R7 K21 ["Contents"]
       91 GETUPVAL                         R9 1
       92 JUMPIF                           R9 ; [+36]
       93 GETUPVAL                         R8 4
       94 GETTABLEKS                       R8 R8 K2 ["createElement"]
       96 GETUPVAL                         R9 7
       97 GETTABLEKS                       R9 R9 K29 ["FoundationProvider"]
       99 DUPTABLE                         R10 K31 [{"theme"}]
      100 MOVE                             R11 R3
      101 JUMPIFNOT                        R11 ; [+2]
      102 GETTABLEKS                       R11 R3 K32 ["Name"]
      104 SETTABLEKS                       R11 R10 K30 ["theme"]
      106 DUPTABLE                         R11 K33 [{"Contents"}]
      107 GETUPVAL                         R12 4
      108 GETTABLEKS                       R12 R12 K2 ["createElement"]
      110 GETUPVAL                         R13 6
      111 DUPTABLE                         R14 K28 [{"Text", "OnDelete", "OnCancel"}]
      112 GETTABLEKS                       R15 R0 K26 ["Text"]
      114 SETTABLEKS                       R15 R14 K26 ["Text"]
      116 GETTABLEKS                       R15 R0 K27 ["OnDelete"]
      118 SETTABLEKS                       R15 R14 K27 ["OnDelete"]
      120 GETTABLEKS                       R15 R0 K13 ["OnCancel"]
      122 SETTABLEKS                       R15 R14 K13 ["OnCancel"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K21 ["Contents"]
      127 CALL                             R8 3 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R8
      130 SETTABLEKS                       R8 R7 K22 ["Provider"]
      132 CALL                             R4 3 -1
      133 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K12 ["useTheme"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["Localization"]
       41 GETTABLEKS                       R7 R5 K15 ["Design"]
       43 GETTABLEKS                       R8 R2 K16 ["UI"]
       45 GETTABLEKS                       R8 R8 K17 ["Dialog"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K10 ["Src"]
       51 GETTABLEKS                       R10 R10 K18 ["Components"]
       53 GETTABLEKS                       R10 R10 K19 ["CancelDeleteContents"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K20 ["Bin"]
       60 GETTABLEKS                       R11 R11 K21 ["Common"]
       62 GETTABLEKS                       R11 R11 K22 ["defineLuaFlags"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R10 K23 ["fflagAnnotationsCancelDeleteDialogDesignLink"]
       67 DUPCLOSURE                       R12 K24 [PROTO_0]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R3
       76 RETURN                           R12 1
