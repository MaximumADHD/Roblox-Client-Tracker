PROTO_0:
        0 LOADN                            R3 0
        1 JUMPIFLT                         R3 R0 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Invalid buffer size, should be > 0"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 DUPTABLE                         R2 K9 [{["__buffer"], ["__size"], ["__writeIndex"] = 1, ["__firstIndex"] = }]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K3 ["__buffer"]
       16 SETTABLEKS                       R0 R2 K4 ["__size"]
       18 GETUPVAL                         R3 0
       19 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       21 GETIMPORT                        R1 K11 [setmetatable]
       23 CALL                             R1 2 1
       24 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["__size"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K2 ["__buffer"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R1 K2 ["__buffer"]
       13 SETTABLE                         R6 R7 R5
       14 FORGLOOP                         R2 2 ; [-4]
       16 GETTABLEKS                       R2 R0 K3 ["__writeIndex"]
       18 SETTABLEKS                       R2 R1 K3 ["__writeIndex"]
       20 GETTABLEKS                       R2 R0 K4 ["__firstIndex"]
       22 SETTABLEKS                       R2 R1 K4 ["__firstIndex"]
       24 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["__size"]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["__size"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["__firstIndex"]
        2 JUMPIF                           R2 ; [+5]
        3 GETTABLEKS                       R2 R0 K1 ["__writeIndex"]
        5 SETTABLEKS                       R2 R0 K0 ["__firstIndex"]
        7 JUMP                             ; [+14]
        8 GETTABLEKS                       R2 R0 K0 ["__firstIndex"]
       10 GETTABLEKS                       R3 R0 K1 ["__writeIndex"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+9]
       14 GETTABLEKS                       R4 R0 K0 ["__firstIndex"]
       16 GETTABLEKS                       R5 R0 K3 ["__size"]
       18 MOD                              R3 R4 R5
       19 ADDK                             R2 R3 K2 [1]
       20 SETTABLEKS                       R2 R0 K0 ["__firstIndex"]
       22 GETTABLEKS                       R2 R0 K4 ["__buffer"]
       24 GETTABLEKS                       R3 R0 K1 ["__writeIndex"]
       26 SETTABLE                         R1 R2 R3
       27 GETTABLEKS                       R4 R0 K1 ["__writeIndex"]
       29 GETTABLEKS                       R5 R0 K3 ["__size"]
       31 MOD                              R3 R4 R5
       32 ADDK                             R2 R3 K2 [1]
       33 SETTABLEKS                       R2 R0 K1 ["__writeIndex"]
       35 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        GETMETATABLE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [getmetatable]
        4 CALL                             R3 1 1
        5 GETTABLE                         R2 R3 R1
        6 JUMPIFEQKNIL                     R2 ; [+2]
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKS                    R1 K2 ["last"] ; [+3]
       11 GETTABLEN                        R3 R0 1
       12 RETURN                           R3 1
       13 JUMPIFNOTEQKS                    R1 K3 ["first"] ; [+8]
       15 GETTABLEKS                       R4 R0 K4 ["__buffer"]
       17 GETTABLEKS                       R6 R0 K6 ["__firstIndex"]
       19 ORK                              R5 R6 K5 [1]
       20 GETTABLE                         R3 R4 R5
       21 RETURN                           R3 1
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R3 K8 [type]
       26 CALL                             R3 1 1
       27 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+14]
       29 GETTABLEKS                       R4 R0 K10 ["__writeIndex"]
       31 SUB                              R3 R4 R1
       32 LOADN                            R4 1
       33 JUMPIFNOTLT                      R3 R4 ; [+4]
       35 GETTABLEKS                       R4 R0 K11 ["__size"]
       37 ADD                              R3 R3 R4
       38 GETTABLEKS                       R5 R0 K4 ["__buffer"]
       40 GETTABLE                         R4 R5 R3
       41 RETURN                           R4 1
       42 LOADNIL                          R3
       43 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R4 R0 K1 ["__size"]
        7 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
        9 MOVE                             R5 R1
       10 GETIMPORT                        R3 K4 [math.max]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R0 K5 ["__firstIndex"]
       15 JUMPIFEQKNIL                     R4 ; [+22]
       17 GETTABLEKS                       R4 R0 K5 ["__firstIndex"]
       19 LOADN                            R7 1
       20 MOVE                             R5 R3
       21 LOADN                            R6 1
       22 FORNPREP                         R5
       23 GETTABLEKS                       R11 R0 K6 ["__buffer"]
       25 GETTABLE                         R10 R11 R4
       26 NAMECALL                         R8 R2 K7 ["push"]
       28 CALL                             R8 2 0
       29 GETTABLEKS                       R9 R0 K1 ["__size"]
       31 MOD                              R8 R4 R9
       32 ADDK                             R4 R8 K8 [1]
       33 GETTABLEKS                       R8 R0 K9 ["__writeIndex"]
       35 JUMPIFEQ                         R4 R8 ; [+2]
       37 FORNLOOP                         R5
       38 RETURN                           R2 1

PROTO_7:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+2]
        2 GETIMPORT                        R3 K1 [tostring]
        4 LOADK                            R4 K2 ["Buffer:\n"]
        5 LOADN                            R7 1
        6 GETTABLEKS                       R5 R0 K3 ["__size"]
        8 LOADN                            R6 1
        9 FORNPREP                         R5
       10 MOVE                             R8 R4
       11 GETIMPORT                        R9 K6 [string.format]
       13 LOADK                            R10 K7 ["[%d]: %s\n"]
       14 MOVE                             R11 R7
       15 GETTABLEKS                       R14 R0 K8 ["__buffer"]
       17 GETTABLE                         R13 R14 R7
       18 JUMPIFNOT                        R13 ; [+6]
       19 MOVE                             R12 R3
       20 GETTABLEKS                       R14 R0 K8 ["__buffer"]
       22 GETTABLE                         R13 R14 R7
       23 CALL                             R12 1 1
       24 JUMP                             ; [+1]
       25 LOADK                            R12 K9 ["<nil>"]
       26 CALL                             R9 3 1
       27 CONCAT                           R4 R8 R9
       28 FORNLOOP                         R5
       29 MOVE                             R5 R4
       30 GETIMPORT                        R6 K6 [string.format]
       32 LOADK                            R7 K10 ["WriteIndex: %d\n"]
       33 GETTABLEKS                       R8 R0 K11 ["__writeIndex"]
       35 CALL                             R6 2 1
       36 CONCAT                           R4 R5 R6
       37 MOVE                             R5 R4
       38 GETIMPORT                        R6 K6 [string.format]
       40 LOADK                            R7 K12 ["FirstIndex: %d\n"]
       41 GETTABLEKS                       R9 R0 K14 ["__firstIndex"]
       43 ORK                              R8 R9 K13 [-1]
       44 CALL                             R6 2 1
       45 CONCAT                           R4 R5 R6
       46 MOVE                             R5 R2
       47 JUMPIF                           R5 ; [+2]
       48 GETIMPORT                        R5 K16 [print]
       50 MOVE                             R6 R5
       51 MOVE                             R7 R4
       52 CALL                             R6 1 0
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K1 ["new"]
        7 DUPCLOSURE                       R1 K2 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["clone"]
       11 DUPCLOSURE                       R1 K4 [PROTO_2]
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K5 ["clear"]
       15 DUPCLOSURE                       R1 K6 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K7 ["getSize"]
       18 DUPCLOSURE                       R1 K8 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K9 ["push"]
       21 DUPCLOSURE                       R1 K10 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K11 ["__index"]
       24 DUPCLOSURE                       R1 K12 [PROTO_6]
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K13 ["resize"]
       28 DUPCLOSURE                       R1 K14 [PROTO_7]
       29 SETTABLEKS                       R1 R0 K15 ["dump"]
       31 RETURN                           R0 1
