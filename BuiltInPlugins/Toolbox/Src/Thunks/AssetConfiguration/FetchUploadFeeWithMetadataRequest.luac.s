PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K0 ["Emissive"]
        8 JUMPIFNOTEQ                      R6 R7 ; [+6]
       10 GETTABLEKS                       R7 R0 K1 ["EmissiveResult"]
       12 JUMPIFNOTEQKB                    R7 TRUE ; [+2]
       14 LOADB                            R1 1
       15 FORGLOOP                         R2 2 ; [-11]
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R4 3
       19 GETUPVAL                         R5 0
       20 MOVE                             R6 R1
       21 CALL                             R4 2 -1
       22 NAMECALL                         R2 R2 K2 ["dispatch"]
       24 CALL                             R2 -1 0
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R4 4
       27 GETUPVAL                         R5 5
       28 GETUPVAL                         R6 6
       29 GETUPVAL                         R7 7
       30 GETUPVAL                         R8 8
       31 CALL                             R4 4 -1
       32 NAMECALL                         R2 R2 K2 ["dispatch"]
       34 CALL                             R2 -1 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLEN                        R1 R2 1
        4 JUMPIF                           R1 ; [+17]
        5 GETUPVAL                         R3 1
        6 NEWTABLE                         R4 0 0
        8 LOADB                            R5 0
        9 CALL                             R3 2 -1
       10 NAMECALL                         R1 R0 K0 ["dispatch"]
       12 CALL                             R1 -1 0
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 4
       16 GETUPVAL                         R6 5
       17 CALL                             R3 3 -1
       18 NAMECALL                         R1 R0 K0 ["dispatch"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 6
       23 GETUPVAL                         R3 0
       24 GETTABLEN                        R2 R3 1
       25 CALL                             R1 1 1
       26 LENGTH                           R2 R1
       27 JUMPIFNOTEQKN                    R2 K1 [0] ; [+18]
       29 GETUPVAL                         R4 1
       30 NEWTABLE                         R5 0 0
       32 LOADB                            R6 0
       33 CALL                             R4 2 -1
       34 NAMECALL                         R2 R0 K0 ["dispatch"]
       36 CALL                             R2 -1 0
       37 GETUPVAL                         R4 2
       38 GETUPVAL                         R5 3
       39 GETUPVAL                         R6 4
       40 GETUPVAL                         R7 5
       41 CALL                             R4 3 -1
       42 NAMECALL                         R2 R0 K0 ["dispatch"]
       44 CALL                             R2 -1 0
       45 RETURN                           R0 0
       46 NEWTABLE                         R2 1 0
       48 MOVE                             R3 R1
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 FORGPREP                         R3
       52 GETUPVAL                         R8 7
       53 GETTABLEKS                       R8 R8 K2 ["Emissive"]
       55 JUMPIFNOTEQ                      R7 R8 ; [+4]
       57 LOADB                            R8 1
       58 SETTABLEKS                       R8 R2 K3 ["isEmissive"]
       60 FORGLOOP                         R3 2 ; [-9]
       62 GETUPVAL                         R3 8
       63 GETUPVAL                         R4 3
       64 GETUPVAL                         R5 4
       65 GETTABLEKS                       R5 R5 K4 ["Name"]
       67 GETUPVAL                         R6 5
       68 CALL                             R3 3 1
       69 NEWCLOSURE                       R5 P0
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          VAL R2
       79 NAMECALL                         R3 R3 K5 ["andThen"]
       81 CALL                             R3 2 0
       82 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R3
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetSpecialAttributes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Networking"]
       22 GETTABLEKS                       R3 R3 K10 ["Requests"]
       24 GETTABLEKS                       R3 R3 K11 ["GetMetadataPermissionsRequest"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Networking"]
       33 GETTABLEKS                       R4 R4 K10 ["Requests"]
       35 GETTABLEKS                       R4 R4 K12 ["GetItemUploadFeeRequest"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K13 ["Util"]
       44 GETTABLEKS                       R5 R5 K14 ["detectSpecialAttributes"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K13 ["Util"]
       53 GETTABLEKS                       R6 R6 K15 ["MetadataType"]
       55 CALL                             R5 1 1
       56 DUPCLOSURE                       R6 K16 [PROTO_2]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 RETURN                           R6 1
