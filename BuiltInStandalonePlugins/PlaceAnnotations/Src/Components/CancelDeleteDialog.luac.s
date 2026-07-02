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
       21 DUPTABLE                         R6 K12 [{["Title"], ["Modal"] = True, ["Resizable"] = False, ["Enabled"] = True, ["OnClose"], ["ZIndexBehavior"], ["Size"]}]
       22 LOADK                            R9 K13 ["ConfirmDeleteDialog"]
       23 LOADK                            R10 K3 ["Title"]
       24 NAMECALL                         R7 R1 K14 ["getText"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K3 ["Title"]
       29 GETTABLEKS                       R7 R0 K15 ["OnCancel"]
       31 SETTABLEKS                       R7 R6 K9 ["OnClose"]
       33 GETIMPORT                        R7 K18 [Enum.ZIndexBehavior.Sibling]
       35 SETTABLEKS                       R7 R6 K10 ["ZIndexBehavior"]
       37 GETIMPORT                        R7 K21 [Vector2.new]
       39 LOADN                            R8 480
       40 LOADN                            R9 160
       41 CALL                             R7 2 1
       42 SETTABLEKS                       R7 R6 K11 ["Size"]
       44 DUPTABLE                         R7 K25 [{"StyleLink", "Contents", "Provider"}]
       45 JUMPIFNOT                        R2 ; [+9]
       46 GETUPVAL                         R8 4
       47 GETTABLEKS                       R8 R8 K2 ["createElement"]
       49 LOADK                            R9 K22 ["StyleLink"]
       50 DUPTABLE                         R10 K27 [{"StyleSheet"}]
       51 SETTABLEKS                       R2 R10 K26 ["StyleSheet"]
       53 CALL                             R8 2 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R8
       56 SETTABLEKS                       R8 R7 K22 ["StyleLink"]
       58 GETUPVAL                         R9 1
       59 JUMPIFNOT                        R9 ; [+19]
       60 GETUPVAL                         R8 4
       61 GETTABLEKS                       R8 R8 K2 ["createElement"]
       63 GETUPVAL                         R9 6
       64 DUPTABLE                         R10 K30 [{"Text", "OnDelete", "OnCancel"}]
       65 GETTABLEKS                       R11 R0 K28 ["Text"]
       67 SETTABLEKS                       R11 R10 K28 ["Text"]
       69 GETTABLEKS                       R11 R0 K29 ["OnDelete"]
       71 SETTABLEKS                       R11 R10 K29 ["OnDelete"]
       73 GETTABLEKS                       R11 R0 K15 ["OnCancel"]
       75 SETTABLEKS                       R11 R10 K15 ["OnCancel"]
       77 CALL                             R8 2 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R8
       80 SETTABLEKS                       R8 R7 K23 ["Contents"]
       82 GETUPVAL                         R9 1
       83 JUMPIF                           R9 ; [+36]
       84 GETUPVAL                         R8 4
       85 GETTABLEKS                       R8 R8 K2 ["createElement"]
       87 GETUPVAL                         R9 7
       88 GETTABLEKS                       R9 R9 K31 ["FoundationProvider"]
       90 DUPTABLE                         R10 K33 [{"theme"}]
       91 MOVE                             R11 R3
       92 JUMPIFNOT                        R11 ; [+2]
       93 GETTABLEKS                       R11 R3 K34 ["Name"]
       95 SETTABLEKS                       R11 R10 K32 ["theme"]
       97 DUPTABLE                         R11 K35 [{"Contents"}]
       98 GETUPVAL                         R12 4
       99 GETTABLEKS                       R12 R12 K2 ["createElement"]
      101 GETUPVAL                         R13 6
      102 DUPTABLE                         R14 K30 [{"Text", "OnDelete", "OnCancel"}]
      103 GETTABLEKS                       R15 R0 K28 ["Text"]
      105 SETTABLEKS                       R15 R14 K28 ["Text"]
      107 GETTABLEKS                       R15 R0 K29 ["OnDelete"]
      109 SETTABLEKS                       R15 R14 K29 ["OnDelete"]
      111 GETTABLEKS                       R15 R0 K15 ["OnCancel"]
      113 SETTABLEKS                       R15 R14 K15 ["OnCancel"]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K23 ["Contents"]
      118 CALL                             R8 3 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R8
      121 SETTABLEKS                       R8 R7 K24 ["Provider"]
      123 CALL                             R4 3 -1
      124 RETURN                           R4 -1

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
