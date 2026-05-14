PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQ                         R2 R3 ; [+16]
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R4 R1
       14 GETIMPORT                        R3 K3 [tostring]
       16 CALL                             R3 1 1
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R5 R0
       19 GETIMPORT                        R4 K3 [tostring]
       21 CALL                             R4 1 1
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1
       27 JUMPIFEQ                         R1 R0 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQ                         R2 R3 ; [+16]
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R4 R1
       14 GETIMPORT                        R3 K3 [tostring]
       16 CALL                             R3 1 1
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R5 R0
       19 GETIMPORT                        R4 K3 [tostring]
       21 CALL                             R4 1 1
       22 JUMPIFNOTEQ                      R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1
       27 JUMPIFNOTEQ                      R1 R0 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R3 K2 [string.match]
        2 FASTCALL1                        TOSTRING R1 ; [+3]
        3 MOVE                             R5 R1
        4 GETIMPORT                        R4 K4 [tostring]
        6 CALL                             R4 1 1
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R6 R0
        9 GETIMPORT                        R5 K4 [tostring]
       11 CALL                             R5 1 1
       12 CALL                             R3 2 1
       13 JUMPIFNOTEQKNIL                  R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_3:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [tonumber]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TONUMBER R0 ; [+3]
        6 MOVE                             R5 R0
        7 GETIMPORT                        R4 K1 [tonumber]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [tonumber]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TONUMBER R0 ; [+3]
        6 MOVE                             R5 R0
        7 GETIMPORT                        R4 K1 [tonumber]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_5:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R7 R1
        2 GETIMPORT                        R6 K2 [tonumber]
        4 CALL                             R6 1 1
        5 ORK                              R5 R6 K0 [0]
        6 FASTCALL1                        TONUMBER R0 ; [+3]
        7 MOVE                             R8 R0
        8 GETIMPORT                        R7 K2 [tonumber]
       10 CALL                             R7 1 1
       11 ORK                              R6 R7 K0 [0]
       12 SUB                              R4 R5 R6
       13 FASTCALL1                        MATH_ABS R4 ; [+2]
       14 GETIMPORT                        R3 K5 [math.abs]
       16 CALL                             R3 1 1
       17 FASTCALL1                        TONUMBER R0 ; [+3]
       18 MOVE                             R7 R0
       19 GETIMPORT                        R6 K2 [tonumber]
       21 CALL                             R6 1 1
       22 ORK                              R5 R6 K7 [1]
       23 MULK                             R4 R5 K6 [0.001]
       24 JUMPIFLT                         R3 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 RETURN                           R2 1

PROTO_6:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Vector3"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R0 K3 ["FuzzyEq"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_7:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Vector3"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 LOADB                            R2 0
       10 GETTABLEKS                       R3 R1 K3 ["X"]
       12 GETTABLEKS                       R4 R0 K3 ["X"]
       14 JUMPIFNOTLT                      R4 R3 ; [+16]
       16 LOADB                            R2 0
       17 GETTABLEKS                       R3 R1 K4 ["Y"]
       19 GETTABLEKS                       R4 R0 K4 ["Y"]
       21 JUMPIFNOTLT                      R4 R3 ; [+9]
       23 GETTABLEKS                       R3 R1 K5 ["Z"]
       25 GETTABLEKS                       R4 R0 K5 ["Z"]
       27 JUMPIFLT                         R4 R3 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_8:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Vector3"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 LOADB                            R2 0
       10 GETTABLEKS                       R3 R1 K3 ["X"]
       12 GETTABLEKS                       R4 R0 K3 ["X"]
       14 JUMPIFNOTLT                      R3 R4 ; [+16]
       16 LOADB                            R2 0
       17 GETTABLEKS                       R3 R1 K4 ["Y"]
       19 GETTABLEKS                       R4 R0 K4 ["Y"]
       21 JUMPIFNOTLT                      R3 R4 ; [+9]
       23 GETTABLEKS                       R3 R1 K5 ["Z"]
       25 GETTABLEKS                       R4 R0 K5 ["Z"]
       27 JUMPIFLT                         R3 R4 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_9:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["CFrame"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R0 K3 ["FuzzyEq"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_10:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["CFrame"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 LOADB                            R2 0
       10 GETTABLEKS                       R3 R1 K3 ["Position"]
       12 GETTABLEKS                       R3 R3 K4 ["X"]
       14 GETTABLEKS                       R4 R0 K3 ["Position"]
       16 GETTABLEKS                       R4 R4 K4 ["X"]
       18 JUMPIFNOTLT                      R4 R3 ; [+24]
       20 LOADB                            R2 0
       21 GETTABLEKS                       R3 R1 K3 ["Position"]
       23 GETTABLEKS                       R3 R3 K5 ["Y"]
       25 GETTABLEKS                       R4 R0 K3 ["Position"]
       27 GETTABLEKS                       R4 R4 K5 ["Y"]
       29 JUMPIFNOTLT                      R4 R3 ; [+13]
       31 GETTABLEKS                       R3 R1 K3 ["Position"]
       33 GETTABLEKS                       R3 R3 K6 ["Z"]
       35 GETTABLEKS                       R4 R0 K3 ["Position"]
       37 GETTABLEKS                       R4 R4 K6 ["Z"]
       39 JUMPIFLT                         R4 R3 ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 RETURN                           R2 1

PROTO_11:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["CFrame"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 LOADB                            R2 0
       10 GETTABLEKS                       R3 R1 K3 ["Position"]
       12 GETTABLEKS                       R3 R3 K4 ["X"]
       14 GETTABLEKS                       R4 R0 K3 ["Position"]
       16 GETTABLEKS                       R4 R4 K4 ["X"]
       18 JUMPIFNOTLT                      R3 R4 ; [+24]
       20 LOADB                            R2 0
       21 GETTABLEKS                       R3 R1 K3 ["Position"]
       23 GETTABLEKS                       R3 R3 K5 ["Y"]
       25 GETTABLEKS                       R4 R0 K3 ["Position"]
       27 GETTABLEKS                       R4 R4 K5 ["Y"]
       29 JUMPIFNOTLT                      R3 R4 ; [+13]
       31 GETTABLEKS                       R3 R1 K3 ["Position"]
       33 GETTABLEKS                       R3 R3 K6 ["Z"]
       35 GETTABLEKS                       R4 R0 K3 ["Position"]
       37 GETTABLEKS                       R4 R4 K6 ["Z"]
       39 JUMPIFLT                         R3 R4 ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["EQUALS"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["NOT"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["MATCH"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["GREATERTHAN"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["LESSTHAN"]
       18 DUPCLOSURE                       R1 K10 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K11 ["FUZZYEQUALS"]
       21 DUPCLOSURE                       R1 K12 [PROTO_6]
       22 SETTABLEKS                       R1 R0 K13 ["VEC_FUZZYEQUALS"]
       24 DUPCLOSURE                       R1 K14 [PROTO_7]
       25 SETTABLEKS                       R1 R0 K15 ["VEC_GREATERTHAN"]
       27 DUPCLOSURE                       R1 K16 [PROTO_8]
       28 SETTABLEKS                       R1 R0 K17 ["VEC_LESSTHAN"]
       30 DUPCLOSURE                       R1 K18 [PROTO_9]
       31 SETTABLEKS                       R1 R0 K19 ["CFRAME_FUZZYEQUALS"]
       33 DUPCLOSURE                       R1 K20 [PROTO_10]
       34 SETTABLEKS                       R1 R0 K21 ["CFRAME_GREATERTHAN"]
       36 DUPCLOSURE                       R1 K22 [PROTO_11]
       37 SETTABLEKS                       R1 R0 K23 ["CFRAME_LESSTHAN"]
       39 RETURN                           R0 1
