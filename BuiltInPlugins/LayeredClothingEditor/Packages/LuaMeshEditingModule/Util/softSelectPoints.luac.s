PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R8 R6 K2 ["MeshName"]
        9 GETTABLE                         R7 R1 R8
       10 JUMPIF                           R7 ; [+5]
       11 GETTABLEKS                       R7 R6 K2 ["MeshName"]
       13 NEWTABLE                         R8 0 0
       15 SETTABLE                         R8 R1 R7
       16 GETTABLEKS                       R8 R6 K2 ["MeshName"]
       18 GETTABLE                         R7 R1 R8
       19 GETTABLEKS                       R8 R6 K3 ["Index"]
       21 LOADN                            R9 1
       22 SETTABLE                         R9 R7 R8
       23 FORGLOOP                         R2 2 [inext] ; [-17]
       25 RETURN                           R1 1

PROTO_1:
        0 GETTABLE                         R4 R0 R1
        1 NOT                              R3 R4
        2 JUMPIF                           R3 ; [+12]
        3 LOADB                            R3 1
        4 GETTABLE                         R5 R0 R1
        5 GETTABLE                         R4 R5 R2
        6 JUMPIFEQKNIL                     R4 ; [+8]
        8 GETTABLE                         R5 R0 R1
        9 GETTABLE                         R4 R5 R2
       10 LOADN                            R5 1
       11 JUMPIFLT                         R4 R5 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 RETURN                           R3 1

PROTO_2:
        0 DIV                              R6 R3 R4
        1 SUBRK                            R5 K0 [1] R6
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
       18 GETIMPORT                        R10 K6 [ipairs]
       20 MOVE                             R11 R9
       21 CALL                             R10 1 3
       22 FORGPREP_INEXT                   R10
       23 GETTABLEKS                       R17 R4 K3 ["MeshName"]
       25 GETTABLE                         R16 R6 R17
       26 GETTABLE                         R15 R16 R14
       27 GETIMPORT                        R16 K6 [ipairs]
       29 MOVE                             R17 R15
       30 CALL                             R16 1 3
       31 FORGPREP_INEXT                   R16
       32 GETTABLEKS                       R21 R4 K4 ["Index"]
       34 JUMPIFEQ                         R20 R21 ; [+49]
       36 GETTABLEKS                       R23 R4 K3 ["MeshName"]
       38 GETTABLE                         R22 R5 R23
       39 GETTABLE                         R21 R22 R20
       40 SUB                              R22 R21 R8
       41 GETTABLEKS                       R22 R22 K7 ["Magnitude"]
       43 GETTABLEKS                       R24 R4 K8 ["Distance"]
       45 ADD                              R23 R24 R22
       46 JUMPIFNOTLT                      R23 R3 ; [+37]
       48 GETTABLEKS                       R24 R4 K3 ["MeshName"]
       50 GETTABLE                         R25 R2 R24
       51 NOT                              R23 R25
       52 JUMPIF                           R23 ; [+12]
       53 LOADB                            R23 1
       54 GETTABLE                         R26 R2 R24
       55 GETTABLE                         R25 R26 R20
       56 JUMPIFEQKNIL                     R25 ; [+8]
       58 GETTABLE                         R26 R2 R24
       59 GETTABLE                         R25 R26 R20
       60 LOADN                            R26 1
       61 JUMPIFLT                         R25 R26 ; [+2]
       63 LOADB                            R23 0 +1
       64 LOADB                            R23 1
       65 JUMPIFNOT                        R23 ; [+18]
       66 DUPTABLE                         R25 K9 [{"Index", "MeshName", "Distance"}]
       67 SETTABLEKS                       R20 R25 K4 ["Index"]
       69 GETTABLEKS                       R26 R4 K3 ["MeshName"]
       71 SETTABLEKS                       R26 R25 K3 ["MeshName"]
       73 GETTABLEKS                       R27 R4 K8 ["Distance"]
       75 ADD                              R26 R27 R22
       76 SETTABLEKS                       R26 R25 K8 ["Distance"]
       78 FASTCALL2                        TABLE_INSERT R1 R25 ; [+4]
       80 MOVE                             R24 R1
       81 GETIMPORT                        R23 K12 [table.insert]
       83 CALL                             R23 2 0
       84 FORGLOOP                         R16 2 [inext] ; [-53]
       86 FORGLOOP                         R10 2 [inext] ; [-64]
       88 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R5 R0 K0 ["SeamData"]
        2 GETTABLEKS                       R7 R4 K1 ["MeshName"]
        4 GETTABLE                         R6 R5 R7
        5 JUMPIFNOT                        R6 ; [+6]
        6 GETTABLEKS                       R8 R4 K1 ["MeshName"]
        8 GETTABLE                         R7 R5 R8
        9 GETTABLEKS                       R8 R4 K2 ["Index"]
       11 GETTABLE                         R6 R7 R8
       12 JUMPIFNOT                        R6 ; [+50]
       13 GETIMPORT                        R7 K4 [ipairs]
       15 MOVE                             R8 R6
       16 CALL                             R7 1 3
       17 FORGPREP_INEXT                   R7
       18 GETTABLEKS                       R12 R4 K5 ["Distance"]
       20 JUMPIFNOTLT                      R12 R3 ; [+40]
       22 GETTABLEKS                       R13 R11 K1 ["MeshName"]
       24 GETTABLEKS                       R14 R11 K2 ["Index"]
       26 GETTABLE                         R15 R2 R13
       27 NOT                              R12 R15
       28 JUMPIF                           R12 ; [+12]
       29 LOADB                            R12 1
       30 GETTABLE                         R16 R2 R13
       31 GETTABLE                         R15 R16 R14
       32 JUMPIFEQKNIL                     R15 ; [+8]
       34 GETTABLE                         R16 R2 R13
       35 GETTABLE                         R15 R16 R14
       36 LOADN                            R16 1
       37 JUMPIFLT                         R15 R16 ; [+2]
       39 LOADB                            R12 0 +1
       40 LOADB                            R12 1
       41 JUMPIFNOT                        R12 ; [+19]
       42 DUPTABLE                         R14 K6 [{"Index", "MeshName", "Distance"}]
       43 GETTABLEKS                       R15 R11 K2 ["Index"]
       45 SETTABLEKS                       R15 R14 K2 ["Index"]
       47 GETTABLEKS                       R15 R11 K1 ["MeshName"]
       49 SETTABLEKS                       R15 R14 K1 ["MeshName"]
       51 GETTABLEKS                       R15 R4 K5 ["Distance"]
       53 SETTABLEKS                       R15 R14 K5 ["Distance"]
       55 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       57 MOVE                             R13 R1
       58 GETIMPORT                        R12 K9 [table.insert]
       60 CALL                             R12 2 0
       61 FORGLOOP                         R7 2 [inext] ; [-44]
       63 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R4 0 0
        2 GETIMPORT                        R5 K1 [ipairs]
        4 MOVE                             R6 R2
        5 CALL                             R5 1 3
        6 FORGPREP_INEXT                   R5
        7 DUPTABLE                         R10 K6 [{["MeshName"], ["Index"], ["Distance"] = 0}]
        8 GETTABLEKS                       R11 R9 K2 ["MeshName"]
       10 SETTABLEKS                       R11 R10 K2 ["MeshName"]
       12 GETTABLEKS                       R11 R9 K3 ["Index"]
       14 SETTABLEKS                       R11 R10 K3 ["Index"]
       16 GETUPVAL                         R11 0
       17 MOVE                             R12 R0
       18 MOVE                             R13 R4
       19 MOVE                             R14 R1
       20 MOVE                             R15 R3
       21 MOVE                             R16 R10
       22 CALL                             R11 5 0
       23 GETUPVAL                         R11 1
       24 MOVE                             R12 R0
       25 MOVE                             R13 R4
       26 MOVE                             R14 R1
       27 MOVE                             R15 R3
       28 MOVE                             R16 R10
       29 CALL                             R11 5 0
       30 FORGLOOP                         R5 2 [inext] ; [-24]
       32 RETURN                           R4 1

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
       14 JUMPIFNOTLT                      R7 R6 ; [+83]
       16 GETTABLEN                        R6 R5 1
       17 GETTABLEKS                       R8 R6 K1 ["MeshName"]
       19 GETTABLEKS                       R9 R6 K2 ["Index"]
       21 GETTABLE                         R10 R1 R8
       22 NOT                              R7 R10
       23 JUMPIF                           R7 ; [+12]
       24 LOADB                            R7 1
       25 GETTABLE                         R11 R1 R8
       26 GETTABLE                         R10 R11 R9
       27 JUMPIFEQKNIL                     R10 ; [+8]
       29 GETTABLE                         R11 R1 R8
       30 GETTABLE                         R10 R11 R9
       31 LOADN                            R11 1
       32 JUMPIFLT                         R10 R11 ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 JUMPIFNOT                        R7 ; [+14]
       37 GETTABLEKS                       R7 R6 K3 ["Distance"]
       39 JUMPIFNOTLT                      R7 R3 ; [+14]
       41 GETUPVAL                         R8 2
       42 MOVE                             R9 R1
       43 GETTABLEKS                       R10 R6 K1 ["MeshName"]
       45 GETTABLEKS                       R11 R6 K2 ["Index"]
       47 MOVE                             R12 R7
       48 MOVE                             R13 R3
       49 CALL                             R8 5 0
       50 JUMP                             ; [+3]
       51 LOADN                            R7 0
       52 SETTABLEKS                       R7 R6 K3 ["Distance"]
       54 GETTABLEKS                       R8 R6 K1 ["MeshName"]
       56 GETTABLE                         R7 R4 R8
       57 JUMPIF                           R7 ; [+5]
       58 GETTABLEKS                       R7 R6 K1 ["MeshName"]
       60 NEWTABLE                         R8 0 0
       62 SETTABLE                         R8 R4 R7
       63 GETTABLEKS                       R9 R6 K1 ["MeshName"]
       65 GETTABLE                         R8 R4 R9
       66 GETTABLEKS                       R9 R6 K2 ["Index"]
       68 GETTABLE                         R7 R8 R9
       69 JUMPIFNOTEQKNIL                  R7 ; [+22]
       71 GETTABLEKS                       R8 R6 K1 ["MeshName"]
       73 GETTABLE                         R7 R4 R8
       74 GETTABLEKS                       R8 R6 K2 ["Index"]
       76 LOADB                            R9 1
       77 SETTABLE                         R9 R7 R8
       78 GETUPVAL                         R7 3
       79 MOVE                             R8 R0
       80 MOVE                             R9 R5
       81 MOVE                             R10 R1
       82 MOVE                             R11 R3
       83 MOVE                             R12 R6
       84 CALL                             R7 5 0
       85 GETUPVAL                         R7 4
       86 MOVE                             R8 R0
       87 MOVE                             R9 R5
       88 MOVE                             R10 R1
       89 MOVE                             R11 R3
       90 MOVE                             R12 R6
       91 CALL                             R7 5 0
       92 GETIMPORT                        R7 K6 [table.remove]
       94 MOVE                             R8 R5
       95 LOADN                            R9 1
       96 CALL                             R7 2 0
       97 JUMPBACK                         ; [-86]
       98 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 DUPTABLE                         R3 K4 [{"VertexData", "SeamData", "VertexTriangleIndexData", "TriangleIndexData"}]
        3 NAMECALL                         R4 R0 K5 ["getVertexData"]
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K0 ["VertexData"]
        8 NAMECALL                         R4 R0 K6 ["getSeamData"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K1 ["SeamData"]
       13 NAMECALL                         R4 R0 K7 ["getVertexTriangleIndexData"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K2 ["VertexTriangleIndexData"]
       18 NAMECALL                         R4 R0 K8 ["getTriangleIndexData"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["TriangleIndexData"]
       23 GETUPVAL                         R4 0
       24 MOVE                             R5 R1
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R3
       28 MOVE                             R7 R4
       29 MOVE                             R8 R1
       30 MOVE                             R9 R2
       31 CALL                             R5 4 0
       32 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["deepCopy"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 DUPCLOSURE                       R3 K7 [PROTO_1]
       12 DUPCLOSURE                       R4 K8 [PROTO_2]
       13 DUPCLOSURE                       R5 K9 [PROTO_3]
       14 DUPCLOSURE                       R6 K10 [PROTO_4]
       15 DUPCLOSURE                       R7 K11 [PROTO_5]
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R6
       18 DUPCLOSURE                       R8 K12 [PROTO_6]
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R7
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R6
       24 DUPCLOSURE                       R9 K13 [PROTO_7]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R8
       27 RETURN                           R9 1
