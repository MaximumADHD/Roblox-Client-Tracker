PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 SETTABLEKS                       R0 R1 K0 ["object"]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["type"]
        9 GETTABLEKS                       R2 R1 K1 ["type"]
       11 JUMPIFEQKS                       R2 K2 ["table"] ; [+9]
       13 GETIMPORT                        R2 K4 [error]
       15 LOADK                            R4 K5 ["Type "]
       16 GETTABLEKS                       R5 R1 K1 ["type"]
       18 LOADK                            R6 K6 [" is not supported in Replaceable!"]
       19 CONCAT                           R3 R4 R6
       20 CALL                             R2 1 0
       21 GETUPVAL                         R4 1
       22 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K8 [setmetatable]
       27 CALL                             R2 2 0
       28 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 LOADB                            R4 0
        7 JUMPIFNOTEQ                      R2 R3 ; [+5]
        9 JUMPIFEQKS                       R2 K0 ["table"] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 RETURN                           R4 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETTABLEKS                       R3 R0 K2 ["object"]
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 MOVE                             R7 R1
        7 MOVE                             R8 R6
        8 MOVE                             R9 R5
        9 GETTABLEKS                       R10 R0 K2 ["object"]
       11 CALL                             R7 3 0
       12 FORGLOOP                         R2 2 ; [-7]
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["object"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["object"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["JestGetType"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K6 ["getType"]
       14 NEWTABLE                         R3 8 0
       16 SETTABLEKS                       R3 R3 K7 ["__index"]
       18 DUPCLOSURE                       R4 K8 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R4 R3 K9 ["new"]
       23 DUPCLOSURE                       R4 K10 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K11 ["isReplaceable"]
       27 DUPCLOSURE                       R4 K12 [PROTO_2]
       28 SETTABLEKS                       R4 R3 K13 ["forEach"]
       30 DUPCLOSURE                       R4 K14 [PROTO_3]
       31 SETTABLEKS                       R4 R3 K15 ["get"]
       33 DUPCLOSURE                       R4 K16 [PROTO_4]
       34 SETTABLEKS                       R4 R3 K17 ["set"]
       36 RETURN                           R3 1
