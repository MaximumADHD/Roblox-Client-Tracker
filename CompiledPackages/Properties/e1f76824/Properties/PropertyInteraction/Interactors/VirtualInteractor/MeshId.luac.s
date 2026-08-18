PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETIMPORT                        R0 K2 [Instance.new]
        4 LOADK                            R1 K3 ["MeshPart"]
        5 CALL                             R0 1 1
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 LOADB                            R0 0
       11 SETUPVAL                         R0 2
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["MeshId"]
        2 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 LOADK                            R3 K2 ["rbxassetid://"]
        7 MOVE                             R4 R1
        8 CONCAT                           R2 R3 R4
        9 RETURN                           R2 1
       10 GETIMPORT                        R2 K5 [string.match]
       12 MOVE                             R3 R0
       13 LOADK                            R4 K6 ["rbxassetid://(%d+)"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+2]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K2 [Content.fromUri]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K3 ["CreateMeshPartAsync"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R2 R0 ; [+5]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R2 1
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K0 ["Destroy"]
       12 CALL                             R2 1 0
       13 LOADNIL                          R2
       14 SETUPVAL                         R2 1
       15 LOADNIL                          R2
       16 SETUPVAL                         R2 0
       17 LOADNIL                          R2
       18 JUMPIFNOT                        R1 ; [+5]
       19 MOVE                             R3 R1
       20 MOVE                             R4 R0
       21 CALL                             R3 1 1
       22 MOVE                             R2 R3
       23 JUMP                             ; [+10]
       24 GETIMPORT                        R3 K2 [pcall]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 CALL                             R3 1 2
       30 JUMPIF                           R3 ; [+2]
       31 LOADNIL                          R2
       32 JUMP                             ; [+1]
       33 MOVE                             R2 R4
       34 JUMPIF                           R2 ; [+2]
       35 LOADNIL                          R3
       36 RETURN                           R3 1
       37 SETUPVAL                         R0 0
       38 SETUPVAL                         R2 1
       39 GETUPVAL                         R3 3
       40 JUMPIF                           R3 ; [+6]
       41 LOADB                            R3 1
       42 SETUPVAL                         R3 3
       43 GETIMPORT                        R3 K5 [task.defer]
       45 GETUPVAL                         R4 4
       46 CALL                             R3 1 0
       47 RETURN                           R2 1

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["GetPivot"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["Size"]
        5 GETTABLEKS                       R4 R1 K1 ["Size"]
        7 GETTABLEKS                       R5 R0 K2 ["TextureID"]
        9 GETTABLEKS                       R6 R0 K3 ["PivotOffset"]
       11 MOVE                             R9 R1
       12 NAMECALL                         R7 R0 K4 ["ApplyMesh"]
       14 CALL                             R7 2 0
       15 SETTABLEKS                       R4 R0 K1 ["Size"]
       17 SETTABLEKS                       R5 R0 K2 ["TextureID"]
       19 GETTABLEKS                       R7 R3 K5 ["X"]
       21 LOADN                            R8 0
       22 JUMPIFNOTLT                      R8 R7 ; [+26]
       24 GETTABLEKS                       R7 R3 K6 ["Y"]
       26 LOADN                            R8 0
       27 JUMPIFNOTLT                      R8 R7 ; [+21]
       29 GETTABLEKS                       R7 R3 K7 ["Z"]
       31 LOADN                            R8 0
       32 JUMPIFNOTLT                      R8 R7 ; [+16]
       34 JUMPIFEQ                         R4 R3 ; [+14]
       36 DIV                              R7 R4 R3
       37 GETIMPORT                        R9 K10 [CFrame.new]
       39 GETTABLEKS                       R11 R6 K11 ["Position"]
       41 MUL                              R10 R11 R7
       42 CALL                             R9 1 1
       43 GETTABLEKS                       R10 R6 K12 ["Rotation"]
       45 MUL                              R8 R9 R10
       46 SETTABLEKS                       R8 R0 K3 ["PivotOffset"]
       48 JUMP                             ; [+2]
       49 SETTABLEKS                       R6 R0 K3 ["PivotOffset"]
       51 MOVE                             R9 R2
       52 NAMECALL                         R7 R0 K13 ["PivotTo"]
       54 CALL                             R7 2 0
       55 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+13]
        2 GETUPVAL                         R5 0
        3 JUMPIF                           R5 ; [+5]
        4 GETIMPORT                        R5 K3 [Instance.new]
        6 LOADK                            R6 K4 ["MeshPart"]
        7 CALL                             R5 1 1
        8 SETUPVAL                         R5 0
        9 GETUPVAL                         R4 0
       10 NAMECALL                         R2 R0 K5 ["ApplyMesh"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 FASTCALL1                        TONUMBER R1 ; [+3]
       15 MOVE                             R4 R1
       16 GETIMPORT                        R3 K7 [tonumber]
       18 CALL                             R3 1 1
       19 JUMPIFNOT                        R3 ; [+4]
       20 LOADK                            R4 K8 ["rbxassetid://"]
       21 MOVE                             R5 R3
       22 CONCAT                           R2 R4 R5
       23 JUMP                             ; [+9]
       24 GETIMPORT                        R4 K11 [string.match]
       26 MOVE                             R5 R1
       27 LOADK                            R6 K12 ["rbxassetid://(%d+)"]
       28 CALL                             R4 2 1
       29 JUMPIF                           R4 ; [+2]
       30 LOADNIL                          R2
       31 JUMP                             ; [+1]
       32 MOVE                             R2 R1
       33 JUMPIF                           R2 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R4 1
       36 JUMPIFNOTEQ                      R4 R2 ; [+5]
       38 GETUPVAL                         R4 2
       39 JUMPIFNOT                        R4 ; [+2]
       40 GETUPVAL                         R3 2
       41 JUMP                             ; [+35]
       42 GETUPVAL                         R4 2
       43 JUMPIFNOT                        R4 ; [+8]
       44 GETUPVAL                         R4 2
       45 NAMECALL                         R4 R4 K13 ["Destroy"]
       47 CALL                             R4 1 0
       48 LOADNIL                          R4
       49 SETUPVAL                         R4 2
       50 LOADNIL                          R4
       51 SETUPVAL                         R4 1
       52 LOADNIL                          R4
       53 GETIMPORT                        R5 K15 [pcall]
       55 NEWCLOSURE                       R6 P0
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R2
       58 CALL                             R5 1 2
       59 JUMPIF                           R5 ; [+2]
       60 LOADNIL                          R4
       61 JUMP                             ; [+1]
       62 MOVE                             R4 R6
       63 JUMPIF                           R4 ; [+2]
       64 LOADNIL                          R3
       65 JUMP                             ; [+11]
       66 SETUPVAL                         R2 1
       67 SETUPVAL                         R4 2
       68 GETUPVAL                         R5 4
       69 JUMPIF                           R5 ; [+6]
       70 LOADB                            R5 1
       71 SETUPVAL                         R5 4
       72 GETIMPORT                        R5 K18 [task.defer]
       74 GETUPVAL                         R6 5
       75 CALL                             R5 1 0
       76 MOVE                             R3 R4
       77 JUMPIF                           R3 ; [+1]
       78 RETURN                           R0 0
       79 GETUPVAL                         R4 6
       80 MOVE                             R5 R0
       81 MOVE                             R6 R3
       82 CALL                             R4 2 0
       83 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 LOADB                            R3 0
       10 LOADNIL                          R4
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          REF R4
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          REF R2
       15 CAPTURE                          REF R1
       16 CAPTURE                          REF R3
       17 DUPCLOSURE                       R7 K4 [PROTO_2]
       18 DUPCLOSURE                       R8 K5 [PROTO_3]
       19 DUPCLOSURE                       R9 K6 [PROTO_5]
       20 CAPTURE                          VAL R0
       21 NEWCLOSURE                       R10 P5
       22 CAPTURE                          REF R1
       23 CAPTURE                          REF R2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          REF R3
       26 CAPTURE                          VAL R6
       27 DUPCLOSURE                       R11 K7 [PROTO_7]
       28 NEWCLOSURE                       R12 P7
       29 CAPTURE                          REF R4
       30 CAPTURE                          REF R1
       31 CAPTURE                          REF R2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          REF R3
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R11
       36 DUPTABLE                         R13 K14 [{"read", "write", "applyMeshWithPreservation", "normalizeMeshId", "createMeshPartFromAsset", "clearCache"}]
       37 SETTABLEKS                       R7 R13 K8 ["read"]
       39 SETTABLEKS                       R12 R13 K9 ["write"]
       41 SETTABLEKS                       R11 R13 K10 ["applyMeshWithPreservation"]
       43 SETTABLEKS                       R8 R13 K11 ["normalizeMeshId"]
       45 SETTABLEKS                       R10 R13 K12 ["createMeshPartFromAsset"]
       47 SETTABLEKS                       R6 R13 K13 ["clearCache"]
       49 CLOSEUPVALS                      R1
       50 RETURN                           R13 1
