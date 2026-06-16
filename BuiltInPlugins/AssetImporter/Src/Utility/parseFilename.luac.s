PROTO_0:
        0 LOADK                            R3 K0 ["/"]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 LENGTH                           R3 R1
        5 GETTABLE                         R2 R1 R3
        6 LOADK                            R5 K2 ["."]
        7 NAMECALL                         R3 R2 K1 ["split"]
        9 CALL                             R3 2 1
       10 LENGTH                           R5 R3
       11 SUBK                             R4 R5 K3 [1]
       12 GETTABLE                         R2 R3 R4
       13 GETUPVAL                         R5 0
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+6]
       16 LENGTH                           R5 R3
       17 GETTABLE                         R4 R3 R5
       18 NAMECALL                         R4 R4 K4 ["lower"]
       20 CALL                             R4 1 1
       21 JUMP                             ; [+2]
       22 LENGTH                           R5 R3
       23 GETTABLE                         R4 R3 R5
       24 GETUPVAL                         R5 1
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K5 ["includes"]
       31 MOVE                             R11 R9
       32 MOVE                             R12 R4
       33 CALL                             R10 2 1
       34 JUMPIFNOT                        R10 ; [+3]
       35 MOVE                             R10 R2
       36 MOVE                             R11 R8
       37 RETURN                           R10 2
       38 FORGLOOP                         R5 2 ; [-11]
       40 MOVE                             R5 R2
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K6 ["FileType"]
       44 GETTABLEKS                       R6 R6 K7 ["None"]
       46 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagRemoveCaseSensitiveFileExtensionCheck"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 NEWTABLE                         R5 0 6
       34 LOADK                            R6 K12 ["bmp"]
       35 LOADK                            R7 K13 ["gif"]
       36 LOADK                            R8 K14 ["jpeg"]
       37 LOADK                            R9 K15 ["jpg"]
       38 LOADK                            R10 K16 ["png"]
       39 LOADK                            R11 K17 ["tga"]
       40 SETLIST                          R5 R6 6 [1]
       42 SETTABLEKS                       R5 R4 K18 ["Image"]
       44 NEWTABLE                         R5 0 4
       46 LOADK                            R6 K19 ["fbx"]
       47 LOADK                            R7 K20 ["obj"]
       48 LOADK                            R8 K21 ["gltf"]
       49 LOADK                            R9 K22 ["glb"]
       50 SETLIST                          R5 R6 4 [1]
       52 SETTABLEKS                       R5 R4 K23 ["Scene"]
       54 NEWTABLE                         R5 0 4
       56 LOADK                            R6 K24 ["ogg"]
       57 LOADK                            R7 K25 ["mp3"]
       58 LOADK                            R8 K26 ["wav"]
       59 LOADK                            R9 K27 ["flac"]
       60 SETLIST                          R5 R6 4 [1]
       62 SETTABLEKS                       R5 R4 K28 ["Audio"]
       64 NEWTABLE                         R5 0 2
       66 LOADK                            R6 K29 ["mp4"]
       67 LOADK                            R7 K30 ["mov"]
       68 SETLIST                          R5 R6 2 [1]
       70 SETTABLEKS                       R5 R4 K31 ["Video"]
       72 DUPCLOSURE                       R5 K32 [PROTO_0]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 RETURN                           R5 1
