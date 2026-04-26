PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R1 0 0
        3 GETUPVAL                         R2 0
        4 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        6 GETIMPORT                        R0 K1 [setmetatable]
        8 CALL                             R0 2 1
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["data"]
       13 NEWTABLE                         R1 0 0
       15 GETVARARGS                       R2 -1
       16 SETLIST                          R1 R2 -1 [1]
       18 LENGTH                           R2 R1
       19 JUMPIFNOTEQKN                    R2 K3 [1] ; [+21]
       21 GETTABLEN                        R3 R1 1
       22 FASTCALL1                        TYPEOF R3 ; [+2]
       23 GETIMPORT                        R2 K5 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKS                    R2 K6 ["table"] ; [+14]
       28 GETTABLEN                        R3 R1 1
       29 FASTCALL1                        GETMETATABLE R3 ; [+2]
       30 GETIMPORT                        R2 K8 [getmetatable]
       32 CALL                             R2 1 1
       33 GETUPVAL                         R3 0
       34 JUMPIFNOTEQ                      R2 R3 ; [+5]
       36 GETTABLEN                        R2 R1 1
       37 GETTABLEKS                       R1 R2 K2 ["data"]
       39 JUMP                             ; [+1]
       40 GETTABLEN                        R1 R1 1
       41 MOVE                             R2 R1
       42 LOADNIL                          R3
       43 LOADNIL                          R4
       44 FORGPREP                         R2
       45 FASTCALL1                        TYPEOF R6 ; [+3]
       46 MOVE                             R8 R6
       47 GETIMPORT                        R7 K5 [typeof]
       49 CALL                             R7 1 1
       50 JUMPIFEQKS                       R7 K9 ["number"] ; [+6]
       52 GETIMPORT                        R7 K11 [error]
       54 LOADK                            R8 K12 ["arg to FloatVector.new() not a number"]
       55 CALL                             R7 1 0
       56 JUMP                             ; [+8]
       57 GETTABLEKS                       R8 R0 K2 ["data"]
       59 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       61 MOVE                             R9 R6
       62 GETIMPORT                        R7 K14 [table.insert]
       64 CALL                             R7 2 0
       65 FORGLOOP                         R2 2 ; [-21]
       67 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["data"]
        2 LENGTH                           R1 R2
        3 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 FASTCALL1                        TYPEOF R4 ; [+2]
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+13]
       12 FASTCALL1                        TYPEOF R1 ; [+3]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K1 [typeof]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R4 0
       18 FASTCALL1                        TYPEOF R4 ; [+2]
       19 GETIMPORT                        R3 K1 [typeof]
       21 CALL                             R3 1 1
       22 JUMPIFEQ                         R2 R3 ; [+7]
       24 GETIMPORT                        R2 K3 [error]
       26 LOADK                            R3 K4 ["vector operation on non-vector type"]
       27 CALL                             R2 1 0
       28 LOADB                            R2 0
       29 RETURN                           R2 1
       30 GETTABLEKS                       R3 R0 K5 ["data"]
       32 LENGTH                           R2 R3
       33 GETTABLEKS                       R4 R1 K5 ["data"]
       35 LENGTH                           R3 R4
       36 JUMPIFEQ                         R2 R3 ; [+7]
       38 GETIMPORT                        R2 K3 [error]
       40 LOADK                            R3 K6 ["operating on vectors of different dimension"]
       41 CALL                             R2 1 0
       42 LOADB                            R2 0
       43 RETURN                           R2 1
       44 LOADB                            R2 1
       45 RETURN                           R2 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+5]
        7 GETTABLEKS                       R3 R0 K3 ["data"]
        9 GETTABLE                         R2 R3 R1
       10 RETURN                           R2 1
       11 GETUPVAL                         R3 0
       12 GETTABLE                         R2 R3 R1
       13 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+5]
        7 GETTABLEKS                       R3 R0 K3 ["data"]
        9 SETTABLE                         R2 R3 R1
       10 RETURN                           R0 0
       11 FASTCALL3                        RAWSET R0 R1 R2
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 MOVE                             R6 R2
       16 GETIMPORT                        R3 K5 [rawset]
       18 CALL                             R3 3 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["checkCompatible"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NEWTABLE                         R2 0 0
        8 LOADN                            R5 1
        9 GETTABLEKS                       R6 R0 K1 ["data"]
       11 LENGTH                           R3 R6
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 GETTABLEKS                       R10 R0 K1 ["data"]
       16 GETTABLE                         R9 R10 R5
       17 GETTABLEKS                       R11 R1 K1 ["data"]
       19 GETTABLE                         R10 R11 R5
       20 ADD                              R8 R9 R10
       21 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       23 MOVE                             R7 R2
       24 GETIMPORT                        R6 K4 [table.insert]
       26 CALL                             R6 2 0
       27 FORNLOOP                         R3
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K5 ["new"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 -1
       33 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["checkCompatible"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NEWTABLE                         R2 0 0
        8 LOADN                            R5 1
        9 GETTABLEKS                       R6 R0 K1 ["data"]
       11 LENGTH                           R3 R6
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 GETTABLEKS                       R10 R0 K1 ["data"]
       16 GETTABLE                         R9 R10 R5
       17 GETTABLEKS                       R11 R1 K1 ["data"]
       19 GETTABLE                         R10 R11 R5
       20 SUB                              R8 R9 R10
       21 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       23 MOVE                             R7 R2
       24 GETIMPORT                        R6 K4 [table.insert]
       26 CALL                             R6 2 0
       27 FORNLOOP                         R3
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K5 ["new"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 -1
       33 RETURN                           R3 -1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 FASTCALL1                        TYPEOF R4 ; [+2]
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+30]
       12 FASTCALL1                        TYPEOF R1 ; [+3]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K1 [typeof]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+23]
       19 NEWTABLE                         R2 0 0
       21 GETTABLEKS                       R3 R0 K3 ["data"]
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MUL                              R10 R7 R1
       27 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       29 MOVE                             R9 R2
       30 GETIMPORT                        R8 K6 [table.insert]
       32 CALL                             R8 2 0
       33 FORGLOOP                         R3 2 ; [-8]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K7 ["new"]
       38 MOVE                             R4 R2
       39 CALL                             R3 1 -1
       40 RETURN                           R3 -1
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R2 R3 K8 ["checkCompatible"]
       44 MOVE                             R3 R0
       45 MOVE                             R4 R1
       46 CALL                             R2 2 0
       47 NEWTABLE                         R2 0 0
       49 LOADN                            R5 1
       50 GETTABLEKS                       R6 R0 K3 ["data"]
       52 LENGTH                           R3 R6
       53 LOADN                            R4 1
       54 FORNPREP                         R3
       55 GETTABLEKS                       R10 R0 K3 ["data"]
       57 GETTABLE                         R9 R10 R5
       58 GETTABLEKS                       R11 R1 K3 ["data"]
       60 GETTABLE                         R10 R11 R5
       61 MUL                              R8 R9 R10
       62 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       64 MOVE                             R7 R2
       65 GETIMPORT                        R6 K6 [table.insert]
       67 CALL                             R6 2 0
       68 FORNLOOP                         R3
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R3 R4 K7 ["new"]
       72 MOVE                             R4 R2
       73 CALL                             R3 1 -1
       74 RETURN                           R3 -1

PROTO_8:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 FASTCALL1                        TYPEOF R4 ; [+2]
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+30]
       12 FASTCALL1                        TYPEOF R1 ; [+3]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K1 [typeof]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+23]
       19 NEWTABLE                         R2 0 0
       21 GETTABLEKS                       R3 R0 K3 ["data"]
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 DIV                              R10 R7 R1
       27 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       29 MOVE                             R9 R2
       30 GETIMPORT                        R8 K6 [table.insert]
       32 CALL                             R8 2 0
       33 FORGLOOP                         R3 2 ; [-8]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K7 ["new"]
       38 MOVE                             R4 R2
       39 CALL                             R3 1 -1
       40 RETURN                           R3 -1
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R2 R3 K8 ["checkCompatible"]
       44 MOVE                             R3 R0
       45 MOVE                             R4 R1
       46 CALL                             R2 2 0
       47 NEWTABLE                         R2 0 0
       49 LOADN                            R5 1
       50 GETTABLEKS                       R6 R0 K3 ["data"]
       52 LENGTH                           R3 R6
       53 LOADN                            R4 1
       54 FORNPREP                         R3
       55 GETTABLEKS                       R10 R0 K3 ["data"]
       57 GETTABLE                         R9 R10 R5
       58 GETTABLEKS                       R11 R1 K3 ["data"]
       60 GETTABLE                         R10 R11 R5
       61 DIV                              R8 R9 R10
       62 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       64 MOVE                             R7 R2
       65 GETIMPORT                        R6 K6 [table.insert]
       67 CALL                             R6 2 0
       68 FORNLOOP                         R3
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R3 R4 K7 ["new"]
       72 MOVE                             R4 R2
       73 CALL                             R3 1 -1
       74 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["checkCompatible"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 LOADN                            R2 0
        7 LOADN                            R5 1
        8 GETTABLEKS                       R6 R0 K1 ["data"]
       10 LENGTH                           R3 R6
       11 LOADN                            R4 1
       12 FORNPREP                         R3
       13 GETTABLEKS                       R8 R0 K1 ["data"]
       15 GETTABLE                         R7 R8 R5
       16 GETTABLEKS                       R9 R1 K1 ["data"]
       18 GETTABLE                         R8 R9 R5
       19 MUL                              R6 R7 R8
       20 ADD                              R2 R2 R6
       21 FORNLOOP                         R3
       22 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["checkCompatible"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R3 R0 K1 ["data"]
        8 LENGTH                           R2 R3
        9 JUMPIFNOTEQKN                    R2 K2 [3] ; [+6]
       11 GETTABLEKS                       R3 R1 K1 ["data"]
       13 LENGTH                           R2 R3
       14 JUMPIFEQKN                       R2 K2 [3] ; [+7]
       16 GETIMPORT                        R2 K4 [error]
       18 LOADK                            R3 K5 ["cross product is only defined for two 3 dimensional vectors"]
       19 CALL                             R2 1 0
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K6 ["new"]
       25 GETTABLEKS                       R6 R0 K1 ["data"]
       27 GETTABLEN                        R5 R6 2
       28 GETTABLEKS                       R7 R1 K1 ["data"]
       30 GETTABLEN                        R6 R7 3
       31 MUL                              R4 R5 R6
       32 GETTABLEKS                       R7 R0 K1 ["data"]
       34 GETTABLEN                        R6 R7 3
       35 GETTABLEKS                       R8 R1 K1 ["data"]
       37 GETTABLEN                        R7 R8 2
       38 MUL                              R5 R6 R7
       39 SUB                              R3 R4 R5
       40 GETTABLEKS                       R7 R0 K1 ["data"]
       42 GETTABLEN                        R6 R7 3
       43 GETTABLEKS                       R8 R1 K1 ["data"]
       45 GETTABLEN                        R7 R8 1
       46 MUL                              R5 R6 R7
       47 GETTABLEKS                       R8 R0 K1 ["data"]
       49 GETTABLEN                        R7 R8 1
       50 GETTABLEKS                       R9 R1 K1 ["data"]
       52 GETTABLEN                        R8 R9 3
       53 MUL                              R6 R7 R8
       54 SUB                              R4 R5 R6
       55 GETTABLEKS                       R8 R0 K1 ["data"]
       57 GETTABLEN                        R7 R8 1
       58 GETTABLEKS                       R9 R1 K1 ["data"]
       60 GETTABLEN                        R8 R9 2
       61 MUL                              R6 R7 R8
       62 GETTABLEKS                       R9 R0 K1 ["data"]
       64 GETTABLEN                        R8 R9 2
       65 GETTABLEKS                       R10 R1 K1 ["data"]
       67 GETTABLEN                        R9 R10 1
       68 MUL                              R7 R8 R9
       69 SUB                              R5 R6 R7
       70 CALL                             R2 3 -1
       71 RETURN                           R2 -1

PROTO_11:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["data"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 POWK                             R7 R6 K1 [2]
        7 ADD                              R1 R1 R7
        8 FORGLOOP                         R2 2 ; [-3]
       10 FASTCALL1                        MATH_SQRT R1 ; [+3]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K4 [math.sqrt]
       14 CALL                             R2 1 1
       15 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["checkCompatible"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 JUMPIF                           R3 ; [+2]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 ORK                              R2 R2 K1 [1E-05]
       10 LOADN                            R5 1
       11 GETTABLEKS                       R6 R0 K2 ["data"]
       13 LENGTH                           R3 R6
       14 LOADN                            R4 1
       15 FORNPREP                         R3
       16 GETTABLEKS                       R9 R0 K2 ["data"]
       18 GETTABLE                         R8 R9 R5
       19 GETTABLEKS                       R10 R1 K2 ["data"]
       21 GETTABLE                         R9 R10 R5
       22 SUB                              R7 R8 R9
       23 FASTCALL1                        MATH_ABS R7 ; [+2]
       24 GETIMPORT                        R6 K5 [math.abs]
       26 CALL                             R6 1 1
       27 JUMPIFNOTLT                      R2 R6 ; [+3]
       29 LOADB                            R6 0
       30 RETURN                           R6 1
       31 FORNLOOP                         R3
       32 LOADB                            R3 1
       33 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K1 ["new"]
        7 DUPCLOSURE                       R1 K2 [PROTO_1]
        8 SETTABLEKS                       R1 R0 K3 ["getSize"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["checkCompatible"]
       14 DUPCLOSURE                       R1 K6 [PROTO_3]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["__index"]
       18 DUPCLOSURE                       R1 K8 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K9 ["__newindex"]
       21 DUPCLOSURE                       R1 K10 [PROTO_5]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K11 ["__add"]
       25 DUPCLOSURE                       R1 K12 [PROTO_6]
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K13 ["__sub"]
       29 DUPCLOSURE                       R1 K14 [PROTO_7]
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K15 ["__mul"]
       33 DUPCLOSURE                       R1 K16 [PROTO_8]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K17 ["__div"]
       37 DUPCLOSURE                       R1 K18 [PROTO_9]
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K19 ["dot"]
       41 DUPCLOSURE                       R1 K20 [PROTO_10]
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K21 ["cross"]
       45 DUPCLOSURE                       R1 K22 [PROTO_11]
       46 SETTABLEKS                       R1 R0 K23 ["magnitude"]
       48 DUPCLOSURE                       R1 K24 [PROTO_12]
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K25 ["fuzzyEq"]
       52 RETURN                           R0 1
