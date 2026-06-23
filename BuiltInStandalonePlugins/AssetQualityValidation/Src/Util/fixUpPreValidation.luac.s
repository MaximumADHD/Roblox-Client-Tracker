PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 1
        3 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        5 MOVE                             R3 R1
        6 MOVE                             R4 R0
        7 GETIMPORT                        R2 K3 [table.insert]
        9 CALL                             R2 2 0
       10 GETIMPORT                        R2 K5 [game]
       12 LOADK                            R4 K6 ["EngineSplitHumanoidRigDescriptionInUpload"]
       13 NAMECALL                         R2 R2 K7 ["GetEngineFeature"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+5]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K8 ["SplitHrdInUpload"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 MOVE                             R2 R1
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETTABLEKS                       R7 R6 K9 ["Parent"]
       28 JUMPIFEQKNIL                     R7 ; [+44]
       30 LOADK                            R9 K10 ["Motor6D"]
       31 NAMECALL                         R7 R6 K11 ["IsA"]
       33 CALL                             R7 2 1
       34 JUMPIF                           R7 ; [+34]
       35 GETTABLEKS                       R7 R6 K12 ["Name"]
       37 JUMPIFEQKS                       R7 K13 ["OriginalSize"] ; [+31]
       39 GETTABLEKS                       R7 R6 K12 ["Name"]
       41 JUMPIFEQKS                       R7 K14 ["OriginalPosition"] ; [+27]
       43 LOADK                            R9 K15 ["Weld"]
       44 NAMECALL                         R7 R6 K11 ["IsA"]
       46 CALL                             R7 2 1
       47 JUMPIFNOT                        R7 ; [+4]
       48 GETTABLEKS                       R7 R6 K12 ["Name"]
       50 JUMPIFEQKS                       R7 K16 ["AccessoryWeld"] ; [+18]
       52 GETIMPORT                        R7 K5 [game]
       54 LOADK                            R9 K6 ["EngineSplitHumanoidRigDescriptionInUpload"]
       55 NAMECALL                         R7 R7 K7 ["GetEngineFeature"]
       57 CALL                             R7 2 1
       58 JUMPIFNOT                        R7 ; [+14]
       59 LOADK                            R9 K17 ["Constraint"]
       60 NAMECALL                         R7 R6 K11 ["IsA"]
       62 CALL                             R7 2 1
       63 JUMPIF                           R7 ; [+5]
       64 LOADK                            R9 K18 ["NoCollisionConstraint"]
       65 NAMECALL                         R7 R6 K19 ["isA"]
       67 CALL                             R7 2 1
       68 JUMPIFNOT                        R7 ; [+4]
       69 NAMECALL                         R7 R6 K20 ["Destroy"]
       71 CALL                             R7 1 0
       72 JUMP                             ; [+76]
       73 LOADK                            R9 K21 ["BasePart"]
       74 NAMECALL                         R7 R6 K11 ["IsA"]
       76 CALL                             R7 2 1
       77 JUMPIFNOT                        R7 ; [+6]
       78 LOADK                            R7 K22 [{0, 0, 0}]
       79 SETTABLEKS                       R7 R6 K23 ["Velocity"]
       81 LOADK                            R7 K22 [{0, 0, 0}]
       82 SETTABLEKS                       R7 R6 K24 ["RotVelocity"]
       84 GETTABLEKS                       R8 R6 K9 ["Parent"]
       86 JUMPIFNOT                        R8 ; [+7]
       87 GETTABLEKS                       R7 R6 K9 ["Parent"]
       89 LOADK                            R9 K25 ["Accessory"]
       90 NAMECALL                         R7 R7 K11 ["IsA"]
       92 CALL                             R7 2 1
       93 JUMP                             ; [+1]
       94 LOADB                            R7 0
       95 LOADK                            R10 K26 ["MeshPart"]
       96 NAMECALL                         R8 R6 K11 ["IsA"]
       98 CALL                             R8 2 1
       99 JUMPIFNOT                        R8 ; [+16]
      100 JUMPIF                           R7 ; [+15]
      101 GETTABLEKS                       R8 R6 K27 ["TextureID"]
      103 JUMPIFNOTEQKS                    R8 K28 [""] ; [+12]
      105 LOADK                            R10 K29 ["SurfaceAppearance"]
      106 NAMECALL                         R8 R6 K30 ["FindFirstChildWhichIsA"]
      108 CALL                             R8 2 1
      109 JUMPIF                           R8 ; [+6]
      110 GETIMPORT                        R8 K33 [Instance.new]
      112 LOADK                            R9 K29 ["SurfaceAppearance"]
      113 CALL                             R8 1 1
      114 SETTABLEKS                       R6 R8 K9 ["Parent"]
      116 GETIMPORT                        R8 K5 [game]
      118 LOADK                            R10 K34 ["RemoveAttributesForAccessoryParts"]
      119 NAMECALL                         R8 R8 K35 ["GetFastFlag"]
      121 CALL                             R8 2 1
      122 JUMPIFNOT                        R8 ; [+26]
      123 LOADK                            R10 K26 ["MeshPart"]
      124 NAMECALL                         R8 R6 K11 ["IsA"]
      126 CALL                             R8 2 1
      127 JUMPIF                           R8 ; [+5]
      128 LOADK                            R10 K36 ["Part"]
      129 NAMECALL                         R8 R6 K11 ["IsA"]
      131 CALL                             R8 2 1
      132 JUMPIFNOT                        R8 ; [+16]
      133 GETTABLEKS                       R8 R6 K12 ["Name"]
      135 JUMPIFNOTEQKS                    R8 K37 ["Handle"] ; [+13]
      137 JUMPIFNOT                        R7 ; [+11]
      138 NAMECALL                         R8 R6 K38 ["GetAttributes"]
      140 CALL                             R8 1 3
      141 FORGPREP                         R8
      142 MOVE                             R15 R11
      143 LOADNIL                          R16
      144 NAMECALL                         R13 R6 K39 ["SetAttribute"]
      146 CALL                             R13 3 0
      147 FORGLOOP                         R8 1 ; [-6]
      149 FORGLOOP                         R2 2 ; [-124]
      151 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["UGCValidation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["RemoveAttributesForAccessoryParts"]
       17 LOADB                            R5 0
       18 NAMECALL                         R2 R2 K11 ["DefineFastFlag"]
       20 CALL                             R2 3 0
       21 DUPCLOSURE                       R2 K12 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 RETURN                           R2 1
