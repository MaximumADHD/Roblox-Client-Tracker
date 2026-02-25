PROTO_0:
        0 DUPTABLE                         R0 K1 [{"array"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["array"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["area"]
        2 GETTABLEKS                       R4 R1 K0 ["area"]
        4 SUB                              R2 R3 R4
        5 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["array"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R0 K0 ["array"]
       10 LENGTH                           R2 R3
       11 SETTABLEKS                       R2 R1 K4 ["_order"]
       13 GETTABLEKS                       R5 R0 K0 ["array"]
       15 LENGTH                           R4 R5
       16 NAMECALL                         R2 R0 K5 ["up"]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R3 R0 K0 ["array"]
       21 LENGTH                           R2 R3
       22 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["array"]
        2 GETTABLEN                        R1 R2 1
        3 GETIMPORT                        R2 K3 [table.remove]
        5 GETTABLEKS                       R3 R0 K0 ["array"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+16]
        9 GETTABLEKS                       R4 R0 K0 ["array"]
       11 LENGTH                           R3 R4
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+11]
       15 LOADN                            R3 1
       16 SETTABLEKS                       R3 R2 K4 ["_order"]
       18 GETTABLEKS                       R3 R0 K0 ["array"]
       20 SETTABLEN                        R2 R3 1
       21 LOADN                            R5 1
       22 NAMECALL                         R3 R0 K5 ["down"]
       24 CALL                             R3 2 0
       25 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["_order"]
        2 GETIMPORT                        R3 K3 [table.remove]
        4 GETTABLEKS                       R4 R0 K4 ["array"]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+28]
        8 GETTABLEKS                       R6 R0 K4 ["array"]
       10 LENGTH                           R5 R6
       11 ADDK                             R4 R5 K5 [1]
       12 JUMPIFEQ                         R2 R4 ; [+23]
       14 GETTABLEKS                       R4 R0 K4 ["array"]
       16 SETTABLE                         R3 R4 R2
       17 SETTABLEKS                       R2 R3 K0 ["_order"]
       19 GETGLOBAL                        R4 K6 ["compare"]
       21 MOVE                             R5 R3
       22 MOVE                             R6 R1
       23 CALL                             R4 2 1
       24 LOADN                            R5 0
       25 JUMPIFNOTLT                      R4 R5 ; [+6]
       27 MOVE                             R6 R2
       28 NAMECALL                         R4 R0 K7 ["up"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0
       32 MOVE                             R6 R2
       33 NAMECALL                         R4 R0 K8 ["down"]
       35 CALL                             R4 2 0
       36 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R2 1
        1 JUMPIFNOTLT                      R2 R1 ; [+42]
        3 DIVK                             R3 R1 K0 [2]
        4 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        5 GETIMPORT                        R2 K3 [math.floor]
        7 CALL                             R2 1 1
        8 GETGLOBAL                        R3 K4 ["compare"]
       10 GETTABLEKS                       R5 R0 K5 ["array"]
       12 GETTABLE                         R4 R5 R1
       13 GETTABLEKS                       R6 R0 K5 ["array"]
       15 GETTABLE                         R5 R6 R2
       16 CALL                             R3 2 1
       17 LOADN                            R4 0
       18 JUMPIFLE                         R4 R3 ; [+25]
       20 GETTABLEKS                       R3 R0 K5 ["array"]
       22 GETTABLEKS                       R4 R0 K5 ["array"]
       24 GETTABLEKS                       R6 R0 K5 ["array"]
       26 GETTABLE                         R5 R6 R1
       27 GETTABLEKS                       R7 R0 K5 ["array"]
       29 GETTABLE                         R6 R7 R2
       30 SETTABLE                         R5 R3 R2
       31 SETTABLE                         R6 R4 R1
       32 GETTABLEKS                       R4 R0 K5 ["array"]
       34 GETTABLE                         R3 R4 R2
       35 GETTABLEKS                       R5 R0 K5 ["array"]
       37 GETTABLE                         R4 R5 R1
       38 SETTABLEKS                       R2 R3 K6 ["_order"]
       40 SETTABLEKS                       R1 R4 K6 ["_order"]
       42 MOVE                             R1 R2
       43 JUMPBACK                         ; [-44]
       44 RETURN                           R0 0

PROTO_6:
        0 MULK                             R2 R1 K0 [2]
        1 ADDK                             R3 R2 K1 [1]
        2 MOVE                             R4 R1
        3 GETTABLEKS                       R6 R0 K2 ["array"]
        5 LENGTH                           R5 R6
        6 JUMPIFNOTLE                      R2 R5 ; [+14]
        8 GETGLOBAL                        R5 K3 ["compare"]
       10 GETTABLEKS                       R7 R0 K2 ["array"]
       12 GETTABLE                         R6 R7 R2
       13 GETTABLEKS                       R8 R0 K2 ["array"]
       15 GETTABLE                         R7 R8 R4
       16 CALL                             R5 2 1
       17 LOADN                            R6 0
       18 JUMPIFNOTLT                      R5 R6 ; [+2]
       20 MOVE                             R4 R2
       21 GETTABLEKS                       R6 R0 K2 ["array"]
       23 LENGTH                           R5 R6
       24 JUMPIFNOTLE                      R3 R5 ; [+14]
       26 GETGLOBAL                        R5 K3 ["compare"]
       28 GETTABLEKS                       R7 R0 K2 ["array"]
       30 GETTABLE                         R6 R7 R3
       31 GETTABLEKS                       R8 R0 K2 ["array"]
       33 GETTABLE                         R7 R8 R4
       34 CALL                             R5 2 1
       35 LOADN                            R6 0
       36 JUMPIFNOTLT                      R5 R6 ; [+2]
       38 MOVE                             R4 R3
       39 JUMPIFEQ                         R4 R1 ; [+25]
       41 GETTABLEKS                       R5 R0 K2 ["array"]
       43 GETTABLEKS                       R6 R0 K2 ["array"]
       45 GETTABLEKS                       R8 R0 K2 ["array"]
       47 GETTABLE                         R7 R8 R4
       48 GETTABLEKS                       R9 R0 K2 ["array"]
       50 GETTABLE                         R8 R9 R1
       51 SETTABLE                         R7 R5 R1
       52 SETTABLE                         R8 R6 R4
       53 GETTABLEKS                       R6 R0 K2 ["array"]
       55 GETTABLE                         R5 R6 R1
       56 GETTABLEKS                       R7 R0 K2 ["array"]
       58 GETTABLE                         R6 R7 R4
       59 SETTABLEKS                       R1 R5 K4 ["_order"]
       61 SETTABLEKS                       R4 R6 K4 ["_order"]
       63 MOVE                             R1 R4
       64 JUMPBACK                         ; [-65]
       65 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 NEWTABLE                         R2 8 0
       12 SETTABLEKS                       R2 R2 K6 ["__index"]
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R3 R2 K8 ["new"]
       18 DUPCLOSURE                       R3 K9 [PROTO_1]
       19 SETGLOBAL                        R3 K10 ["compare"]
       21 DUPCLOSURE                       R3 K11 [PROTO_2]
       22 SETTABLEKS                       R3 R2 K12 ["push"]
       24 DUPCLOSURE                       R3 K13 [PROTO_3]
       25 SETTABLEKS                       R3 R2 K14 ["pop"]
       27 DUPCLOSURE                       R3 K15 [PROTO_4]
       28 SETTABLEKS                       R3 R2 K16 ["remove"]
       30 DUPCLOSURE                       R3 K17 [PROTO_5]
       31 SETTABLEKS                       R3 R2 K18 ["up"]
       33 DUPCLOSURE                       R3 K19 [PROTO_6]
       34 SETTABLEKS                       R3 R2 K20 ["down"]
       36 RETURN                           R2 1
