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
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R5 ; [+14]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K5 ["includes"]
       30 GETUPVAL                         R6 3
       31 MOVE                             R7 R4
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+7]
       34 MOVE                             R5 R2
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K6 ["FileType"]
       38 GETTABLEKS                       R6 R6 K7 ["Text"]
       40 RETURN                           R5 2
       41 GETUPVAL                         R5 5
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 FORGPREP                         R5
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K5 ["includes"]
       48 MOVE                             R11 R9
       49 MOVE                             R12 R4
       50 CALL                             R10 2 1
       51 JUMPIFNOT                        R10 ; [+3]
       52 MOVE                             R10 R2
       53 MOVE                             R11 R8
       54 RETURN                           R10 2
       55 FORGLOOP                         R5 2 ; [-11]
       57 MOVE                             R5 R2
       58 GETUPVAL                         R6 4
       59 GETTABLEKS                       R6 R6 K6 ["FileType"]
       61 GETTABLEKS                       R6 R6 K8 ["None"]
       63 RETURN                           R5 2

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
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Flags"]
       36 GETTABLEKS                       R5 R5 K12 ["getFFlagAssetImporterTextDocumentImport"]
       38 CALL                             R4 1 1
       39 NEWTABLE                         R5 4 0
       41 NEWTABLE                         R6 0 6
       43 LOADK                            R7 K13 ["bmp"]
       44 LOADK                            R8 K14 ["gif"]
       45 LOADK                            R9 K15 ["jpeg"]
       46 LOADK                            R10 K16 ["jpg"]
       47 LOADK                            R11 K17 ["png"]
       48 LOADK                            R12 K18 ["tga"]
       49 SETLIST                          R6 R7 6 [1]
       51 SETTABLEKS                       R6 R5 K19 ["Image"]
       53 NEWTABLE                         R6 0 4
       55 LOADK                            R7 K20 ["fbx"]
       56 LOADK                            R8 K21 ["obj"]
       57 LOADK                            R9 K22 ["gltf"]
       58 LOADK                            R10 K23 ["glb"]
       59 SETLIST                          R6 R7 4 [1]
       61 SETTABLEKS                       R6 R5 K24 ["Scene"]
       63 NEWTABLE                         R6 0 4
       65 LOADK                            R7 K25 ["ogg"]
       66 LOADK                            R8 K26 ["mp3"]
       67 LOADK                            R9 K27 ["wav"]
       68 LOADK                            R10 K28 ["flac"]
       69 SETLIST                          R6 R7 4 [1]
       71 SETTABLEKS                       R6 R5 K29 ["Audio"]
       73 NEWTABLE                         R6 0 2
       75 LOADK                            R7 K30 ["mp4"]
       76 LOADK                            R8 K31 ["mov"]
       77 SETLIST                          R6 R7 2 [1]
       79 SETTABLEKS                       R6 R5 K32 ["Video"]
       81 NEWTABLE                         R6 0 2
       83 LOADK                            R7 K33 ["md"]
       84 LOADK                            R8 K34 ["txt"]
       85 SETLIST                          R6 R7 2 [1]
       87 DUPCLOSURE                       R7 K35 [PROTO_0]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R5
       94 RETURN                           R7 1
