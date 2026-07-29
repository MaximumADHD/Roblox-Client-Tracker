PROTO_0:
        0 ORK                              R1 R0 K0 [4]
        1 DUPTABLE                         R3 K7 [{["capacity"], ["size"] = 0, ["_startIndex"] = 1, ["_data"]}]
        2 SETTABLEKS                       R1 R3 K1 ["capacity"]
        4 GETIMPORT                        R4 K10 [table.create]
        6 MOVE                             R5 R1
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K6 ["_data"]
       10 GETUPVAL                         R4 0
       11 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       13 GETIMPORT                        R2 K12 [setmetatable]
       15 CALL                             R2 2 1
       16 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["size"]
        2 GETTABLEKS                       R3 R0 K1 ["capacity"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+33]
        6 GETTABLEKS                       R3 R0 K1 ["capacity"]
        8 MULK                             R2 R3 K2 [2]
        9 GETIMPORT                        R3 K5 [table.create]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 LOADN                            R6 1
       14 GETTABLEKS                       R4 R0 K0 ["size"]
       16 LOADN                            R5 1
       17 FORNPREP                         R4
       18 GETTABLEKS                       R8 R0 K6 ["_data"]
       20 GETTABLEKS                       R13 R0 K8 ["_startIndex"]
       22 ADD                              R12 R13 R6
       23 SUBK                             R11 R12 K2 [2]
       24 GETTABLEKS                       R12 R0 K1 ["capacity"]
       26 MOD                              R10 R11 R12
       27 ADDK                             R9 R10 K7 [1]
       28 GETTABLE                         R7 R8 R9
       29 SETTABLE                         R7 R3 R6
       30 FORNLOOP                         R4
       31 SETTABLEKS                       R3 R0 K6 ["_data"]
       33 SETTABLEKS                       R2 R0 K1 ["capacity"]
       35 LOADN                            R4 1
       36 SETTABLEKS                       R4 R0 K8 ["_startIndex"]
       38 GETTABLEKS                       R6 R0 K8 ["_startIndex"]
       40 GETTABLEKS                       R7 R0 K0 ["size"]
       42 ADD                              R5 R6 R7
       43 SUBK                             R4 R5 K7 [1]
       44 GETTABLEKS                       R5 R0 K1 ["capacity"]
       46 MOD                              R3 R4 R5
       47 ADDK                             R2 R3 K7 [1]
       48 GETTABLEKS                       R3 R0 K6 ["_data"]
       50 SETTABLE                         R1 R3 R2
       51 GETTABLEKS                       R4 R0 K0 ["size"]
       53 ADDK                             R3 R4 K7 [1]
       54 SETTABLEKS                       R3 R0 K0 ["size"]
       56 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K2 ["_data"]
        8 GETTABLEKS                       R3 R0 K3 ["_startIndex"]
       10 GETTABLE                         R1 R2 R3
       11 GETTABLEKS                       R2 R0 K2 ["_data"]
       13 GETTABLEKS                       R3 R0 K3 ["_startIndex"]
       15 LOADNIL                          R4
       16 SETTABLE                         R4 R2 R3
       17 GETTABLEKS                       R4 R0 K3 ["_startIndex"]
       19 GETTABLEKS                       R5 R0 K5 ["capacity"]
       21 MOD                              R3 R4 R5
       22 ADDK                             R2 R3 K4 [1]
       23 SETTABLEKS                       R2 R0 K3 ["_startIndex"]
       25 GETTABLEKS                       R3 R0 K0 ["size"]
       27 SUBK                             R2 R3 K4 [1]
       28 SETTABLEKS                       R2 R0 K0 ["size"]
       30 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K2 ["_data"]
        8 GETTABLEKS                       R3 R0 K3 ["_startIndex"]
       10 GETTABLE                         R1 R2 R3
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["enqueue"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["dequeue"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["peek"]
       18 RETURN                           R0 1
