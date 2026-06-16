PROTO_0:
        0 LOADN                            R5 0
        1 ADDK                             R5 R5 K0 [1]
        2 GETIMPORT                        R6 K2 [pcall]
        4 MOVE                             R7 R0
        5 CALL                             R6 1 2
        6 JUMPIFNOT                        R6 ; [+2]
        7 JUMPIFNOT                        R7 ; [+1]
        8 RETURN                           R7 1
        9 JUMPIFNOTLE                      R1 R5 ; [+3]
       11 LOADNIL                          R8
       12 RETURN                           R8 1
       13 MUL                              R8 R5 R3
       14 GETIMPORT                        R12 K6 [math.random]
       16 CALL                             R12 0 1
       17 MUL                              R11 R12 R4
       18 MULK                             R10 R11 K3 [2]
       19 SUB                              R9 R10 R4
       20 ADD                              R11 R2 R8
       21 ADD                              R10 R11 R9
       22 FASTCALL2                        MATH_MAX R2 R10 ; [+5]
       24 MOVE                             R12 R2
       25 MOVE                             R13 R10
       26 GETIMPORT                        R11 K8 [math.max]
       28 CALL                             R11 2 1
       29 GETIMPORT                        R12 K11 [task.wait]
       31 MOVE                             R13 R11
       32 CALL                             R12 1 0
       33 JUMPBACK                         ; [-33]
       34 LOADNIL                          R6
       35 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetProductInfoAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADN                            R2 8
        3 LOADK                            R3 K0 [0.5]
        4 LOADN                            R4 2
        5 LOADN                            R5 1
        6 CALL                             R0 5 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 3
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["new"]
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 SETTABLE                         R3 R1 R2
        4 NEWTABLE                         R1 1 0
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K1 [{"creator"}]
        8 GETTABLEKS                       R4 R0 K2 ["Creator"]
       10 SETTABLEKS                       R4 R3 K0 ["creator"]
       12 SETTABLE                         R3 R1 R2
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R4 3
       15 MOVE                             R5 R1
       16 CALL                             R4 1 -1
       17 NAMECALL                         R2 R2 K3 ["dispatch"]
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 NAMECALL                         R1 R0 K1 ["getState"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+2]
       10 NEWTABLE                         R1 0 0
       12 GETTABLEKS                       R1 R1 K2 ["Management"]
       14 JUMPIF                           R1 ; [+2]
       15 NEWTABLE                         R1 0 0
       17 GETTABLEKS                       R1 R1 K3 ["plugins"]
       19 JUMPIF                           R1 ; [+2]
       20 NEWTABLE                         R1 0 0
       22 GETUPVAL                         R2 1
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETTABLE                         R7 R1 R5
       27 JUMPIFNOT                        R7 ; [+4]
       28 GETTABLE                         R7 R1 R5
       29 GETTABLEKS                       R7 R7 K4 ["creator"]
       31 JUMPIF                           R7 ; [+29]
       32 GETUPVAL                         R8 2
       33 GETTABLE                         R7 R8 R5
       34 JUMPIF                           R7 ; [+26]
       35 GETUPVAL                         R7 2
       36 LOADB                            R8 1
       37 SETTABLE                         R8 R7 R5
       38 GETUPVAL                         R8 3
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R5
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R10 R10 K5 ["new"]
       45 NEWCLOSURE                       R11 P1
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R9
       48 CALL                             R10 1 1
       49 MOVE                             R7 R10
       50 NEWCLOSURE                       R9 P2
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U0
       55 NEWCLOSURE                       R10 P3
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R5
       58 NAMECALL                         R7 R7 K6 ["andThen"]
       60 CALL                             R7 3 0
       61 FORGLOOP                         R2 1 ; [-36]
       63 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Promise"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Actions"]
       29 GETTABLEKS                       R4 R4 K10 ["SetLoadedPluginData"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 0 0
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 DUPCLOSURE                       R6 K12 [PROTO_4]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 DUPCLOSURE                       R7 K13 [PROTO_8]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 RETURN                           R7 1
