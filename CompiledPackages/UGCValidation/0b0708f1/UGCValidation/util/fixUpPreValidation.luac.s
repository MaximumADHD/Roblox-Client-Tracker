PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["Clone"]
        2 CALL                             R1 1 1
        3 MOVE                             R0 R1
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["fixUploadInstance"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 NAMECALL                         R1 R0 K2 ["GetDescendants"]
       14 CALL                             R1 1 1
       15 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       17 MOVE                             R3 R1
       18 MOVE                             R4 R0
       19 GETIMPORT                        R2 K5 [table.insert]
       21 CALL                             R2 2 0
       22 MOVE                             R2 R1
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETTABLEKS                       R7 R6 K6 ["Parent"]
       28 JUMPIFEQKNIL                     R7 ; [+40]
       30 LOADK                            R9 K7 ["Motor6D"]
       31 NAMECALL                         R7 R6 K8 ["IsA"]
       33 CALL                             R7 2 1
       34 JUMPIF                           R7 ; [+30]
       35 GETTABLEKS                       R7 R6 K9 ["Name"]
       37 JUMPIFEQKS                       R7 K10 ["OriginalSize"] ; [+27]
       39 GETTABLEKS                       R7 R6 K9 ["Name"]
       41 JUMPIFEQKS                       R7 K11 ["OriginalPosition"] ; [+23]
       43 LOADK                            R9 K12 ["Weld"]
       44 NAMECALL                         R7 R6 K8 ["IsA"]
       46 CALL                             R7 2 1
       47 JUMPIFNOT                        R7 ; [+4]
       48 GETTABLEKS                       R7 R6 K9 ["Name"]
       50 JUMPIFEQKS                       R7 K13 ["AccessoryWeld"] ; [+14]
       52 GETUPVAL                         R7 0
       53 CALL                             R7 0 1
       54 JUMPIFNOT                        R7 ; [+14]
       55 LOADK                            R9 K14 ["Constraint"]
       56 NAMECALL                         R7 R6 K8 ["IsA"]
       58 CALL                             R7 2 1
       59 JUMPIF                           R7 ; [+5]
       60 LOADK                            R9 K15 ["NoCollisionConstraint"]
       61 NAMECALL                         R7 R6 K16 ["isA"]
       63 CALL                             R7 2 1
       64 JUMPIFNOT                        R7 ; [+4]
       65 NAMECALL                         R7 R6 K17 ["Destroy"]
       67 CALL                             R7 1 0
       68 JUMP                             ; [+43]
       69 LOADK                            R9 K18 ["BasePart"]
       70 NAMECALL                         R7 R6 K8 ["IsA"]
       72 CALL                             R7 2 1
       73 JUMPIFNOT                        R7 ; [+6]
       74 LOADK                            R7 K19 [{0, 0, 0}]
       75 SETTABLEKS                       R7 R6 K20 ["Velocity"]
       77 LOADK                            R7 K19 [{0, 0, 0}]
       78 SETTABLEKS                       R7 R6 K21 ["RotVelocity"]
       80 GETTABLEKS                       R8 R6 K6 ["Parent"]
       82 JUMPIFNOT                        R8 ; [+7]
       83 GETTABLEKS                       R7 R6 K6 ["Parent"]
       85 LOADK                            R9 K22 ["Accessory"]
       86 NAMECALL                         R7 R7 K8 ["IsA"]
       88 CALL                             R7 2 1
       89 JUMP                             ; [+1]
       90 LOADB                            R7 0
       91 LOADK                            R10 K23 ["MeshPart"]
       92 NAMECALL                         R8 R6 K8 ["IsA"]
       94 CALL                             R8 2 1
       95 JUMPIFNOT                        R8 ; [+16]
       96 JUMPIF                           R7 ; [+15]
       97 GETTABLEKS                       R8 R6 K24 ["TextureID"]
       99 JUMPIFNOTEQKS                    R8 K25 [""] ; [+12]
      101 LOADK                            R10 K26 ["SurfaceAppearance"]
      102 NAMECALL                         R8 R6 K27 ["FindFirstChildWhichIsA"]
      104 CALL                             R8 2 1
      105 JUMPIF                           R8 ; [+6]
      106 GETIMPORT                        R8 K30 [Instance.new]
      108 LOADK                            R9 K26 ["SurfaceAppearance"]
      109 CALL                             R8 1 1
      110 SETTABLEKS                       R6 R8 K6 ["Parent"]
      112 FORGLOOP                         R2 2 ; [-87]
      114 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["flags"]
       11 GETTABLEKS                       R2 R3 K6 ["getEngineFeatureEngineSplitHumanoidRigDescriptionInUpload"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["util"]
       18 GETTABLEKS                       R3 R4 K8 ["SplitHumanoidRigDescriptionForUpload"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
