PROTO_0:
        0 LENGTH                           R3 R1
        1 LENGTH                           R4 R2
        2 JUMPIFEQ                         R3 R4 ; [+3]
        4 LOADB                            R3 0
        5 RETURN                           R3 1
        6 LOADN                            R5 1
        7 LENGTH                           R3 R1
        8 LOADN                            R4 1
        9 FORNPREP                         R3
       10 GETTABLE                         R6 R1 R5
       11 GETTABLE                         R7 R2 R5
       12 JUMPIFEQ                         R6 R7 ; [+3]
       14 LOADB                            R6 0
       15 RETURN                           R6 1
       16 FORNLOOP                         R3
       17 LOADB                            R3 1
       18 RETURN                           R3 1

PROTO_1:
        0 JUMPIF                           R1 ; [+2]
        1 LOADN                            R3 0
        2 RETURN                           R3 1
        3 LOADN                            R5 1
        4 LENGTH                           R3 R2
        5 LOADN                            R4 1
        6 FORNPREP                         R3
        7 GETTABLE                         R6 R2 R5
        8 JUMPIFNOTEQ                      R6 R1 ; [+2]
       10 RETURN                           R5 1
       11 FORNLOOP                         R3
       12 LOADN                            R3 0
       13 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["findItemInTable"]
        5 CALL                             R3 3 1
        6 LOADN                            R4 0
        7 JUMPIFNOTLT                      R4 R3 ; [+8]
        9 GETIMPORT                        R4 K3 [table.remove]
       11 MOVE                             R5 R2
       12 MOVE                             R6 R3
       13 CALL                             R4 2 0
       14 LOADB                            R4 1
       15 RETURN                           R4 1
       16 LOADB                            R4 0
       17 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R4 R1 K0 ["X"]
        2 FASTCALL1                        MATH_ABS R4 ; [+2]
        3 GETIMPORT                        R3 K3 [math.abs]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R5 R1 K4 ["Y"]
        8 FASTCALL1                        MATH_ABS R5 ; [+2]
        9 GETIMPORT                        R4 K3 [math.abs]
       11 CALL                             R4 1 1
       12 ADD                              R2 R3 R4
       13 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R5 R1 K0 ["X"]
        2 GETTABLEKS                       R6 R2 K1 ["Y"]
        4 MUL                              R4 R5 R6
        5 GETTABLEKS                       R6 R1 K1 ["Y"]
        7 GETTABLEKS                       R7 R2 K0 ["X"]
        9 MUL                              R5 R6 R7
       10 SUB                              R3 R4 R5
       11 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K0 ["crossVector2"]
        5 CALL                             R4 3 1
        6 MOVE                             R7 R2
        7 NAMECALL                         R5 R1 K1 ["Dot"]
        9 CALL                             R5 2 1
       10 FASTCALL2                        MATH_ATAN2 R4 R5 ; [+3]
       12 GETIMPORT                        R3 K4 [math.atan2]
       14 CALL                             R3 2 1
       15 RETURN                           R3 1

PROTO_6:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R4 R1 K3 ["X"]
        4 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        5 GETIMPORT                        R3 K6 [math.floor]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R5 R1 K7 ["Y"]
       10 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       11 GETIMPORT                        R4 K6 [math.floor]
       13 CALL                             R4 1 1
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_7:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 GETTABLEKS                       R5 R1 K3 ["X"]
        4 GETTABLEKS                       R6 R2 K3 ["X"]
        6 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        8 GETIMPORT                        R4 K6 [math.min]
       10 CALL                             R4 2 1
       11 GETTABLEKS                       R6 R1 K7 ["Y"]
       13 GETTABLEKS                       R7 R2 K7 ["Y"]
       15 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       17 GETIMPORT                        R5 K6 [math.min]
       19 CALL                             R5 2 1
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_8:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 GETTABLEKS                       R5 R1 K3 ["X"]
        4 GETTABLEKS                       R6 R2 K3 ["X"]
        6 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
        8 GETIMPORT                        R4 K6 [math.max]
       10 CALL                             R4 2 1
       11 GETTABLEKS                       R6 R1 K7 ["Y"]
       13 GETTABLEKS                       R7 R2 K7 ["Y"]
       15 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       17 GETIMPORT                        R5 K6 [math.max]
       19 CALL                             R5 2 1
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_9:
        0 GETIMPORT                        R2 K2 [UDim2.new]
        2 LOADN                            R3 0
        3 GETTABLEKS                       R4 R1 K3 ["X"]
        5 LOADN                            R5 0
        6 GETTABLEKS                       R6 R1 K4 ["Y"]
        8 CALL                             R2 4 -1
        9 RETURN                           R2 -1

PROTO_10:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R2 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R1 1
        4 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 GETIMPORT                        R3 K2 [math.min]
       10 CALL                             R3 2 1
       11 RETURN                           R3 1

PROTO_11:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R2 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R1 1
        4 FASTCALL2                        MATH_MAX R1 R2 ; [+5]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 GETIMPORT                        R3 K2 [math.max]
       10 CALL                             R3 2 1
       11 RETURN                           R3 1

PROTO_12:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R4 R1 K0 ["X"]
        3 GETTABLEKS                       R3 R4 K1 ["Offset"]
        5 JUMPIFNOTEQKN                    R3 K2 [0] ; [+23]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R4 R1 K3 ["Y"]
       10 GETTABLEKS                       R3 R4 K1 ["Offset"]
       12 JUMPIFNOTEQKN                    R3 K2 [0] ; [+16]
       14 LOADB                            R2 1
       15 GETTABLEKS                       R4 R1 K0 ["X"]
       17 GETTABLEKS                       R3 R4 K4 ["Scale"]
       19 JUMPIFNOTEQKN                    R3 K2 [0] ; [+9]
       21 GETTABLEKS                       R4 R1 K3 ["Y"]
       23 GETTABLEKS                       R3 R4 K4 ["Scale"]
       25 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_13:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R4 R1 K0 ["X"]
        3 GETTABLEKS                       R3 R4 K1 ["Scale"]
        5 JUMPIFNOTEQKN                    R3 K2 [0] ; [+23]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R4 R1 K3 ["Y"]
       10 GETTABLEKS                       R3 R4 K1 ["Scale"]
       12 JUMPIFNOTEQKN                    R3 K2 [0] ; [+16]
       14 LOADB                            R2 1
       15 GETTABLEKS                       R4 R1 K0 ["X"]
       17 GETTABLEKS                       R3 R4 K4 ["Offset"]
       19 JUMPIFNOTEQKN                    R3 K2 [0] ; [+9]
       21 GETTABLEKS                       R4 R1 K3 ["Y"]
       23 GETTABLEKS                       R3 R4 K4 ["Offset"]
       25 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_14:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        TYPE R2 ; [+3]
       10 MOVE                             R6 R2
       11 GETIMPORT                        R5 K1 [type]
       13 CALL                             R5 1 1
       14 JUMPIFEQKS                       R5 K2 ["number"] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 JUMPIFNOT                        R3 ; [+7]
       19 JUMPIFNOT                        R4 ; [+6]
       20 SUB                              R6 R2 R1
       21 FASTCALL1                        MATH_ABS R6 ; [+2]
       22 GETIMPORT                        R5 K5 [math.abs]
       24 CALL                             R5 1 1
       25 RETURN                           R5 1
       26 JUMPIF                           R3 ; [+1]
       27 JUMPIFNOT                        R4 ; [+4]
       28 GETUPVAL                         R5 0
       29 LOADK                            R6 K6 ["passed in one number and one non number"]
       30 CALL                             R5 1 0
       31 RETURN                           R0 0
       32 SUB                              R6 R2 R1
       33 GETTABLEKS                       R5 R6 K7 ["magnitude"]
       35 RETURN                           R5 1
       36 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 FASTCALL1                        GETMETATABLE R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K1 [getmetatable]
        6 CALL                             R3 1 1
        7 LOADNIL                          R4
        8 GETIMPORT                        R5 K3 [pairs]
       10 MOVE                             R6 R1
       11 CALL                             R5 1 3
       12 FORGPREP_NEXT                    R5
       13 FASTCALL1                        TYPE R9 ; [+3]
       14 MOVE                             R11 R9
       15 GETIMPORT                        R10 K5 [type]
       17 CALL                             R10 1 1
       18 JUMPIFNOTEQKS                    R10 K6 ["table"] ; [+17]
       20 JUMPIFNOTEQ                      R9 R3 ; [+9]
       22 GETUPVAL                         R10 0
       23 MOVE                             R12 R9
       24 NAMECALL                         R10 R10 K7 ["cloneTable"]
       26 CALL                             R10 2 1
       27 MOVE                             R9 R10
       28 MOVE                             R4 R9
       29 JUMP                             ; [+6]
       30 GETUPVAL                         R10 0
       31 MOVE                             R12 R9
       32 NAMECALL                         R10 R10 K7 ["cloneTable"]
       34 CALL                             R10 2 1
       35 MOVE                             R9 R10
       36 SETTABLE                         R9 R2 R8
       37 FORGLOOP                         R5 2 ; [-25]
       39 JUMPIFEQKNIL                     R3 ; [+9]
       41 JUMPIFNOTEQKNIL                  R4 ; [+7]
       43 GETUPVAL                         R5 0
       44 MOVE                             R7 R3
       45 NAMECALL                         R5 R5 K7 ["cloneTable"]
       47 CALL                             R5 2 1
       48 MOVE                             R4 R5
       49 JUMPIFNOT                        R4 ; [+7]
       50 FASTCALL2                        SETMETATABLE R2 R4 ; [+5]
       52 MOVE                             R6 R2
       53 MOVE                             R7 R4
       54 GETIMPORT                        R5 K9 [setmetatable]
       56 CALL                             R5 2 0
       57 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["cloneTable"]
        4 CALL                             R3 2 1
        5 LOADN                            R6 1
        6 LENGTH                           R4 R2
        7 LOADN                            R5 1
        8 FORNPREP                         R4
        9 GETTABLE                         R9 R2 R6
       10 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       12 MOVE                             R8 R3
       13 GETIMPORT                        R7 K3 [table.insert]
       15 CALL                             R7 2 0
       16 FORNLOOP                         R4
       17 RETURN                           R3 1

PROTO_17:
        0 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        2 RETURN                           R1 1
        3 FASTCALL1                        MATH_RAD R3 ; [+3]
        4 MOVE                             R5 R3
        5 GETIMPORT                        R4 K3 [math.rad]
        7 CALL                             R4 1 1
        8 GETIMPORT                        R5 K6 [Vector2.new]
       10 GETTABLEKS                       R10 R1 K7 ["X"]
       12 GETTABLEKS                       R11 R2 K7 ["X"]
       14 SUB                              R9 R10 R11
       15 FASTCALL1                        MATH_COS R4 ; [+3]
       16 MOVE                             R11 R4
       17 GETIMPORT                        R10 K9 [math.cos]
       19 CALL                             R10 1 1
       20 MUL                              R8 R9 R10
       21 GETTABLEKS                       R11 R1 K10 ["Y"]
       23 GETTABLEKS                       R12 R2 K10 ["Y"]
       25 SUB                              R10 R11 R12
       26 FASTCALL1                        MATH_SIN R4 ; [+3]
       27 MOVE                             R12 R4
       28 GETIMPORT                        R11 K12 [math.sin]
       30 CALL                             R11 1 1
       31 MUL                              R9 R10 R11
       32 SUB                              R7 R8 R9
       33 GETTABLEKS                       R8 R2 K7 ["X"]
       35 ADD                              R6 R7 R8
       36 GETTABLEKS                       R11 R1 K7 ["X"]
       38 GETTABLEKS                       R12 R2 K7 ["X"]
       40 SUB                              R10 R11 R12
       41 FASTCALL1                        MATH_SIN R4 ; [+3]
       42 MOVE                             R12 R4
       43 GETIMPORT                        R11 K12 [math.sin]
       45 CALL                             R11 1 1
       46 MUL                              R9 R10 R11
       47 GETTABLEKS                       R12 R1 K10 ["Y"]
       49 GETTABLEKS                       R13 R2 K10 ["Y"]
       51 SUB                              R11 R12 R13
       52 FASTCALL1                        MATH_COS R4 ; [+3]
       53 MOVE                             R13 R4
       54 GETIMPORT                        R12 K9 [math.cos]
       56 CALL                             R12 1 1
       57 MUL                              R10 R11 R12
       58 ADD                              R8 R9 R10
       59 GETTABLEKS                       R9 R2 K10 ["Y"]
       61 ADD                              R7 R8 R9
       62 CALL                             R5 2 -1
       63 RETURN                           R5 -1

PROTO_18:
        0 GETIMPORT                        R4 K2 [Vector2.new]
        2 GETTABLEKS                       R6 R1 K3 ["X"]
        4 GETTABLEKS                       R5 R6 K4 ["Offset"]
        6 GETTABLEKS                       R7 R1 K5 ["Y"]
        8 GETTABLEKS                       R6 R7 K4 ["Offset"]
       10 CALL                             R4 2 1
       11 GETIMPORT                        R6 K2 [Vector2.new]
       13 GETTABLEKS                       R8 R1 K3 ["X"]
       15 GETTABLEKS                       R7 R8 K6 ["Scale"]
       17 GETTABLEKS                       R9 R1 K5 ["Y"]
       19 GETTABLEKS                       R8 R9 K6 ["Scale"]
       21 CALL                             R6 2 1
       22 MUL                              R5 R6 R2
       23 ADD                              R3 R4 R5
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Error"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 32 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 SETTABLEKS                       R2 R1 K7 ["tablesAreEquivalent"]
       15 DUPCLOSURE                       R2 K8 [PROTO_1]
       16 SETTABLEKS                       R2 R1 K9 ["findItemInTable"]
       18 DUPCLOSURE                       R2 K10 [PROTO_2]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R2 R1 K11 ["removeItemFromTable"]
       22 DUPCLOSURE                       R2 K12 [PROTO_3]
       23 SETTABLEKS                       R2 R1 K13 ["manhattanDistance"]
       25 DUPCLOSURE                       R2 K14 [PROTO_4]
       26 SETTABLEKS                       R2 R1 K15 ["crossVector2"]
       28 DUPCLOSURE                       R2 K16 [PROTO_5]
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R2 R1 K17 ["angleVector2"]
       32 DUPCLOSURE                       R2 K18 [PROTO_6]
       33 SETTABLEKS                       R2 R1 K19 ["floorVector2"]
       35 DUPCLOSURE                       R2 K20 [PROTO_7]
       36 SETTABLEKS                       R2 R1 K21 ["minVector2"]
       38 DUPCLOSURE                       R2 K22 [PROTO_8]
       39 SETTABLEKS                       R2 R1 K23 ["maxVector2"]
       41 DUPCLOSURE                       R2 K24 [PROTO_9]
       42 SETTABLEKS                       R2 R1 K25 ["vector2ToUDim2Offset"]
       44 DUPCLOSURE                       R2 K26 [PROTO_10]
       45 SETTABLEKS                       R2 R1 K27 ["minOrNil"]
       47 DUPCLOSURE                       R2 K28 [PROTO_11]
       48 SETTABLEKS                       R2 R1 K29 ["maxOrNil"]
       50 DUPCLOSURE                       R2 K30 [PROTO_12]
       51 SETTABLEKS                       R2 R1 K31 ["isOnlyScaleUDim2"]
       53 DUPCLOSURE                       R2 K32 [PROTO_13]
       54 SETTABLEKS                       R2 R1 K33 ["isOnlyOffsetUDim2"]
       56 DUPCLOSURE                       R2 K34 [PROTO_14]
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R2 R1 K35 ["distance"]
       60 DUPCLOSURE                       R2 K36 [PROTO_15]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R2 R1 K37 ["cloneTable"]
       64 DUPCLOSURE                       R2 K38 [PROTO_16]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R2 R1 K39 ["joinTables"]
       68 DUPCLOSURE                       R2 K40 [PROTO_17]
       69 SETTABLEKS                       R2 R1 K41 ["rotate"]
       71 DUPCLOSURE                       R2 K42 [PROTO_18]
       72 SETTABLEKS                       R2 R1 K43 ["multUDimWithVector"]
       74 RETURN                           R1 1
