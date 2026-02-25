PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["MeshName"]
        8 GETTABLE                         R7 R1 R8
        9 JUMPIF                           R7 ; [+5]
       10 GETTABLEKS                       R7 R6 K0 ["MeshName"]
       12 NEWTABLE                         R8 0 0
       14 SETTABLE                         R8 R1 R7
       15 GETTABLEKS                       R8 R6 K0 ["MeshName"]
       17 GETTABLE                         R7 R1 R8
       18 GETTABLEKS                       R8 R6 K1 ["Index"]
       20 LOADN                            R9 1
       21 SETTABLE                         R9 R7 R8
       22 FORGLOOP                         R2 2 ; [-17]
       24 RETURN                           R1 1

PROTO_1:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIF                           R3 ; [+2]
        2 LOADB                            R4 1
        3 RETURN                           R4 1
        4 LOADB                            R4 1
        5 GETTABLE                         R5 R3 R2
        6 JUMPIFEQKNIL                     R5 ; [+7]
        8 GETTABLE                         R5 R3 R2
        9 LOADN                            R6 1
       10 JUMPIFLT                         R5 R6 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 RETURN                           R4 1

PROTO_2:
        0 DIV                              R6 R3 R4
        1 SUBRK                            R5 R0 K6 [NULL]
        2 GETTABLE                         R6 R0 R1
        3 JUMPIF                           R6 ; [+3]
        4 NEWTABLE                         R6 0 0
        6 SETTABLE                         R6 R0 R1
        7 GETTABLE                         R7 R0 R1
        8 GETTABLE                         R6 R7 R2
        9 JUMPIF                           R6 ; [+3]
       10 GETTABLE                         R6 R0 R1
       11 LOADN                            R7 0
       12 SETTABLE                         R7 R6 R2
       13 GETTABLE                         R7 R0 R1
       14 GETTABLE                         R6 R7 R2
       15 GETTABLE                         R7 R0 R1
       16 LOADN                            R12 0
       17 LOADN                            R13 1
       18 FASTCALL3                        MATH_CLAMP R5 R12 R13
       20 MOVE                             R11 R5
       21 GETIMPORT                        R10 K3 [math.clamp]
       23 CALL                             R10 3 1
       24 FASTCALL2                        MATH_MAX R6 R10 ; [+4]
       26 MOVE                             R9 R6
       27 GETIMPORT                        R8 K5 [math.max]
       29 CALL                             R8 2 1
       30 SETTABLE                         R8 R7 R2
       31 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R5 R0 K0 ["VertexData"]
        2 GETTABLEKS                       R6 R0 K1 ["TriangleIndexData"]
        4 GETTABLEKS                       R7 R0 K2 ["VertexTriangleIndexData"]
        6 GETTABLEKS                       R10 R4 K3 ["MeshName"]
        8 GETTABLE                         R9 R5 R10
        9 GETTABLEKS                       R10 R4 K4 ["Index"]
       11 GETTABLE                         R8 R9 R10
       12 GETTABLEKS                       R11 R4 K3 ["MeshName"]
       14 GETTABLE                         R10 R7 R11
       15 GETTABLEKS                       R11 R4 K4 ["Index"]
       17 GETTABLE                         R9 R10 R11
       18 MOVE                             R10 R9
       19 LOADNIL                          R11
       20 LOADNIL                          R12
       21 FORGPREP                         R10
       22 GETTABLEKS                       R17 R4 K3 ["MeshName"]
       24 GETTABLE                         R16 R6 R17
       25 GETTABLE                         R15 R16 R14
       26 MOVE                             R16 R15
       27 LOADNIL                          R17
       28 LOADNIL                          R18
       29 FORGPREP                         R16
       30 GETTABLEKS                       R21 R4 K4 ["Index"]
       32 JUMPIFEQ                         R20 R21 ; [+47]
       34 GETTABLEKS                       R23 R4 K3 ["MeshName"]
       36 GETTABLE                         R22 R5 R23
       37 GETTABLE                         R21 R22 R20
       38 JUMPIFEQKNIL                     R21 ; [+41]
       40 SUB                              R23 R21 R8
       41 GETTABLEKS                       R22 R23 K5 ["Magnitude"]
       43 GETTABLEKS                       R24 R4 K6 ["Distance"]
       45 ADD                              R23 R24 R22
       46 JUMPIFNOTLT                      R23 R3 ; [+33]
       48 GETTABLEKS                       R24 R4 K3 ["MeshName"]
       50 GETTABLE                         R25 R2 R24
       51 JUMPIF                           R25 ; [+2]
       52 LOADB                            R23 1
       53 JUMP                             ; [+10]
       54 LOADB                            R23 1
       55 GETTABLE                         R26 R25 R20
       56 JUMPIFEQKNIL                     R26 ; [+7]
       58 GETTABLE                         R26 R25 R20
       59 LOADN                            R27 1
       60 JUMPIFLT                         R26 R27 ; [+2]
       62 LOADB                            R23 0 +1
       63 LOADB                            R23 1
       64 JUMPIFNOT                        R23 ; [+15]
       65 DUPTABLE                         R25 K7 [{"Index", "MeshName", "Distance"}]
       66 SETTABLEKS                       R20 R25 K4 ["Index"]
       68 GETTABLEKS                       R26 R4 K3 ["MeshName"]
       70 SETTABLEKS                       R26 R25 K3 ["MeshName"]
       72 GETTABLEKS                       R27 R4 K6 ["Distance"]
       74 ADD                              R26 R27 R22
       75 SETTABLEKS                       R26 R25 K6 ["Distance"]
       77 NAMECALL                         R23 R1 K8 ["pushRight"]
       79 CALL                             R23 2 0
       80 FORGLOOP                         R16 2 ; [-51]
       82 FORGLOOP                         R10 2 ; [-61]
       84 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R5 R0 K0 ["SeamData"]
        2 GETTABLEKS                       R7 R4 K1 ["MeshName"]
        4 GETTABLE                         R6 R5 R7
        5 JUMPIFNOT                        R6 ; [+6]
        6 GETTABLEKS                       R8 R4 K1 ["MeshName"]
        8 GETTABLE                         R7 R5 R8
        9 GETTABLEKS                       R8 R4 K2 ["Index"]
       11 GETTABLE                         R6 R7 R8
       12 JUMPIFNOT                        R6 ; [+45]
       13 MOVE                             R7 R6
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 FORGPREP                         R7
       17 GETTABLEKS                       R12 R4 K3 ["Distance"]
       19 JUMPIFNOTLT                      R12 R3 ; [+36]
       21 GETTABLEKS                       R13 R11 K1 ["MeshName"]
       23 GETTABLEKS                       R14 R11 K2 ["Index"]
       25 GETTABLE                         R15 R2 R13
       26 JUMPIF                           R15 ; [+2]
       27 LOADB                            R12 1
       28 JUMP                             ; [+10]
       29 LOADB                            R12 1
       30 GETTABLE                         R16 R15 R14
       31 JUMPIFEQKNIL                     R16 ; [+7]
       33 GETTABLE                         R16 R15 R14
       34 LOADN                            R17 1
       35 JUMPIFLT                         R16 R17 ; [+2]
       37 LOADB                            R12 0 +1
       38 LOADB                            R12 1
       39 JUMPIFNOT                        R12 ; [+16]
       40 DUPTABLE                         R14 K4 [{"Index", "MeshName", "Distance"}]
       41 GETTABLEKS                       R15 R11 K2 ["Index"]
       43 SETTABLEKS                       R15 R14 K2 ["Index"]
       45 GETTABLEKS                       R15 R11 K1 ["MeshName"]
       47 SETTABLEKS                       R15 R14 K1 ["MeshName"]
       49 GETTABLEKS                       R15 R4 K3 ["Distance"]
       51 SETTABLEKS                       R15 R14 K3 ["Distance"]
       53 NAMECALL                         R12 R1 K5 ["pushRight"]
       55 CALL                             R12 2 0
       56 FORGLOOP                         R7 2 ; [-40]
       58 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 CALL                             R4 0 1
        4 MOVE                             R5 R2
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 DUPTABLE                         R10 K4 [{"MeshName", "Index", "Distance"}]
        9 GETTABLEKS                       R11 R9 K1 ["MeshName"]
       11 SETTABLEKS                       R11 R10 K1 ["MeshName"]
       13 GETTABLEKS                       R11 R9 K2 ["Index"]
       15 SETTABLEKS                       R11 R10 K2 ["Index"]
       17 LOADN                            R11 0
       18 SETTABLEKS                       R11 R10 K3 ["Distance"]
       20 GETUPVAL                         R11 1
       21 MOVE                             R12 R0
       22 MOVE                             R13 R4
       23 MOVE                             R14 R1
       24 MOVE                             R15 R3
       25 MOVE                             R16 R10
       26 CALL                             R11 5 0
       27 GETUPVAL                         R11 2
       28 MOVE                             R12 R0
       29 MOVE                             R13 R4
       30 MOVE                             R14 R1
       31 MOVE                             R15 R3
       32 MOVE                             R16 R10
       33 CALL                             R11 5 0
       34 FORGLOOP                         R5 2 ; [-27]
       36 RETURN                           R4 1

PROTO_6:
        0 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R0
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 MOVE                             R9 R3
       11 CALL                             R5 4 1
       12 LENGTH                           R6 R5
       13 LOADN                            R7 0
       14 JUMPIFNOTLT                      R7 R6 ; [+73]
       16 NAMECALL                         R6 R5 K1 ["popLeft"]
       18 CALL                             R6 1 1
       19 GETTABLEKS                       R8 R6 K2 ["MeshName"]
       21 GETTABLEKS                       R9 R6 K3 ["Index"]
       23 GETTABLE                         R10 R1 R8
       24 JUMPIF                           R10 ; [+2]
       25 LOADB                            R7 1
       26 JUMP                             ; [+10]
       27 LOADB                            R7 1
       28 GETTABLE                         R11 R10 R9
       29 JUMPIFEQKNIL                     R11 ; [+7]
       31 GETTABLE                         R11 R10 R9
       32 LOADN                            R12 1
       33 JUMPIFLT                         R11 R12 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 JUMPIFNOT                        R7 ; [+14]
       38 GETTABLEKS                       R7 R6 K4 ["Distance"]
       40 JUMPIFNOTLT                      R7 R3 ; [+14]
       42 GETUPVAL                         R8 2
       43 MOVE                             R9 R1
       44 GETTABLEKS                       R10 R6 K2 ["MeshName"]
       46 GETTABLEKS                       R11 R6 K3 ["Index"]
       48 MOVE                             R12 R7
       49 MOVE                             R13 R3
       50 CALL                             R8 5 0
       51 JUMP                             ; [+3]
       52 LOADN                            R7 0
       53 SETTABLEKS                       R7 R6 K4 ["Distance"]
       55 GETTABLEKS                       R8 R6 K2 ["MeshName"]
       57 GETTABLE                         R7 R4 R8
       58 JUMPIF                           R7 ; [+5]
       59 NEWTABLE                         R7 0 0
       61 GETTABLEKS                       R8 R6 K2 ["MeshName"]
       63 SETTABLE                         R7 R4 R8
       64 GETTABLEKS                       R9 R6 K3 ["Index"]
       66 GETTABLE                         R8 R7 R9
       67 JUMPIFNOTEQKNIL                  R8 ; [+19]
       69 GETTABLEKS                       R8 R6 K3 ["Index"]
       71 LOADB                            R9 1
       72 SETTABLE                         R9 R7 R8
       73 GETUPVAL                         R8 3
       74 MOVE                             R9 R0
       75 MOVE                             R10 R5
       76 MOVE                             R11 R1
       77 MOVE                             R12 R3
       78 MOVE                             R13 R6
       79 CALL                             R8 5 0
       80 GETUPVAL                         R8 4
       81 MOVE                             R9 R0
       82 MOVE                             R10 R5
       83 MOVE                             R11 R1
       84 MOVE                             R12 R3
       85 MOVE                             R13 R6
       86 CALL                             R8 5 0
       87 JUMPBACK                         ; [-76]
       88 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R3
        6 MOVE                             R7 R1
        7 MOVE                             R8 R2
        8 CALL                             R4 4 0
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R4 K8 ["deepCopy"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K7 ["Util"]
       23 GETTABLEKS                       R4 R5 K9 ["Queue"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K10 [PROTO_0]
       27 DUPCLOSURE                       R5 K11 [PROTO_1]
       28 DUPCLOSURE                       R6 K12 [PROTO_2]
       29 DUPCLOSURE                       R7 K13 [PROTO_3]
       30 DUPCLOSURE                       R8 K14 [PROTO_4]
       31 DUPCLOSURE                       R9 K15 [PROTO_5]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R8
       35 DUPCLOSURE                       R10 K16 [PROTO_6]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R9
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R8
       41 DUPCLOSURE                       R11 K17 [PROTO_7]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R10
       44 RETURN                           R11 1
