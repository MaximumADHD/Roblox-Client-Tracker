PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["Clone"]
        2 CALL                             R1 1 1
        3 MOVE                             R0 R1
        4 NAMECALL                         R1 R0 K1 ["GetDescendants"]
        6 CALL                             R1 1 1
        7 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R0
       11 GETIMPORT                        R2 K4 [table.insert]
       13 CALL                             R2 2 0
       14 MOVE                             R2 R1
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 GETTABLEKS                       R7 R6 K5 ["Parent"]
       20 JUMPIFEQKNIL                     R7 ; [+27]
       22 LOADK                            R9 K6 ["Motor6D"]
       23 NAMECALL                         R7 R6 K7 ["IsA"]
       25 CALL                             R7 2 1
       26 JUMPIF                           R7 ; [+17]
       27 GETTABLEKS                       R7 R6 K8 ["Name"]
       29 JUMPIFEQKS                       R7 K9 ["OriginalSize"] ; [+14]
       31 GETTABLEKS                       R7 R6 K8 ["Name"]
       33 JUMPIFEQKS                       R7 K10 ["OriginalPosition"] ; [+10]
       35 LOADK                            R9 K11 ["Weld"]
       36 NAMECALL                         R7 R6 K7 ["IsA"]
       38 CALL                             R7 2 1
       39 JUMPIFNOT                        R7 ; [+8]
       40 GETTABLEKS                       R7 R6 K8 ["Name"]
       42 JUMPIFNOTEQKS                    R7 K12 ["AccessoryWeld"] ; [+5]
       44 NAMECALL                         R7 R6 K13 ["Destroy"]
       46 CALL                             R7 1 0
       47 JUMP                             ; [+43]
       48 LOADK                            R9 K14 ["BasePart"]
       49 NAMECALL                         R7 R6 K7 ["IsA"]
       51 CALL                             R7 2 1
       52 JUMPIFNOT                        R7 ; [+6]
       53 LOADK                            R7 K15 [{0, 0, 0}]
       54 SETTABLEKS                       R7 R6 K16 ["Velocity"]
       56 LOADK                            R7 K15 [{0, 0, 0}]
       57 SETTABLEKS                       R7 R6 K17 ["RotVelocity"]
       59 GETTABLEKS                       R8 R6 K5 ["Parent"]
       61 JUMPIFNOT                        R8 ; [+7]
       62 GETTABLEKS                       R7 R6 K5 ["Parent"]
       64 LOADK                            R9 K18 ["Accessory"]
       65 NAMECALL                         R7 R7 K7 ["IsA"]
       67 CALL                             R7 2 1
       68 JUMP                             ; [+1]
       69 LOADB                            R7 0
       70 LOADK                            R10 K19 ["MeshPart"]
       71 NAMECALL                         R8 R6 K7 ["IsA"]
       73 CALL                             R8 2 1
       74 JUMPIFNOT                        R8 ; [+16]
       75 JUMPIF                           R7 ; [+15]
       76 GETTABLEKS                       R8 R6 K20 ["TextureID"]
       78 JUMPIFNOTEQKS                    R8 K21 [""] ; [+12]
       80 LOADK                            R10 K22 ["SurfaceAppearance"]
       81 NAMECALL                         R8 R6 K23 ["FindFirstChildWhichIsA"]
       83 CALL                             R8 2 1
       84 JUMPIF                           R8 ; [+6]
       85 GETIMPORT                        R8 K26 [Instance.new]
       87 LOADK                            R9 K22 ["SurfaceAppearance"]
       88 CALL                             R8 1 1
       89 SETTABLEKS                       R6 R8 K5 ["Parent"]
       91 FORGLOOP                         R2 2 ; [-74]
       93 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
