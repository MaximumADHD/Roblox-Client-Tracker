PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [type]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        9 RETURN                           R1 1
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R7 R6 K3 ["X"]
       16 GETTABLEKS                       R7 R7 K4 ["Offset"]
       18 SETTABLE                         R7 R1 R5
       19 FORGLOOP                         R2 2 ; [-6]
       21 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K1 ["order"]
        2 ORK                              R3 R4 K0 [1]
        3 GETTABLEKS                       R5 R1 K1 ["order"]
        5 ORK                              R4 R5 K0 [1]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [table.sort]
        6 MOVE                             R3 R1
        7 DUPCLOSURE                       R4 K5 [PROTO_1]
        8 CALL                             R2 2 0
        9 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["id"]
        6 JUMPIFNOTEQ                      R7 R1 ; [+2]
        8 RETURN                           R6 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["buildSnapshot"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R2 K1 ["current"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["computeLockedOverrides"]
       10 MOVE                             R5 R3
       11 MOVE                             R6 R1
       12 CALL                             R4 2 -1
       13 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["sortColumnsByOrder"]
        3 MOVE                             R6 R1
        4 CALL                             R5 1 1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K1 ["computeResizedOverrides"]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R5
       10 MOVE                             R9 R2
       11 MOVE                             R10 R3
       12 MOVE                             R11 R4
       13 CALL                             R6 5 -1
       14 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["findColumnById"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 CALL                             R5 2 1
        6 JUMPIF                           R5 ; [+3]
        7 MOVE                             R6 R3
        8 LOADB                            R7 0
        9 RETURN                           R6 2
       10 MOVE                             R6 R4
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K1 ["computeDoubleClickWidth"]
       16 MOVE                             R8 R0
       17 MOVE                             R9 R1
       18 MOVE                             R10 R6
       19 MOVE                             R11 R2
       20 MOVE                             R12 R3
       21 CALL                             R7 5 1
       22 GETIMPORT                        R8 K4 [table.clone]
       24 MOVE                             R9 R3
       25 CALL                             R8 1 1
       26 SETTABLE                         R7 R8 R1
       27 MOVE                             R9 R8
       28 LOADB                            R10 1
       29 RETURN                           R9 2

PROTO_7:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 LOADB                            R3 0
        5 MOVE                             R4 R0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETTABLE                         R9 R2 R7
       10 JUMPIFNOTEQKNIL                  R9 ; [+3]
       12 SETTABLE                         R8 R2 R7
       13 LOADB                            R3 1
       14 FORGLOOP                         R4 2 ; [-6]
       16 RETURN                           R2 2

PROTO_8:
        0 GETIMPORT                        R5 K2 [table.clone]
        2 MOVE                             R6 R4
        3 CALL                             R5 1 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETTABLE                         R6 R0 R2
        6 JUMPIF                           R6 ; [+2]
        7 SETTABLE                         R3 R5 R2
        8 RETURN                           R5 1
        9 LOADNIL                          R6
       10 GETIMPORT                        R7 K4 [ipairs]
       12 MOVE                             R8 R1
       13 CALL                             R7 1 3
       14 FORGPREP_INEXT                   R7
       15 GETTABLEKS                       R12 R11 K5 ["id"]
       17 JUMPIFNOTEQ                      R12 R2 ; [+3]
       19 MOVE                             R6 R10
       20 JUMP                             ; [+2]
       21 FORGLOOP                         R7 2 [inext] ; [-7]
       23 JUMPIFNOT                        R6 ; [+2]
       24 GETTABLE                         R7 R1 R6
       25 JUMPIF                           R7 ; [+1]
       26 LOADNIL                          R7
       27 JUMPIFNOT                        R6 ; [+3]
       28 ADDK                             R9 R6 K6 [1]
       29 GETTABLE                         R8 R1 R9
       30 JUMPIF                           R8 ; [+1]
       31 LOADNIL                          R8
       32 JUMPIFNOT                        R7 ; [+3]
       33 GETTABLEKS                       R9 R7 K7 ["minWidth"]
       35 JUMPIF                           R9 ; [+1]
       36 LOADN                            R9 20
       37 LOADNIL                          R10
       38 JUMPIFNOT                        R8 ; [+10]
       39 GETTABLE                         R12 R0 R2
       40 GETTABLEKS                       R14 R8 K5 ["id"]
       42 GETTABLE                         R13 R0 R14
       43 ADD                              R11 R12 R13
       44 GETTABLEKS                       R13 R8 K7 ["minWidth"]
       46 ORK                              R12 R13 K8 [20]
       47 SUB                              R10 R11 R12
       48 JUMP                             ; [+1]
       49 GETTABLE                         R10 R0 R2
       50 JUMPIFNOTLT                      R10 R9 ; [+2]
       52 MOVE                             R10 R9
       53 FASTCALL3                        MATH_CLAMP R3 R9 R10
       55 MOVE                             R12 R3
       56 MOVE                             R13 R9
       57 MOVE                             R14 R10
       58 GETIMPORT                        R11 K11 [math.clamp]
       60 CALL                             R11 3 1
       61 GETTABLE                         R13 R0 R2
       62 SUB                              R12 R11 R13
       63 SETTABLE                         R11 R5 R2
       64 JUMPIFNOT                        R8 ; [+7]
       65 GETTABLEKS                       R13 R8 K5 ["id"]
       67 GETTABLEKS                       R16 R8 K5 ["id"]
       69 GETTABLE                         R15 R0 R16
       70 SUB                              R14 R15 R12
       71 SETTABLE                         R14 R5 R13
       72 RETURN                           R5 1

PROTO_9:
        0 LOADNIL                          R5
        1 MOVE                             R6 R0
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 FORGPREP                         R6
        5 GETTABLEKS                       R11 R10 K0 ["id"]
        7 JUMPIFNOTEQ                      R11 R1 ; [+3]
        9 MOVE                             R5 R10
       10 JUMP                             ; [+2]
       11 FORGLOOP                         R6 2 ; [-7]
       13 JUMPIF                           R5 ; [+1]
       14 RETURN                           R2 1
       15 LOADN                            R6 0
       16 MOVE                             R7 R0
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 FORGPREP                         R7
       20 GETTABLEKS                       R12 R11 K0 ["id"]
       22 JUMPIFEQ                         R12 R1 ; [+20]
       24 GETTABLEKS                       R13 R11 K0 ["id"]
       26 GETTABLE                         R12 R4 R13
       27 JUMPIFNOT                        R12 ; [+11]
       28 GETTABLEKS                       R15 R11 K2 ["minWidth"]
       30 ORK                              R14 R15 K1 [0]
       31 FASTCALL2                        MATH_MAX R14 R12 ; [+4]
       33 MOVE                             R15 R12
       34 GETIMPORT                        R13 K5 [math.max]
       36 CALL                             R13 2 1
       37 ADD                              R6 R6 R13
       38 JUMP                             ; [+4]
       39 GETTABLEKS                       R14 R11 K2 ["minWidth"]
       41 ORK                              R13 R14 K1 [0]
       42 ADD                              R6 R6 R13
       43 FORGLOOP                         R7 2 ; [-24]
       45 SUB                              R7 R3 R6
       46 GETTABLEKS                       R9 R5 K2 ["minWidth"]
       48 ORK                              R8 R9 K1 [0]
       49 JUMPIFNOTLT                      R8 R7 ; [+4]
       51 JUMPIFNOTLT                      R7 R2 ; [+2]
       53 RETURN                           R7 1
       54 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["buildSnapshot"]
        6 DUPCLOSURE                       R1 K2 [PROTO_2]
        7 SETTABLEKS                       R1 R0 K3 ["sortColumnsByOrder"]
        9 DUPCLOSURE                       R1 K4 [PROTO_3]
       10 SETTABLEKS                       R1 R0 K5 ["findColumnById"]
       12 DUPCLOSURE                       R1 K6 [PROTO_4]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K7 ["applyResizeStart"]
       16 DUPCLOSURE                       R1 K8 [PROTO_5]
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K9 ["applyResize"]
       20 DUPCLOSURE                       R1 K10 [PROTO_6]
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K11 ["applyDoubleClick"]
       24 DUPCLOSURE                       R1 K12 [PROTO_7]
       25 SETTABLEKS                       R1 R0 K13 ["computeLockedOverrides"]
       27 DUPCLOSURE                       R1 K14 [PROTO_8]
       28 SETTABLEKS                       R1 R0 K15 ["computeResizedOverrides"]
       30 DUPCLOSURE                       R1 K16 [PROTO_9]
       31 SETTABLEKS                       R1 R0 K17 ["computeDoubleClickWidth"]
       33 RETURN                           R0 1
