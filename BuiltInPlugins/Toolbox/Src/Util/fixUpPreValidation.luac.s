PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 1
        3 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        5 MOVE                             R3 R1
        6 MOVE                             R4 R0
        7 GETIMPORT                        R2 K3 [table.insert]
        9 CALL                             R2 2 0
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R7 R6 K4 ["Parent"]
       16 JUMPIFEQKNIL                     R7 ; [+27]
       18 LOADK                            R9 K5 ["Motor6D"]
       19 NAMECALL                         R7 R6 K6 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIF                           R7 ; [+17]
       23 GETTABLEKS                       R7 R6 K7 ["Name"]
       25 JUMPIFEQKS                       R7 K8 ["OriginalSize"] ; [+14]
       27 GETTABLEKS                       R7 R6 K7 ["Name"]
       29 JUMPIFEQKS                       R7 K9 ["OriginalPosition"] ; [+10]
       31 LOADK                            R9 K10 ["Weld"]
       32 NAMECALL                         R7 R6 K6 ["IsA"]
       34 CALL                             R7 2 1
       35 JUMPIFNOT                        R7 ; [+8]
       36 GETTABLEKS                       R7 R6 K7 ["Name"]
       38 JUMPIFNOTEQKS                    R7 K11 ["AccessoryWeld"] ; [+5]
       40 NAMECALL                         R7 R6 K12 ["Destroy"]
       42 CALL                             R7 1 0
       43 JUMP                             ; [+72]
       44 LOADK                            R9 K13 ["BasePart"]
       45 NAMECALL                         R7 R6 K6 ["IsA"]
       47 CALL                             R7 2 1
       48 JUMPIFNOT                        R7 ; [+6]
       49 LOADK                            R7 K14 [{0, 0, 0}]
       50 SETTABLEKS                       R7 R6 K15 ["Velocity"]
       52 LOADK                            R7 K14 [{0, 0, 0}]
       53 SETTABLEKS                       R7 R6 K16 ["RotVelocity"]
       55 GETTABLEKS                       R8 R6 K4 ["Parent"]
       57 JUMPIFNOT                        R8 ; [+7]
       58 GETTABLEKS                       R7 R6 K4 ["Parent"]
       60 LOADK                            R9 K17 ["Accessory"]
       61 NAMECALL                         R7 R7 K6 ["IsA"]
       63 CALL                             R7 2 1
       64 JUMP                             ; [+1]
       65 LOADB                            R7 0
       66 LOADK                            R10 K18 ["MeshPart"]
       67 NAMECALL                         R8 R6 K6 ["IsA"]
       69 CALL                             R8 2 1
       70 JUMPIFNOT                        R8 ; [+16]
       71 JUMPIF                           R7 ; [+15]
       72 GETTABLEKS                       R8 R6 K19 ["TextureID"]
       74 JUMPIFNOTEQKS                    R8 K20 [""] ; [+12]
       76 LOADK                            R10 K21 ["SurfaceAppearance"]
       77 NAMECALL                         R8 R6 K22 ["FindFirstChildWhichIsA"]
       79 CALL                             R8 2 1
       80 JUMPIF                           R8 ; [+6]
       81 GETIMPORT                        R8 K25 [Instance.new]
       83 LOADK                            R9 K21 ["SurfaceAppearance"]
       84 CALL                             R8 1 1
       85 SETTABLEKS                       R6 R8 K4 ["Parent"]
       87 GETUPVAL                         R8 0
       88 CALL                             R8 0 1
       89 JUMPIFNOT                        R8 ; [+26]
       90 LOADK                            R10 K18 ["MeshPart"]
       91 NAMECALL                         R8 R6 K6 ["IsA"]
       93 CALL                             R8 2 1
       94 JUMPIF                           R8 ; [+5]
       95 LOADK                            R10 K26 ["Part"]
       96 NAMECALL                         R8 R6 K6 ["IsA"]
       98 CALL                             R8 2 1
       99 JUMPIFNOT                        R8 ; [+16]
      100 GETTABLEKS                       R8 R6 K7 ["Name"]
      102 JUMPIFNOTEQKS                    R8 K27 ["Handle"] ; [+13]
      104 JUMPIFNOT                        R7 ; [+11]
      105 NAMECALL                         R8 R6 K28 ["GetAttributes"]
      107 CALL                             R8 1 3
      108 FORGPREP                         R8
      109 MOVE                             R15 R11
      110 LOADNIL                          R16
      111 NAMECALL                         R13 R6 K29 ["SetAttribute"]
      113 CALL                             R13 3 0
      114 FORGLOOP                         R8 1 ; [-6]
      116 FORGLOOP                         R2 2 ; [-103]
      118 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagRemoveAttributesForAccessoryParts"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
