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
       42 CALL                             R5 0 1
       43 JUMPIFNOT                        R5 ; [+14]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K5 ["includes"]
       47 GETUPVAL                         R6 6
       48 MOVE                             R7 R4
       49 CALL                             R5 2 1
       50 JUMPIFNOT                        R5 ; [+7]
       51 MOVE                             R5 R2
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R6 R6 K6 ["FileType"]
       55 GETTABLEKS                       R6 R6 K8 ["AnimatedImage"]
       57 RETURN                           R5 2
       58 GETUPVAL                         R5 7
       59 LOADNIL                          R6
       60 LOADNIL                          R7
       61 FORGPREP                         R5
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R10 R10 K5 ["includes"]
       65 MOVE                             R11 R9
       66 MOVE                             R12 R4
       67 CALL                             R10 2 1
       68 JUMPIFNOT                        R10 ; [+3]
       69 MOVE                             R10 R2
       70 MOVE                             R11 R8
       71 RETURN                           R10 2
       72 FORGLOOP                         R5 2 ; [-11]
       74 MOVE                             R5 R2
       75 GETUPVAL                         R6 4
       76 GETTABLEKS                       R6 R6 K6 ["FileType"]
       78 GETTABLEKS                       R6 R6 K9 ["None"]
       80 RETURN                           R5 2

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
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Flags"]
       45 GETTABLEKS                       R6 R6 K13 ["getEFAssetImportSupportAnimatedImages"]
       47 CALL                             R5 1 1
       48 NEWTABLE                         R6 4 0
       50 NEWTABLE                         R7 0 6
       52 LOADK                            R8 K14 ["bmp"]
       53 LOADK                            R9 K15 ["gif"]
       54 LOADK                            R10 K16 ["jpeg"]
       55 LOADK                            R11 K17 ["jpg"]
       56 LOADK                            R12 K18 ["png"]
       57 LOADK                            R13 K19 ["tga"]
       58 SETLIST                          R7 R8 6 [1]
       60 SETTABLEKS                       R7 R6 K20 ["Image"]
       62 NEWTABLE                         R7 0 4
       64 LOADK                            R8 K21 ["fbx"]
       65 LOADK                            R9 K22 ["obj"]
       66 LOADK                            R10 K23 ["gltf"]
       67 LOADK                            R11 K24 ["glb"]
       68 SETLIST                          R7 R8 4 [1]
       70 SETTABLEKS                       R7 R6 K25 ["Scene"]
       72 NEWTABLE                         R7 0 4
       74 LOADK                            R8 K26 ["ogg"]
       75 LOADK                            R9 K27 ["mp3"]
       76 LOADK                            R10 K28 ["wav"]
       77 LOADK                            R11 K29 ["flac"]
       78 SETLIST                          R7 R8 4 [1]
       80 SETTABLEKS                       R7 R6 K30 ["Audio"]
       82 NEWTABLE                         R7 0 2
       84 LOADK                            R8 K31 ["mp4"]
       85 LOADK                            R9 K32 ["mov"]
       86 SETLIST                          R7 R8 2 [1]
       88 SETTABLEKS                       R7 R6 K33 ["Video"]
       90 NEWTABLE                         R7 0 2
       92 LOADK                            R8 K34 ["md"]
       93 LOADK                            R9 K35 ["txt"]
       94 SETLIST                          R7 R8 2 [1]
       96 NEWTABLE                         R8 0 2
       98 LOADK                            R9 K36 ["aseprite"]
       99 LOADK                            R10 K37 ["ase"]
      100 SETLIST                          R8 R9 2 [1]
      102 DUPCLOSURE                       R9 K38 [PROTO_0]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R6
      111 RETURN                           R9 1
