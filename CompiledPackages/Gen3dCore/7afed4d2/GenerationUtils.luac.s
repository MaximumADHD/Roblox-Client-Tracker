PROTO_0:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Size"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 NAMECALL                         R1 R0 K4 ["GetBoundingBox"]
       15 CALL                             R1 1 2
       16 RETURN                           R2 1
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["Z"]
        6 FASTCALL                         MATH_MAX ; [+2]
        7 GETIMPORT                        R1 K5 [math.max]
        9 CALL                             R1 3 1
       10 LOADN                            R2 0
       11 JUMPIFNOTLE                      R1 R2 ; [+3]
       13 LOADN                            R2 1
       14 RETURN                           R2 1
       15 DIVRK                            R2 K6 [2] R1
       16 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K1 ["Size"]
        2 DIVK                             R1 R2 K0 [2]
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R8 R0 K2 ["CFrame"]
        9 MUL                              R9 R1 R6
       10 MUL                              R7 R8 R9
       11 GETUPVAL                         R9 1
       12 JUMPIFNOT                        R9 ; [+6]
       13 GETUPVAL                         R8 1
       14 MOVE                             R10 R7
       15 NAMECALL                         R8 R8 K3 ["Min"]
       17 CALL                             R8 2 1
       18 JUMP                             ; [+1]
       19 MOVE                             R8 R7
       20 SETUPVAL                         R8 1
       21 GETUPVAL                         R9 2
       22 JUMPIFNOT                        R9 ; [+6]
       23 GETUPVAL                         R8 2
       24 MOVE                             R10 R7
       25 NAMECALL                         R8 R8 K4 ["Max"]
       27 CALL                             R8 2 1
       28 JUMP                             ; [+1]
       29 MOVE                             R8 R7
       30 SETUPVAL                         R8 2
       31 FORGLOOP                         R2 2 ; [-25]
       33 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R1
        5 CAPTURE                          REF R2
        6 LOADK                            R6 K0 ["BasePart"]
        7 NAMECALL                         R4 R0 K1 ["IsA"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+3]
       11 MOVE                             R4 R3
       12 MOVE                             R5 R0
       13 CALL                             R4 1 0
       14 NAMECALL                         R4 R0 K2 ["GetDescendants"]
       16 CALL                             R4 1 3
       17 FORGPREP                         R4
       18 LOADK                            R11 K0 ["BasePart"]
       19 NAMECALL                         R9 R8 K1 ["IsA"]
       21 CALL                             R9 2 1
       22 JUMPIFNOT                        R9 ; [+3]
       23 MOVE                             R9 R3
       24 MOVE                             R10 R8
       25 CALL                             R9 1 0
       26 FORGLOOP                         R4 2 ; [-9]
       28 CLOSEUPVALS                      R1
       29 RETURN                           R1 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIFNOT                        R1 ; [+1]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 ADD                              R4 R1 R2
        8 DIVK                             R3 R4 K0 [2]
        9 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 LOADK                            R3 K0 ["BasePart"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R1 R0 K2 ["Position"]
       10 RETURN                           R1 1
       11 NAMECALL                         R1 R0 K3 ["GetPivot"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K2 ["Position"]
       16 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIFNOT                        R1 ; [+1]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 ADD                              R4 R1 R2
        8 DIVK                             R3 R4 K0 [2]
        9 SUB                              R5 R2 R1
       10 DIVK                             R4 R5 K0 [2]
       11 GETIMPORT                        R5 K3 [table.create]
       13 LOADN                            R6 8
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 1
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 MUL                              R14 R4 R10
       20 ADD                              R13 R3 R14
       21 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       23 MOVE                             R12 R5
       24 GETIMPORT                        R11 K5 [table.insert]
       26 CALL                             R11 2 0
       27 FORGLOOP                         R6 2 ; [-9]
       29 RETURN                           R5 1

PROTO_7:
        0 GETTABLEKS                       R3 R1 K1 ["Size"]
        2 DIVK                             R2 R3 K0 [2]
        3 GETUPVAL                         R3 0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R11 R1 K2 ["CFrame"]
        9 MUL                              R12 R2 R7
       10 MUL                              R10 R11 R12
       11 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       13 MOVE                             R9 R0
       14 GETIMPORT                        R8 K5 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-11]
       19 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["BasePart"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+7]
        7 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R0
       11 GETIMPORT                        R2 K4 [table.insert]
       13 CALL                             R2 2 0
       14 NAMECALL                         R2 R0 K5 ["GetDescendants"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 LOADK                            R9 K0 ["BasePart"]
       19 NAMECALL                         R7 R6 K1 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+7]
       23 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       25 MOVE                             R8 R1
       26 MOVE                             R9 R6
       27 GETIMPORT                        R7 K4 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-13]
       32 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K1 ["Size"]
        8 DIVK                             R7 R8 K0 [2]
        9 GETUPVAL                         R8 1
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 FORGPREP                         R8
       13 GETTABLEKS                       R16 R6 K2 ["CFrame"]
       15 MUL                              R17 R7 R12
       16 MUL                              R15 R16 R17
       17 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       19 MOVE                             R14 R1
       20 GETIMPORT                        R13 K5 [table.insert]
       22 CALL                             R13 2 0
       23 FORGLOOP                         R8 2 ; [-11]
       25 FORGLOOP                         R2 2 ; [-20]
       27 LENGTH                           R3 R1
       28 LOADN                            R4 0
       29 JUMPIFNOTLT                      R4 R3 ; [+3]
       31 MOVE                             R2 R1
       32 RETURN                           R2 1
       33 LOADNIL                          R2
       34 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R3 K1 [pcall]
        2 MOVE                             R4 R2
        3 MOVE                             R5 R1
        4 CALL                             R3 2 2
        5 JUMPIFNOT                        R3 ; [+2]
        6 JUMPIFNOTEQKNIL                  R4 ; [+3]
        8 LOADB                            R5 0
        9 RETURN                           R5 1
       10 NEWTABLE                         R5 0 0
       12 NAMECALL                         R6 R4 K2 ["GetVertices"]
       14 CALL                             R6 1 3
       15 FORGPREP                         R6
       16 MOVE                             R12 R5
       17 MOVE                             R15 R10
       18 NAMECALL                         R13 R4 K3 ["GetPosition"]
       20 CALL                             R13 2 -1
       21 FASTCALL                         TABLE_INSERT ; [+2]
       22 GETIMPORT                        R11 K6 [table.insert]
       24 CALL                             R11 -1 0
       25 FORGLOOP                         R6 2 ; [-10]
       27 NAMECALL                         R6 R4 K7 ["Destroy"]
       29 CALL                             R6 1 0
       30 LENGTH                           R6 R5
       31 JUMPIFNOTEQKN                    R6 K8 [0] ; [+3]
       33 LOADB                            R6 0
       34 RETURN                           R6 1
       35 GETTABLEN                        R6 R5 1
       36 GETTABLEN                        R7 R5 1
       37 MOVE                             R8 R5
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 MOVE                             R15 R12
       42 NAMECALL                         R13 R6 K9 ["Min"]
       44 CALL                             R13 2 1
       45 MOVE                             R6 R13
       46 MOVE                             R15 R12
       47 NAMECALL                         R13 R7 K10 ["Max"]
       49 CALL                             R13 2 1
       50 MOVE                             R7 R13
       51 FORGLOOP                         R8 2 ; [-11]
       53 SUB                              R8 R7 R6
       54 LOADK                            R10 K11 [{1E-06, 1E-06, 1E-06}]
       55 NAMECALL                         R8 R8 K10 ["Max"]
       57 CALL                             R8 2 1
       58 ADD                              R10 R6 R7
       59 DIVK                             R9 R10 K12 [2]
       60 GETTABLEKS                       R11 R1 K13 ["Size"]
       62 DIV                              R10 R11 R8
       63 DIVK                             R11 R8 K14 [48]
       64 NEWTABLE                         R12 0 0
       66 MOVE                             R13 R5
       67 LOADNIL                          R14
       68 LOADNIL                          R15
       69 FORGPREP                         R13
       70 SUB                              R19 R17 R6
       71 DIV                              R18 R19 R11
       72 NAMECALL                         R18 R18 K15 ["Floor"]
       74 CALL                             R18 1 1
       75 GETTABLEKS                       R23 R18 K17 ["X"]
       77 MULK                             R22 R23 K16 [49]
       78 GETTABLEKS                       R23 R18 K18 ["Y"]
       80 ADD                              R21 R22 R23
       81 MULK                             R20 R21 K16 [49]
       82 GETTABLEKS                       R21 R18 K19 ["Z"]
       84 ADD                              R19 R20 R21
       85 GETTABLE                         R20 R12 R19
       86 JUMPIF                           R20 ; [+13]
       87 LOADB                            R20 1
       88 SETTABLE                         R20 R12 R19
       89 GETTABLEKS                       R23 R1 K20 ["CFrame"]
       91 SUB                              R25 R17 R9
       92 MUL                              R24 R25 R10
       93 MUL                              R22 R23 R24
       94 FASTCALL2                        TABLE_INSERT R0 R22 ; [+4]
       96 MOVE                             R21 R0
       97 GETIMPORT                        R20 K6 [table.insert]
       99 CALL                             R20 2 0
      100 FORGLOOP                         R13 2 ; [-31]
      102 LOADB                            R13 1
      103 RETURN                           R13 1

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 LOADK                            R10 K0 ["MeshPart"]
        7 NAMECALL                         R8 R7 K1 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+5]
       11 GETUPVAL                         R8 1
       12 MOVE                             R9 R2
       13 MOVE                             R10 R7
       14 MOVE                             R11 R1
       15 CALL                             R8 3 1
       16 JUMPIF                           R8 ; [+19]
       17 GETTABLEKS                       R10 R7 K3 ["Size"]
       19 DIVK                             R9 R10 K2 [2]
       20 GETUPVAL                         R10 2
       21 LOADNIL                          R11
       22 LOADNIL                          R12
       23 FORGPREP                         R10
       24 GETTABLEKS                       R18 R7 K4 ["CFrame"]
       26 MUL                              R19 R9 R14
       27 MUL                              R17 R18 R19
       28 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
       30 MOVE                             R16 R2
       31 GETIMPORT                        R15 K7 [table.insert]
       33 CALL                             R15 2 0
       34 FORGLOOP                         R10 2 ; [-11]
       36 FORGLOOP                         R3 2 ; [-31]
       38 LENGTH                           R4 R2
       39 LOADN                            R5 0
       40 JUMPIFNOTLT                      R5 R4 ; [+3]
       42 MOVE                             R3 R2
       43 RETURN                           R3 1
       44 LOADNIL                          R3
       45 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+6]
        3 JUMPIF                           R2 ; [+5]
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 LOADN                            R4 1
        8 RETURN                           R3 2
        9 GETTABLEKS                       R3 R0 K0 ["Archivable"]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R0 K0 ["Archivable"]
       14 NAMECALL                         R4 R0 K1 ["Clone"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R3 R0 K0 ["Archivable"]
       19 JUMPIF                           R4 ; [+5]
       20 MOVE                             R5 R1
       21 MOVE                             R6 R0
       22 CALL                             R5 1 1
       23 LOADN                            R6 1
       24 RETURN                           R5 2
       25 GETUPVAL                         R5 0
       26 CALL                             R5 0 1
       27 JUMPIFNOT                        R5 ; [+7]
       28 GETTABLEKS                       R6 R0 K2 ["CFrame"]
       30 GETTABLEKS                       R7 R0 K3 ["Position"]
       32 SUB                              R5 R6 R7
       33 SETTABLEKS                       R5 R4 K2 ["CFrame"]
       35 LOADN                            R5 1
       36 JUMPIFNOT                        R2 ; [+23]
       37 GETTABLEKS                       R6 R4 K4 ["Size"]
       39 GETTABLEKS                       R8 R6 K5 ["X"]
       41 GETTABLEKS                       R9 R6 K6 ["Y"]
       43 GETTABLEKS                       R10 R6 K7 ["Z"]
       45 FASTCALL                         MATH_MAX ; [+2]
       46 GETIMPORT                        R7 K10 [math.max]
       48 CALL                             R7 3 1
       49 LOADN                            R8 0
       50 JUMPIFNOTLE                      R7 R8 ; [+3]
       52 LOADN                            R5 1
       53 JUMP                             ; [+1]
       54 DIVRK                            R5 K11 [2] R7
       55 GETTABLEKS                       R6 R4 K4 ["Size"]
       57 MUL                              R6 R6 R5
       58 SETTABLEKS                       R6 R4 K4 ["Size"]
       60 GETIMPORT                        R6 K13 [pcall]
       62 MOVE                             R7 R1
       63 MOVE                             R8 R4
       64 CALL                             R6 2 2
       65 NAMECALL                         R8 R4 K14 ["Destroy"]
       67 CALL                             R8 1 0
       68 JUMPIF                           R6 ; [+5]
       69 GETIMPORT                        R8 K16 [error]
       71 MOVE                             R9 R7
       72 LOADN                            R10 0
       73 CALL                             R8 2 0
       74 MOVE                             R8 R7
       75 MOVE                             R9 R5
       76 RETURN                           R8 2

PROTO_13:
        0 NEWTABLE                         R2 1 0
        2 GETTABLEKS                       R3 R0 K0 ["Archivable"]
        4 SETTABLE                         R3 R2 R0
        5 NAMECALL                         R3 R0 K1 ["GetDescendants"]
        7 CALL                             R3 1 1
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R0 K0 ["Archivable"]
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K0 ["Archivable"]
       17 SETTABLE                         R9 R2 R8
       18 LOADB                            R9 1
       19 SETTABLEKS                       R9 R8 K0 ["Archivable"]
       21 FORGLOOP                         R4 2 ; [-7]
       23 NAMECALL                         R4 R0 K2 ["Clone"]
       25 CALL                             R4 1 1
       26 MOVE                             R5 R2
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 SETTABLEKS                       R9 R8 K0 ["Archivable"]
       32 FORGLOOP                         R5 2 ; [-3]
       34 JUMPIFNOT                        R4 ; [+18]
       35 JUMPIFNOT                        R1 ; [+17]
       36 GETTABLE                         R5 R2 R0
       37 SETTABLEKS                       R5 R4 K0 ["Archivable"]
       39 NAMECALL                         R5 R4 K1 ["GetDescendants"]
       41 CALL                             R5 1 1
       42 MOVE                             R6 R3
       43 LOADNIL                          R7
       44 LOADNIL                          R8
       45 FORGPREP                         R6
       46 GETTABLE                         R11 R5 R9
       47 JUMPIFNOT                        R11 ; [+3]
       48 GETTABLE                         R12 R2 R10
       49 SETTABLEKS                       R12 R11 K0 ["Archivable"]
       51 FORGLOOP                         R6 2 ; [-6]
       53 RETURN                           R4 1

PROTO_14:
        0 LOADK                            R3 K0 ["PVInstance"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["getLocalBoundingBoxSize"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 DUPTABLE                         R2 K5 [{"pivot", "size"}]
       16 NAMECALL                         R3 R0 K6 ["GetPivot"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K3 ["pivot"]
       21 SETTABLEKS                       R1 R2 K4 ["size"]
       23 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["snapshotExportFingerprint"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 LOADB                            R3 0
        6 JUMPIFEQKNIL                     R2 ; [+16]
        8 LOADB                            R3 0
        9 GETTABLEKS                       R4 R2 K1 ["pivot"]
       11 GETTABLEKS                       R5 R1 K1 ["pivot"]
       13 JUMPIFNOTEQ                      R4 R5 ; [+9]
       15 GETTABLEKS                       R4 R2 K2 ["size"]
       17 GETTABLEKS                       R5 R1 K2 ["size"]
       19 JUMPIFEQ                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1

PROTO_16:
        0 LOADK                            R6 K0 ["PVInstance"]
        1 NAMECALL                         R4 R0 K1 ["IsA"]
        3 CALL                             R4 2 1
        4 JUMPIF                           R4 ; [+3]
        5 LOADNIL                          R4
        6 LOADN                            R5 1
        7 RETURN                           R4 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["cloneAsArchivable"]
       11 MOVE                             R5 R0
       12 CALL                             R4 1 1
       13 JUMPIF                           R4 ; [+3]
       14 LOADNIL                          R5
       15 LOADN                            R6 1
       16 RETURN                           R5 2
       17 JUMPIFNOT                        R3 ; [+3]
       18 MOVE                             R5 R3
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 JUMPIFNOT                        R1 ; [+23]
       22 NAMECALL                         R5 R4 K3 ["GetPivot"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R10 1
       26 CALL                             R10 0 1
       27 JUMPIFNOT                        R10 ; [+8]
       28 LOADK                            R12 K4 ["BasePart"]
       29 NAMECALL                         R10 R4 K1 ["IsA"]
       31 CALL                             R10 2 1
       32 JUMPIFNOT                        R10 ; [+3]
       33 GETTABLEKS                       R9 R4 K5 ["Position"]
       35 JUMP                             ; [+5]
       36 NAMECALL                         R9 R4 K3 ["GetPivot"]
       38 CALL                             R9 1 1
       39 GETTABLEKS                       R9 R9 K5 ["Position"]
       41 SUB                              R8 R5 R9
       42 NAMECALL                         R6 R4 K6 ["PivotTo"]
       44 CALL                             R6 2 0
       45 LOADN                            R5 1
       46 JUMPIFNOT                        R2 ; [+42]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K7 ["getLocalBoundingBoxSize"]
       50 MOVE                             R7 R4
       51 CALL                             R6 1 1
       52 JUMPIFNOT                        R6 ; [+36]
       53 GETTABLEKS                       R8 R6 K8 ["X"]
       55 GETTABLEKS                       R9 R6 K9 ["Y"]
       57 GETTABLEKS                       R10 R6 K10 ["Z"]
       59 FASTCALL                         MATH_MAX ; [+2]
       60 GETIMPORT                        R7 K13 [math.max]
       62 CALL                             R7 3 1
       63 LOADN                            R8 0
       64 JUMPIFNOTLE                      R7 R8 ; [+3]
       66 LOADN                            R5 1
       67 JUMP                             ; [+1]
       68 DIVRK                            R5 K14 [2] R7
       69 LOADK                            R9 K15 ["Model"]
       70 NAMECALL                         R7 R4 K1 ["IsA"]
       72 CALL                             R7 2 1
       73 JUMPIFNOT                        R7 ; [+5]
       74 MOVE                             R9 R5
       75 NAMECALL                         R7 R4 K16 ["ScaleTo"]
       77 CALL                             R7 2 0
       78 RETURN                           R4 2
       79 LOADK                            R9 K4 ["BasePart"]
       80 NAMECALL                         R7 R4 K1 ["IsA"]
       82 CALL                             R7 2 1
       83 JUMPIFNOT                        R7 ; [+5]
       84 GETTABLEKS                       R7 R4 K17 ["Size"]
       86 MUL                              R7 R7 R5
       87 SETTABLEKS                       R7 R4 K17 ["Size"]
       89 RETURN                           R4 2

PROTO_17:
        0 JUMPIF                           R2 ; [+8]
        1 JUMPIF                           R3 ; [+7]
        2 JUMPIF                           R4 ; [+6]
        3 JUMPIF                           R5 ; [+5]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R0
        6 CALL                             R6 1 1
        7 LOADN                            R7 1
        8 RETURN                           R6 2
        9 LOADK                            R8 K0 ["PVInstance"]
       10 NAMECALL                         R6 R0 K1 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIF                           R6 ; [+5]
       14 MOVE                             R6 R1
       15 MOVE                             R7 R0
       16 CALL                             R6 1 1
       17 LOADN                            R7 1
       18 RETURN                           R6 2
       19 JUMPIF                           R4 ; [+30]
       20 JUMPIFNOT                        R5 ; [+29]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K2 ["snapshotExportFingerprint"]
       24 MOVE                             R8 R0
       25 CALL                             R7 1 1
       26 LOADB                            R6 0
       27 JUMPIFEQKNIL                     R7 ; [+16]
       29 LOADB                            R6 0
       30 GETTABLEKS                       R8 R7 K3 ["pivot"]
       32 GETTABLEKS                       R9 R5 K3 ["pivot"]
       34 JUMPIFNOTEQ                      R8 R9 ; [+9]
       36 GETTABLEKS                       R8 R7 K4 ["size"]
       38 GETTABLEKS                       R9 R5 K4 ["size"]
       40 JUMPIFEQ                         R8 R9 ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 JUMPIFNOT                        R6 ; [+5]
       45 GETTABLEKS                       R6 R5 K5 ["glb"]
       47 GETTABLEKS                       R7 R5 K6 ["scale"]
       49 RETURN                           R6 2
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K7 ["cloneAsArchivable"]
       53 MOVE                             R7 R0
       54 CALL                             R6 1 1
       55 JUMPIF                           R6 ; [+5]
       56 MOVE                             R7 R1
       57 MOVE                             R8 R0
       58 CALL                             R7 1 1
       59 LOADN                            R8 1
       60 RETURN                           R7 2
       61 JUMPIFNOT                        R4 ; [+3]
       62 MOVE                             R7 R4
       63 MOVE                             R8 R6
       64 CALL                             R7 1 0
       65 JUMPIFNOT                        R2 ; [+23]
       66 NAMECALL                         R7 R6 K8 ["GetPivot"]
       68 CALL                             R7 1 1
       69 GETUPVAL                         R12 1
       70 CALL                             R12 0 1
       71 JUMPIFNOT                        R12 ; [+8]
       72 LOADK                            R14 K9 ["BasePart"]
       73 NAMECALL                         R12 R6 K1 ["IsA"]
       75 CALL                             R12 2 1
       76 JUMPIFNOT                        R12 ; [+3]
       77 GETTABLEKS                       R11 R6 K10 ["Position"]
       79 JUMP                             ; [+5]
       80 NAMECALL                         R11 R6 K8 ["GetPivot"]
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R11 R11 K10 ["Position"]
       85 SUB                              R10 R7 R11
       86 NAMECALL                         R8 R6 K11 ["PivotTo"]
       88 CALL                             R8 2 0
       89 LOADN                            R7 1
       90 JUMPIFNOT                        R3 ; [+42]
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R8 R8 K12 ["getLocalBoundingBoxSize"]
       94 MOVE                             R9 R6
       95 CALL                             R8 1 1
       96 JUMPIFNOT                        R8 ; [+36]
       97 GETTABLEKS                       R10 R8 K13 ["X"]
       99 GETTABLEKS                       R11 R8 K14 ["Y"]
      101 GETTABLEKS                       R12 R8 K15 ["Z"]
      103 FASTCALL                         MATH_MAX ; [+2]
      104 GETIMPORT                        R9 K18 [math.max]
      106 CALL                             R9 3 1
      107 LOADN                            R10 0
      108 JUMPIFNOTLE                      R9 R10 ; [+3]
      110 LOADN                            R7 1
      111 JUMP                             ; [+1]
      112 DIVRK                            R7 K19 [2] R9
      113 LOADK                            R11 K20 ["Model"]
      114 NAMECALL                         R9 R6 K1 ["IsA"]
      116 CALL                             R9 2 1
      117 JUMPIFNOT                        R9 ; [+5]
      118 MOVE                             R11 R7
      119 NAMECALL                         R9 R6 K21 ["ScaleTo"]
      121 CALL                             R9 2 0
      122 JUMP                             ; [+10]
      123 LOADK                            R11 K9 ["BasePart"]
      124 NAMECALL                         R9 R6 K1 ["IsA"]
      126 CALL                             R9 2 1
      127 JUMPIFNOT                        R9 ; [+5]
      128 GETTABLEKS                       R9 R6 K22 ["Size"]
      130 MUL                              R9 R9 R7
      131 SETTABLEKS                       R9 R6 K22 ["Size"]
      133 GETIMPORT                        R8 K24 [pcall]
      135 MOVE                             R9 R1
      136 MOVE                             R10 R6
      137 CALL                             R8 2 2
      138 NAMECALL                         R10 R6 K25 ["Destroy"]
      140 CALL                             R10 1 0
      141 JUMPIF                           R8 ; [+5]
      142 GETIMPORT                        R10 K27 [error]
      144 MOVE                             R11 R9
      145 LOADN                            R12 0
      146 CALL                             R10 2 0
      147 MOVE                             R10 R9
      148 MOVE                             R11 R7
      149 RETURN                           R10 2

PROTO_18:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADK                            R3 K2 ["Model"]
        7 NAMECALL                         R1 R0 K1 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 NAMECALL                         R2 R0 K3 ["GetDescendants"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 LOADK                            R9 K0 ["MeshPart"]
       19 NAMECALL                         R7 R6 K1 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+4]
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADNIL                          R7
       25 RETURN                           R7 1
       26 MOVE                             R1 R6
       27 FORGLOOP                         R2 2 ; [-10]
       29 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolveSingleMeshPart"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 MOVE                             R2 R1
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 GETUPVAL                         R4 1
       10 CALL                             R4 0 -1
       11 RETURN                           R2 -1
       12 MOVE                             R2 R0
       13 LOADB                            R3 1
       14 LOADNIL                          R4
       15 RETURN                           R2 3

PROTO_20:
        0 LOADK                            R3 K0 ["PVInstance"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+17]
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+8]
        8 LOADK                            R4 K2 ["BasePart"]
        9 NAMECALL                         R2 R0 K1 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R1 R0 K3 ["Position"]
       15 RETURN                           R1 1
       16 NAMECALL                         R1 R0 K4 ["GetPivot"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R1 R1 K3 ["Position"]
       21 RETURN                           R1 1
       22 LOADK                            R1 K5 [{0, 0, 0}]
       23 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 SUB                              R2 R0 R3
        2 GETUPVAL                         R3 1
        3 MUL                              R1 R2 R3
        4 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolveTextureGenExportTarget"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 3
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R1
        7 CALL                             R5 1 2
        8 JUMPIFNOT                        R5 ; [+1]
        9 JUMPIF                           R6 ; [+2]
       10 LOADNIL                          R4
       11 JUMP                             ; [+2]
       12 ADD                              R7 R5 R6
       13 DIVK                             R4 R7 K1 [2]
       14 LOADK                            R8 K2 ["PVInstance"]
       15 NAMECALL                         R6 R1 K3 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+17]
       19 GETUPVAL                         R6 2
       20 CALL                             R6 0 1
       21 JUMPIFNOT                        R6 ; [+8]
       22 LOADK                            R8 K4 ["BasePart"]
       23 NAMECALL                         R6 R1 K3 ["IsA"]
       25 CALL                             R6 2 1
       26 JUMPIFNOT                        R6 ; [+3]
       27 GETTABLEKS                       R5 R1 K5 ["Position"]
       29 JUMP                             ; [+7]
       30 NAMECALL                         R5 R1 K6 ["GetPivot"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R5 R5 K5 ["Position"]
       35 JUMP                             ; [+1]
       36 LOADK                            R5 K7 [{0, 0, 0}]
       37 JUMPIFNOT                        R2 ; [+2]
       38 MOVE                             R6 R5
       39 JUMP                             ; [+1]
       40 LOADK                            R6 K7 [{0, 0, 0}]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K8 ["getLocalBoundingBoxSize"]
       44 MOVE                             R8 R1
       45 CALL                             R7 1 1
       46 LOADN                            R8 1
       47 JUMPIFNOT                        R3 ; [+17]
       48 JUMPIFNOT                        R7 ; [+16]
       49 GETTABLEKS                       R10 R7 K9 ["X"]
       51 GETTABLEKS                       R11 R7 K10 ["Y"]
       53 GETTABLEKS                       R12 R7 K11 ["Z"]
       55 FASTCALL                         MATH_MAX ; [+2]
       56 GETIMPORT                        R9 K14 [math.max]
       58 CALL                             R9 3 1
       59 LOADN                            R10 0
       60 JUMPIFNOTLE                      R9 R10 ; [+3]
       62 LOADN                            R8 1
       63 JUMP                             ; [+1]
       64 DIVRK                            R8 K1 [2] R9
       65 NEWCLOSURE                       R9 P0
       66 CAPTURE                          VAL R6
       67 CAPTURE                          REF R8
       68 JUMPIFNOT                        R7 ; [+2]
       69 MUL                              R10 R7 R8
       70 JUMP                             ; [+1]
       71 LOADNIL                          R10
       72 MOVE                             R11 R9
       73 MOVE                             R12 R5
       74 MOVE                             R13 R10
       75 OR                               R14 R4 R5
       76 CLOSEUPVALS                      R8
       77 RETURN                           R11 4

PROTO_23:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADN                            R1 0
        8 NAMECALL                         R2 R0 K2 ["GetDescendants"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 LOADK                            R9 K3 ["MeshPart"]
       13 NAMECALL                         R7 R6 K1 ["IsA"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+6]
       17 ADDK                             R1 R1 K4 [1]
       18 LOADN                            R7 1
       19 JUMPIFNOTLT                      R7 R1 ; [+3]
       21 LOADB                            R7 1
       22 RETURN                           R7 1
       23 FORGLOOP                         R2 2 ; [-12]
       25 LOADB                            R2 0
       26 RETURN                           R2 1

PROTO_24:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K2 ["Name"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+10]
       10 NAMECALL                         R1 R0 K3 ["GetChildren"]
       12 CALL                             R1 1 3
       13 FORGPREP                         R1
       14 GETUPVAL                         R6 1
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-4]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R1 K6 [table.insert]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_25:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R1
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R8 R2
       11 MOVE                             R9 R7
       12 CALL                             R8 1 0
       13 FORGLOOP                         R3 2 ; [-4]
       15 RETURN                           R1 1

PROTO_26:
        0 JUMPIF                           R1 ; [+2]
        1 LOADN                            R2 0
        2 RETURN                           R2 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["getLocalBoundingBoxSize"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R3 R2 K1 ["X"]
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R3 R1 K1 ["X"]
       14 GETTABLEKS                       R7 R1 K1 ["X"]
       16 DIVK                             R6 R7 K3 [2]
       17 DIVK                             R7 R3 K3 [2]
       18 ADD                              R5 R6 R7
       19 ADDK                             R4 R5 K2 [1]
       20 RETURN                           R4 1

PROTO_27:
        0 LOADK                            R4 K0 ["PVInstance"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R5 R0 K2 ["GetPivot"]
        8 CALL                             R5 1 1
        9 MUL                              R4 R1 R5
       10 NAMECALL                         R2 R0 K3 ["PivotTo"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["applyWorldTransform"]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R4 K3 [CFrame.new]
        6 MOVE                             R5 R1
        7 CALL                             R4 1 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_29:
        0 LOADK                            R3 K0 ["PVInstance"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R4 R0 K2 ["GetPivot"]
        8 CALL                             R4 1 1
        9 GETIMPORT                        R5 K5 [CFrame.Angles]
       11 LOADN                            R6 0
       12 LOADK                            R7 K6 [3.14159265358979]
       13 LOADN                            R8 0
       14 CALL                             R5 3 1
       15 MUL                              R3 R4 R5
       16 NAMECALL                         R1 R0 K7 ["PivotTo"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 LOADK                            R4 K0 ["BasePart"]
        4 NAMECALL                         R2 R0 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R1 R0 K2 ["Position"]
       10 JUMP                             ; [+5]
       11 NAMECALL                         R1 R0 K3 ["GetPivot"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K2 ["Position"]
       16 GETIMPORT                        R4 K6 [CFrame.new]
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 GETIMPORT                        R5 K8 [CFrame.Angles]
       22 LOADN                            R6 0
       23 LOADK                            R7 K9 [3.14159265358979]
       24 LOADN                            R8 0
       25 CALL                             R5 3 1
       26 MUL                              R3 R4 R5
       27 GETIMPORT                        R4 K6 [CFrame.new]
       29 MINUS                            R5 R1
       30 CALL                             R4 1 1
       31 MUL                              R2 R3 R4
       32 RETURN                           R2 1

PROTO_31:
        0 LOADK                            R5 K0 ["PVInstance"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+1]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["computeBesideSourceOffsetX"]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 GETIMPORT                        R7 K5 [CFrame.new]
       15 MOVE                             R8 R3
       16 LOADN                            R9 0
       17 LOADN                            R10 0
       18 CALL                             R7 3 1
       19 MUL                              R6 R1 R7
       20 NAMECALL                         R4 R0 K6 ["PivotTo"]
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["translate"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 GETUPVAL                         R8 2
        7 GETTABLE                         R7 R8 R1
        8 OR                               R6 R7 R1
        9 CALL                             R2 4 -1
       10 RETURN                           R2 -1

PROTO_33:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_34:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+18]
        7 GETIMPORT                        R1 K4 [string.find]
        9 GETIMPORT                        R2 K6 [string.lower]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 LOADK                            R3 K7 ["moderat"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+8]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K8 ["Enums"]
       19 GETTABLEKS                       R1 R1 K9 ["FailureReason"]
       21 GETTABLEKS                       R1 R1 K10 ["GenerationModerated"]
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K8 ["Enums"]
       27 GETTABLEKS                       R1 R1 K9 ["FailureReason"]
       29 GETTABLEKS                       R1 R1 K11 ["GenerationFailed"]
       31 RETURN                           R1 1

PROTO_35:
        0 MOVE                             R7 R6
        1 JUMPIF                           R7 ; [+3]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K0 ["MAX_POLL_ATTEMPTS"]
        5 LOADN                            R8 0
        6 JUMPIFNOTLT                      R8 R7 ; [+149]
        8 ADDK                             R8 R8 K1 [1]
        9 MOVE                             R9 R0
       10 MOVE                             R10 R1
       11 CALL                             R9 1 1
       12 GETTABLEKS                       R10 R9 K2 ["ok"]
       14 JUMPIFNOTEQKB                    R10 FALSE ; [+53]
       16 GETTABLEKS                       R10 R9 K3 ["statusCode"]
       18 JUMPIFNOTEQKNIL                  R10 ; [+23]
       20 GETIMPORT                        R11 K5 [warn]
       22 LOADK                            R12 K6 ["[%*] %* transient poll failure: %*"]
       23 MOVE                             R14 R5
       24 MOVE                             R15 R1
       25 GETTABLEKS                       R17 R9 K7 ["errorMessage"]
       27 FASTCALL1                        TOSTRING R17 ; [+2]
       28 GETIMPORT                        R16 K9 [tostring]
       30 CALL                             R16 1 1
       31 NAMECALL                         R12 R12 K10 ["format"]
       33 CALL                             R12 4 1
       34 CALL                             R11 1 0
       35 GETIMPORT                        R11 K13 [task.wait]
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K14 ["POLL_INTERVAL_SEC"]
       40 CALL                             R11 1 0
       41 JUMP                             ; [+113]
       42 GETTABLEKS                       R12 R9 K7 ["errorMessage"]
       44 JUMPIF                           R12 ; [+3]
       45 MOVE                             R12 R3
       46 MOVE                             R13 R4
       47 CALL                             R12 1 1
       48 FASTCALL1                        TOSTRING R12 ; [+2]
       49 GETIMPORT                        R11 K9 [tostring]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K5 [warn]
       54 LOADK                            R13 K15 ["[%*] %* aborted (statusCode=%*): %*"]
       55 MOVE                             R15 R5
       56 MOVE                             R16 R1
       57 MOVE                             R17 R10
       58 MOVE                             R18 R11
       59 NAMECALL                         R13 R13 K10 ["format"]
       61 CALL                             R13 5 1
       62 CALL                             R12 1 0
       63 GETIMPORT                        R12 K17 [error]
       65 MOVE                             R13 R11
       66 LOADN                            R14 0
       67 CALL                             R12 2 0
       68 GETTABLEKS                       R10 R9 K18 ["status"]
       70 JUMPIFNOTEQKS                    R10 K19 ["Completed"] ; [+29]
       72 MOVE                             R11 R2
       73 MOVE                             R12 R9
       74 CALL                             R11 1 1
       75 LOADB                            R13 0
       76 FASTCALL1                        TYPEOF R11 ; [+3]
       77 MOVE                             R15 R11
       78 GETIMPORT                        R14 K21 [typeof]
       80 CALL                             R14 1 1
       81 JUMPIFNOTEQKS                    R14 K22 ["string"] ; [+7]
       83 LENGTH                           R14 R11
       84 LOADN                            R15 0
       85 JUMPIFLT                         R15 R14 ; [+2]
       87 LOADB                            R13 0 +1
       88 LOADB                            R13 1
       89 LOADK                            R14 K23 ["%* status COMPLETED but result is missing"]
       90 MOVE                             R16 R5
       91 NAMECALL                         R14 R14 K10 ["format"]
       93 CALL                             R14 2 1
       94 FASTCALL2                        ASSERT R13 R14 ; [+3]
       96 GETIMPORT                        R12 K25 [assert]
       98 CALL                             R12 2 0
       99 RETURN                           R11 1
      100 JUMPIFNOTEQKS                    R10 K26 ["Failed"] ; [+30]
      102 GETIMPORT                        R11 K5 [warn]
      104 LOADK                            R12 K27 ["[%*] %* failed at stage=%* errorMessage=%*"]
      105 MOVE                             R14 R5
      106 MOVE                             R15 R1
      107 GETTABLEKS                       R17 R9 K28 ["currentStage"]
      109 FASTCALL1                        TOSTRING R17 ; [+2]
      110 GETIMPORT                        R16 K9 [tostring]
      112 CALL                             R16 1 1
      113 GETTABLEKS                       R18 R9 K7 ["errorMessage"]
      115 FASTCALL1                        TOSTRING R18 ; [+2]
      116 GETIMPORT                        R17 K9 [tostring]
      118 CALL                             R17 1 1
      119 NAMECALL                         R12 R12 K10 ["format"]
      121 CALL                             R12 5 1
      122 CALL                             R11 1 0
      123 GETIMPORT                        R11 K17 [error]
      125 MOVE                             R12 R3
      126 MOVE                             R13 R4
      127 CALL                             R12 1 1
      128 LOADN                            R13 0
      129 CALL                             R11 2 0
      130 JUMP                             ; [+18]
      131 JUMPIFNOTEQKS                    R10 K29 ["Canceled"] ; [+17]
      133 GETIMPORT                        R11 K5 [warn]
      135 LOADK                            R12 K30 ["[%*] %* cancelled"]
      136 MOVE                             R14 R5
      137 MOVE                             R15 R1
      138 NAMECALL                         R12 R12 K10 ["format"]
      140 CALL                             R12 3 1
      141 CALL                             R11 1 0
      142 GETIMPORT                        R11 K17 [error]
      144 MOVE                             R12 R3
      145 LOADK                            R13 K31 ["UserCancelled"]
      146 CALL                             R12 1 1
      147 LOADN                            R13 0
      148 CALL                             R11 2 0
      149 GETIMPORT                        R11 K13 [task.wait]
      151 GETUPVAL                         R12 0
      152 GETTABLEKS                       R12 R12 K14 ["POLL_INTERVAL_SEC"]
      154 CALL                             R11 1 0
      155 JUMPBACK                         ; [-150]
      156 GETIMPORT                        R9 K5 [warn]
      158 LOADK                            R10 K32 ["[%*] %* polling timed out after %* attempts"]
      159 MOVE                             R12 R5
      160 MOVE                             R13 R1
      161 MOVE                             R14 R7
      162 NAMECALL                         R10 R10 K10 ["format"]
      164 CALL                             R10 4 1
      165 CALL                             R9 1 0
      166 GETIMPORT                        R9 K17 [error]
      168 LOADK                            R10 K33 ["%* polling timed out after %* attempts"]
      169 MOVE                             R12 R5
      170 MOVE                             R13 R7
      171 NAMECALL                         R10 R10 K10 ["format"]
      173 CALL                             R10 3 1
      174 LOADN                            R11 0
      175 CALL                             R9 2 0
      176 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R3 2
        7 CALL                             R0 3 2
        8 JUMPIF                           R0 ; [+13]
        9 GETIMPORT                        R2 K3 [warn]
       11 GETIMPORT                        R3 K6 [string.format]
       13 LOADK                            R4 K7 ["[GenerationUtils.runWithConcurrencyAsync] worker %d errored: %s"]
       14 GETUPVAL                         R5 2
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R7 R1
       17 GETIMPORT                        R6 K9 [tostring]
       19 CALL                             R6 1 1
       20 CALL                             R3 3 -1
       21 CALL                             R2 -1 0
       22 GETUPVAL                         R2 3
       23 ADDK                             R2 R2 K10 [1]
       24 SETUPVAL                         R2 3
       25 GETUPVAL                         R2 4
       26 NAMECALL                         R2 R2 K11 ["Fire"]
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 5
       30 CALL                             R2 0 0
       31 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTLT                      R1 R0 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 ADDK                             R1 R1 K0 [1]
        7 SETUPVAL                         R1 0
        8 GETIMPORT                        R1 K3 [task.spawn]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_38:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 LOADN                            R4 1
        5 LOADN                            R5 0
        6 GETIMPORT                        R6 K3 [Instance.new]
        8 LOADK                            R7 K4 ["BindableEvent"]
        9 CALL                             R6 1 1
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          REF R5
       16 CAPTURE                          VAL R6
       17 CAPTURE                          VAL R7
       18 LOADN                            R10 1
       19 FASTCALL2                        MATH_MIN R1 R3 ; [+5]
       21 MOVE                             R12 R1
       22 MOVE                             R13 R3
       23 GETIMPORT                        R11 K7 [math.min]
       25 CALL                             R11 2 1
       26 MOVE                             R8 R11
       27 LOADN                            R9 1
       28 FORNPREP                         R8
       29 MOVE                             R11 R4
       30 JUMPIFNOTLT                      R3 R11 ; [+2]
       32 JUMP                             ; [+11]
       33 ADDK                             R4 R4 K8 [1]
       34 GETIMPORT                        R12 K11 [task.spawn]
       36 NEWCLOSURE                       R13 P1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R11
       40 CAPTURE                          REF R5
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 CALL                             R12 1 0
       44 FORNLOOP                         R8
       45 JUMPIFNOTLT                      R5 R3 ; [+7]
       47 GETTABLEKS                       R8 R6 K12 ["Event"]
       49 NAMECALL                         R8 R8 K13 ["Wait"]
       51 CALL                             R8 1 0
       52 JUMPBACK                         ; [-8]
       53 NAMECALL                         R8 R6 K14 ["Destroy"]
       55 CALL                             R8 1 0
       56 CLOSEUPVALS                      R4
       57 RETURN                           R0 0

PROTO_39:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["resolveInsertAsync"]
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["resolveInsertAsync"]
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R4 2
       11 GETUPVAL                         R5 3
       12 CALL                             R2 3 2
       13 MOVE                             R0 R2
       14 MOVE                             R1 R3
       15 JUMP                             ; [+13]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K1 ["publishAssetAsync"]
       19 GETUPVAL                         R3 3
       20 CALL                             R2 1 1
       21 MOVE                             R0 R2
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K2 ["loadAssetAsync"]
       25 GETTABLEKS                       R3 R0 K3 ["assetId"]
       27 CALL                             R2 1 1
       28 MOVE                             R1 R2
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K4 ["assembleResult"]
       32 MOVE                             R3 R1
       33 GETUPVAL                         R4 4
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 5
       36 JUMPIFNOT                        R3 ; [+3]
       37 GETUPVAL                         R3 5
       38 GETTABLEKS                       R3 R3 K5 ["processLoadedModel"]
       40 JUMPIFNOT                        R3 ; [+3]
       41 MOVE                             R4 R3
       42 MOVE                             R5 R2
       43 CALL                             R4 1 0
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K6 ["shouldCompensateImportRotation"]
       47 JUMPIFNOT                        R5 ; [+6]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K6 ["shouldCompensateImportRotation"]
       51 GETUPVAL                         R5 1
       52 CALL                             R4 1 1
       53 JUMP                             ; [+2]
       54 GETUPVAL                         R4 6
       55 CALL                             R4 0 1
       56 LOADNIL                          R5
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K7 ["applyInPlace"]
       60 JUMPIFNOT                        R6 ; [+28]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K7 ["applyInPlace"]
       64 MOVE                             R7 R2
       65 DUPTABLE                         R8 K13 [{"sourceInstance", "sourceParent", "sourcePivotCFrame", "sourceLocalSize", "replaceInPlace"}]
       66 GETUPVAL                         R9 7
       67 SETTABLEKS                       R9 R8 K8 ["sourceInstance"]
       69 GETUPVAL                         R9 8
       70 SETTABLEKS                       R9 R8 K9 ["sourceParent"]
       72 GETUPVAL                         R9 9
       73 SETTABLEKS                       R9 R8 K10 ["sourcePivotCFrame"]
       75 GETUPVAL                         R9 10
       76 SETTABLEKS                       R9 R8 K11 ["sourceLocalSize"]
       78 GETUPVAL                         R10 4
       79 GETTABLEKS                       R10 R10 K12 ["replaceInPlace"]
       81 JUMPIFEQKB                       R10 TRUE ; [+2]
       83 LOADB                            R9 0 +1
       84 LOADB                            R9 1
       85 SETTABLEKS                       R9 R8 K12 ["replaceInPlace"]
       87 CALL                             R6 2 1
       88 MOVE                             R5 R6
       89 JUMPIFNOT                        R5 ; [+2]
       90 MOVE                             R2 R5
       91 JUMP                             ; [+81]
       92 GETUPVAL                         R6 4
       93 GETTABLEKS                       R6 R6 K12 ["replaceInPlace"]
       95 JUMPIFNOT                        R6 ; [+44]
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R6 R6 K14 ["applyReplaceTransform"]
       99 MOVE                             R7 R2
      100 DUPTABLE                         R8 K16 [{"sourcePivotCFrame", "sourceMeshCFrame"}]
      101 GETUPVAL                         R9 9
      102 SETTABLEKS                       R9 R8 K10 ["sourcePivotCFrame"]
      104 GETUPVAL                         R9 1
      105 GETTABLEKS                       R9 R9 K15 ["sourceMeshCFrame"]
      107 SETTABLEKS                       R9 R8 K15 ["sourceMeshCFrame"]
      109 CALL                             R6 2 0
      110 GETUPVAL                         R6 7
      111 GETTABLEKS                       R6 R6 K17 ["Name"]
      113 SETTABLEKS                       R6 R2 K17 ["Name"]
      115 GETUPVAL                         R6 7
      116 LOADNIL                          R7
      117 SETTABLEKS                       R7 R6 K18 ["Parent"]
      119 GETUPVAL                         R6 1
      120 GETUPVAL                         R7 7
      121 SETTABLEKS                       R7 R6 K19 ["replacedInstance"]
      123 GETUPVAL                         R6 1
      124 GETUPVAL                         R7 8
      125 SETTABLEKS                       R7 R6 K20 ["replacedInstanceParent"]
      127 GETUPVAL                         R6 8
      128 JUMPIF                           R6 ; [+2]
      129 GETIMPORT                        R6 K22 [workspace]
      131 SETTABLEKS                       R6 R2 K18 ["Parent"]
      133 JUMPIFNOT                        R4 ; [+39]
      134 GETUPVAL                         R6 11
      135 GETTABLEKS                       R6 R6 K23 ["compensateImportRotation"]
      137 MOVE                             R7 R2
      138 CALL                             R6 1 0
      139 JUMP                             ; [+33]
      140 GETUPVAL                         R6 0
      141 GETTABLEKS                       R6 R6 K24 ["placeBesideSource"]
      143 JUMPIF                           R6 ; [+3]
      144 GETUPVAL                         R6 11
      145 GETTABLEKS                       R6 R6 K25 ["placeAssetNextToSource"]
      147 MOVE                             R7 R6
      148 MOVE                             R8 R2
      149 GETUPVAL                         R9 9
      150 GETUPVAL                         R10 10
      151 CALL                             R7 3 0
      152 GETUPVAL                         R8 7
      153 GETTABLEKS                       R8 R8 K17 ["Name"]
      155 GETUPVAL                         R9 0
      156 GETTABLEKS                       R9 R9 K26 ["suffix"]
      158 CONCAT                           R7 R8 R9
      159 SETTABLEKS                       R7 R2 K17 ["Name"]
      161 GETUPVAL                         R7 8
      162 JUMPIF                           R7 ; [+2]
      163 GETIMPORT                        R7 K22 [workspace]
      165 SETTABLEKS                       R7 R2 K18 ["Parent"]
      167 JUMPIFNOT                        R4 ; [+5]
      168 GETUPVAL                         R7 11
      169 GETTABLEKS                       R7 R7 K23 ["compensateImportRotation"]
      171 MOVE                             R8 R2
      172 CALL                             R7 1 0
      173 GETUPVAL                         R6 1
      174 GETUPVAL                         R7 12
      175 GETTABLEKS                       R7 R7 K27 ["captureAIGeneratedMarks"]
      177 MOVE                             R8 R2
      178 CALL                             R7 1 1
      179 SETTABLEKS                       R7 R6 K28 ["priorAIMarks"]
      181 GETUPVAL                         R8 13
      182 GETTABLEKS                       R8 R8 K29 ["getUniqueTag"]
      184 GETUPVAL                         R9 0
      185 GETTABLEKS                       R9 R9 K30 ["tagKind"]
      187 GETUPVAL                         R10 14
      188 CALL                             R8 2 -1
      189 NAMECALL                         R6 R2 K31 ["AddTag"]
      191 CALL                             R6 -1 0
      192 GETUPVAL                         R6 12
      193 GETTABLEKS                       R6 R6 K32 ["markAsAIGeneratedAsset"]
      195 MOVE                             R7 R2
      196 GETTABLEKS                       R8 R0 K33 ["generationId"]
      198 GETUPVAL                         R9 0
      199 GETTABLEKS                       R9 R9 K34 ["generationType"]
      201 CALL                             R6 3 0
      202 GETUPVAL                         R6 1
      203 SETTABLEKS                       R2 R6 K35 ["loadedModel"]
      205 GETUPVAL                         R6 4
      206 GETTABLEKS                       R6 R6 K36 ["selectInserted"]
      208 JUMPIFNOTEQKB                    R6 FALSE ; [+8]
      210 GETUPVAL                         R6 4
      211 GETTABLEKS                       R6 R6 K12 ["replaceInPlace"]
      213 JUMPIFNOTEQKB                    R6 TRUE ; [+14]
      215 GETUPVAL                         R6 15
      216 JUMPIFNOT                        R6 ; [+11]
      217 GETUPVAL                         R6 16
      218 GETTABLEKS                       R6 R6 K37 ["selection"]
      220 GETTABLEKS                       R6 R6 K38 ["set"]
      222 NEWTABLE                         R7 0 1
      224 MOVE                             R8 R2
      225 SETLIST                          R7 R8 1 [1]
      227 CALL                             R6 1 0
      228 GETUPVAL                         R6 1
      229 GETTABLEKS                       R6 R6 K39 ["previewAssets"]
      231 JUMPIFNOT                        R6 ; [+7]
      232 NAMECALL                         R7 R6 K40 ["Destroy"]
      234 CALL                             R7 1 0
      235 GETUPVAL                         R7 1
      236 LOADNIL                          R8
      237 SETTABLEKS                       R8 R7 K39 ["previewAssets"]
      239 RETURN                           R0 0

PROTO_40:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["%* failed (requestId=%*, generationId=%*): %*\n%*"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["opName"]
        6 GETUPVAL                         R5 1
        7 GETUPVAL                         R6 2
        8 MOVE                             R7 R0
        9 GETIMPORT                        R8 K6 [debug.traceback]
       11 CALL                             R8 0 1
       12 NAMECALL                         R2 R2 K7 ["format"]
       14 CALL                             R2 6 1
       15 CALL                             R1 1 0
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K9 [tostring]
       20 CALL                             R1 1 1
       21 SETUPVAL                         R1 3
       22 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R5 R0 K0 ["requestId"]
        2 GETTABLEKS                       R6 R2 K1 ["getGenerationSession"]
        4 MOVE                             R7 R5
        5 CALL                             R6 1 1
        6 GETTABLEKS                       R7 R6 K2 ["generationId"]
        8 FASTCALL1                        TYPEOF R7 ; [+3]
        9 MOVE                             R11 R7
       10 GETIMPORT                        R10 K4 [typeof]
       12 CALL                             R10 1 1
       13 JUMPIFEQKS                       R10 K5 ["string"] ; [+2]
       15 LOADB                            R9 0 +1
       16 LOADB                            R9 1
       17 FASTCALL2K                       ASSERT R9 K6 ; [+4]
       19 LOADK                            R10 K6 ["generationId not found in session"]
       20 GETIMPORT                        R8 K8 [assert]
       22 CALL                             R8 2 0
       23 GETTABLEKS                       R8 R6 K9 ["sourceInstance"]
       25 FASTCALL2K                       ASSERT R8 K10 ; [+5]
       27 MOVE                             R10 R8
       28 LOADK                            R11 K10 ["Source instance not found in session"]
       29 GETIMPORT                        R9 K8 [assert]
       31 CALL                             R9 2 0
       32 GETTABLEKS                       R9 R3 K11 ["requireService"]
       34 MOVE                             R10 R1
       35 CALL                             R9 1 1
       36 GETTABLEKS                       R10 R8 K12 ["Parent"]
       38 GETTABLEKS                       R11 R3 K13 ["computeSourcePivot"]
       40 MOVE                             R12 R0
       41 MOVE                             R13 R8
       42 MOVE                             R14 R6
       43 CALL                             R11 3 1
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K14 ["getLocalBoundingBoxSize"]
       47 MOVE                             R13 R8
       48 CALL                             R12 1 1
       49 LOADB                            R13 0
       50 GETTABLEKS                       R14 R1 K15 ["selection"]
       52 GETTABLEKS                       R14 R14 K16 ["get"]
       54 CALL                             R14 0 3
       55 FORGPREP                         R14
       56 JUMPIFNOTEQ                      R18 R8 ; [+3]
       58 LOADB                            R13 1
       59 JUMP                             ; [+2]
       60 FORGLOOP                         R14 2 ; [-5]
       62 GETTABLEKS                       R14 R1 K17 ["recording"]
       64 LOADB                            R15 0
       65 JUMPIFNOT                        R14 ; [+12]
       66 GETTABLEKS                       R16 R14 K18 ["startRecording"]
       68 MOVE                             R17 R5
       69 LOADK                            R18 K19 ["%* %*"]
       70 GETTABLEKS                       R20 R3 K20 ["recordingLabel"]
       72 MOVE                             R21 R5
       73 NAMECALL                         R18 R18 K21 ["format"]
       75 CALL                             R18 3 1
       76 CALL                             R16 2 1
       77 MOVE                             R15 R16
       78 LOADNIL                          R16
       79 GETIMPORT                        R17 K23 [xpcall]
       81 NEWCLOSURE                       R18 P0
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R12
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          VAL R5
       97 CAPTURE                          REF R13
       98 CAPTURE                          VAL R1
       99 NEWCLOSURE                       R19 P1
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R7
      103 CAPTURE                          REF R16
      104 CALL                             R17 2 0
      105 JUMPIFNOT                        R14 ; [+5]
      106 JUMPIFNOT                        R15 ; [+4]
      107 GETTABLEKS                       R17 R14 K24 ["endRecording"]
      109 MOVE                             R18 R5
      110 CALL                             R17 1 0
      111 JUMPIFEQKNIL                     R16 ; [+6]
      113 GETIMPORT                        R17 K26 [error]
      115 MOVE                             R18 R16
      116 LOADN                            R19 0
      117 CALL                             R17 2 0
      118 CLOSEUPVALS                      R13
      119 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+31]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+3]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 2
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K0 ["selection"]
       12 GETTABLEKS                       R1 R1 K1 ["set"]
       14 NEWTABLE                         R2 0 1
       16 MOVE                             R3 R0
       17 SETLIST                          R2 R3 1 [1]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 1
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R1 K2 ["loadedModel"]
       24 GETUPVAL                         R1 1
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K3 ["reappliedTarget"]
       28 GETUPVAL                         R1 1
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K4 ["reappliedClone"]
       32 RETURN                           R0 0
       33 GETUPVAL                         R0 4
       34 GETUPVAL                         R1 5
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R0 K5 ["Parent"]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K6 ["replacedInstanceParent"]
       41 SETTABLEKS                       R2 R1 K5 ["Parent"]
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K0 ["selection"]
       46 GETTABLEKS                       R2 R2 K1 ["set"]
       48 NEWTABLE                         R3 0 1
       50 MOVE                             R4 R1
       51 SETLIST                          R3 R4 1 [1]
       53 CALL                             R2 1 0
       54 GETUPVAL                         R2 1
       55 LOADNIL                          R3
       56 SETTABLEKS                       R3 R2 K2 ["loadedModel"]
       58 GETUPVAL                         R2 1
       59 LOADNIL                          R3
       60 SETTABLEKS                       R3 R2 K7 ["replacedInstance"]
       62 GETUPVAL                         R2 1
       63 LOADNIL                          R3
       64 SETTABLEKS                       R3 R2 K6 ["replacedInstanceParent"]
       66 RETURN                           R0 0

PROTO_43:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["%* failed (requestId=%*): %*\n%*"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["opName"]
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R0
        8 GETIMPORT                        R7 K6 [debug.traceback]
       10 CALL                             R7 0 1
       11 NAMECALL                         R2 R2 K7 ["format"]
       13 CALL                             R2 5 1
       14 CALL                             R1 1 0
       15 FASTCALL1                        TOSTRING R0 ; [+3]
       16 MOVE                             R2 R0
       17 GETIMPORT                        R1 K9 [tostring]
       19 CALL                             R1 1 1
       20 SETUPVAL                         R1 2
       21 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R4 R0 K0 ["requestId"]
        2 GETTABLEKS                       R5 R2 K1 ["getGenerationSession"]
        4 MOVE                             R6 R4
        5 CALL                             R5 1 1
        6 GETTABLEKS                       R6 R5 K2 ["replacedInstance"]
        8 GETTABLEKS                       R7 R5 K3 ["loadedModel"]
       10 GETTABLEKS                       R9 R5 K4 ["reappliedTarget"]
       12 JUMPIFEQKNIL                     R9 ; [+4]
       14 GETTABLEKS                       R8 R3 K5 ["revertInPlace"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R8
       18 JUMPIFNOTEQKNIL                  R8 ; [+7]
       20 JUMPIFEQKNIL                     R6 ; [+3]
       22 JUMPIFNOTEQKNIL                  R7 ; [+3]
       24 LOADB                            R9 0
       25 RETURN                           R9 1
       26 GETTABLEKS                       R9 R1 K6 ["recording"]
       28 LOADB                            R10 0
       29 JUMPIFNOT                        R9 ; [+12]
       30 GETTABLEKS                       R11 R9 K7 ["startRecording"]
       32 MOVE                             R12 R4
       33 LOADK                            R13 K8 ["%* %*"]
       34 GETTABLEKS                       R15 R3 K9 ["recordingLabel"]
       36 MOVE                             R16 R4
       37 NAMECALL                         R13 R13 K10 ["format"]
       39 CALL                             R13 3 1
       40 CALL                             R11 2 1
       41 MOVE                             R10 R11
       42 LOADNIL                          R11
       43 LOADB                            R12 0
       44 GETIMPORT                        R13 K12 [xpcall]
       46 NEWCLOSURE                       R14 P0
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R5
       49 CAPTURE                          REF R12
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R6
       53 NEWCLOSURE                       R15 P1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          REF R11
       57 CALL                             R13 2 0
       58 JUMPIFNOT                        R9 ; [+5]
       59 JUMPIFNOT                        R10 ; [+4]
       60 GETTABLEKS                       R13 R9 K13 ["endRecording"]
       62 MOVE                             R14 R4
       63 CALL                             R13 1 0
       64 JUMPIFEQKNIL                     R11 ; [+6]
       66 GETIMPORT                        R13 K15 [error]
       68 MOVE                             R14 R11
       69 LOADN                            R15 0
       70 CALL                             R13 2 0
       71 NOT                              R13 R12
       72 CLOSEUPVALS                      R11
       73 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Constants"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Gen3dTypes"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["GenerationSessions"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["HostSurface"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K4 ["Parent"]
       43 GETTABLEKS                       R5 R5 K9 ["Flags"]
       45 GETTABLEKS                       R5 R5 K10 ["getFFlagGen3dCompensateImportRotation"]
       47 CALL                             R4 1 1
       48 GETIMPORT                        R5 K1 [require]
       50 GETIMPORT                        R6 K3 [script]
       52 GETTABLEKS                       R6 R6 K4 ["Parent"]
       54 GETTABLEKS                       R6 R6 K9 ["Flags"]
       56 GETTABLEKS                       R6 R6 K11 ["getFFlagGen3dExportMeshAtOrigin"]
       58 CALL                             R5 1 1
       59 GETIMPORT                        R6 K1 [require]
       61 GETIMPORT                        R7 K3 [script]
       63 GETTABLEKS                       R7 R7 K4 ["Parent"]
       65 GETTABLEKS                       R7 R7 K9 ["Flags"]
       67 GETTABLEKS                       R7 R7 K12 ["getFFlagGen3dExportOriginBasePartCFrameFix"]
       69 CALL                             R6 1 1
       70 NEWTABLE                         R7 32 0
       72 DUPCLOSURE                       R8 K13 [PROTO_0]
       73 SETTABLEKS                       R8 R7 K14 ["getLocalBoundingBoxSize"]
       75 DUPCLOSURE                       R8 K15 [PROTO_1]
       76 NEWTABLE                         R9 0 8
       78 LOADK                            R10 K16 [{-1, -1, -1}]
       79 LOADK                            R11 K17 [{-1, -1, 1}]
       80 LOADK                            R12 K18 [{-1, 1, -1}]
       81 LOADK                            R13 K19 [{-1, 1, 1}]
       82 LOADK                            R14 K20 [{1, -1, -1}]
       83 LOADK                            R15 K21 [{1, -1, 1}]
       84 LOADK                            R16 K22 [{1, 1, -1}]
       85 LOADK                            R17 K23 [{1, 1, 1}]
       86 SETLIST                          R9 R10 8 [1]
       88 DUPCLOSURE                       R10 K24 [PROTO_3]
       89 CAPTURE                          VAL R9
       90 DUPCLOSURE                       R11 K25 [PROTO_4]
       91 CAPTURE                          VAL R10
       92 DUPCLOSURE                       R12 K26 [PROTO_5]
       93 CAPTURE                          VAL R6
       94 DUPCLOSURE                       R13 K27 [PROTO_6]
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R9
       97 SETTABLEKS                       R13 R7 K28 ["getWorldAxisAlignedBoundsCorners"]
       99 DUPCLOSURE                       R13 K29 [PROTO_7]
      100 CAPTURE                          VAL R9
      101 DUPCLOSURE                       R14 K30 [PROTO_8]
      102 DUPCLOSURE                       R15 K31 [PROTO_9]
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R9
      105 SETTABLEKS                       R15 R7 K32 ["getPartBoundsCorners"]
      107 DUPCLOSURE                       R15 K33 [PROTO_10]
      108 DUPCLOSURE                       R16 K34 [PROTO_11]
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R9
      112 SETTABLEKS                       R16 R7 K35 ["getFramingPointsAsync"]
      114 DUPCLOSURE                       R16 K36 [PROTO_12]
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R16 R7 K37 ["exportMeshToGlbAsync"]
      118 DUPCLOSURE                       R16 K38 [PROTO_13]
      119 SETTABLEKS                       R16 R7 K39 ["cloneAsArchivable"]
      121 DUPCLOSURE                       R16 K40 [PROTO_14]
      122 CAPTURE                          VAL R7
      123 SETTABLEKS                       R16 R7 K41 ["snapshotExportFingerprint"]
      125 DUPCLOSURE                       R16 K42 [PROTO_15]
      126 CAPTURE                          VAL R7
      127 DUPCLOSURE                       R17 K43 [PROTO_16]
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R6
      130 SETTABLEKS                       R17 R7 K44 ["createNormalizedExportClone"]
      132 DUPCLOSURE                       R17 K45 [PROTO_17]
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R6
      135 SETTABLEKS                       R17 R7 K46 ["exportInstanceToGlbAsync"]
      137 DUPCLOSURE                       R17 K47 [PROTO_18]
      138 SETTABLEKS                       R17 R7 K48 ["resolveSingleMeshPart"]
      140 DUPCLOSURE                       R17 K49 [PROTO_19]
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R5
      143 SETTABLEKS                       R17 R7 K50 ["resolveTextureGenExportTarget"]
      145 DUPCLOSURE                       R17 K51 [PROTO_20]
      146 CAPTURE                          VAL R6
      147 DUPCLOSURE                       R18 K52 [PROTO_22]
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R6
      151 SETTABLEKS                       R18 R7 K53 ["resolveTextureGenExportTransform"]
      153 DUPCLOSURE                       R18 K54 [PROTO_23]
      154 SETTABLEKS                       R18 R7 K55 ["isMultiMeshModel"]
      156 LOADK                            R18 K56 ["world"]
      157 SETTABLEKS                       R18 R7 K57 ["WORLD_WRAPPER_NAME"]
      159 NEWTABLE                         R18 2 0
      161 LOADB                            R19 1
      162 SETTABLEKS                       R19 R18 K58 ["Roblox Generated Object"]
      164 GETTABLEKS                       R19 R7 K57 ["WORLD_WRAPPER_NAME"]
      166 LOADB                            R20 1
      167 SETTABLE                         R20 R18 R19
      168 DUPCLOSURE                       R19 K59 [PROTO_25]
      169 CAPTURE                          VAL R18
      170 SETTABLEKS                       R19 R7 K60 ["collectFlattenedParts"]
      172 DUPCLOSURE                       R19 K61 [PROTO_26]
      173 CAPTURE                          VAL R7
      174 SETTABLEKS                       R19 R7 K62 ["computeBesideSourceOffsetX"]
      176 DUPCLOSURE                       R19 K63 [PROTO_27]
      177 SETTABLEKS                       R19 R7 K64 ["applyWorldTransform"]
      179 DUPCLOSURE                       R19 K65 [PROTO_28]
      180 CAPTURE                          VAL R7
      181 SETTABLEKS                       R19 R7 K66 ["translateAssetBy"]
      183 DUPCLOSURE                       R19 K67 [PROTO_29]
      184 SETTABLEKS                       R19 R7 K68 ["compensateImportRotation"]
      186 DUPCLOSURE                       R19 K69 [PROTO_30]
      187 CAPTURE                          VAL R6
      188 SETTABLEKS                       R19 R7 K70 ["getImportFlipTransform"]
      190 DUPCLOSURE                       R19 K71 [PROTO_31]
      191 CAPTURE                          VAL R7
      192 SETTABLEKS                       R19 R7 K72 ["placeAssetNextToSource"]
      194 DUPCLOSURE                       R19 K73 [PROTO_33]
      195 CAPTURE                          VAL R3
      196 SETTABLEKS                       R19 R7 K74 ["makeTranslator"]
      198 DUPCLOSURE                       R19 K75 [PROTO_34]
      199 CAPTURE                          VAL R1
      200 SETTABLEKS                       R19 R7 K76 ["classifyFailureReason"]
      202 DUPCLOSURE                       R19 K77 [PROTO_35]
      203 CAPTURE                          VAL R0
      204 SETTABLEKS                       R19 R7 K78 ["pollForCompletedStatus"]
      206 DUPCLOSURE                       R19 K79 [PROTO_38]
      207 SETTABLEKS                       R19 R7 K80 ["runWithConcurrencyAsync"]
      209 DUPCLOSURE                       R19 K81 [PROTO_41]
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R1
      213 SETTABLEKS                       R19 R7 K82 ["insertGeneratedModelAsync"]
      215 DUPCLOSURE                       R19 K83 [PROTO_44]
      216 SETTABLEKS                       R19 R7 K84 ["revertInsertedModelAsync"]
      218 RETURN                           R7 1
