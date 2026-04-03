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
       13 LENGTH                           R5 R3
       14 GETTABLE                         R4 R3 R5
       15 GETUPVAL                         R5 0
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R10 R11 K4 ["includes"]
       22 MOVE                             R11 R9
       23 MOVE                             R12 R4
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+3]
       26 MOVE                             R10 R2
       27 MOVE                             R11 R8
       28 RETURN                           R10 2
       29 FORGLOOP                         R5 2 ; [-11]
       31 MOVE                             R5 R2
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R7 R8 K5 ["FileType"]
       35 GETTABLEKS                       R6 R7 K6 ["None"]
       37 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 NEWTABLE                         R4 0 6
       25 LOADK                            R5 K10 ["bmp"]
       26 LOADK                            R6 K11 ["gif"]
       27 LOADK                            R7 K12 ["jpeg"]
       28 LOADK                            R8 K13 ["jpg"]
       29 LOADK                            R9 K14 ["png"]
       30 LOADK                            R10 K15 ["tga"]
       31 SETLIST                          R4 R5 6 [1]
       33 SETTABLEKS                       R4 R3 K16 ["Image"]
       35 NEWTABLE                         R4 0 4
       37 LOADK                            R5 K17 ["fbx"]
       38 LOADK                            R6 K18 ["obj"]
       39 LOADK                            R7 K19 ["gltf"]
       40 LOADK                            R8 K20 ["glb"]
       41 SETLIST                          R4 R5 4 [1]
       43 SETTABLEKS                       R4 R3 K21 ["Scene"]
       45 NEWTABLE                         R4 0 4
       47 LOADK                            R5 K22 ["ogg"]
       48 LOADK                            R6 K23 ["mp3"]
       49 LOADK                            R7 K24 ["wav"]
       50 LOADK                            R8 K25 ["flac"]
       51 SETLIST                          R4 R5 4 [1]
       53 SETTABLEKS                       R4 R3 K26 ["Audio"]
       55 NEWTABLE                         R4 0 2
       57 LOADK                            R5 K27 ["mp4"]
       58 LOADK                            R6 K28 ["mov"]
       59 SETLIST                          R4 R5 2 [1]
       61 SETTABLEKS                       R4 R3 K29 ["Video"]
       63 DUPCLOSURE                       R4 K30 [PROTO_0]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R2
       67 RETURN                           R4 1
