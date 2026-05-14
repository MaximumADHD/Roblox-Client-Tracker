PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 1
        3 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        5 MOVE                             R3 R1
        6 MOVE                             R4 R0
        7 GETIMPORT                        R2 K3 [table.insert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 0
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["SplitHrdInUpload"]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 0
       18 MOVE                             R2 R1
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETTABLEKS                       R7 R6 K5 ["Parent"]
       24 JUMPIFEQKNIL                     R7 ; [+40]
       26 LOADK                            R9 K6 ["Motor6D"]
       27 NAMECALL                         R7 R6 K7 ["IsA"]
       29 CALL                             R7 2 1
       30 JUMPIF                           R7 ; [+30]
       31 GETTABLEKS                       R7 R6 K8 ["Name"]
       33 JUMPIFEQKS                       R7 K9 ["OriginalSize"] ; [+27]
       35 GETTABLEKS                       R7 R6 K8 ["Name"]
       37 JUMPIFEQKS                       R7 K10 ["OriginalPosition"] ; [+23]
       39 LOADK                            R9 K11 ["Weld"]
       40 NAMECALL                         R7 R6 K7 ["IsA"]
       42 CALL                             R7 2 1
       43 JUMPIFNOT                        R7 ; [+4]
       44 GETTABLEKS                       R7 R6 K8 ["Name"]
       46 JUMPIFEQKS                       R7 K12 ["AccessoryWeld"] ; [+14]
       48 GETUPVAL                         R7 0
       49 CALL                             R7 0 1
       50 JUMPIFNOT                        R7 ; [+14]
       51 LOADK                            R9 K13 ["Constraint"]
       52 NAMECALL                         R7 R6 K7 ["IsA"]
       54 CALL                             R7 2 1
       55 JUMPIF                           R7 ; [+5]
       56 LOADK                            R9 K14 ["NoCollisionConstraint"]
       57 NAMECALL                         R7 R6 K15 ["isA"]
       59 CALL                             R7 2 1
       60 JUMPIFNOT                        R7 ; [+4]
       61 NAMECALL                         R7 R6 K16 ["Destroy"]
       63 CALL                             R7 1 0
       64 JUMP                             ; [+72]
       65 LOADK                            R9 K17 ["BasePart"]
       66 NAMECALL                         R7 R6 K7 ["IsA"]
       68 CALL                             R7 2 1
       69 JUMPIFNOT                        R7 ; [+6]
       70 LOADK                            R7 K18 [{0, 0, 0}]
       71 SETTABLEKS                       R7 R6 K19 ["Velocity"]
       73 LOADK                            R7 K18 [{0, 0, 0}]
       74 SETTABLEKS                       R7 R6 K20 ["RotVelocity"]
       76 GETTABLEKS                       R8 R6 K5 ["Parent"]
       78 JUMPIFNOT                        R8 ; [+7]
       79 GETTABLEKS                       R7 R6 K5 ["Parent"]
       81 LOADK                            R9 K21 ["Accessory"]
       82 NAMECALL                         R7 R7 K7 ["IsA"]
       84 CALL                             R7 2 1
       85 JUMP                             ; [+1]
       86 LOADB                            R7 0
       87 LOADK                            R10 K22 ["MeshPart"]
       88 NAMECALL                         R8 R6 K7 ["IsA"]
       90 CALL                             R8 2 1
       91 JUMPIFNOT                        R8 ; [+16]
       92 JUMPIF                           R7 ; [+15]
       93 GETTABLEKS                       R8 R6 K23 ["TextureID"]
       95 JUMPIFNOTEQKS                    R8 K24 [""] ; [+12]
       97 LOADK                            R10 K25 ["SurfaceAppearance"]
       98 NAMECALL                         R8 R6 K26 ["FindFirstChildWhichIsA"]
      100 CALL                             R8 2 1
      101 JUMPIF                           R8 ; [+6]
      102 GETIMPORT                        R8 K29 [Instance.new]
      104 LOADK                            R9 K25 ["SurfaceAppearance"]
      105 CALL                             R8 1 1
      106 SETTABLEKS                       R6 R8 K5 ["Parent"]
      108 GETUPVAL                         R8 2
      109 CALL                             R8 0 1
      110 JUMPIFNOT                        R8 ; [+26]
      111 LOADK                            R10 K22 ["MeshPart"]
      112 NAMECALL                         R8 R6 K7 ["IsA"]
      114 CALL                             R8 2 1
      115 JUMPIF                           R8 ; [+5]
      116 LOADK                            R10 K30 ["Part"]
      117 NAMECALL                         R8 R6 K7 ["IsA"]
      119 CALL                             R8 2 1
      120 JUMPIFNOT                        R8 ; [+16]
      121 GETTABLEKS                       R8 R6 K8 ["Name"]
      123 JUMPIFNOTEQKS                    R8 K31 ["Handle"] ; [+13]
      125 JUMPIFNOT                        R7 ; [+11]
      126 NAMECALL                         R8 R6 K32 ["GetAttributes"]
      128 CALL                             R8 1 3
      129 FORGPREP                         R8
      130 MOVE                             R15 R11
      131 LOADNIL                          R16
      132 NAMECALL                         R13 R6 K33 ["SetAttribute"]
      134 CALL                             R13 3 0
      135 FORGLOOP                         R8 1 ; [-6]
      137 FORGLOOP                         R2 2 ; [-116]
      139 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["UGCValidation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R4 K9 ["Flags"]
       20 GETTABLEKS                       R4 R4 K10 ["getFFlagRemoveAttributesForAccessoryParts"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Flags"]
       29 GETTABLEKS                       R5 R5 K11 ["getEngineFeatureEngineSplitHumanoidRigDescriptionInUpload"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K12 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
